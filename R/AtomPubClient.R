#' AtomPubClient
#'
#' @docType class
#' @importFrom R6 R6Class
#' @export
#'
#' @name AtomPubClient
#' @title AtomPubClient class
#' @description This class models an AtomPub service client
#' @keywords Atom Person
#' @return Object of \code{\link{R6Class}} for modelling an AtomPub client
#' @format \code{\link{R6Class}} object.
#'
#' @section Methods:
#' \describe{
#'  \item{\code{new(url, user, pwd, token, keyring_backend)}}{
#'    This method is to instantiate an AtomPub Client.
#'
#'    The \code{keyring_backend} can be set to use a different backend for storing
#'    the Atom pub user token with \pkg{keyring} (Default value is 'env').
#'
#'    The logger can be either NULL, "INFO" (with minimum logs), or "DEBUG"
#'    (for complete curl http calls logs)
#'  }
#'  \item{\code{getUser()}}{
#'    Retrieves user (if any specified).
#'  }
#'  \item{\code{getPwd()}}{
#'    Retrieves user password (if any user specified).
#'  }
#'  \item{\code{getToken()}}{
#'    Retrieves user token.
#'  }
#'  \item{\code{getServiceDocument()}}{
#'    Gets service document description. Unimplemented in abstract classes.
#'  }
#'  \item{\code{listCollections(pretty)}}{
#'    Lists the available collections. Use \code{pretty} to return a "data.frame" insteaf
#'    of a list.
#'  }
#'  \item{\code{getCollectionMembers(collectionId)}}{
#'    List members of a collection. Unimplemented in abstract classes.
#'  }
#' }
#'
#' @note Abstract class used internally for AtomPub (Atom Publishing Protocol) clients
#'
#' @author Emmanuel Blondel <emmanuel.blondel1@@gmail.com>
#'
AtomPubClient <- R6Class("AtomPubClient",
  inherit = atom4RLogger,
  private = list(
    keyring_backend = NULL,
    keyring_service = NULL,
    url = NULL,
    user = NULL
  ),
  public = list(

    service = NULL,

    #initialize
    initialize = function(url, user = NULL, pwd = NULL, token = NULL, logger = NULL,
                          keyring_backend = 'env'){
      super$initialize(logger = logger)
      private$url = url

      if(!is.null(user) && !is.null(pwd)){
        private$keyring_backend <- keyring:::known_backends[[keyring_backend]]$new()
        private$keyring_service <- paste0("atom4R@", url)
        private$keyring_backend$set_with_value(private$keyring_service, username = user, password = pwd)
        private$user <- user
      }

      if(!is.null(token)) if(nzchar(token)){
        if(!keyring_backend %in% names(keyring:::known_backends)){
          errMsg <- sprintf("Backend '%s' is not a known keyring backend!", keyring_backend)
          self$ERROR(errMsg)
          stop(errMsg)
        }
        private$keyring_backend <- keyring:::known_backends[[keyring_backend]]$new()
        private$keyring_service <- paste0("atom4R@", url)
        private$keyring_backend$set_with_value(private$keyring_service, username = "atom4R", password = token)
      }
    },

    #getUser
    getUser = function(){
      return(private$user)
    },

    #getPwd
    getPwd = function(){
      pwd <- NULL
      if(!is.null(private$keyring_service)){
        print(self$getUser())
        pwd <- try(private$keyring_backend$get(service = private$keyring_service, username = self$getUser()), silent = TRUE)
        if(is(pwd, "try-error")) pwd <- NULL
      }
      return(pwd)
    },

    #getToken
    getToken = function(){
      token <- NULL
      if(!is.null(private$keyring_service)){
        token <- try(private$keyring_backend$get(service = private$keyring_service, username = "atom4R"), silent = TRUE)
        if(is(token, "try-error")) token <- NULL
      }
      return(token)
    },

    #getServiceDocument
    getServiceDocument = function(){
      stop("'getServiceDocument' not implemented in AtomPub abstract client")
    },

    #listCollections
    listCollections = function(pretty = FALSE){
      if(is.null(self$service)) self$getServiceDocument()
      collections <- self$service$collections
      if(pretty) collections <- do.call("rbind", lapply(collections, as.data.frame))
      return(collections)
    },

    #getCollectionMembers
    getCollectionMembers = function(collectionId){
      stop("'getCollectionMembers' not implemented in AtomPub abstract client")
    }
  )
)
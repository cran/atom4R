% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/AtomPerson.R
\docType{class}
\name{AtomAuthor}
\alias{AtomAuthor}
\title{Atom Author class}
\format{
\code{\link{R6Class}} object.
}
\value{
Object of \code{\link{R6Class}} for modelling an Atom Author
}
\description{
This class models an Atom Author
}
\details{
AtomAuthor
}
\examples{
\dontrun{
  author <- AtomAuthor$new(name = "John Doe", email = "john.doe@atom4R.com")
}

}
\author{
Emmanuel Blondel <emmanuel.blondel1@gmail.com>
}
\keyword{Atom}
\keyword{Author}
\section{Super classes}{
\code{\link[atom4R:atom4RLogger]{atom4R::atom4RLogger}} -> \code{\link[atom4R:AtomAbstractObject]{atom4R::AtomAbstractObject}} -> \code{\link[atom4R:AtomPerson]{atom4R::AtomPerson}} -> \code{AtomAuthor}
}
\section{Methods}{
\subsection{Public methods}{
\itemize{
\item \href{#method-AtomAuthor-new}{\code{AtomAuthor$new()}}
\item \href{#method-AtomAuthor-clone}{\code{AtomAuthor$clone()}}
}
}
\if{html}{\out{
<details><summary>Inherited methods</summary>
<ul>
<li><span class="pkg-link" data-pkg="atom4R" data-topic="atom4RLogger" data-id="ERROR"><a href='../../atom4R/html/atom4RLogger.html#method-atom4RLogger-ERROR'><code>atom4R::atom4RLogger$ERROR()</code></a></span></li>
<li><span class="pkg-link" data-pkg="atom4R" data-topic="atom4RLogger" data-id="INFO"><a href='../../atom4R/html/atom4RLogger.html#method-atom4RLogger-INFO'><code>atom4R::atom4RLogger$INFO()</code></a></span></li>
<li><span class="pkg-link" data-pkg="atom4R" data-topic="atom4RLogger" data-id="WARN"><a href='../../atom4R/html/atom4RLogger.html#method-atom4RLogger-WARN'><code>atom4R::atom4RLogger$WARN()</code></a></span></li>
<li><span class="pkg-link" data-pkg="atom4R" data-topic="atom4RLogger" data-id="logger"><a href='../../atom4R/html/atom4RLogger.html#method-atom4RLogger-logger'><code>atom4R::atom4RLogger$logger()</code></a></span></li>
<li><span class="pkg-link" data-pkg="atom4R" data-topic="AtomAbstractObject" data-id="addListElement"><a href='../../atom4R/html/AtomAbstractObject.html#method-AtomAbstractObject-addListElement'><code>atom4R::AtomAbstractObject$addListElement()</code></a></span></li>
<li><span class="pkg-link" data-pkg="atom4R" data-topic="AtomAbstractObject" data-id="contains"><a href='../../atom4R/html/AtomAbstractObject.html#method-AtomAbstractObject-contains'><code>atom4R::AtomAbstractObject$contains()</code></a></span></li>
<li><span class="pkg-link" data-pkg="atom4R" data-topic="AtomAbstractObject" data-id="createElement"><a href='../../atom4R/html/AtomAbstractObject.html#method-AtomAbstractObject-createElement'><code>atom4R::AtomAbstractObject$createElement()</code></a></span></li>
<li><span class="pkg-link" data-pkg="atom4R" data-topic="AtomAbstractObject" data-id="decode"><a href='../../atom4R/html/AtomAbstractObject.html#method-AtomAbstractObject-decode'><code>atom4R::AtomAbstractObject$decode()</code></a></span></li>
<li><span class="pkg-link" data-pkg="atom4R" data-topic="AtomAbstractObject" data-id="delListElement"><a href='../../atom4R/html/AtomAbstractObject.html#method-AtomAbstractObject-delListElement'><code>atom4R::AtomAbstractObject$delListElement()</code></a></span></li>
<li><span class="pkg-link" data-pkg="atom4R" data-topic="AtomAbstractObject" data-id="encode"><a href='../../atom4R/html/AtomAbstractObject.html#method-AtomAbstractObject-encode'><code>atom4R::AtomAbstractObject$encode()</code></a></span></li>
<li><span class="pkg-link" data-pkg="atom4R" data-topic="AtomAbstractObject" data-id="getClass"><a href='../../atom4R/html/AtomAbstractObject.html#method-AtomAbstractObject-getClass'><code>atom4R::AtomAbstractObject$getClass()</code></a></span></li>
<li><span class="pkg-link" data-pkg="atom4R" data-topic="AtomAbstractObject" data-id="getClassName"><a href='../../atom4R/html/AtomAbstractObject.html#method-AtomAbstractObject-getClassName'><code>atom4R::AtomAbstractObject$getClassName()</code></a></span></li>
<li><span class="pkg-link" data-pkg="atom4R" data-topic="AtomAbstractObject" data-id="getNamespace"><a href='../../atom4R/html/AtomAbstractObject.html#method-AtomAbstractObject-getNamespace'><code>atom4R::AtomAbstractObject$getNamespace()</code></a></span></li>
<li><span class="pkg-link" data-pkg="atom4R" data-topic="AtomAbstractObject" data-id="getNamespaceDefinition"><a href='../../atom4R/html/AtomAbstractObject.html#method-AtomAbstractObject-getNamespaceDefinition'><code>atom4R::AtomAbstractObject$getNamespaceDefinition()</code></a></span></li>
<li><span class="pkg-link" data-pkg="atom4R" data-topic="AtomAbstractObject" data-id="getRootElement"><a href='../../atom4R/html/AtomAbstractObject.html#method-AtomAbstractObject-getRootElement'><code>atom4R::AtomAbstractObject$getRootElement()</code></a></span></li>
<li><span class="pkg-link" data-pkg="atom4R" data-topic="AtomAbstractObject" data-id="getXmlElement"><a href='../../atom4R/html/AtomAbstractObject.html#method-AtomAbstractObject-getXmlElement'><code>atom4R::AtomAbstractObject$getXmlElement()</code></a></span></li>
<li><span class="pkg-link" data-pkg="atom4R" data-topic="AtomAbstractObject" data-id="isDocument"><a href='../../atom4R/html/AtomAbstractObject.html#method-AtomAbstractObject-isDocument'><code>atom4R::AtomAbstractObject$isDocument()</code></a></span></li>
<li><span class="pkg-link" data-pkg="atom4R" data-topic="AtomAbstractObject" data-id="isFieldInheritedFrom"><a href='../../atom4R/html/AtomAbstractObject.html#method-AtomAbstractObject-isFieldInheritedFrom'><code>atom4R::AtomAbstractObject$isFieldInheritedFrom()</code></a></span></li>
<li><span class="pkg-link" data-pkg="atom4R" data-topic="AtomAbstractObject" data-id="print"><a href='../../atom4R/html/AtomAbstractObject.html#method-AtomAbstractObject-print'><code>atom4R::AtomAbstractObject$print()</code></a></span></li>
<li><span class="pkg-link" data-pkg="atom4R" data-topic="AtomAbstractObject" data-id="save"><a href='../../atom4R/html/AtomAbstractObject.html#method-AtomAbstractObject-save'><code>atom4R::AtomAbstractObject$save()</code></a></span></li>
<li><span class="pkg-link" data-pkg="atom4R" data-topic="AtomAbstractObject" data-id="setIsDocument"><a href='../../atom4R/html/AtomAbstractObject.html#method-AtomAbstractObject-setIsDocument'><code>atom4R::AtomAbstractObject$setIsDocument()</code></a></span></li>
<li><span class="pkg-link" data-pkg="atom4R" data-topic="AtomAbstractObject" data-id="validate"><a href='../../atom4R/html/AtomAbstractObject.html#method-AtomAbstractObject-validate'><code>atom4R::AtomAbstractObject$validate()</code></a></span></li>
<li><span class="pkg-link" data-pkg="atom4R" data-topic="AtomPerson" data-id="setEmail"><a href='../../atom4R/html/AtomPerson.html#method-AtomPerson-setEmail'><code>atom4R::AtomPerson$setEmail()</code></a></span></li>
<li><span class="pkg-link" data-pkg="atom4R" data-topic="AtomPerson" data-id="setName"><a href='../../atom4R/html/AtomPerson.html#method-AtomPerson-setName'><code>atom4R::AtomPerson$setName()</code></a></span></li>
<li><span class="pkg-link" data-pkg="atom4R" data-topic="AtomPerson" data-id="setUri"><a href='../../atom4R/html/AtomPerson.html#method-AtomPerson-setUri'><code>atom4R::AtomPerson$setUri()</code></a></span></li>
</ul>
</details>
}}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-AtomAuthor-new"></a>}}
\if{latex}{\out{\hypertarget{method-AtomAuthor-new}{}}}
\subsection{Method \code{new()}}{
Initializes an \link{AtomAuthor}
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{AtomAuthor$new(xml = NULL, name = NULL, uri = NULL, email = NULL)}\if{html}{\out{</div>}}
}

\subsection{Arguments}{
\if{html}{\out{<div class="arguments">}}
\describe{
\item{\code{xml}}{object of class \link{XMLInternalNode-class} from \pkg{XML}}

\item{\code{name}}{name}

\item{\code{uri}}{uri}

\item{\code{email}}{email}
}
\if{html}{\out{</div>}}
}
}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-AtomAuthor-clone"></a>}}
\if{latex}{\out{\hypertarget{method-AtomAuthor-clone}{}}}
\subsection{Method \code{clone()}}{
The objects of this class are cloneable with this method.
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{AtomAuthor$clone(deep = FALSE)}\if{html}{\out{</div>}}
}

\subsection{Arguments}{
\if{html}{\out{<div class="arguments">}}
\describe{
\item{\code{deep}}{Whether to make a deep clone.}
}
\if{html}{\out{</div>}}
}
}
}

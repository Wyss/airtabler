% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/airtabler.R
\name{bind_nested_df}
\alias{bind_nested_df}
\title{Bind nested data.frames}
\usage{
bind_nested_df(dfs)
}
\arguments{
\item{dfs}{\code{list} of \code{data.frame}s}
}
\value{
A \code{data.frame} with rows joined and embedded \code{data.frame}s expanded
}
\description{
Create a \code{data.frame} from a \code{list} of \code{data.frames}, similar to
\code{\link[base]{rbind}}, but if there are embedded \code{data.frame}s they will be unpacked.
This method will work \strong{only} with an embedded \code{data.frame} that has a \strong{single row}!
}
\details{
This can be useful when the Last Updated columns are fetched from Airtable 
which may make joining \code{data.frames} difficult. Column names of embedded \code{data.frame}s are
that of the parent \code{data.frame} concatenated by the child \code{data.frame}.
E.g. \code{Last Updated.email}
}

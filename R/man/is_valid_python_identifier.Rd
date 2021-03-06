% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/utils.R
\name{is_valid_python_identifier}
\alias{is_valid_python_identifier}
\alias{is_valid_python_identifier_py2}
\alias{is_valid_python_identifier_py3}
\title{Determine if the given string is a valid identifier in Python}
\usage{
is_valid_python_identifier(identifier)

is_valid_python_identifier_py2(identifier)

is_valid_python_identifier_py3(identifier)
}
\arguments{
\item{identifier}{character, or an object that can be coerced to a
character.}
}
\value{
logical
}
\description{
Python 2 and Python 3 have different rules for determining if a string is a
valid variable name ("identifier"). The \code{is_valid_python_identifier} function
will use the logic that corresponds to the version of Python that
\code{reticulate} is using.
}
\details{
For Python 2, the rules can be checked with simple regex: a Python variable
name can contain upper- and lower-case letters, underscores, and numbers,
although it cannot begin with a number. Python 3 is more complicated, in that
it allows unicode characters. Fortunately, Python 3 introduces the string
\code{isidentifer} method which handles the logic for us.
}
\keyword{internal}

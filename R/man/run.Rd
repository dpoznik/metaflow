% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/run.R
\name{run}
\alias{run}
\title{Run metaflow}
\usage{
run(flow = NULL, ...)
}
\arguments{
\item{flow}{metaflow object}

\item{...}{passed command line arguments}
}
\description{
\code{run()} passes all command line arguments to metaflow.
These are captured whether running from interactive session or via \code{Rscript}
}
\details{
Command line arguments:
\itemize{
\item package_suffixes: any file suffixes to include in the run
\itemize{
\item ex: c('.csv', '.R', '.py')
}
\item datastore: 'local' (default) or 's3'
\item metadata:  'local' (default) or 'service'
\item batch: request flow to run on batch (default FALSE)
\item resume: resume flow from last failed step
\itemize{
\item logical (default FALSE)
}
\item with: any flow level decorators to include in the run
\itemize{
\item ex: c('retry', 'batch', 'catch')
}
\item max_workers: limits the number of tasks run in parallel
\item max_num_splits: maximum number of parallel splits allowed
\item other_args: escape hatch to provide args not covered above
\item key=value: any parameters specified as part of the flow
}
}
\section{Usage}{

\preformatted{
run(flow, batch = TRUE, with = c("retry", "catch"), max_workers = 16, max_num_splits = 200)
run(flow, alpha = 0.01)
}
}


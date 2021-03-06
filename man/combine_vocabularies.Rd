% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/vocabulary.R
\name{combine_vocabularies}
\alias{combine_vocabularies}
\title{Combines multiple vocabularies into one}
\usage{
combine_vocabularies(..., combine_stopwords = function(x)
  unique(unlist(lapply(x, attr, which = "stopwords"), use.names = FALSE)),
  combine_ngram = function(x) attr(x[[1]], "ngram"),
  combine_sep_ngram = function(x) attr(x[[1]], "sep_ngram"))
}
\arguments{
\item{...}{vocabulary objects created with \link{create_vocabulary}.}

\item{combine_stopwords}{function to combine stopwords from input vocabularies.
By default we take a union of all stopwords.}

\item{combine_ngram}{function to combine lower and upper boundary for n-grams
from input vocabularies. Usually these values should be the same, so we take this parameter
from first vocabulary.}

\item{combine_sep_ngram}{function to combine stopwords from input vocabularies.
Usually these values should be the same, so we take this parameter
from first vocabulary.}
}
\value{
\code{text2vec_vocabulary} see details in \link{create_vocabulary}.
}
\description{
Combines multiple vocabularies into one
}

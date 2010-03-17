\name{RFLPtools-package}
\alias{RFLPtools-package}
\alias{RFLPtools}
\docType{package}
\title{
Tools to analyse RFLP-data
}
\description{
  \pkg{RFLPtools} provides functions to analyse DNA fragment samples 
  (i.e. derived from RFLP-analysis) and standalone BLAST report 
  files (i.e. DNA sequence analysis).
}

\details{
\tabular{ll}{
Package: \tab RFLPtools\cr
Version: \tab 1.2 \cr
Date: \tab 2010-03-17 \cr
Depends: \tab R(>= 2.10.0), stats, utils, grDevices, RColorBrewer\cr
Suggests: \tab lattice, MKmisc\cr
License: \tab LGPL-3\cr
}}


\author{
  Fabienne Flessa \email{Fabienne.Flessa@uni-bayreuth.de},\cr
  Alexandra Kehl \email{Alexandra.Kehl@uni-bayreuth.de},\cr
  Matthias Kohl \email{Matthias.Kohl@stamats.de}\cr

\emph{Maintainer:} Matthias Kohl \email{Matthias.Kohl@stamats.de}
}

\references{
  Local Blast download: \url{ftp://ftp.ncbi.nih.gov/blast/executables/release/}
  
  Blast News: \url{http://blast.ncbi.nlm.nih.gov/Blast.cgi?CMD=Web&PAGE_TYPE=BlastNews}

  Poussier, Stephane; Trigalet-Demery, Danielle; Vandewalle, Peggy; Goffinet, Bruno; Luisetti, Jacques; Trigalet, Andre.
  Genetic diversity of Ralstonia solanacearum as assessed by PCR-RFLP of the hrp gene region, AFLP and 16S rRNA sequence 
  analysis, and identification of an African subdivision.
  Microbiology 2000 146:1679-1692 
  
  Matsumoto, Masaru; Furuya, Naruto; Takanami, Yoichi; Matsuyama, Nobuaki.  
  RFLP analysis of the PCR-amplified 28S rDNA in Rhizoctonia solani. 
  Mycoscience 1996 37:351 - 356
}
\examples{
data(RFLPdata)
res <- RFLPdist(RFLPdata)
plot(hclust(res[[1]]), main = "Euclidean distance")

par(mfrow = c(1,2))
plot(hclust(RFLPdist(RFLPdata, nrBands = 3)), cex = 0.7)
RFLPplot(RFLPdata, nrBands = 3, mar.bottom = 6, cex.axis = 0.8)

data(RFLPref)
RFLPrefplot(RFLPdata, RFLPref, nrBands = 6, cex.axis = 0.8)


data(BLASTdata)
res <- simMatrix(BLASTdata, sequence.range = TRUE, Min = 500)
library(RColorBrewer)
library(MKmisc)
myCol <- colorRampPalette(brewer.pal(8, "RdYlGn"))(128)
corPlot(res, col = myCol, minCor = 0, 
        labels = colnames(res), title = "(Dis-)Similarity Plot")
}
\keyword{package}
\keyword{multivariate}
\keyword{cluster}
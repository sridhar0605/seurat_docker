install.packages(c("ggplot2",
"devtools",
"ggthemes",
"Rtsne",
"scran",
"beanplot",
"mixtools",
"pheatmap",
"squash",
"tidyverse",
"Hmisc",
"plotrix",
"png",
"Rcpp",
"RcppArmadillo",
"Matrix",
"mgcv", 
"abind",
"igraph",
"h5", "Seurat",
"cluster",
"data.table"),
repo=paste0("https://mran.microsoft.com/snapshot/",format(Sys.Date(), format="%Y-%m-%d")))
source("https://bioconductor.org/biocLite.R")
biocLite(c("scran",
"biomaRt",
"RGSEA",
"fgsea",
"GenVisR",
"scde",
"ReactomePA",
"clusterProfiler",
"org.Mm.eg.db",
"org.Hs.eg.db",
"EGSEA",
"GenomicRanges",
"BiocGenerics", 
"DelayedArray", 
"DelayedMatrixStats",
"limma", "S4Vectors", 
"SingleCellExperiment",
"SummarizedExperiment", "batchelor"))

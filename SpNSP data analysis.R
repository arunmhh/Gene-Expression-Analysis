library(affy)
library(oligo)
library(tidyverse)
library(Biobase)
library(GEOquery)
library(limma)
getwd()
cellfiles <- list.celfiles()
affyraw <- read.celfiles(cellfiles)
eset <- oligo::rma(affyraw)
write.exprs(eset, file = "SpNSP normalization.txt",sep= "\t")
Anot <- read.csv("HT_HG-U133_Plus_PM.na35.annot.csv",skip= 25)
Anot %>% select(.,Probe.Set.ID,Gene.Symbol,Gene.Title) -> Anot1
datanorm <- read.delim("SpNSP normalization.txt", check.names = FALSE)
Annot_data_join <- left_join(Anot1,datanorm,by = "Probe.Set.ID")
write.csv(Annot_data_join,"SPNSP_Normalized_exp.csv")

## differential expression analysis##

pData(eset) # this give the number of data cel files.#
groups <- c("NSPD","NSPD","NSPFA","NSPFA","SPD","SPD","SPFA","SPFA")
design <- model.matrix(~factor(groups))
colnames(design) <- c("NSPFA","SPFAvsNSPFA, ")

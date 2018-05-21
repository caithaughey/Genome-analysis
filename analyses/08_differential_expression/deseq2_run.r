library("DESeq2")
directory <- "/home/caithaug/genome_analysis_course/Genome-analysis/analyses/08_differential_expression/htseq_output/"
setwd(directory)

# Loads data from HTSEQ Count
sampleFiles <- grep("_counts.txt",list.files(directory),value=TRUE)
sampleNames=sub('_counts.txt','',sampleFiles)
sampleCondition=sub('1','',sampleNames)
sampleTable=data.frame(sampleName=sampleNames, fileName=sampleFiles, condition=sampleCondition)

ddsHTSeq=DESeqDataSetFromHTSeqCount(sampleTable=sampleTable,directory=directory,design=~1)

dds <- DESeq(ddsHTSeq)
res <- results(dds)

# Extract the significantly differentially expressed genes
resOrdered<- res[order(res$padj),]
resSig <- subset(resOrdered, padj<0.05)

write.csv(res, file = "/home/caithaug/genome_analysis_course/Genome-analysis/analyses/08_differential_expression/deseq_output/deseq_res.csv")
write.csv(resSig, file = "/home/caithaug/genome_analysis_course/Genome-analysis/analyses/08_differential_expression/deseq_output/deseq_resSig.csv")
write.csv(resOrdered, file = "/home/caithaug/genome_analysis_course/Genome-analysis/analyses/08_differential_expression/deseq_output/deseq_resSig.csv")

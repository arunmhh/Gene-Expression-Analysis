# Gene-Expression-Analysis of TCGA_LIHC datasets.

## Data Acquisition
Transcriptome profiling data from The Cancer Genome Atlas Liver Hepatocellular Carcinoma (TCGA-LIHC) cohort were retrieved from the Genomic Data Commons (GDC) portal utilizing the **TCGAbiolinks R package**.

## Abstract
This study presents a comprehensive application of machine learning methodologies for tissue of origin prediction using TCGA RNA-sequencing data. The analytical framework encompasses exploratory data analysis, visualization, and unsupervised clustering of gene expression profiles through principal component analysis (PCA), t-distributed Stochastic Neighbor Embedding (t-SNE), and hierarchical clustering with heatmap visualization. Additionally, supervised machine learning algorithms were implemented for cancer type classification based on transcriptomic signatures.

**Technical Requirements**: R version ≥ 3.3 is required for compatibility. Earlier versions of TCGAbiolinks employed legacy functions prefixed with "TCGA" rather than "GDC", reflecting the historical transition of data repositories from the Data Coordinating Center (DCC) to the National Cancer Institute's Genomic Data Commons (GDC).

## Background
RNA-sequencing has emerged as the predominant methodology for transcriptome analysis in cancer genomics research. Extensive gene expression datasets are publicly available through initiatives such as [The Cancer Genome Atlas (TCGA)](https://www.cancer.gov/about-nci/organization/ccg/research/structural-genomics/tcga). The TCGA dataset comprises approximately 10,000 samples with expression quantification for ~20,000 genes, representing 32 distinct cancer histotypes.



<table>
  <tr>    
    <td><img src="https://github.com/arunmhh/Gene-Expression-Analysis/blob/main/visuals/res_pca.png?raw=true" width="500"/></td>
    <td><img src="https://github.com/arunmhh/Gene-Expression-Analysis/blob/main/visuals/PreprocessingOutput.png?raw=true" width="500"/></td>
  </tr>
</table>


<table>
  <tr>
    <td><img src="https://github.com/arunmhh/Gene-Expression-Analysis/blob/main/visuals/heatmap_top100.png?raw=true" width="500"/></td>
    <td><img src="https://github.com/arunmhh/Gene-Expression-Analysis/blob/main/visuals/heatmap_top200.png?raw=true" width="500"/></td>
  </tr>
</table>

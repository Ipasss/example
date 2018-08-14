 library(bitops)
 library(httr)
 library(RCurl)
 library(XML)
 library(tm)
 library(NLP)
 library(tmcn)
 library(jiebaRD)
 library(jiebaR)
 library(readtext)

prefix = "http://www.sacred-texts.com/neu/mart/mart"
data <- list()
for (id in 0:502){
  #a = sprintf("%.3d",id)
  #url  <- paste0( prefix, a, ".htm" )
  #html=htmlParse(url)      #(GET(url),encoding="UTF-8") 此網頁為特例，實際上應如此
  #major <- xpathSApply( html, "/html/body/pre/text()",xmlValue )
  #chapter <- xpathSApply( html, "/html/body/center[1]/h2", xmlValue )
  #name <- paste0("C:/Users/user/Desktop/GITHUB/example/Week3/DAT/", chapter, ".txt")
  #write(major, name, append = TRUE)
}

temp1=VCorpus(temp,DataframeSource(temp))

docs <- readLines("./DAT/Le Morte d'Arthur BOOK XXI CHAPTER III.txt")
docs <- as.VCorpus(docs)
docs1=strsplit(docs$text,split = " ")

names=DirSource("./DAT")
  temp=readtext::readtext("./DAT")

docs.corpus <- Corpus(DirSource("./DAT"))
docs.seg <- tm_map(docs.corpus, segmentCN)
docs.tdm <- TermDocumentMatrix(docs.seg)

temp_table=read.table("./DAT/Le Morte d'Arthur BOOK XXI CHAPTER III.txt",header = TRUE,fill = FALSE,sep = "\n",quote = "")
temp_delim=read.delim("./DAT/Le Morte d'Arthur BOOK XXI CHAPTER III.txt")

 library(bitops)
 library(httr)
 library(RCurl)
 library(XML)
 library(tm)
 library(NLP)
 library(tmcn)
 library(jiebaRD)
 library(jiebaR)

prefix = "http://www.sacred-texts.com/neu/mart/mart"
data <- list()
for (id in 0:2){
  a = sprintf("%.3d",id)
  url  <- paste0( prefix, a, ".htm" )
  html=htmlParse(url)      #(GET(url),encoding="UTF-8") 此網頁為特例，實際上應如此
  major <- xpathSApply( html, "/html/body/pre/text()",xmlValue )
  chapter <- xpathSApply( html, "/html/body/center[1]/h2", xmlValue )
  #name <- paste0("C:/Users/user/Desktop/GITHUB/example/Week3/DAT/", chapter, ".txt")
  #write(major, name, append = TRUE)
  }

names = list.files("./DAT")
q=strsplit(names, split = " ")
for (book_num in 1:502) {
  r=q[[book_num]][5]
}

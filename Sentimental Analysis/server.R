library(RSentiment)
library(shiny)
library(plotrix)
shinyServer(function(input, output) {
 
  output$myTable<-renderTable(calculate_total_presence_sentiment(input$data),colnames ="false" )
 
    output$mypie<-renderPlot({
    variable<-calculate_total_presence_sentiment(input$data)
    b<-c(as.integer(variable[2,1]),as.integer(variable[2,2]),as.integer(variable[2,3]),as.integer(variable[2,4]),as.integer(variable[2,5]),as.integer(variable[2,6]))
    lab<-c("Sarcasm","Neutral","Negative","Positive","V.Negative","V.Positive")
    color<-c("yellow","grey","pink", "blue", "red","green")
    barplot(b,xlab="",ylab="values",main="Sentiment analysis", names.arg=lab,col=color)
    legend("topright", lab, cex=1, fill=color)
    
  })
  
}) 


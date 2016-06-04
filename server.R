library(shiny) 

BMI<-function(wt,ht) {wt/(ht^2)}

infer_f<-function(wt,ht){
    BMI_value<-wt/(ht^2)
    ifelse(BMI_value<18.5,"under wt",ifelse(BMI_value<25,"normal wt",ifelse(BMI_value<30,"over wt","obese")))
}

shinyServer(
    function(input, output) {
        
        output$inputwtvalue <- renderPrint({input$wt})
        output$inputhtvalue <- renderPrint({input$ht})
        output$result <- renderPrint({BMI(input$wt,input$ht)})
        output$infer <- renderPrint({infer_f(input$wt,input$ht)})
    } 
)
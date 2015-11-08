source("utils.R")
source("plot2.R")
source("plot3.R")

## create plot on current graphics device; reuse the plot2 and plot3 functions

plot4 <- function(data=NULL){
    par(mfrow=c(2,2))
    plot2(data)
    plot(data$Voltage ~ data$DateTime, type="l",
         ylab="Voltage", xlab="datetime")
    plot3(data)
    plot(data$Global_reactive_power ~ data$DateTime, type="l",
         ylab="Global_reactive_power", xlab="datetime")
}

## save the plot as a png file.
make_p4 <- function(data=NULL){
    to_png(data, "plot4.png", plot4)
}

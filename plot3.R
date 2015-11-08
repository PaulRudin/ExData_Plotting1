source("utils.R")

## Create the plot on the current graphics device
plot3 <- function(data=NULL){
    plot(data$Sub_metering_1 ~ data$DateTime,
         type="l",
         main = "",
         ylab = "Energy sub metering",
         xlab = "")
    lines(data$Sub_metering_2 ~ data$DateTime,
         type="l",
         col="red")
    lines(data$Sub_metering_3 ~ data$DateTime,
         type="l",
         col="blue")
    legend("topright", names(data)[7:9],
           lty=c(1,1),
           col=c("black", "red", "blue"))
}

## write to file
make_p3 <- function (data=NULL) {
    to_png(data, "plot3.png", plot3)
}

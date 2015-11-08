source("utils.R")

## Create plot on the active graphics device
plot2 <- function(data=NULL){
    plot(data$Global_active_power ~ data$DateTime,
         type="l",
         main = "",
         ylab = "Global Active Power (kilowatts)",
         xlab = ""
         )
}

## save plot to a png
make_p2 <- function (data=NULL) {
    to_png(data, "plot2.png", plot2)
}

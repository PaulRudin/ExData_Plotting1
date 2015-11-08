source("utils.R")

## create the plot on the currently active graphics device.
plot1 <- function(data){
    hist(data$Global_active_power,
         main="Global Active Power",
         xlab = "Global Active Power (kilowatts)",
         col = "red")
}

## write the plot to a png file.
make_p1 <- function(data=NULL) {
    to_png(data, "plot1.png", plot1)
}


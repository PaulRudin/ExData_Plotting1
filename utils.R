library(data.table)

## make POSIXct object from date and time strings in the format in the original
## data
ftime <- function (d, t) {
    dt_format <- "%d/%m/%Y %H:%M:%S"
    dts <- as.POSIXct(strptime(paste(d,t), dt_format))
}

## read the data file from the current directory, subset to the dates needed
## for the plots and create a datetime column

loaddata <- function(fname = "household_power_consumption.txt") {
    d <- fread(fname, na.strings="?")
    dt_format <- "%d/%m/%Y %H:%M:%S"
    d[,DateTime:=ftime(Date, Time)]
    subset(d, DateTime >= ftime("01/02/2007", "00:00:00") &
              DateTime <= ftime("02/02/2007", "23:59:59"))
}


## make a png using the filename and plotting function provided
## if data is not null that will be used, otherwise load the data afresh.
to_png <- function (data=NULL, fname, pfunc) {
    if (is.null(data)) data <- loaddata()
    png(fname)
    pfunc(data)
    dev.off()
}

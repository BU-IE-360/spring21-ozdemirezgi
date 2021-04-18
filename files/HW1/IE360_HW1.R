# IE360 Homework 1
# Author: Hatice Ezgi Özdemir
# Date: 19.04.2021

library(readxl)
EVDS <- read_excel("C:\\Users\\Ezgi-Pc\\Desktop\\EVDS_data.xlsx")
x_axis <- unlist(EVDS[1])
names(x_axis) <- NULL
x_axis <- x_axis[-(152:181)]

####USD/TRY Exchange Rates####

usd_try <- unlist(EVDS[2])
names(usd_try) <- NULL
usd_try <- as.numeric(usd_try[-(152:181)])


#The search volume data
setwd("C:/Users/Ezgi-Pc/Desktop")
google_usd <- read.csv(file = 'usd_try.csv')
google_usd <- unlist(google_usd)
names(google_usd) <- NULL
google_usd <- as.numeric(google_usd)

#Plots
plot(usd_try, type = "l", xaxt = "n", xlab = " ", ylab = " ", main = "USD/TRY Exchange Rates")
axis(side = 1, labels = x_axis, at = 1:151, tick = FALSE, las = 2)
plot(google_usd, type = "l", xaxt = "n", xlab = " ", ylab = " ", main = "The Search Volume")
axis(side = 1, labels = x_axis, at = 1:151, tick = FALSE, las = 2)



####Interest Rates####

cons_int <- unlist(EVDS[4])
names(cons_int) <- NULL
cons_int <- as.numeric(cons_int[-(152:181)])

#The search volume data
setwd("C:/Users/Ezgi-Pc/Desktop")
google_int <- read.csv(file = 'google_int.csv')

#Plots
plot(cons_int, type = "l", xaxt = "n", xlab = " ", ylab = " ", main = "The Interest Rates")
axis(side = 1, labels = x_axis, at = 1:151, tick = FALSE, las = 2)
plot(google_int, type = "l", xaxt = "n", xlab = " ", ylab = " ", main = "The Search Volume")
axis(side = 1, labels = x_axis, at = 1:151, tick = FALSE, las = 2)



####Consumer Price Index####

cpi <- unlist(EVDS[6])
names(cpi) <- NULL
cpi <- as.numeric(cpi[-(152:181)])

#The search volume data
setwd("C:/Users/Ezgi-Pc/Desktop")
google_inf <- read.csv(file = 'google_inf.csv')

#Plots
plot(cpi, type = "l", xaxt = "n", xlab = " ", ylab = " ", main = "The Consumer Price Index")
axis(side = 1, labels = x_axis, at = 1:151, tick = FALSE, las = 2)
plot(google_inf, type = "l", xaxt = "n", xlab = " ", ylab = " ", main = "The Search Volume")
axis(side = 1, labels = x_axis, at = 1:151, tick = FALSE, las = 2)



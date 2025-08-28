#(1)
Delivery_Times <- read.table("Exercise - Lab 05.txt", header = TRUE) 
fix(Delivery_Times)
attach(Delivery_Times)
`Delivery_Time_(minutes)`



#(2)
hist(Delivery_Times$DeliveryTime, 
     main = "Histogram for Delivery Times", 
     xlab = "Delivery Time (minutes)", 
     ylab = "Frequency",
     breaks = seq(20, 70, length.out = 10), 
     right = FALSE)


#(4)
hist_data <- hist(Delivery_Times$Deliver_Times,
                  breaks = seq(20, 70, length.out = 10),
                  right = FALSE,
                  plot = FALSE)

cum_freq <- cumsum(hist_data$counts)

plot(hist_data$breaks[-1], cum_freq,
     type = "o",
     main = "Cumulative Frequency Polygon (Ogive)",
     xlab = "Delivery Time (minutes)",
     ylab = "Cumulative Frequency",
     col = "black")


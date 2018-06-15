setwd('C:/Users/alk511/Desktop/Ackerman Ziff')

FHV01 <- read.csv("fhv_tripdata_2016-01.csv")
FHV02 <- read.csv(url("https://s3.amazonaws.com/nyc-tlc/trip+data/fhv_tripdata_2017-02.csv"))
FHV03 <- read.csv(url("https://s3.amazonaws.com/nyc-tlc/trip+data/fhv_tripdata_2017-03.csv"))
FHV04 <- read.csv(url("https://s3.amazonaws.com/nyc-tlc/trip+data/fhv_tripdata_2017-04.csv"))
FHV05 <- read.csv(url("https://s3.amazonaws.com/nyc-tlc/trip+data/fhv_tripdata_2017-05.csv"))
FHV06 <- read.csv(url("https://s3.amazonaws.com/nyc-tlc/trip+data/fhv_tripdata_2017-06.csv"))
FHV07 <- read.csv(url("https://s3.amazonaws.com/nyc-tlc/trip+data/fhv_tripdata_2017-07.csv"))
FHV08 <- read.csv(url("https://s3.amazonaws.com/nyc-tlc/trip+data/fhv_tripdata_2017-08.csv"))
FHV09 <- read.csv(url("https://s3.amazonaws.com/nyc-tlc/trip+data/fhv_tripdata_2017-09.csv"))
FHV10 <- read.csv(url("https://s3.amazonaws.com/nyc-tlc/trip+data/fhv_tripdata_2017-10.csv"))
FHV11 <- read.csv(url("https://s3.amazonaws.com/nyc-tlc/trip+data/fhv_tripdata_2017-11.csv"))
FHV12 <- read.csv("fhv_tripdata_2016-12.csv")

FHV01 <- read.csv(url("https://s3.amazonaws.com/nyc-tlc/trip+data/fhv_tripdata_2017-01.csv"))


#remove NA rows for taxizones for each month to reduce dataframe size
FHV06 <- FHV06[ which(FHV06$DOlocationID == 179 | FHV06$DOlocationID == 7 | FHV06$DOlocationID == 112 | FHV06$DOlocationID == 255 | FHV06$DOlocationID == 195 | FHV06$DOlocationID == 40 | FHV06$DOlocationID == 106 | FHV06$PUlocationID == 179 | FHV06$PUlocationID == 7 | FHV06$PUlocationID == 112 | FHV06$PUlocationID == 255 | FHV06$PUlocationID == 195 | FHV06$PUlocationID == 40 | FHV06$PUlocationID == 106),]


#Bind filtered months together
Total_FHV <- rbind(FHV01,FHV02,FHV03,FHV04,FHV05,FHV06,FHV07,FHV08,FHV09,FHV10,FHV11,FHV12)

##set up##
#floor time by hour
library(lubridate) 
x = as.POSIXct(Total_FHV$Pickup_DateTime)
Total_FHV$POroundtime <- floor_date(x, "60 minutes")
Total_FHV$POroundtime <- format(as.POSIXct(strptime(Total_FHV$POroundtime,"%Y-%m-%d %H:%M:%S", tz="")), format = "%H:%M:%S")

Total_FHV$DOroundtime <- floor_date(x, "60 minutes")
Total_FHV$DOroundtime <- format(as.POSIXct(strptime(Total_FHV$DOroundtime,"%Y-%m-%d %H:%M:%S", tz="")), format = "%H:%M:%S")

#weekdays
library(lubridate)
Total_FHV$day_of_week<-wday(Total_FHV$Pickup_DateTime)

#filter by TOD and DOW
Total_FHV <- Total_FHV[Total_FHV$day_of_week %in% c(2,3,4,5,6) & (Total_FHV$POroundtime %in% c("07:00:00","08:00:00","17:00:00","18:00:00","19:00:00") |  Total_FHV$DOroundtime %in% c("07:00:00","08:00:00","17:00:00","18:00:00","19:00:00")) , ]

#subset by taxi zone
Old_Astoria <- subset(Total_FHV2, PUlocationID == 179 | DOlocationID == 179)
Astoria <-subset(Total_FHV2, PUlocationID == 7 | DOlocationID == 7)
Greenpoint <-subset(Total_FHV2, PUlocationID == 112 | DOlocationID == 112)
Williamsburg <-subset(Total_FHV2, PUlocationID == 255 | DOlocationID == 255)
Red_Hook <-subset(Total_FHV2, PUlocationID == 195 | DOlocationID == 195)
Carroll_Gardens <-subset(Total_FHV2, PUlocationID == 40 | DOlocationID == 40)
Gowanus <-subset(Total_FHV2, PUlocationID == 106 | DOlocationID == 106)

#export CSVs
write.csv(Old_Astoria, "Old Astoria.csv")
write.csv(Astoria, "Astoria.csv")
write.csv(Greenpoint, "Greenpoint.csv")
write.csv(Williamsburg, "Williamsburg.csv")
write.csv(Red_Hook, "Red Hook.csv")
write.csv(Carroll_Gardens, "Carroll Gardens.csv")
write.csv(Gowanus, "Gowanus.csv")
write.csv(Total_FHV, "Total FHV Trips.csv")

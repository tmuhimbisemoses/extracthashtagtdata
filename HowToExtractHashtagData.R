#load libraries
library(twitteR)
library(ROAuth)

#connect to twitter api and authenticate. Select one for direct authentication
api_key <- "DWEQ52JjfFrhxYbQYN3xlvsfe"
api_secret <- "cP7dsQIquJwuxqlHuSxyQdKE3AReS4Koo7BQrEmjKWmbnhOXLd"
access_token <- "65899213-xkaWo4Qr4CAZDiC4V5m9NgRVtk25J5wuP334b9zvZ"
access_token_secret<-"utU0STGq6KjXwk1m6gJGvLbuh48CSpP9jThIfbt82rJYq" 
setup_twitter_oauth(api_key, api_secret, access_token,access_token_secret)

#extract hashtag data. The maximum for Twitter is 3200, but we use 50 for the case of this tutorial
sampledata <- searchTwitter("#RIPMowzeyRadio", n=50)

#convert variable to data frame 
sampledata.df <- do.call(rbind, lapply(sampledata, as.data.frame))

#save extracted data to csv file
write.csv(sampledata.df, "d:/mowzeyhashtags.csv")

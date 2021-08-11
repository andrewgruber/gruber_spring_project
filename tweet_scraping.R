# Get Tweets
library(rtweet)
tweet_df <- search_tweets("Andrew Cuomo", n = 1000, 
                          include_rts = FALSE, lang="en")
tweet_df <- rbind(tweet_df, search_tweets("Governor Cuomo", n = 1000, 
                                          include_rts = FALSE, lang="en"))
tweet_df <- rbind(tweet_df, search_tweets("Cuomo", n = 1000, 
                                          include_rts = FALSE, lang="en"))
#Remove tweets appearing in more than one search
library(dplyr)
df <- select(tweet_df, screen_name, text, created_at)
df <- distinct(df, screen_name, text, created_at)

#Text Cleaning
df$text <- gsub("https\\S*","", df$text)
df$text <- gsub("@\\w+", "", df$text) 
df$text <- gsub('[0-9]+', '', df$text) 
df$text <- str_replace_all(df$text, "[[:punct:]]", " ")
df$text <- tolower(df$text)



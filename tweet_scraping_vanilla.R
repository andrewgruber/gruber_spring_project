# Load rtweet library
library(rtweet)
# Set Up Permissions 
# These come from the twitter development portal
# Reset these if the token is not being created
api_key <- 'DJRpY77Nm2mA3Z5r0f2tyPu4S'
api_secret_key <- 'DhKAJ3Hhaby80xgQte1uWQkwHFKm9yAIUlxuFof9UHhV8AZXNT'
access_token <- '2686239524-J8JaGEXvgW1CSJa2vD2vs5RftvozeMMFlEHrW7z'
access_token_secret <- 'nOAv4DYv8hsRLTgcXTvUjEoqw3IVRyB5YtQjrj8HvqM4a'
token <- create_token(app="gruberspring_tweetstreaming",
                      consumer_key=api_key,
                      consumer_secret = api_secret_key,
                      access_token = access_token,
                      access_secret = access_token_secret)

# Tweet Streaming for BLM
df1 <- search_tweets("BLM", n = 100000, include_rts = FALSE, lang="en", verified = FALSE, retryonratelimit = TRUE)
df2 <- search_tweets("george floyd", n = 100000, include_rts = FALSE, lang="en", verified = FALSE, retryonratelimit = TRUE)
df3 <- search_tweets("breonna taylor", n = 100000, include_rts = FALSE, lang="en", verified = FALSE, retryonratelimit = TRUE)
df4 <- search_tweets("black lives matter", n = 100000, include_rts = FALSE, lang="en", verified = FALSE, retryonratelimit = TRUE)
df5 <- search_tweets("blacklivesmatter", n = 100000, include_rts = FALSE, lang="en", verified = FALSE, retryonratelimit = TRUE)
df6 <- search_tweets("all lives matter", n = 100000, include_rts = FALSE, lang="en", verified = FALSE, retryonratelimit = TRUE)
df7 <- search_tweets("thin blue line", n = 100000, include_rts = FALSE, lang="en", verified = FALSE, retryonratelimit = TRUE)
df8 <- search_tweets("police brutality", n = 100000, include_rts = FALSE, lang="en", verified = FALSE, retryonratelimit = TRUE)
df9 <- search_tweets("defund the police", n = 100000, include_rts = FALSE, lang="en", verified = FALSE, retryonratelimit = TRUE)
df10 <- search_tweets("defundthepolice", n = 100000, include_rts = FALSE, lang="en", verified = FALSE, retryonratelimit = TRUE)
df11 <- search_tweets("blue lives matter", n = 100000, include_rts = FALSE, lang="en", verified = FALSE, retryonratelimit = TRUE)
df12 <- search_tweets("sayhername", n = 100000, include_rts = FALSE, lang="en", verified = FALSE, retryonratelimit = TRUE)
df13 <- search_tweets("say her name", n = 100000, include_rts = FALSE, lang="en", verified = FALSE, retryonratelimit = TRUE)
df14 <- search_tweets("nojusticenopeace", n = 100000, include_rts = FALSE, lang="en", verified = FALSE, retryonratelimit = TRUE)
df15 <- search_tweets("no justice no peace", n = 100000, include_rts = FALSE, lang="en", verified = FALSE, retryonratelimit = TRUE)
df16 <- search_tweets("i can't breathe", n = 100000, include_rts = FALSE, lang="en", verified = FALSE, retryonratelimit = TRUE)
df17 <- search_tweets("i cant breathe", n = 100000, include_rts = FALSE, lang="en", verified = FALSE, retryonratelimit = TRUE)
study1_df <- rbind(df1,df2,df3,df4,df5,df6,df7,df8,df9,df10,df11,df12,df13,df14,df15,df16,df17)
rm(df1,df2,df3,df4,df5,df6,df7,df8,df9,df10,df11,df12,df13,df14,df15,df16,df17)


# Tweet Streaming for Abortion 
df1 <- search_tweets("abortion", n = 100000, include_rts = FALSE, lang="en", verified = FALSE, retryonratelimit = TRUE)
df2 <- search_tweets("pro-life", n = 100000, include_rts = FALSE, lang="en", verified = FALSE, retryonratelimit = TRUE)
df3 <- search_tweets("pro life", n = 100000, include_rts = FALSE, lang="en", verified = FALSE, retryonratelimit = TRUE)
df4 <- search_tweets("prolife", n = 100000, include_rts = FALSE, lang="en", verified = FALSE, retryonratelimit = TRUE)
df5 <- search_tweets("pro-choice", n = 100000, include_rts = FALSE, lang="en", verified = FALSE, retryonratelimit = TRUE)
df6 <- search_tweets("pro choice", n = 100000, include_rts = FALSE, lang="en", verified = FALSE, retryonratelimit = TRUE)
df7 <- search_tweets("prochoice", n = 100000, include_rts = FALSE, lang="en", verified = FALSE, retryonratelimit = TRUE)
df8 <- search_tweets("texas ban", n = 100000, include_rts = FALSE, lang="en", verified = FALSE, retryonratelimit = TRUE)
df9 <- search_tweets("texas law", n = 100000, include_rts = FALSE, lang="en", verified = FALSE, retryonratelimit = TRUE)
df10 <- search_tweets("reproductive rights", n = 100000, include_rts = FALSE, lang="en", verified = FALSE, retryonratelimit = TRUE)
df11 <- search_tweets("right to life", n = 100000, include_rts = FALSE, lang="en", verified = FALSE, retryonratelimit = TRUE)
study2_df <- rbind(df1,df2,df3,df4,df5,df6,df7,df8,df9,df10,df11)
rm(df1,df2,df3,df4,df5,df6,df7,df8,df9,df10,df11)

# Tweet Streaming for Covid Vaccine Hesitancy 
df1 <- search_tweets("pfizer", n = 100000, include_rts = FALSE, lang="en", verified = FALSE, retryonratelimit = TRUE)
df2 <- search_tweets("moderna", n = 100000, include_rts = FALSE, lang="en", verified = FALSE, retryonratelimit = TRUE)
df3 <- search_tweets("j&j", n = 100000, include_rts = FALSE, lang="en", verified = FALSE, retryonratelimit = TRUE)
df4 <- search_tweets("covaxin", n = 100000, include_rts = FALSE, lang="en", verified = FALSE, retryonratelimit = TRUE)
df5 <- search_tweets("vaccine hesitancy", n = 100000, include_rts = FALSE, lang="en", verified = FALSE, retryonratelimit = TRUE)
df6 <- search_tweets("vaccine injury", n = 100000, include_rts = FALSE, lang="en", verified = FALSE, retryonratelimit = TRUE)
df7 <- search_tweets("antivax", n = 100000, include_rts = FALSE, lang="en", verified = FALSE, retryonratelimit = TRUE)
df8 <- search_tweets("booster shot", n = 100000, include_rts = FALSE, lang="en", verified = FALSE, retryonratelimit = TRUE)
study3_df <- rbind(df1,df2,df3,df4,df5,df6,df7,df8)
rm(df1,df2,df3,df4,df5,df6,df7,df8)

# Get only columns of interest
df <- study1_df[,c('created_at','screen_name','text','name','location','description','profile_image_url')]
write.csv(df, 'study1.csv', row.names = FALSE)

df <- study2_df[,c('created_at','screen_name','text','name','location','description','profile_image_url')]
write.csv(df, 'study2.csv', row.names = FALSE)

df <- study3_df[,c('created_at','screen_name','text','name','location','description','profile_image_url')]

# Study 3 was generating a very large number of tweets
# In order to upload them to github, I needed to divide the file into fewer rows each 
df1 <- df[1:100000,]
df2 <- df[100001:200000,]
df3 <- df[200001:300000,]
df4 <- df[300001:nrow(df),]

write.csv(df1, 'study3_week1.csv', row.names = FALSE)
write.csv(df2, 'study3_week2.csv', row.names = FALSE)
write.csv(df3, 'study3_week3.csv', row.names = FALSE)
write.csv(df4, 'study3_week4.csv', row.names = FALSE)



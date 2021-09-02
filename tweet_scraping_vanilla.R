library(rtweet)
api_key <- 'PfcaB8WsyquuarXMxphWzxUDE'
api_secret_key <- 'QlqoyhuJ7l994iJljjuANA3y1mVDA6EhzOX3SxaMN1O5f16VSL'
access_token <- '2686239524-KgBbuTdRKUcZneAoCGrOfSw0Ww3PdoQly01YnkA'
access_token_secret <- '4shjFAiRajvEdZ2tD94i6Z7r3fLBpkhLyviQxEafhiCQB'
token <- create_token(app="gruberspring_tweetstreaming",
                      consumer_key=api_key,
                      consumer_secret = api_secret_key)
# BLM
## Friday Queries
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
study1_df <- rbind(df1,df2,df3,df4,df5,df6,df7,df8,df9,df10)
rm(df1,df2,df3,df4,df5,df6,df7,df8,df9,df10)
length(unique(study1_df$text)) 

## Thursday Queries
df1 <- search_tweets("blue lives matter", n = 100000, include_rts = FALSE, lang="en", verified = FALSE, retryonratelimit = TRUE)
df2 <- search_tweets("sayhername", n = 100000, include_rts = FALSE, lang="en", verified = FALSE, retryonratelimit = TRUE)
df3 <- search_tweets("say her name", n = 100000, include_rts = FALSE, lang="en", verified = FALSE, retryonratelimit = TRUE)
df4 <- search_tweets("nojusticenopeace", n = 100000, include_rts = FALSE, lang="en", verified = FALSE, retryonratelimit = TRUE)
df5 <- search_tweets("no justice no peace", n = 100000, include_rts = FALSE, lang="en", verified = FALSE, retryonratelimit = TRUE)
df6 <- search_tweets("i can't breathe", n = 100000, include_rts = FALSE, lang="en", verified = FALSE, retryonratelimit = TRUE)
df7 <- search_tweets("i cant breathe", n = 100000, include_rts = FALSE, lang="en", verified = FALSE, retryonratelimit = TRUE)


# Cuomo
df1 <- search_tweets("cuomo", n = 100000, include_rts = FALSE, lang="en", verified = FALSE, retryonratelimit = TRUE)
df2 <- search_tweets("cuomo resignation", n = 100000, include_rts = FALSE, lang="en", verified = FALSE, retryonratelimit = TRUE)
df3 <- search_tweets("cuomo allegations", n = 100000, include_rts = FALSE, lang="en", verified = FALSE, retryonratelimit = TRUE)
df4 <- search_tweets("cuomo sexual assault", n = 100000, include_rts = FALSE, lang="en", verified = FALSE, retryonratelimit = TRUE)
df5 <- search_tweets("cuomo sexual abuse", n = 100000, include_rts = FALSE, lang="en", verified = FALSE, retryonratelimit = TRUE)
df6 <- search_tweets("governor cuomo", n = 100000, include_rts = FALSE, lang="en", verified = FALSE, retryonratelimit = TRUE)
study2_df <- rbind(df1,df2,df3,df4,df5,df6)
rm(df1,df2,df3,df4,df5,df6)
length(unique(study2_df$text)) #49996 unique tweets
# Covid Vaccine Hesitancy 
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
library(dplyr)
length(unique(study3_df$text)) #338903 unique tweets


df <- study1_df[,c('created_at','screen_name','text','name','location','description','profile_image_url')]
write.csv(df, 'study1_week3.csv', row.names = FALSE)

df <- study2_df[,c('created_at','screen_name','text','name','location','description','profile_image_url')]
write.csv(df, 'study2_week2.csv', row.names = FALSE)

df <- study3_df[,c('created_at','screen_name','text','name','location','description','profile_image_url')]
df1 <- df[1:100000,]
df2 <- df[100001:200000,]
df3 <- df[200001:300000,]
df4 <- df[300001:nrow(df),]

write.csv(df1, 'study3_week5.csv', row.names = FALSE)
write.csv(df2, 'study3_week6.csv', row.names = FALSE)
write.csv(df3, 'study3_week7.csv', row.names = FALSE)
write.csv(df4, 'study3_week8.csv', row.names = FALSE)



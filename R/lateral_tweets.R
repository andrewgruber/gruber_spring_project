library(rtweet)
# Security for accessing twitter API - if this is not working, regenerate the keys
api_key <- 'DJRpY77Nm2mA3Z5r0f2tyPu4S'
api_secret_key <- 'DhKAJ3Hhaby80xgQte1uWQkwHFKm9yAIUlxuFof9UHhV8AZXNT'
access_token <- '2686239524-J8JaGEXvgW1CSJa2vD2vs5RftvozeMMFlEHrW7z'
access_token_secret <- 'nOAv4DYv8hsRLTgcXTvUjEoqw3IVRyB5YtQjrj8HvqM4a'
token <- create_token(app="gruberspring_tweetstreaming",
                      consumer_key=api_key,
                      consumer_secret = api_secret_key,
                      access_token = access_token,
                      access_secret = access_token_secret)

# Function to get one users' tweets, from before and after the tweet we originally scraped
lateral_tweets <- function(name, tweet){
  # Get timeline - max of 3200 tweets
  df =  get_timeline(name, n = 3200)
  df <- df[,c('created_at','screen_name','text','name','location','description','profile_image_url')]
  # Index of our tweet
  idx = as.numeric(which(df$text==tweet))
  
  # get 100 from before, 100 from after
  lb_post = idx - 100
  ub_post = idx - 1
  lb_pre = idx + 1
  ub_pre = idx + 100
  
  post <- df[lb_post:ub_post,]
  post$pre_post <- 'post'
  pre  <- df[lb_pre:ub_pre,] 
  pre$pre_post <- 'pre'
  
  # return the dataframe of tweets
  return(rbind(pre,post))
}

#Sample usage using an uploaded dataframe - 'study1_week1' 
data <- lateral_tweets(name=study1_week1$screen_name[1], tweet = study1_week1$text[1] )
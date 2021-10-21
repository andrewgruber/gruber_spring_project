library(rtweet)
# these may need to be changed, consult developer portal 

#keys
api_key <- 'Ch8tHPAb0Aj89GEpINdS7km6P'
api_secret_key <- 'TcIa6wXX9SXCwKht3StZFtjQtsD6DSW9A3R07Ko4eytHadxs3i'
access_key <-'2686239524-vX7HNQVrV61QqdIEAPsIsWU8TDwWRq1S6MX5szL'
access_secret_key <- 'ZTVgwKg2wRyfiQtTddw3s2yIuit4FduqZ3XLrtzVr9RiU'

#set up token with developer twitter
token <- create_token(
  app = "gruberspring_tweetstreaming",
  consumer_key = api_key,
  consumer_secret = api_secret_key,
  access_token = access_key,
  access_secret = access_secret_key)

#scrape 
tweet_df <- search_tweets("Cuomo", n = 100000, include_rts = FALSE, lang="en", verified = FALSE, retryonratelimit = TRUE)

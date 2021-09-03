export REDDIT_CLIENT_ID = '3-XWy138GarDUw'
export REDDIT_LOGIN_REDIRECT_URI = 'https://localhost:8080/login'
export REDDIT_LOGIN_AUTH_URL = (post_login_redirect_path) -> "https://www.reddit.com/api/v1/authorize?response_type=code&duration=permanent&scope=edit,flair,history,identity,mysubreddits,privatemessages,read,report,save,submit,subscribe,vote,wikiread&client_id=#{REDDIT_CLIENT_ID}&redirect_uri=#{REDDIT_LOGIN_REDIRECT_URI}&state=#{post_login_redirect_path}"
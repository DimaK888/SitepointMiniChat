Rails.application.config.middleware.use OmniAuth::Builder do
  provider :github, ENV['GITHUB_CLIENT_ID'], ENV['GITHUB_SECRET'],
           client_options: {
               site: "https://github.com",
               authorize_url: "https://github.com/login/oauth/authorize",
               token_url: "https://github.com/login/oauth/access_token"
           }
end
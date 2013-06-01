Rails.application.config.middleware.use OmniAuth::Builder do
  provider :developer unless Rails.env.production?
  provider :twitter, ENV['7d8H8xbgTCUYvDmIFaPZOA'], ENV['OUiq9EEWHaEtfUc2lEgwn9f3enWcwW3Dw0Xzpmk1o']
end

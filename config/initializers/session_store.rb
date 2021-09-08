if Rails.env === 'production'
    Rails.application.config.session_store :cookie_store, key: '_traveller', domain: 'https://localhost:3000' 
  else
    Rails.application.config.session_store :cookie_store, key: '_traveler'

end

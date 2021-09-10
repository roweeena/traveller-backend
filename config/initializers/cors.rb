Rails.application.config.middleware.insert_before 0, Rack::Cors do
  allow do
    origins 'http://localhost:3000','http://localhost:8080', 'https://nsw-traveller-backend.herokuapp.com', 'https://agitated-einstein-cc3aa7.netlify.app'

    resource '*',
      :headers => :any,
      :methods => [:get, :post, :put, :patch, :delete, :options, :head],
      credentials: true
  end
end

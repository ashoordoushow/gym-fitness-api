Rails.application.config.middleware.insert_before 0, Rack::Cors do
  allow do
    origins "example.com", 
    "http://localhost:5173", 
    "http://built-to-conquer.up.railway.app",
    "http://gym-fitness-api-production-0d96.up.railway.app",
    resource "*", 
    headers: :any, credentials: true,
    expose: [ "Authorization" ], 
    methods: [:get, :post, :patch, :put, :delete, :options, :head]
  end
end




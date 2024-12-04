Rails.application.config.middleware.insert_before 0, Rack::Cors do
  allow do
    origins "example.com",
           "https://localhost:5173",
           "https://built-to-conquer.up.railway.app",
           "https://gym-fitness-api-production-0d96.up.railway.app"

    resource "*",
             headers: :any,
             credentials: true,
             expose: ["Authorization"],
             methods: [:get, :post, :patch, :put, :delete, :options, :head]
  end
end
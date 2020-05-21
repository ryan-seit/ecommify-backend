# Be sure to restart your server when you modify this file.

# Avoid CORS issues when API is called from the frontend app.
# Handle Cross-Origin Resource Sharing (CORS) in order to accept cross-origin AJAX requests.

# Read more: https://github.com/cyu/rack-cors

Rails.application.config.middleware.insert_before 0, Rack::Cors do
  allow do
    # ensures cookies are sent in a secure way (not accessible from JS)
    origins 'http://localhost:3000'

    resource '*',
      headers: :any,
      # allows credentials to be sent as part of our cookies
      credentials: true,
      methods: [:get, :post, :put, :patch, :delete, :options, :head]
  end
end

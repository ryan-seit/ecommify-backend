# We now need to configure the way our server will handle the HTTP cookies. To do so, in the same config/initializers folder, create a new file called session_store.rb. The server needs to know two things about the cookie; its key and domain. Note, the domain is only needed when the app is in production or deployed

if Rails.env === 'production' 
  Rails.application.config.session_store :cookie_store, key: '_your-app-name', domain: 'your-frontend-domain'
else
  Rails.application.config.session_store :cookie_store, key: '_ecommify-backend' 
end
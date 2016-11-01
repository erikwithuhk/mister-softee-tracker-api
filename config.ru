# This file is used by Rack-based servers to start the application.

require_relative 'config/environment'

run Rails.application

# require 'rack/cors'
use Rack::Cors do
  allow do
    origins '*'
    resource '*',
             header: :any,
             methods: [:get, :post, :delete, :put, :options]
  end
end

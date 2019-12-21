require 'sinatra'
require 'request_store'

# require_relative 'models/app_logger'
# require_relative 'config/conf'
require_relative 'routes'

# set :environments, %w[development test production e05]
set :env, ENV['ENV'] || ENV['RACK_ENV'] # Note that RACK_ENV defaults to 'development'
# set :logging, AppLogger.logger

# Conf.initialize settings.env
use RequestStore::Middleware

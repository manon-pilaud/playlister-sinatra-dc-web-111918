require './config/environment'

if ActiveRecord::Migrator.needs_migration?
  raise 'Migrations are pending. Run `rake db:migrate` to resolve the issue.'
end


use SongsController
use GenresController
use ArtistsController
use Rack::MethodOverride
run ApplicationController

# require 'sinatra'
#
# require_relative 'app/controllers/products_controller'
# require_relative 'app/controllers/orders_controller'
#
# use ProductsController
# run OrdersController

require 'bundler/setup'
Bundler.require

ActiveRecord::Base.establish_connection(
    :adapter => "sqlite3",
    :databse => "db/development.sqlite3"
)

require_relative "../app/slots"
require_relative "../app/model/user"
require_relative "../app/cli"
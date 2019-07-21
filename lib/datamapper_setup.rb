require 'data_mapper'

env = ENV['RACK_ENV'] || "development"
# DataMapper.setup(:default, ENV['DATABASE_URL'] || "postgres://localhost/chitter_#{env}")
# DataMapper.setup(:default, 'postgres://user:4567/database')

DataMapper.setup(:default, "postgres://#{Dir.pwd}/chitter.db")

#
# DataMapper::Logger.new($stdout, :debug)
DataMapper.auto_upgrade!
DataMapper.finalize
#
#
# DataMapper::Database.setup({
#  :adapter  => 'mysql'
#  :host     => 'localhost'
#  :username => 'root'
#  :password => 'R00tPaswooooord'
#  :database => 'selecta_development'
# })

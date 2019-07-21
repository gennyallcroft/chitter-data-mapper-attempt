require 'sinatra/base'
require 'data_mapper'
require 'rubygems'
load './lib/datamapper_setup.rb'

class Peep
  include DataMapper::Resource

  property :id,         Serial    # An auto-increment integer key
  property :peep,       Text     , required: true
  property :created_at, DateTime  # A DateTime, for any date you might like.
end

# class User
#     include DataMapper::Resource
#
#     property :id       , Serial
#     property :username , String
#     property :email    , String
#
# end

class ApplicationController < Sinatra::Base

  #display all peeps
  get '/' do
    "Welcome to Chitter!"
  end

  get '/peeps' do
    @peeps = Peep.all
    erb :'peeps'
  end

  get '/new' do
    erb :'new'
  end


  post '/peep' do
    peep = Peep.new(params[:peep])
    redirect '/peeps'
  end

  run! if app_file == $0
end

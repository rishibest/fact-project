require 'bundler' #require bundler
Bundler.require #require everything in bundler in gemfile
require 'pry'
require './lib/fact-project.rb'

get '/' do
  @facts = Facts.new
  erb :index
end

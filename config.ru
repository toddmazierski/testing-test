require 'rubygems'
require 'bundler'

Bundler.require

require './testing-test'
run Sinatra::Application

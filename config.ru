# see: http://nathanhoad.net/no-such-file-to-load-sinatra-on-dreamhost
ENV['GEM_HOME'] ||= `gem env path`.strip.split(':').first
ENV['GEM_PATH'] ||= `gem env path`.strip
Gem.clear_paths

require 'rubygems'
require 'sinatra'
require 'nfs.rb'

set :run, false
set :environment, :production
set :raise_errors, true

run Sinatra::Application
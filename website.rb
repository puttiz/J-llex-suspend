# coding: utf-8
require "rubygems"
require 'sinatra'

module Holley
  class Server < Sinatra::Base
    enable :static
    disable :logging
    set :public, File.dirname(__FILE__)
    
    before do
        response.headers['Cache-Control'] = 'public, max-age=31557600' # 1 year
    end
    
    get '/' do
      File.read('index.html')
    end

    get '/*' do
      File.read(params['splat'].first)
    end
  end
end
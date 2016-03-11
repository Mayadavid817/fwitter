require './config/environment'
require '.app/models/tweet'


class ApplicationController < Sinatra::Base
    configure do
     set :public_folder, 'public'
     set :views, 'app/views'
    end
    
    get '/' do
        Tweet.new("shakira-shakira", "My hips don't lie breh")
        Tweet.new("Eminem", "New Music coming out SOON!!")
        @tweets = TWEET.all
        erb:index
    end
end
require_relative 'config/environment'

class App < Sinatra::Base 
    
    get '/' do 
        erb :index 
    end
    
    post '/' do 
        @user = {
            name: "#{params["fname"]} #{params["lname"]}"
        }
        erb :index
        
    end
end
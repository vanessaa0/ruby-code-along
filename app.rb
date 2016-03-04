require_relative 'config/environment'

class App < Sinatra::Base 
    
    get '/' do 
        erb :index
    end
    
    post '/' do 
        @user = {
            name: "#{params["fname"]} #{params["lname"]}",
            profile_pic_url: "#{params["picurl"]}"
        }
        erb :dashboard 
        
    end
end
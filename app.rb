require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!
      get '/reversename/:name' do
        @user_name = params[:name]
        "#{@user_name.reverse}"
      end

      get '/square/:number' do
        @num = params[:number].to_i * params[:number].to_i
        "#{@num}"
      end

      get '/say/:number/:phrase' do
        string = ""
        (params[:number].to_i).times do
          string += "#{params[:phrase]}"
        end
        string   
      end

      get '/say/:word1/:word2/:word3/:word4/:word5' do
        
      end
end

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
        @phrase = params[:phrase]
        until @phrase == 3
          puts "show me the money"
          break
        end
      end
end

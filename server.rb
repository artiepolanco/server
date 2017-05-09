require "sinatra"

get "/" do
  "Hello world\n"
end

get "/sinatra" do
  "Hello sinatra\n"
end

get "/bunsenator" do
  "Bunsen rocks!"
end

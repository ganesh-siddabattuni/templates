require "sinatra"

set :bind, "0.0.0.0"
port = ENV["PORT"] || "3000"
set :port, port

configure :development do 
 set :host_authenticaiton, { permitted_hosts: [] }
end

get "/" do
  name = ENV["NAME"] || "World"
  "Hello #{name}!"
end
require 'sinatra'
set :bind, '0.0.0.0'
set :port, 80
set :root, File.dirname(__FILE__)
set :public_folder, Proc.new { File.join(root, "static") }
set :views, Proc.new { File.join(root, "view") }
get '/' do
    @title = "irb"
    @text = "hello"
    erb :index
end
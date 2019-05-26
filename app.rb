require 'sinatra'
#require './song'

get '/' do
  @title = "home"
  erb(:home)
end

post '/' do
@title = "home"
  erb :home, :locals => {:name => params[:name], :comment => params[:comment]}
  #"My name is #{params[:name]}, and I love #{params[:comment]}"
end

get '/about' do
  #@name = :view
  @title = "about"
  erb :about
end

get '/contact' do
  @title = "contact"
  erb :contact
end

get '/video' do
	@title="video"
	erb :video
end

get '/comment' do
	@title="comment"
	erb :comment
end

get '/*' do
  @route = params[:splat]
  pass
end

not_found do
  erb :notfound, :layout=>false
end


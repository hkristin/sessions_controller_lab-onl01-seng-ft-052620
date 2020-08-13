class SessionsController < ApplicationController
  def new

  end

  def create
    if !params[:name] || params[:name].empty?
      redirect_to(controller: 'sessions', action: 'new')
    else
      session[:username] = params[:username]
      redirect_to '/login'
  end

  def destroy
    session.delete :username
  end
end

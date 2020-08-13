class SessionsController < ApplicationController
  def new

  end

  def create
    if !params[:name] || params[:name].empty?
      redirect_to(controller: 'sessions', action: 'new')
    else
      session[:name] = params[:rname]
      rredirect_to controller: 'application', action: 'hello'
  end
end

  def destroy
    session.delete :username
  end
end

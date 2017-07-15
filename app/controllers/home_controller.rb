class HomeController < ApplicationController
  before_action :authenticate_user!
  def mainPage 	
  end

  def startchat
  secPerson=params[:username];
  end

  def invitecontact
  
  end
  
  def sendMail
  	
  end

  def creategroup
  
  end

end


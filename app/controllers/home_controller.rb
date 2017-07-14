class HomeController < ApplicationController
  before_action :authenticate_user!
  def mainPage
  end
end

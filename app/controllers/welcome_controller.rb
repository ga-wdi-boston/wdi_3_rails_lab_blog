class WelcomeController < ApplicationController
  
  before_action :authenticate_user!, only: :token

  def index
  end
end

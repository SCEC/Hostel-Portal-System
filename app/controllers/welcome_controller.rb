class WelcomeController < ApplicationController

  before_filter :save_login_state, :only => [:login]
  def index
  end

  def contact
  end

  def faq  	
  end

  def login
    @user = Student.new
  end

  def about
  end
end

class StaticPagesController < ApplicationController
  def index
    @users_count = User.all.count
  end
  
  def help

  end

  def about

  end
end

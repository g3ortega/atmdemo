class StaticPagesController < ApplicationController
  def index
    @users_count = User.all.count
    @transactions_count = Transaction.all.count
  end
  
  def help

  end

  def about

  end

  def temp
  end
end

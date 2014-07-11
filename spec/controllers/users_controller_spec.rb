require 'rails_helper'

RSpec.describe UsersController, :type => :controller do

  describe "GET new" do

    it "asigna una variable de instancia @user para la vista" do
      get :index

    end



  end

end

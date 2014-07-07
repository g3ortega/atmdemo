# require 'rails_helper'
require 'spec_helper'
RSpec.describe "Static Pages", :type => :request do

  let(:base_title) { "eBanca |" }

  describe "Home Page" do
    it "should have the content 'Sample App'" do
      visit root_path
      page.should have_content('Bienvenido a tu sucursal electrónica')
    end

    it "should have the title 'Inicio'" do
      visit root_path
      page.should have_title("#{base_title} Inicio")
    end
  end

  describe "Help page" do
    it "should have the content 'Ayuda'" do
      visit help_path
      page.should have_content('Ayuda')
    end

    it "should habe the title 'Ayuda'" do
      visit help_path
      page.should have_title("#{base_title} Ayuda")
    end
  end

  describe "About page" do
    it "should have info about me" do
      visit about_path
      page.should have_content('Gerardo Ortega')
    end

    it "should have the title 'Acerca de'" do
      visit about_path
      page.should have_title("#{base_title} Acerca de")
    end
  end

end







# require 'rails_helper'
require 'spec_helper'
RSpec.describe "Static Pages", :type => :request do

  let(:base_title) { "eBanca |" }
  subject { page }

  describe "Home Page" do

    before { visit root_path }

    it "deberia de tener el contenido 'Bienvenido a tu ...'" do
      should have_content('Bienvenido a tu sucursal electrónica')
    end

    it "should have the title 'Inicio'" do
      should have_title("#{base_title} Inicio")
    end
  end

  describe "Help page" do

    before { visit help_path }

    it "should have the content 'Ayuda'" do
      should have_content('Ayuda')
    end

    it "should habe the title 'Ayuda'" do
      should have_title("#{base_title} Ayuda")
    end
  end

  describe "About page" do

    before { visit about_path }

    it "should have info about me" do
      should have_content('@g3ortega')
    end

    it "should have the title 'Acerca de'" do
      should have_title("#{base_title} Acerca de")
    end
  end

end







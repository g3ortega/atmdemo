require "rails_helper"

describe "registro de usuario" do
  # include Devise::TestHelpers

  before (:each) do
    @user = FactoryGirl.create(:user)
  end

  it "permitir a nuevos usuarios iniciar sesión usando su correo y contraseña" do
    visit new_user_session_url
    fill_in "user_email", with: "geraldavid7@gmail.com"
    fill_in "user_password", with: "12345678"
    click_button "Iniciar Sesión"
    expect(page).to have_content("Bienvenido a tu sucursal electrónica")
  end


end


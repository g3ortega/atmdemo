require "spec_helper"

describe "registro de usuario" do
  it "permitir a nuevos usuarios iniciar sesión usando su correo y contraseña" do
    visit new_user_session_path
    fill_in "user_email", with: "geraldavi7@gmail.com"
    fill_in "user_password", with: "12345678"
    click_button "Iniciar Sesión"
    page.should have_content("Bienvenido.")
  end
end


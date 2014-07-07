Given(/^Soy un invitado$/) do

end

When(/^Lleno el formulario de registro con información válida$/) do
  visit('/users/sign_up')
  fill_in "user_first_name", with: "Gerardo"
  fill_in "user_last_name", with: "Ortega"
  fill_in "user_email", with: "geraldavi7@gmail.com"
  fill_in "user_password", with: "12345678"
  fill_in "user_password_confirmation", with: "12345678"
  click_button "Registrase"
end

Then(/^Deberia estar registrado en la aplicación$/) do

end

Then(/^Deberia estar logueado$/) do

end

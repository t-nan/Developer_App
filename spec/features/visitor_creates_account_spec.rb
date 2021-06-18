
require "rails_helper"

feature "Account Creation" do
 
  scenario "allows guest to create account" do
    
      sign_up
   
    expect(page).to have_content 'Welcome! You have signed up successfully.'

  end
 

  scenario "allows user acess to contacts form" do
    visit plans_path

    click_button 'To book'
    expect(page).to have_content 'Your contacts'
  end


  scenario "allows user to create contact" do
    visit plans_path

    click_button 'To book'

    fill_in :contact_name, with: 'Peter'
    fill_in :contact_surname, with: 'Griffin'
    fill_in :contact_phone, with: '000000000000'
    fill_in :contact_flat, with: '1'

    click_button 'Save contact'

    expect(page).to have_content 'Your contact has been saved!'
  end

end


def sign_up
  visit new_user_registration_path

  fill_in :user_username, with: 'FooBar'
  fill_in :user_email, with: 'foo@bar.com'
  fill_in :user_password, with: '1234567'
  fill_in :user_password_confirmation, with: '1234567'

  click_button 'Sign up'
end


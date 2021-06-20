require "rails_helper"

feature "Account Creation" do
 
  scenario "allows visitor to create account" do
    
      sign_up
   
    expect(page).to have_content 'Welcome! You have signed up successfully.'

  end


  scenario "allows user to log out " do

      sign_up

      click_link 'Log Out'

      expect(page).to have_content 'Signed out successfully.'

  end

  let!(:user) { FactoryBot.create :user }

  scenario "allows visitor to log in " do
      
      log_in

      expect(page).to have_content 'Signed in successfully.'

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


def log_in
  visit new_user_session_path

  fill_in :user_email, with: '10@y.kz'
  fill_in :user_password, with: '1234567'

  click_button 'Log in'
end
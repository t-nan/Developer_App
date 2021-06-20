require "rails_helper"

feature "Question Creation" do

   let!(:plan) { FactoryBot.create :plan }

  scenario "allows acess to question form for visitor" do
    visit '/plans/1'   
    
    click_button 'ask'
    expect(page).to have_content 'Ask question'
  end

  scenario "impossible to create question for visitor" do
    visit '/plans/1'   
    
    click_button 'ask'
    
    fill_in :question_author, with: 'Peter'
    fill_in :question_body, with: 'Testing message'

    click_button 'Save question'

    expect { (visit new_user_session_url).to have_content 'You need to sign in or sign up before continuing.
'}
    
  end

  scenario "allows to create question for user" do
    sign_up
    visit '/plans/1'   
    
    click_button 'ask'
    
    fill_in :question_author, with: 'Peter'
    fill_in :question_body, with: 'Testing message'

    click_button 'Save question'

    expect(page).to have_content 'Your question has been saved!'
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


  



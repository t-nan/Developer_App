require "rails_helper"

feature "Contact creation" do

  scenario "allows acess to contacts form" do
    visit plans_path

    click_button 'To book'
    expect(page).to have_content 'Your contacts'
  end


  scenario "allows a guest to create contact" do
    visit plans_path

    click_button 'To book'

    fill_in :contact_name, with: 'Peter'
    fill_in :contact_surname, with: 'Griffin'
    fill_in :contact_phone, with: '000000000000'
    fill_in :contact_flat, with: '1'

    click_button I18n.t('.save_button')

    expect(page).to have_content 'Your contact has been saved!'
  end

  scenario "doesn't allow create a contact if the guest entered letters instead of numberst" do
    visit plans_path

    click_button 'To book'

    fill_in :contact_name, with: 'Peter'
    fill_in :contact_surname, with: 'Griffin'
    fill_in :contact_phone, with: 'abc'
    fill_in :contact_flat, with: 'xy'

    click_button I18n.t('.save_button')

    expect(page).to have_content 'Contact not saved ! Make sure that the forms are filled in correctly.'
  end


end
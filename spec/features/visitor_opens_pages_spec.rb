require "rails_helper"

feature "Open pages" do

  let!(:plan) { FactoryBot.create :plan }
  let!(:flat) { FactoryBot.create :flat }

  scenario "allows acess to About us page" do

    visit plans_path
    click_on 'About Us'

    expect(page).to have_content 'About Us'
  end


  scenario "allows acess to Choice by plan page" do

    visit static_pages_path
    click_on 'Plans'

    expect(page).to have_content 'Plans'
  end


  scenario "allows acess to All flats list page" do

    visit static_pages_path
    click_on 'Flats List'

    expect(page).to have_content 'All flats'
  end


  scenario "allows acess to Plan Flats page" do

    visit plans_path
    click_on I18n.t('.show_plan_button')

    expect(page).to have_content 'Log In to -'
  end


  scenario "allows acess to Flat page" do

    visit 'plans/1'
    click_on I18n.t('.show_button')

    expect(page).to have_content '25 m2'
  end


  scenario "allows acess to Flat page from All flats list" do

    visit flats_path
    click_on I18n.t('.show_flat_button')

    expect(page).to have_content '25 m2'
  end

  scenario "allows acess to Flats page from All flats list" do

    visit flats_path
    click_on I18n.t('.show_plan_button')

    expect(page).to have_content '25 m2'
  end


end
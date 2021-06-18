require "rails_helper"

feature "Open pages" do

  let!(:plan) { FactoryBot.create :plan }
  let!(:flat) { FactoryBot.create :flat }

  scenario "allows acess to About us page" do

    visit plans_path
    click_on 'About us'

    expect(page).to have_content 'About Us'
  end


  scenario "allows acess to Choice by plan page" do

    visit static_pages_path
    click_on 'Choice by plan'

    expect(page).to have_content 'Plans'
  end


  scenario "allows acess to All flats list page" do

    visit static_pages_path
    click_on 'All flats list'

    expect(page).to have_content 'All flats'
  end


  scenario "allows acess to Plan Flats page" do

    visit plans_path
    click_on 'Show flats'

    expect(page).to have_content 'Log In to -'
  end


  scenario "allows acess to Flat page" do

    visit 'plans/1'
    click_on 'Show'

    expect(page).to have_content '25 m2'
  end


  scenario "allows acess to Flat page from All flats list" do

    visit flats_path
    click_on 'Show'

    expect(page).to have_content '25 m2'
  end

  scenario "allows acess to Flats page from All flats list" do

    visit flats_path
    click_on 'Show similar'

    expect(page).to have_content '25 m2'
  end


end
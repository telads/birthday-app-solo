require 'date'
require 'timecop'

feature 'index page' do
  scenario 'user sees greeting' do
    visit '/'
    expect(page).to have_content 'hi! please enter your name and birthday!'
  end

  scenario 'the user is able to enter their name and birthdate' do
    visit '/'
    fill_in :name, with: 'Angelina'
    fill_in :date, with: '1'
    select 'January', from: 'month'
    click_button 'Submit!'
    expect(page).to have_content 'Hi Angelina! Your birthday is on 1 January'
  end

  scenario "contains a birthday greeting if the user date matches today's date" do
    new_time = Time.local(2021, 8, 1)
    Timecop.freeze(new_time)
    visit '/'
    fill_in :name, with: 'Angelina'
    fill_in :date, with: '1'
    select 'August', from: 'month'
    click_button 'Submit!'
    expect(page).to have_content 'Happy birthday Angelina!'
  end

  scenario 'calculates the number of days left until their next birthday' do
    new_time = Time.local(2021, 8, 1)
    Timecop.freeze(new_time)
    visit '/'
    fill_in :name, with: 'Angelina'
    fill_in :date, with: '19'
    select 'August', from: 'month'
    click_button 'Submit!'
    expect(page).to have_content 'you have 18 days until your birthday!'
  end
end

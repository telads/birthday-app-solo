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
    visit '/'
    fill_in :name, with: 'Angelina'
    fill_in :date, with: '19'
    select 'July', from: 'month'
    click_button 'Submit!'
    expect(page).to have_content 'Happy birthday Angelina!'
  end

  scenario 'contains a message letting the user know how many days left until their birthday' do
    visit '/'
    fill_in :name, with: 'Angelina'
    fill_in :date, with: '19'
    select 'January', from: 'month'
    click_button 'Submit!'
    expect(page).to have_content 'you have X days'
  end
end

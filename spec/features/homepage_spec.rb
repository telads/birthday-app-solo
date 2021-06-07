feature 'index page' do
  scenario 'user sees greeting' do
    visit '/'
    expect(page).to have_content 'hi! please enter your name and birthday!'
  end

  scenario 'the user is able to enter their name and birthdate' do
    visit '/'
    fill_in :name, with: 'Angelina'
    fill_in :date, with: '1st'
    fill_in :month, with: "January"
    click_button 'Submit!'
    expect(page).to have_content 'Hi Angelina! Your birthday is on the 1st January'
  end
end
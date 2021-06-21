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
    expect(page).to have_content 'Hi Angelina! Your birthday is on 1/1'
  end
end
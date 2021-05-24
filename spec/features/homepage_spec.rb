feature 'index page' do
  scenario 'sees hello world message' do
    visit '/'
    expect(page).to have_content 'hi'
  end
end
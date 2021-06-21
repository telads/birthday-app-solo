require './lib/birthday'

describe 'A Birthday App' do 
  it 'converts birthday integer to a month name' do
    birthday_card = Birthday_Card.new 
    birthday_month = birthday_card.convert_month(5)
    expect(birthday_month).to eq "May"
  end
end
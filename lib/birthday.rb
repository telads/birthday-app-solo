
class Birthday_Card
  def convert_month(month)
    Date::MONTHNAMES[month.to_i]
  end

  # def birthday_greeting(date, month)
  #   Date.today == date && month
  # end

  def birthday_greeting(_date, _month)
    supplied_date = Date.parse("2021-#{_month}-#{_date}")
    is_today = Date.today == supplied_date
    days_left = calculate_next_birthday
    if is_today
      'Happy birthday Angelina!'
    else
      "you have #{days_left} days until your birthday!"
    end
  end

  def calculate_next_birthday
    endDate = Date.new(2021, 8, 19)
    beginDate = Date.new(2021, 8, 1)
    days = endDate - beginDate 
    days.to_i
  end
end

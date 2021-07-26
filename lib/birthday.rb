require 'date'

class Birthday_Card
  def convert_month(month)
    Date::MONTHNAMES[month.to_i]
  end

  # def birthday_greeting(date, month)
  #   Date.today == date && month
  # end

  def birthday_greeting(date, month)
    supplied_date = Date.parse("2021-#{month}-#{date}")
    is_today = Date.today == supplied_date
    # @month_name = convert_month(month)
    if is_today
      'Happy birthday Angelina!'
    else
      'you have X days'
    end
  end
end

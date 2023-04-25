require './app/services/holiday_service'

class HolidaySearch
  def holidays
    holidays = []

    service.get_holidays.each do |holiday|
      new_holiday = Holiday.new(holiday)

      holidays << new_holiday
    end
    holidays[0..2]
  end
  
  def service
    HolidayService.new
  end
end
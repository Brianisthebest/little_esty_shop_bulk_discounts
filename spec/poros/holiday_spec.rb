require 'rails_helper'

RSpec.describe Holiday do
  data = {name: "Halloween", date: "2021-10-31"}
  holiday = Holiday.new(data)

  it 'exists and has attributes' do
    expect(holiday).to be_a Holiday
    expect(holiday.name).to eq("Halloween")
    expect(holiday.date).to eq("2021-10-31")
  end
end
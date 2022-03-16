# frozen_string_literal: true

# Class for weather model
class Weather < ApplicationRecord
  belongs_to :city
  has_many :temperatures


  def query(filters)
    records = all
    records = records.where("city ilike '%#{filters[:city]}%'") if filters[:city].present?  
    records = records.where("date ilike '%#{filters[:date]}%'") if filters[:date].present?  
    records.order(date: :asc) if filters[:sort] == 'date'
    records.order(date: :desc) if filters[:sort] == '-date'
    records.json_format
  end

  def self.json_format
    all.map do |record|
      { id: record.id, date: record.date.strftime('YYYY-mm-dd'), lat: record.lat, lon: record.lon,
        city: record.city.name, state: record.city.state.name,
        temperatures: record.temperatures.to_array }
    end
  end
end

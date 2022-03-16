class Weather < ApplicationRecord
  belongs_to :city
  has_many :temperatures
end

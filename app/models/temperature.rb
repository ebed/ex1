# frozen_string_literal: true

# Class for tempr model 
class Temperature < ApplicationRecord
  belongs_to :weather

  def self.to_array
    order(id: :asc).pluck(:temp)
  end
end

# frozen_string_literal: true

class Item < ApplicationRecord
  validates :price, numericality: {greater_than: 0}, allow_nil: true
  validates :price, :description, presence: true
end

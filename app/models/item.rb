# frozen_string_literal: true

class Item < ApplicationRecord
  validates :price, numericality: {greater_than: 0, allow_nil: true}
  validates :price, :description, presence: true

  after_initialize { p 'initialize' } # Item.new
  after_save { p 'save' } # Item.save
  after_create { p 'create' } # Item.create
  after_update { p 'update' } # Item.update
  after_destroy { p 'destroy' } # Item.destroy
end

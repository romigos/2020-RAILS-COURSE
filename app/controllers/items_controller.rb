# frozen_string_literal: true

class ItemsController < ApplicationController
  layout false

  def index
    @items = Item.all
    render text: @items.map do |i|
      "#{i.name}:#{i.price}:#{i.description}"
    end
  end

  def create
    Item.create(items_params)
    render body: 'created'
  end

  def new

  end

  private

  def items_params
    params.permit(:name, :price)
  end
end
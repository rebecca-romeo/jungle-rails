require 'rails_helper'

RSpec.describe Product, type: :model do
  before(:each) do
    @category = Category.new(name: 'Trees')
    @product = Product.new(name: "Birch", price_cents: 2000, quantity: 10, category: @category)
  end

  describe 'Validations' do

    it 'is valid when all fields are present' do
      expect(@product).to be_valid
    end


    it 'is invalid when name is not present' do
      @product.name = nil
      expect(@product).to_not be_valid
      expect(@product.errors.full_messages).to include("Name can't be blank")
    end

    it 'is invalid when price is not present' do
      @product.price_cents = nil
      expect(@product).to_not be_valid
      expect(@product.errors.full_messages).to include("Price can't be blank")
    end

    it 'is invalid when quantity is not present' do
      @product.quantity = nil
      expect(@product).to_not be_valid
      expect(@product.errors.full_messages).to include("Quantity can't be blank")
    end

    it 'is invalid when category is not present' do
      @product.category = nil
      expect(@product).to_not be_valid
      expect(@product.errors.full_messages).to include("Category can't be blank")
    end
  end
end

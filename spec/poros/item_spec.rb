require 'rails_helper'

RSpec.describe Item do
  describe 'initialization' do
    it 'has attributes' do
      item_data = {:id=>"4",
                    :type=>"item",
                    :attributes=> {
                      :name=>"Item Nemo Facere", 
                      :description=>"Sunt eum id eius magni consequuntur delectus veritatis. Quisquam laborum illo ut ab. Ducimus in est id voluptas autem.", 
                      :unit_price=>42.91, 
                      :merchant_id=>1
                    }
                  }
      item = Item.new(item_data)

      expect(item).to be_a(Item)
      expect(item.id).to eq(item_data[:id])
      expect(item.name).to eq(item_data[:attributes][:name])
      expect(item.description).to eq(item_data[:attributes][:description])
      expect(item.unit_price).to eq(item_data[:attributes][:unit_price])
      expect(item.merchant_id).to eq(item_data[:attributes][:merchant_id])
    end
  end
end

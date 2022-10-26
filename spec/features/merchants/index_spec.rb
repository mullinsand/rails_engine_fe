require 'rails_helper'

RSpec.describe 'Merchant Index page' do
  describe 'as a visitor' do
    describe 'when I visit the merchant index page' do
      # before :each do
      #   require 'pry'; binding.pry
      # end
      
      it 'has a list of all merchants by name' do
        visit merchants_path
        @merchants = build_list(:merchant, 5)
        #stub out service call to be the list of merchants
        # allow_any_instance_of
        within '#merchants' do
          @merchants.each do |merchant|
            within "#merchant_#{merchant.id}" do
              expect(page).to have_link(merchant.name)
            end
          end
        end
      end

      it 'each merchants name is a link to their show page' do
        visit merchants_path()
        @merchants = build_list(:merchant, 5)
        #stub out service call to be the list of merchants
        # allow_any_instance_of
        within '#merchants' do
          @merchants.each do |merchant|
            within "#merchant_#{merchant.id}" do
              click_link(merchant.name)
              expect(current_path).to eq(merchant_path(merchant))
              visit merchants_path
            end
          end
        end
      end
    end
  end
end
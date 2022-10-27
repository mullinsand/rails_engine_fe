require 'rails_helper'

RSpec.describe 'Merchant Index page' do
  describe 'as a visitor' do
    describe 'when I visit the merchant index page' do

      it 'has a list of all merchants by name' do
        Faker::UniqueGenerator.clear
        @merchants = build_list(:merchant, 5)
        allow(MerchantsFacade).to receive(:all_merchants).and_return(@merchants)
        visit merchants_path
        #stub out service call to be the list of merchants
        within '#merchants' do
          @merchants.each do |merchant|
            within "#merchant_#{merchant.id}" do
              expect(page).to have_link(merchant.name)
            end
          end
        end

      end

      it 'each merchants name is a link to their show page' do
        Faker::UniqueGenerator.clear
        @merchants = build_list(:merchant, 5)
        @item = build(:item)
        allow(MerchantsFacade).to receive(:all_merchants).and_return(@merchants)
        visit merchants_path
        within '#merchants' do
          @merchants.each do |merchant|
            within "#merchant_#{merchant.id}" do
              allow(MerchantsFacade).to receive(:one_merchant).with(merchant.id.to_s).and_return(merchant)
              allow(MerchantsFacade).to receive(:merchant_items).with(merchant.id.to_s).and_return([@item])

              click_link(merchant.name)
              expect(current_path).to eq(merchant_path(merchant.id))
              visit merchants_path
            end
          end
        end
      end
    end
  end
end
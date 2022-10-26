require 'rails_helper'

RSpec.describe 'Merchants Facade' do
  describe 'class methods' do
    describe 'find_all_merchants' do
      it 'returns an array of merchant objects sorted by name' do
        # allow_any_instance_of(MerchantsService).to receive(:)
        expect(MerchantsFacade.find_all_merchants).to be_an(Array)
        expect(MerchantsFacade.find_all_merchants.count).to eq(20)
        expect(MerchantsFacade.find_all_merchants.first).to be_a(Merchant)
      end

      context 'if there are no merchants' do
        it 'returns an empty array' do
          expect(MerchantsFacade.find_all_merchants).to eq([])
        end
      end
    end

    describe 'find_merchant' do
      it 'returns a merchant object' do
        # allow_any_instance_of(MerchantsService).to receive(:)
        expect(MerchantsFacade.find_merchant(1)).to be_a(Merchant)
      end

      # context 'if there are no merchants' do
      #   it 'returns an empty array' do
      #     expect(MerchantsFacade.find_all_merchants).to eq([])
      #   end
      # end
    end

    describe 'find_merchant_items' do
      it 'returns an array of item objects belonging to the merchant' do
        # allow_any_instance_of(MerchantsService).to receive(:)
        expect(MerchantsFacade.find_merchant_items(1)).to be_an(Array)
        expect(MerchantsFacade.find_merchant_items(1).first).to be_an(Item)
        expect(MerchantsFacade.find_merchant_items(1).first.merchant_id).to eq(1)
      end

      # context 'if there are no merchants' do
      #   it 'returns an empty array' do
      #     expect(MerchantsFacade.find_all_merchants).to eq([])
      #   end
      # end
    end
  end
end
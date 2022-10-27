require 'rails_helper'

RSpec.describe 'Merchants Services' do
  describe 'class methods' do
    describe 'merchants_data' do
      it 'returns an array of merchant objects' do
        # allow_any_instance_of(MerchantsService).to receive(:)
        expect(MerchantsService.merchants_data).to be_a(Hash)
        expect(MerchantsService.merchants_data).to have_key(:data)
        expect(MerchantsService.merchants_data[:data]).to be_an(Array)
        expect(MerchantsService.merchants_data[:data].count).to eq(20)
      end
    end

    describe 'merchant_data' do
      it 'returns hash of just a merchant' do
        # allow_any_instance_of(MerchantsService).to receive(:)
        expect(MerchantsService.merchant_data(1)).to be_a(Hash)
        expect(MerchantsService.merchant_data(1)).to have_key(:data)
        expect(MerchantsService.merchant_data(1)[:data]).to be_an(Hash)
      end

      context 'if merchant doesnt exist' do
        it 'returns an empty array' do

        end
      end
    end

    describe 'merchant_item_data' do
      it 'returns an array of all a merchants items' do
        expect(MerchantsService.merchant_items_data(1)).to be_a(Hash)
        expect(MerchantsService.merchant_items_data(1)).to have_key(:data)
        expect(MerchantsService.merchant_items_data(1)[:data]).to be_an(Array)
      end
    end
  end
end
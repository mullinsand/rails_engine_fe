require 'rails_helper'

RSpec.describe 'Merchants Services' do
  describe 'class methods' do
    describe 'get_merchants_data' do
      it 'returns an array of merchant objects sorted by name' do
        # allow_any_instance_of(MerchantsService).to receive(:)
        expect(MerchantsService.get_merchants_data).to eq([])
      end

      context 'if there are no merchants' do
        it 'returns an empty array' do
          expect(MerchantsService.get_merchants_data).to eq([])
        end
      end
    end

    describe 'get_merchant_data' do
      it 'returns an array of merchant objects sorted by name' do
        # allow_any_instance_of(MerchantsService).to receive(:)
        expect(MerchantsService.get_merchant_data).to eq([])
      end

      context 'if there are no merchants' do
        it 'returns an empty array' do
          expect(MerchantsService.get_merchant_data).to eq([])
        end
      end
    end
  end
end
require 'rails_helper'

RSpec.describe 'Merchants Facade' do
  describe 'class methods' do
    describe 'find_all_merchants' do
      it 'returns an array of merchant objects sorted by name' do
        # allow_any_instance_of(MerchantsService).to receive(:)
        expect(MerchantsFacade.find_all_merchants).to eq([])
      end

      context 'if there are no merchants' do
        it 'returns an empty array' do
          expect(MerchantsFacade.find_all_merchants).to eq([])
        end
      end
    end
  end
end
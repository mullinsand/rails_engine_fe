require 'rails_helper'

describe 'Merchant Index page' do
  describe 'as a visitor' do
    describe 'when I visit the merchant index page' do
      before :each do
        require 'pry'; binding.pry
        visit merchants_path
      end

      it 'has a list of all merchants by name' do
        require 'pry'; binding.pry
      end

      it 'each merchants name is a link to their show page' do

      end
    end
  end
end
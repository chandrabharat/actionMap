# frozen_string_literal: true

require 'rails_helper'

RSpec.describe State do
  describe 'std_fips_code method' do
    before do
      if described_class.where(name: 'California').empty?
        described_class.create(id: 6, name: 'California', symbol: 'CA', fips_code: 6, is_territory: 0,
                               lat_min: -124.409591, lat_max: -114.131211, long_min: 32.534156, long_max: -114.131211)
      end
    end

    it 'finds the std_fips code of California' do
      state = described_class.find_by(id: 6, name: 'California', symbol: 'CA', fips_code: 6, is_territory: 0,
                                      lat_min: -124.409591, lat_max: -114.131211, long_min: 32.534156,
                                      long_max: -114.131211)
      expect(state.std_fips_code).to eq '06'
    end
  end
end

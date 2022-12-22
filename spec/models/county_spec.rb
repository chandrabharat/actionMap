# frozen_string_literal: true

require 'rails_helper'

RSpec.describe County do
  describe 'std_fips_code method' do
    before do
      if described_class.where(name: 'Alameda County').empty?
        described_class.create(id: 192, name: 'Alameda County', state_id: 6, fips_code: 1, fips_class: 'H1')
      end
    end

    it 'finds the std_fips code of Alameda County' do
      county = described_class.create(id: 192, name: 'Alameda County', state_id: 6, fips_code: 1,
                                      fips_class: 'H1')
      expect(county.std_fips_code).to eq '001'
    end
  end
end

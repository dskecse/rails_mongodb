require 'rails_helper'

RSpec.describe Product, type: :model do
  it { is_expected.to be_mongoid_document }
  it { is_expected.to have_timestamps }

  it { is_expected.to have_field(:name).of_type(String) }
  it { is_expected.to have_field(:price).of_type(BigDecimal) }

  it { is_expected.to validate_presence_of(:name) }
end

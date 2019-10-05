require 'rails_helper'

RSpec.describe Grade, type: :model do
  it { is_expected.to validate_presence_of(:name) }
  it { is_expected.to validate_presence_of(:duration) }
  it { is_expected.to belong_to(:course) }
end

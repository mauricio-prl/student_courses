require 'rails_helper'

RSpec.describe Course, type: :model do
  context 'create' do
  	let(:course) { create(:course) }

  	it { expect(course.name).to match(/(?<name>[A-Z]\w+)/) }
  	it { expect(course.duration).to match(/\d+ \w+/) }
  end
end

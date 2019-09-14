require 'rails_helper'

RSpec.describe Grade, type: :model do
	context 'create' do
		let(:grade) { build(:grade) }

		it { expect(grade.name).to match(/(?<name>[A-Z]\w+)/) }
		it { expect(grade.time).to match(/\d+ \w+/) }
	end
end

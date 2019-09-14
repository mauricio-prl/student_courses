require 'rails_helper'

RSpec.describe Student, type: :model do
	context 'create' do
		let(:student) { create(:student) }

		it { expect(student.name).to match(/(?<name>[A-Z]\w+)/) }
		it { expect(student.email).to match(/\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/) }
	end
end

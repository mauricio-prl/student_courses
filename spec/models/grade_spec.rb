require 'rails_helper'

RSpec.describe Grade, type: :model do
  context 'create' do
  	let(:grade) { create(:grade) }

  	# it{ expect(grade.name).to match(/(?<name>[A-Z]\w+)/) }
  	# it{ expect(grade.duration).to match(/\d+ years/).or match(/\d+ months/).or match(/\d+ days/) }
  end
end

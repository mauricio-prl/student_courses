require 'rails_helper'

RSpec.describe Student, type: :model do
	let(:student) { create(:student) }
  context 'create' do

  	it { expect(student. name).to match(/(?<name>[A-Z]\w+)/) }
  	it { expect(student.email).to match(/\A[\w+\-.]+@[\w\d\-.]+\.[\w]+\z/) }
  end

  # context 'student has courses' do
  # 	it { expect(student.courses).to be_kind_of(Array) }
  # end
end

require 'rails_helper'

RSpec.describe StudentsController, type: :controller do
  describe '#create' do
    subject(:student) { create(:student) }
    let(:valid_email_regex) { /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i }

    it { expect(student.email).to match(valid_email_regex) }
    it { expect{ subject }.to change(Student, :count).by(1) }
  end

  describe '#update' do
    subject(:student) { create(:student) }
    let(:new_attributes) { { name: 'New_name', email: 'new_email@email.com' } }

    it 'updates the requested student' do
      put :update, params: { id: student.id, student: new_attributes }
      student.reload

      expect(student.name).to eq('New_name')
      expect(student.email).to eq('new_email@email.com')
    end 
  end
end

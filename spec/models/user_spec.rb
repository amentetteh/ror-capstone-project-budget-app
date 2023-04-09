require 'rails_helper'

RSpec.describe User, type: :model do
  subject do
    @user = User.create(name: 'Amen', email: 'amenior06@gmail.com', password: '123456')
  end

  before { subject.save }

  it 'name should be present' do
    subject.name = nil
    expect(subject).to_not be_valid
  end

  it 'name should have a correct value' do
    expect(subject.name).to eql 'Amen'
  end

  it 'email should be present' do
    subject.email = nil
    expect(subject).to_not be_valid
  end

  it 'email should have a correct value' do
    expect(subject.email).to eql 'amenior06@gmail.com'
  end
end

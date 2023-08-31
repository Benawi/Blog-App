require 'rails_helper'

RSpec.describe User, type: :model do
   subject do
    User.new(name: 'Anything', bio: 'Lorem ipsum', photo: 'https://ui-avatars.com/api/?name=sara&background=random',
             posts_counter: 1)
  end
  before { subject.save }

  it 'is valid with valid attributes' do
    expect(subject).to be_valid
  end

  it 'is not valid without a name' do
    subject.name = nil
    expect(subject).to_not be_valid
  end

 
end
require 'rails_helper'

RSpec.describe Post, type: :model do
text = 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor.
Aenean massa. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus.
Donec quam felis, ultricies nec, pellentesque eu, pretium quis, sem. Nulla consequat massa quis enim.
Donec pede justo, fringilla vel, aliquet nec, vulputate eget, arcu. In enim justo, rhoncus ut, imperdiet a,
venenatis vitae, justo.'
before :each do
  User.create(id: 1, name: 'Benawi', posts_counter: 0)
end

subject do
  Post.new(title: 'Anything', text: 'hhh crazy', comments_counter: 2, likes_counter: 1, author_id: 1)
end

before { subject.save }

it 'is valid with valid attributes' do
  expect(subject).to be_valid
end


end
require 'rails_helper'

RSpec.describe Blog, type: :model do

  it 'is not valid without a title' do
    sand = Blog.create content: 'Content here'
    expect(sand.errors[:title]).to_not be_empty
  end

  it 'is not valid without a content' do
    blog1 = Blog.create title: 'title here'
    expect(blog1.errors[:content]).to_not be_empty
  end

  it 'is not valid without a unique title' do
    sand1 = Blog.create title: 'San Diego', content: 'Content here'
    sand = Blog.create title: 'San Diego', content: 'Content here'
    expect(sand.errors[:title]).to_not be_empty
  end

  it 'title is not valid without 4 characters or more' do
    sand2 = Blog.create title: 'San', content: 'Content here'
    expect(sand2.errors[:title]).to_not be_empty
  end

  it 'content is not valid without 10 characters or more' do
    sand3 = Blog.create title: 'San', content: 'Conte'
    expect(sand3.errors[:content]).to_not be_empty
  end

end

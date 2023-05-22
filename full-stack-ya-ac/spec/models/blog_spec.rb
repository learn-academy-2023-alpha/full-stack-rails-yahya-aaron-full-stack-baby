require 'rails_helper'

RSpec.describe Blog, type: :model do
  it 'is not valid without a title' do
    testpost = Blog.create content: "this post has no title"
    expect(testpost.errors[:title]).to_not be_empty
  end
  it 'is not valid without content' do
    testpost = Blog.create title: "this post has no content"
    expect(testpost.errors[:content]).to_not be_empty
  end
  it 'blog titles must be unique' do
    testpost = Blog.create title: 'thesame', content: "this isn't long enough"
    testpost2 = Blog.create title: 'thesame', content: "this isn't long enough"
    expect(testpost2.errors[:title]).to_not be_empty
  end
  it 'blog titles must be at least 4 characters' do
    testpost = Blog.create title: "the", content: "content"
    expect(testpost.errors[:title]).to_not be_empty
  end
  it 'blog content is at least 10 characters' do
    testpost = Blog.create title: "title", content: "short"
    expect(testpost.errors[:content]).to_not be_empty
  end
end 

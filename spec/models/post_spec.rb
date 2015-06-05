require 'rails_helper'

describe Post do 

let(:catwalk_show) {Post.new(name: 'Catwalk Show', content: 'the show was awesome')}

  it 'must have a name' do
    post = Post.new
    expect(post.valid?).to eq false
  end


  it 'must have content' do
    post = Post.new(name: 'Catwalk Show')
    expect(post.valid?).to eq false
  end

  context 'no comments' do
    it 'should return a message saying no comments' do
      expect(catwalk_show.no_post).to eq 'No comments yet!'
    end
  end

  context 'multiple comments' do
    it 'should return the amount of comments' do
      catwalk_show.comments << Comment.new(name: 'Anne', description: 'loved this post')
      catwalk_show.comments << Comment.new(name: 'Laura', description: 'you should design')
      catwalk_show.comments << Comment.new(name: 'Rick', description: 'go girl')
      catwalk_show.comments << Comment.new(name: 'Jexzza', description: 'the best')

      expect(catwalk_show.no_post).to eq 4
    end
  end


end
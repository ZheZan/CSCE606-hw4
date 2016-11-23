require 'spec_helper'

describe Movie do
  describe 'searching same director' do
    it 'should find Movie with director' do
      expect(Movie).to receive(:where).with(:director => 'Star Wars')
      Movie.same_director("Star Wars")
    end
    it 'should not find Movie with different director' do
      @fake_movie = double('Movie', :id => "123", :title => "Some Movie",:director => "Star Wars")
      expect(Movie).not_to receive(:where).with(:director => 'Star')
      Movie.same_director("Star Wars")
    end
  end
end
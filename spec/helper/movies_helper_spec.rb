require 'rails_helper'

describe "MoviesHelper" do
    include MoviesHelper
    it "Should return a odd or even" do
        expect(oddness(2)).to eq("even")
        expect(oddness(3)).to eq("odd")
    end   
end
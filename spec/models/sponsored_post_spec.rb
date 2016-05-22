require 'rails_helper'

RSpec.describe SponsoredPost, type: :model do

let(:title) { RandomData.random_sentence }
let(:body) { RandomData.random_paragraph }
let(:price) { 1 }
let(:sponsoredpost) { SponsoredPost.create!(title: title, body: body, price: price) }

  describe "attributes" do
    it "has expected attributes" do
      expect(sponsoredpost).to have_attributes(title: title, body: body, price: price)
    end
  end
end

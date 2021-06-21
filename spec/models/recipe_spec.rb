# spec/models/recipe_spec.rb
require 'rails_helper'

RSpec.describe Recipe, elasticsearch: true, :type => :model do
  it 'should be indexed' do
     expect(Recipe.__elasticsearch__.index_exists?).to be_truthy
  end

# describe '#search' do
#     before(:each) do
#       Recipe.create(
#         title: "Roman Holiday",
#         overview: "A 1953 American romantic comedy films ...",
#         image_url: "wikimedia.com/Roman_holiday.jpg",
#         vote_average: 4.0
#       )
#       Recipe.__elasticsearch__.refresh_index!
#     end
#     it "should index title" do
#       expect(Recipe.search("Holiday").records.length).to eq(1)
#     end
#     it "should index overview" do
#       expect(Recipe.search("comedy").records.length).to eq(1)
#     end
#     it "should not index image_path" do
#       expect(Recipe.search("Roman_holiday.jpg").records.length).to eq(0)
#     end
#     it "should not index vote_average" do
#       expect(Recipe.search("4.0").records.length).to eq(0)
#     end
#   end

end

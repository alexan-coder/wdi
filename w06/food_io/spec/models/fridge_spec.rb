require 'rails_helper'

### Fridge Spec
# * has a location
# * has a brand
# * has a size in cubic feet
# * has food in it
# * has drinks in it

describe Fridge do
	describe "::new" do # ::new notation for testing class method
		it "can be instantiated" do
			f = Fridge.new
			expect(f.class).to eq(Fridge)
		end
	end
	it { should validate_presence_of(:location) }
	it { should validate_presence_of(:brand) }
end

# RSpec.describe Fridge, :type => :model do
# 	it "has a location" do
# 		fridge = Fridge.new
# 		expect(fridge.valid?).to eq(true)
# 	end
# end
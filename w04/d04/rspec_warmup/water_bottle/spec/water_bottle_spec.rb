require 'spec_helper'
require_relative '../lib/water_bottle'

describe WaterBottle do

  describe '::new' do
    it "starts empty" do
      bottle = WaterBottle.new
      expect( bottle.empty? ).to be_true
    end
  end

  describe '#fill' do
    it "can be filled" do
      # Need a test!
    end
  end

  describe '#drink' do

    context 'when full' do

      it 'empties the bottle' do
        # Need a test!
      end

      it 'gives us water' do
        # Need a test!
      end
    end

    context 'when empty' do

      it 'wont let us drink' do
        # Need a test!
      end
    end
  end
end
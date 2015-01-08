require 'active_record'

class Fridge < ActiveRecord::Base
	validates :location, presence: true
	validates :brand, presence: true
end
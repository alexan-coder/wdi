require 'active_record'
require 'pry'

I18n.enforce_available_locales = false
$connection = ActiveRecord::Base.establish_connection("postgres://localhost/nightclub")

class Clubber < ActiveRecord::Base
	validates :name, length: { minimum: 2 }
	validates :age, numericality: {greater_than_or_equal_to: 21, less_than: 60}
	validates :gender, inclusion: { in: ["f", "m"] }

end

binding.pry
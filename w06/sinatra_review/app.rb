after do
	ActiveRecord::Base.connection.close
end
require_relative "./app.rb"

# User.delete_all # prevent dupilicates

# users = User.create(
# 	[
# 		{ username: 'sungkim' },
# 		{ username: 'andyl' },
# 		{ username: 'jameskim' },
# 		{ username: 'jungunkim' },
# 		{ username: 'mattcho' }
# 	]
# )

# users.each do |user|
# users.growls.create(body: "test")
# end

Growl.create(
	[
		{ body: 'hi', user_id: 1 },
		# { body: 'dd', user_id: 1 },
		# { body: 'ff', user_id: 2 },
		# { body: 'aa', user_id: 3 },
		# { body: 'kk', user_id: 4 },
		# { body: 'kk', user_id: 5 }
# 	]
# )
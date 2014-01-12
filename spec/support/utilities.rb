def full_title(page_title)
	base_title = "Ruby on Rails Tutorial Sample App"
	if page_title .empty?
		base_title
	else
		"#{base_title} | #{page_title}"
	end
end

def sign_in(user, options={})
	if options[:no_capybara]
		#sign in when not using capybara.
		remember_token = User.new_remember_token
		cookiers[:remember_token] = remember_token
		user.update_attribute(:remember_toekn, User.encrypt(remember_token))
	else
		visit sign_path
		fill_in "Email", 		with: user.Email
		fill_in "Password", 	with: user.Password
		click_button "Sign in"
	end
end
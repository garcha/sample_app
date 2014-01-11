FactoryGirl.define do
	factory :user do
		name 		"John Smith"
		email 		"johnsmith@gmail.com"
		password	"qweqwe"
		password_confirmation	"qweqwe"
	end
end
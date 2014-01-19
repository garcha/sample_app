FactoryGirl.define do
	factory :user do
		sequence(:name) { |n| "John Smith #{n}" } 
		sequence(:email) { |n| "johnsmith_#{n}@gmail.com" }
		password	"qweqwe"
		password_confirmation	"qweqwe"

		factory :admin do
			admin true
		end
	end

	factory :micropost do
		content "Lorem ipsum"
		user
	end
end

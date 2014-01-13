FactoryGirl.define do
	factory :user do
		sequence(:name) { |n| "John Smith #{n}" } 
		sequence(:email) { |n| "johnsmith_#{n}@gmail.com" }
		password	"qweqwe"
		password_confirmation	"qweqwe"
	end
end

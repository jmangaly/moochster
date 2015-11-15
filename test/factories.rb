FactoryGirl.define do
  factory :user do
    sequence :email do |n|
      "yoloman#{n}@gmail.com"
    end
    password "omglolhaha"
    password_confirmation "omglolhaha"
  end

  factory :comment do	
		message "Average burgers, bland meat, spongy bread; Whataburger is so much better"
		association :user
		association :place
  end 
 
 factory :place do
		name "In-N-Out Burgers"
		address "12909 Midway Rd., Dallas, TX 75244"
		description "Average Cali fast food"
		latitude (32.924021)
		longitude (-96.838757)
		association :user
 end

end


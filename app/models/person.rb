class Person < ActiveRecord::Base

	has_one :person_name, dependent: :destroy
	has_many :adresses, dependent: :destroy
	has_many :emails, dependent: :destroy
	has_many :p_dates, dependent: :destroy
	has_many :phones, dependent: :destroy
	has_many :urls, dependent: :destroy

end

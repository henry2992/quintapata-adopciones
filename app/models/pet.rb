class Pet < ApplicationRecord
	belongs_to :user, optional: true
	validates :name, :race, :age, :photos, presence: true
	validates_numericality_of :age, only_integer: true
	mount_uploader :photos, PetUploader

	def assing_user(email, name, phone)
		pet_user = User.find_by(email: email)
		if pet_user
			user = pet_user
		else
			new_user = User.new(email: email, name: name, phone: phone) 
			new_user.skip_password_validation = true
			user = new_user
		end
	end
end

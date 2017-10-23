class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
   has_many :pets
   attr_accessor :skip_password_validation
  protected

	def password_required?
		return false if skip_password_validation
		super
	end
	

end

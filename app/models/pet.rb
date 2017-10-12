class Pet < ApplicationRecord
	belongs_to :user
	validates :name, :race, :age, :photos, presence: true
	validates_numericality_of :age, only_integer: true
end

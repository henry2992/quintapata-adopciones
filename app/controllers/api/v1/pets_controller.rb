class Api::V1::PetsController < ApiController
	before_action :set_pet, only: [:show]


	def index
		@pets = Pet.all
		render json: @pets
		#format.json { render json: @pets }
		#respond_with @pets
	end

	def show
		render json: @pet
	end

	def new
		@pet = Pet.new
	end

	def create
  	pet = Pet.new(pet_params)
		pet.assing_user(params[:user_email], params[:user_name], params[:user_phone])
  	if pet.save 
  		render json: pet
  	else
  		render json: pet.errors
  	end
	end

	private

	def set_pet
		@pet = Pet.find(params[:id])
	end

	def pet_params
		params.require(:pet).permit(:name, :race, :age, :photos)
	end

	def facebook
		@facebook ||= Koala::Facebook::API.new(oauth_token)
	end

end

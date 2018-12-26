class PetsController < ApplicationController
    def index
    end
  
    def show
      @pet = Pet.find(params[:id])
    end

    def new
      @pets = Pet.all
      @pet = Pet.new
      @pet.user = current_user
    end
  
    def create
      @pets = Pet.all
      @pet = Pet.new(pet_params)
      @pet.user = current_user
      if @pet.save
        flash[:success]="Congrats, you added #{@pet.name} to your Pet Profile!"
        redirect_to pets_url(@pet)
      else 
        render 'new'
      end
    end
  
    private 
  
      def pet_params  
        params.require(:pet).permit(:name, :animal, :age, :image, :description, :other, :params)
      end
  end
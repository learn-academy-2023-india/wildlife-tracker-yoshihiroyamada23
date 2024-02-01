class ManageAnimalsController < ApplicationController
    def index
        wildlife = ManageAnimal.all
        render json: wildlife
    end
    
    def show
        wildlife = ManageAnimal.find(params[:id])
        render json: wildlife
    end

    def create
        wildlife = ManageAnimal.create(wildlife_params)
            if wildlife.valid?
            render json: wildlife
            else
            render json: wildlife.errors
            end
    end

    def update
        wildlife = ManageAnimal.find(params[:id])
        wildlife.update(wildlife_params)
            if wildlife.valid?
                render json: wildlife
            else 
                render json: wildlife.errors
            end  
    end

    def destroy
        wildlife = ManageAnimal.find(params[:id])
        wildlifes = ManageAnimal.all
            if wildlife.destroy
                render json: wildlifes
            else 
                render json: wildlife.errors
            end  
    end
    
    private
    def wildlife_params
        params.require(:manage_animal).permit(:common_name, :scientific_binomial)
    end

end

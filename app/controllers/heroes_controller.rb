class HeroesController < ApplicationController
    rescue_from ActiveRecord::RecordNotFound, with: :render_not_found_response
    def index 
        heroes = Hero.all  
        render json: heroes
    end 
    def show
        #add the serializer in order to display powers. 
        hero = Hero.find(params[:id])
        render json: hero, serializer: HerowithpowersSerializer
    end
    private
 def render_not_found_response
 render json: { error: "Hero not found" }, status: :not_found
 end
end

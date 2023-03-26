class PowersController < ApplicationController

    rescue_from ActiveRecord::RecordNotFound, with: :render_not_found_response
    rescue_from ActiveRecord::RecordInvalid, with: :render_not_valid_response
    
    def index 
        powers = Power.all  
        render json: powers
    end 
    def show
        power = Power.find(params[:id])
        render json: power
    end

    def update 
        power = Power.find(params[:id])
        power.update!(params_description)
        render json: power

    private
    def render_not_found_response
        render json: { error: "Power not found" }, status: :not_found
        end

    def params_description
        params.permit(:name, :description)
    end
    def render_not_valid_response
        render json: { error: ["validation errors"] }, status: :unprocessable_entity
    end
end

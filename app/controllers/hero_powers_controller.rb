class HeroPowersController < ApplicationController
    rescue_from ActiveRecord::RecordInvalid, with: :render_not_found_response
    def index
        heropowers = HeroPower.all
        render json: heropowers, except:[:created_at, :updated_at]
    end
    def create
        heropower = HeroPower.create!(params_heropower)
        render json: heropower
    end
    private
    def params_heropower
        params.permit(:strength, :power_id, :hero_id)
    end
    def render_not_found_response
        render json: { error: ["validation errors"] }, status: :unprocessable_entity
    end
end

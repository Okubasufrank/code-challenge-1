class RestaurantPizzasController < ApplicationController
rescue_from ActiveRecord::RecordInvalid, with: :unprocessable_entity
    def create 
        restaurant = RestaurantPizza.create!(restaurant_pizza_params)
        render json: restaurant.pizza, 
    end



    private
    def restaurant_pizza_params
        params.permit(:price, :restaurant_id, :pizza_id)
    end

    def unprocessable_entity
        render json: {error: invalid.record.errors}, status: :unprocessable_entity
    end
end

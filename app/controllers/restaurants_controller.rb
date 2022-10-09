class RestaurantsController < ApplicationController
    def index
        render json: Restaurant.all
    end

    def show
        restaurant=Restaurant.find_by!(id: params[:id])
        render json: restaurant, serializer: RestaurantAndPizzasSerializer
    end

end

class RestaurantPizzasController < ApplicationController
    def create
        restaurant_pizza = RestaurantPizza.create(restaurant_pizza_params)
        if restaurant_pizza.save
          render json: restaurant_pizza, only: [:id,  :price], status: :created
        else
          render json: { errors: restaurant_pizza.errors.full_messages }, status: :unprocessable_entity
        end
      end
    
      private
    
      def restaurant_pizza_params
        params.permit(:price, :pizza_id, :restaurant_id)
      end
end

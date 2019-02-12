module Api
  module V1
    class IngredientsController < ApplicationController
      def index
        @ingredients = Ingredient.all
      end

      def create
        @ingredient = Ingredient.create(ingredient_params)
        render json: @ingredient
      end

      private
      def ingredient_params
        params.require(:ingredient).permit(:name)
      end
    end
  end
end

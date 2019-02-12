module Api
  module V1
    class ProportionsController < ApplicationController
      def index
        @proportions = Proportion.all
      end
      
      def create
        @proportion = Proportion.create(proportion_params)

        render json: @proportion
      end

      private
      def proportion_params
        params.require(:proportion).permit(:amount, :cocktail_id, :ingredient_id)
      end
    end
  end
end

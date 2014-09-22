class RatingsController < ApplicationController

def create
@restaurant = Restaurant.find(params[:restaurant_id])
@rating = @restaurant.ratings.create(ratings_params)
@rating.save
redirect_to restaurant_path(@restaurant)
end

def new
  @restaurant = Restaurant.find(params[:restaurant_id])
  @rating = Rating.new
end


private
def ratings_params
  params.require(:rating).permit(:rating, :body)
end

end

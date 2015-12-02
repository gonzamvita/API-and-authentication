class ReviewsController < ApplicationController
  def create


    product = Product.find_by_id(params[:product_id])

    review = product.reviews.new(user_id: params[:user_id],
      product_id: product.id,
      description: params[:description])
    if review.save()
      redirect_to :back
    else
      redirect_to :back
    end
  end
end

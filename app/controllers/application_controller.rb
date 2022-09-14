class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  # Add your routes here
  get "/categories" do
    categories= Category.all
    categories.to_json
  end
  get "/products" do
    products= Product.all
    products.to_json(include: :reviews)
  end

  post '/products' do 
    product = Product.create(
      user_name: params[:user_name],
      comment: params[:comment],
      product_id: params[:product_id]
    )
    review.to_json
  end

  get "/reviews" do
    review= Review.all
    review.to_json
  end
  get "/reviews/:id" do
    # get "/reviews/:id" do
    # reviews = Review.all
    reviews= Review.find(params[:id])
    # reviews= Review.find(2)
    reviews.to_json
  end
  post '/reviews' do 
    review = Review.create(
      user_name: params[:user_name],
      comment: params[:comment],
      product_id: params[:product_id]
    )
    review.to_json
  end
  delete '/reviews/:id' do
    review = Review.find(params[:id])
    review.destroy 
    review.to_json
  end 
  # patch
  patch '/reviews/:id' do
    review = Review.find(params[:id])
    review.update(
      user_name: params[:user_name],
      comment: params[:comment],
      product_id: params[:product_id]
    )
    review.to_json
  end 
 
end

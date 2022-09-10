class ApplicationController < Sinatra::Base
  set :default_content_type, "application/json"

  # Add your routes here
  get "/" do
    { message: "Good luck with your project!" }.to_json
  end

  # Destinations Routes

  get "/destinations" do
    destination = Destination.all
    destination.to_json(include: [:reviews, :schedules])
  end

  get "/destinations/:id" do
    destination = Destination.find(params[:id])
    destination.to_json(include: [:reviews, :schedules])
  end

  post "/destinations" do
    destination = Destination.create(name: params[:name], location: params[:location], price: params[:price], image: params[:image], category: params[:category])
    destination.to_json(include: [:reviews, :schedules])
  end

  patch "/destinations/:id" do
    destination = Destination.find(params[:id])
    destination.update(name: params[:name], location: params[:location], price: params[:price], image: params[:image], category: params[:category])
    destination.to_json(include: [:reviews, :schedules])
  end

  delete "/destinations/:id" do
    destination = Destination.find(params[:id])
    destination.destroy
    destination.to_json(include: [:reviews, :schedules])
  end

  # Users Routes

  get "/users" do
    users = User.all
    users.to_json
  end

  get "/users/:id" do
    users = User.find(params[:id])
    users.to_json
  end

  post "/users" do
    users = User.create(first_name: params[:first_name], last_name: params[:last_name], email: params[:email], password: params[:password])
    users.to_json
  end

  patch "/users/:id" do
    users = User.find(params[:id])
    users.update(first_name: params[:first_name], last_name: params[:last_name], email: params[:email], password: params[:password])
    users.to_json
  end

  delete "/users/:id" do
    users = User.find(params[:id])
    users.destroy
    users.to_json
  end

  # Reviews Routes

  get "/reviews" do
    reviews = Review.all
    reviews.to_json(include: :destination)
  end

  get "/reviews/:id" do
    review = Review.find(params[:id])
    review.to_json(include: :destination)
  end

  post "/reviews" do
    reviews = Review.create(comment: params[:comment], rating: params[:rating])
    reviews.to_json(include: :destination)
  end

  patch "/reviews/:id" do
    reviews = Review.find(params[:id])
    reviews.update(comment: params[:comment], rating: params[:rating])
    reviews.to_json(include: :destination)
  end

  delete "/reviews/:id" do
    reviews = Review.find(params[:id])
    reviews.destroy
    reviews.to_json(include: :destination)
  end

  # Schedule Routes

  get "/schedules" do
    schedules = Schedule.all
    schedules.to_json(include: [:destination, :user])
  end

  get "/schedules/:id" do
    schedule = Schedule.find(params[:id])
    schedule.to_json(include: [:destination, :user])
  end

  post "/schedules" do
    schedules = Schedule.create(day: params[:day], time: params[:time], user_id: params[:user_id], destination_id: params[:destination_id])
    schedules.to_json(include: [:destination, :user])
  end

  patch "/schedules/:id" do
    schedules = Schedule.find(params[:id])
    schedules.update(day: params[:day], time: params[:time], user_id: params[:user_id], destination_id: params[:destination_id])
    schedules.to_json(include: [:destination, :user])
  end

  delete "/schedules/:id" do
    schedules = Schedule.find(params[:id])
    schedules.destroy
    schedules.to_json(include: [:destination, :user])
  end
end

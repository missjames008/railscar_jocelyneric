class UsersController < ApplicationController
  def index
  end

  def create
    if !params.has_key?(:make) || params[:make].strip.empty? || !params.has_key?(:model) || params[:model].strip.empty? || !params.has_key?(:year) || params[:year].to_i < 1900 || params[:year].to_i > Date.today.year
      flash.now[:alert] = "Please enter valid criteria!!!!!!"
      render "create.html.erb"
    else
      car = Car.new(params[:make], params[:model], params[:year])
      session[:car] = car.to_yaml
      redirect_to "/cars/simulate"

    end
  end
end

class CarsController < ApplicationController
  def simulate
    @car = YAML.load(session[:car])
  end

  def accelerate
    @car = YAML.load(session[:car])
    @car.accelerate
    session[:car] = @car.to_yaml
    redirect_to "/cars/simulate"
  end

  def brake
    @car = YAML.load(session[:car])
    @car.brake
    session[:car] = @car.to_yaml
    redirect_to "/cars/simulate"
  end

  def lights
    @car = YAML.load(session[:car])
    @car.lights
    session[:car] = @car.to_yaml
    redirect_to "/cars/simulate"
  end
end

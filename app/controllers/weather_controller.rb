# frozen_string_literal: true

# Class for weather controller 
class WeatherController < BaseApiController

  def index
    render json: Weather.query(filters), status: 200
  end

  def show
    weather = Weather.find(params[:id])
    if weather.present?
      render json: weather.format_json, status: 200
    else
      render json: {message: 'element dont exists'}, status: 404
    end
  end

  def create
    render json: 'ok'
  end
o
protected
  def filters
    params.permit(:date, :city, :sort)
  end
end

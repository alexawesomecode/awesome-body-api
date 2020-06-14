class MeasuresController < ApplicationController

  # GET /measures
  def index
    @measures = Measure.all

    render json: @measures
  end

  # GET /measures/1
  def create
    @measure = Measure.new(measure_params)

    if @measure.save
      render json: @measure, status: :created, location: @measure
    else
      render json: @measure.errors, status: :unprocessable_entity
    end
  end

end

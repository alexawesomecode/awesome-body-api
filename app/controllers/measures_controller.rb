class MeasuresController < ApplicationController
  # GET /measures
  def index
    @measures = Measure.where(name: params[:bodypart_id]).all.reverse_order
    render json: @measures
  end

  # GET /measures/1
  def create
    @measure = Measure.new(measure_params)

    if @measure.save
      render json: @measure, status: :created
    else
      @measure = { msg: 'error creating record' }
      render json: @measure
    end
  end

  def progress
    # custom for getting percent progress towards goal
    total = 0
    bodypart = Bodypart.find(params[:bodypart_id])
    @allmeasures = Measure.where(bodypart_id: params[:bodypart_id]).all
    @allmeasures.map { |item| total += item.value }
    goal_percent = (total * 100) / bodypart.target
    render json: goal_percent
  end

  private

  def measure_params
    params.require(:measure).permit(:bodypart_id, :value, :name, :date)
  end
end

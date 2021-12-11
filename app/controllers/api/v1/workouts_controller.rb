class Api::V1::WorkoutsController < ApplicationController
  before_action :set_workout, only: [:show, :update, :destroy]

  # GET /workouts
  # def index
  #   @workouts = Workout.all

  #   render json: @workouts
  # end

  # # GET /workouts/1
  # def show
  #   render json: @workout
  # end

  # POST /workouts
  def create
    @gym = Gym.find_by_id(params[:gym_id])
    @workout = @gym.workouts.create(workout_params)

    if @workout.save
      render json: GymSerializer.new(@gym), status: :created
    else
      render json: @workout.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /workouts/1
  # def update
  #   if @workout.update(workout_params)
  #     render json: @workout
  #   else
  #     render json: @workout.errors, status: :unprocessable_entity
  #   end
  # end

  # DELETE /workouts/1
  def destroy
    @workout.destroy
    gym = Gym.find_by_id(params[:gym_id])
    render json: GymSerializer.new(gym)
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_workout
      @workout = Workout.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def workout_params
      params.require(:workout).permit(:title, :content, :gym_id)
    end
end

class ScheduleBookedsController < ApplicationController
  before_action :set_schedule_booked, only: [:show, :edit, :update, :destroy]

  # GET /schedule_bookeds
  # GET /schedule_bookeds.json
  def index
    @schedule_bookeds = ScheduleBooked.all
  end

  # GET /schedule_bookeds/1
  # GET /schedule_bookeds/1.json
  def show
  end

  # GET /schedule_bookeds/new
  def new
    @schedule_booked = ScheduleBooked.new
  end

  # GET /schedule_bookeds/1/edit
  def edit
  end

  # POST /schedule_bookeds
  # POST /schedule_bookeds.json
  def create
    @schedule_booked = ScheduleBooked.new(schedule_booked_params)

    respond_to do |format|
      if @schedule_booked.save
        format.html { redirect_to @schedule_booked, notice: 'Schedule booked was successfully created.' }
        format.json { render :show, status: :created, location: @schedule_booked }
      else
        format.html { render :new }
        format.json { render json: @schedule_booked.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /schedule_bookeds/1
  # PATCH/PUT /schedule_bookeds/1.json
  def update
    respond_to do |format|
      if @schedule_booked.update(schedule_booked_params)
        format.html { redirect_to @schedule_booked, notice: 'Schedule booked was successfully updated.' }
        format.json { render :show, status: :ok, location: @schedule_booked }
      else
        format.html { render :edit }
        format.json { render json: @schedule_booked.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /schedule_bookeds/1
  # DELETE /schedule_bookeds/1.json
  def destroy
    @schedule_booked.destroy
    respond_to do |format|
      format.html { redirect_to schedule_bookeds_url, notice: 'Schedule booked was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_schedule_booked
      @schedule_booked = ScheduleBooked.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def schedule_booked_params
      params.require(:schedule_booked).permit(:patient_name, :schedule_id, :doctor_id)
    end
end

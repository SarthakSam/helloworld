class GroupparticipantsController < ApplicationController
  before_action :set_groupparticipant, only: [:show, :edit, :update, :destroy]

  # GET /groupparticipants
  # GET /groupparticipants.json
  def index
    @groupparticipants = Groupparticipant.all
  end

  # GET /groupparticipants/1
  # GET /groupparticipants/1.json
  def show
  end

  # GET /groupparticipants/new
  def new
    @groupparticipant = Groupparticipant.new
  end

  # GET /groupparticipants/1/edit
  def edit
  end

  # POST /groupparticipants
  # POST /groupparticipants.json
  def create
    @groupparticipant = Groupparticipant.new(groupparticipant_params)

    respond_to do |format|
      if @groupparticipant.save
        format.html { redirect_to @groupparticipant, notice: 'Groupparticipant was successfully created.' }
        format.json { render :show, status: :created, location: @groupparticipant }
      else
        format.html { render :new }
        format.json { render json: @groupparticipant.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /groupparticipants/1
  # PATCH/PUT /groupparticipants/1.json
  def update
    respond_to do |format|
      if @groupparticipant.update(groupparticipant_params)
        format.html { redirect_to @groupparticipant, notice: 'Groupparticipant was successfully updated.' }
        format.json { render :show, status: :ok, location: @groupparticipant }
      else
        format.html { render :edit }
        format.json { render json: @groupparticipant.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /groupparticipants/1
  # DELETE /groupparticipants/1.json
  def destroy
    @groupparticipant.destroy
    respond_to do |format|
      format.html { redirect_to groupparticipants_url, notice: 'Groupparticipant was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_groupparticipant
      @groupparticipant = Groupparticipant.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def groupparticipant_params
      params.require(:groupparticipant).permit(:user_id, :groupDescription_id)
    end
end

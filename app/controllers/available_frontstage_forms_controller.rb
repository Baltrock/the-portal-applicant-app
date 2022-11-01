class AvailableFrontstageFormsController < ApplicationController
  before_action :set_available_frontstage_form, only: %i[ show edit update destroy ]

  # GET /available_frontstage_forms or /available_frontstage_forms.json
  def index
    @available_frontstage_forms = AvailableFrontstageForm.all
  end

  # GET /available_frontstage_forms/1 or /available_frontstage_forms/1.json
  def show
    @available_frontstage_forms = AvailableFrontstageForm.all
  end

  # GET /available_frontstage_forms/new
  def new
    @available_frontstage_form = AvailableFrontstageForm.new
  end

  # GET /available_frontstage_forms/1/edit
  def edit
  end

  # POST /available_frontstage_forms or /available_frontstage_forms.json
  def create
    @available_frontstage_form = AvailableFrontstageForm.new(available_frontstage_form_params)

    respond_to do |format|
      if @available_frontstage_form.save
        format.html { redirect_to available_frontstage_form_url(@available_frontstage_form), notice: "Available frontstage form was successfully created." }
        format.json { render :show, status: :created, location: @available_frontstage_form }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @available_frontstage_form.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /available_frontstage_forms/1 or /available_frontstage_forms/1.json
  def update
    respond_to do |format|
      if @available_frontstage_form.update(available_frontstage_form_params)
        format.html { redirect_to available_frontstage_form_url(@available_frontstage_form), notice: "Available frontstage form was successfully updated." }
        format.json { render :show, status: :ok, location: @available_frontstage_form }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @available_frontstage_form.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /available_frontstage_forms/1 or /available_frontstage_forms/1.json
  def destroy
    @available_frontstage_form.destroy

    respond_to do |format|
      format.html { redirect_to available_frontstage_forms_url, notice: "Available frontstage form was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_available_frontstage_form
      @available_frontstage_form = AvailableFrontstageForm.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def available_frontstage_form_params
      params.require(:available_frontstage_form).permit(:role_title, :project_involved, :role_description, :requirements, :applicants_needed, :applications, :filled, :application_window_end)
    end
end

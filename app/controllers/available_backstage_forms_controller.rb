class AvailableBackstageFormsController < ApplicationController
  before_action :set_available_backstage_form, only: %i[ show edit update destroy ]

  # GET /available_backstage_forms or /available_backstage_forms.json
  def index
    @available_backstage_forms = AvailableBackstageForm.all
  end

  # GET /available_backstage_forms/1 or /available_backstage_forms/1.json
  def show
  end

  # GET /available_backstage_forms/new
  def new
    @available_backstage_form = AvailableBackstageForm.new
  end

  # GET /available_backstage_forms/1/edit
  def edit
  end

  # POST /available_backstage_forms or /available_backstage_forms.json
  def create
    @available_backstage_form = AvailableBackstageForm.new(available_backstage_form_params)
    @available_backstabe_form.admin = current_admin

    respond_to do |format|
      if @available_backstage_form.save
        format.html { redirect_to available_backstage_form_url(@available_backstage_form), notice: "Available backstage form was successfully created." }
        format.json { render :show, status: :created, location: @available_backstage_form }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @available_backstage_form.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /available_backstage_forms/1 or /available_backstage_forms/1.json
  def update
    respond_to do |format|
      if @available_backstage_form.update(available_backstage_form_params)
        format.html { redirect_to available_backstage_form_url(@available_backstage_form), notice: "Available backstage form was successfully updated." }
        format.json { render :show, status: :ok, location: @available_backstage_form }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @available_backstage_form.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /available_backstage_forms/1 or /available_backstage_forms/1.json
  def destroy
    @available_backstage_form.destroy

    respond_to do |format|
      format.html { redirect_to available_backstage_forms_url, notice: "Available backstage form was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_available_backstage_form
      @available_backstage_form = AvailableBackstageForm.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def available_backstage_form_params
      params.require(:available_backstage_form).permit(:role_title, :project_involved, :role_description, :requirements, :applicants_needed, :applications, :filled, :application_window_end, :admin_id)
    end
end

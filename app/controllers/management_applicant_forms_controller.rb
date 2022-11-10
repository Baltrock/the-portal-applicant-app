class ManagementApplicantFormsController < ApplicationController
  before_action :set_management_applicant_form, only: %i[ show edit update destroy ]

  # GET /management_applicant_forms or /management_applicant_forms.json
  def index
    @management_applicant_forms = ManagementApplicantForm.all
  end

  # GET /management_applicant_forms/1 or /management_applicant_forms/1.json
  def show
  end

  # GET /management_applicant_forms/new
  def new
    @management_applicant_form = ManagementApplicantForm.new
  end

  # GET /management_applicant_forms/1/edit
  def edit
  end

  # POST /management_applicant_forms or /management_applicant_forms.json
  def create
    @management_applicant_form = ManagementApplicantForm.new(management_applicant_form_params)
    @management_applicant_form.user = current_user

    respond_to do |format|
      if @management_applicant_form.save
        format.html { redirect_to management_applicant_form_url(@management_applicant_form), notice: "Management applicant form was successfully created." }
        format.json { render :show, status: :created, location: @management_applicant_form }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @management_applicant_form.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /management_applicant_forms/1 or /management_applicant_forms/1.json
  def update
    respond_to do |format|
      if @management_applicant_form.update(management_applicant_form_params)
        format.html { redirect_to management_applicant_form_url(@management_applicant_form), notice: "Management applicant form was successfully updated." }
        format.json { render :show, status: :ok, location: @management_applicant_form }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @management_applicant_form.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /management_applicant_forms/1 or /management_applicant_forms/1.json
  def destroy
    @management_applicant_form.destroy

    respond_to do |format|
      format.html { redirect_to management_applicant_forms_url, notice: "Management applicant form was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_management_applicant_form
      @management_applicant_form = ManagementApplicantForm.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def management_applicant_form_params
      params.require(:management_applicant_form).permit(:preferred_project, :preferred_role, :interest_reason, :availability)
    end
end

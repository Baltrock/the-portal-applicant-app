class ManagementRequestFormsController < ApplicationController
  before_action :set_management_request_form, only: %i[ show edit update destroy ]

  # GET /management_request_forms or /management_request_forms.json
  def index
    @management_request_forms = ManagementRequestForm.all
  end

  # GET /management_request_forms/1 or /management_request_forms/1.json
  def show
  end

  # GET /management_request_forms/new
  def new
    @management_request_form = ManagementRequestForm.new
  end

  # GET /management_request_forms/1/edit
  def edit
  end

  # POST /management_request_forms or /management_request_forms.json
  def create
    @management_request_form = ManagementRequestForm.new(management_request_form_params)

    respond_to do |format|
      if @management_request_form.save
        format.html { redirect_to management_request_form_url(@management_request_form), notice: "Management request form was successfully created." }
        format.json { render :show, status: :created, location: @management_request_form }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @management_request_form.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /management_request_forms/1 or /management_request_forms/1.json
  def update
    respond_to do |format|
      if @management_request_form.update(management_request_form_params)
        format.html { redirect_to management_request_form_url(@management_request_form), notice: "Management request form was successfully updated." }
        format.json { render :show, status: :ok, location: @management_request_form }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @management_request_form.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /management_request_forms/1 or /management_request_forms/1.json
  def destroy
    @management_request_form.destroy

    respond_to do |format|
      format.html { redirect_to management_request_forms_url, notice: "Management request form was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_management_request_form
      @management_request_form = ManagementRequestForm.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def management_request_form_params
      params.require(:management_request_form).permit(:request_target, :project_involved, :people_involved, :request_purpose, :outcome_expectation)
    end
end

class ResignationFormsController < ApplicationController
  before_action :set_resignation_form, only: %i[ show edit update destroy ]

  # GET /resignation_forms or /resignation_forms.json
  def index
    @resignation_forms = ResignationForm.all
  end

  # GET /resignation_forms/1 or /resignation_forms/1.json
  def show
  end

  # GET /resignation_forms/new
  def new
    @resignation_form = ResignationForm.new
  end

  # GET /resignation_forms/1/edit
  def edit
  end

  # POST /resignation_forms or /resignation_forms.json
  def create
    @resignation_form = ResignationForm.new(resignation_form_params)
    @resignation_form.user = current_user

    respond_to do |format|
      if @resignation_form.save
        format.html { redirect_to resignation_form_url(@resignation_form), notice: "Resignation form was successfully created." }
        format.json { render :show, status: :created, location: @resignation_form }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @resignation_form.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /resignation_forms/1 or /resignation_forms/1.json
  def update
    respond_to do |format|
      if @resignation_form.update(resignation_form_params)
        format.html { redirect_to resignation_form_url(@resignation_form), notice: "Resignation form was successfully updated." }
        format.json { render :show, status: :ok, location: @resignation_form }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @resignation_form.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /resignation_forms/1 or /resignation_forms/1.json
  def destroy
    @resignation_form.destroy

    respond_to do |format|
      format.html { redirect_to resignation_forms_url, notice: "Resignation form was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_resignation_form
      @resignation_form = ResignationForm.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def resignation_form_params
      params.require(:resignation_form).permit(:project_involved, :resignation_cause, :people_involved, :possible_solution, :additional_information, :user_id)
    end
end

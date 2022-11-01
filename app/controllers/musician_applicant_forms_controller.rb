class MusicianApplicantFormsController < ApplicationController
  before_action :set_musician_applicant_form, only: %i[ show edit update destroy ]

  # GET /musician_applicant_forms or /musician_applicant_forms.json
  def index
    @musician_applicant_forms = MusicianApplicantForm.all
  end

  # GET /musician_applicant_forms/1 or /musician_applicant_forms/1.json
  def show
  end

  # GET /musician_applicant_forms/new
  def new
    @musician_applicant_form = MusicianApplicantForm.new
  end

  # GET /musician_applicant_forms/1/edit
  def edit
  end

  # POST /musician_applicant_forms or /musician_applicant_forms.json
  def create
    @musician_applicant_form = MusicianApplicantForm.new(musician_applicant_form_params)
    @musician_applicant_form.user = current_user

    respond_to do |format|
      if @musician_applicant_form.save
        format.html { redirect_to musician_applicant_form_url(@musician_applicant_form), notice: "Musician applicant form was successfully created." }
        format.json { render :show, status: :created, location: @musician_applicant_form }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @musician_applicant_form.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /musician_applicant_forms/1 or /musician_applicant_forms/1.json
  def update
    respond_to do |format|
      if @musician_applicant_form.update(musician_applicant_form_params)
        format.html { redirect_to musician_applicant_form_url(@musician_applicant_form), notice: "Musician applicant form was successfully updated." }
        format.json { render :show, status: :ok, location: @musician_applicant_form }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @musician_applicant_form.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /musician_applicant_forms/1 or /musician_applicant_forms/1.json
  def destroy
    @musician_applicant_form.destroy

    respond_to do |format|
      format.html { redirect_to musician_applicant_forms_url, notice: "Musician applicant form was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_musician_applicant_form
      @musician_applicant_form = MusicianApplicantForm.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def musician_applicant_form_params
      params.require(:musician_applicant_form).permit(:project_title, :preferred_style, :instrument, :interest_reason, :availability, :audition_tape, :user_id)
    end
end

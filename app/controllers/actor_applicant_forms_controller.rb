class ActorApplicantFormsController < ApplicationController
  before_action :set_actor_applicant_form, only: %i[ show edit update destroy ]

  # GET /actor_applicant_forms or /actor_applicant_forms.json
  def index
    @actor_applicant_forms = ActorApplicantForm.all
  end

  # GET /actor_applicant_forms/1 or /actor_applicant_forms/1.json
  def show
  end

  # GET /actor_applicant_forms/new
  def new
    @actor_applicant_form = ActorApplicantForm.new
  end

  # GET /actor_applicant_forms/1/edit
  def edit
  end

  # POST /actor_applicant_forms or /actor_applicant_forms.json
  def create
    @actor_applicant_form = ActorApplicantForm.new(actor_applicant_form_params)
    @actor_applicant_form.user = current_user

    respond_to do |format|
      if @actor_applicant_form.save
        format.html { redirect_to actor_applicant_form_url(@actor_applicant_form), notice: "Actor applicant form was successfully created." }
        format.json { render :show, status: :created, location: @actor_applicant_form }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @actor_applicant_form.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /actor_applicant_forms/1 or /actor_applicant_forms/1.json
  def update
    respond_to do |format|
      if @actor_applicant_form.update(actor_applicant_form_params)
        format.html { redirect_to actor_applicant_form_url(@actor_applicant_form), notice: "Actor applicant form was successfully updated." }
        format.json { render :show, status: :ok, location: @actor_applicant_form }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @actor_applicant_form.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /actor_applicant_forms/1 or /actor_applicant_forms/1.json
  def destroy
    @actor_applicant_form.destroy

    respond_to do |format|
      format.html { redirect_to actor_applicant_forms_url, notice: "Actor applicant form was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_actor_applicant_form
      @actor_applicant_form = ActorApplicantForm.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def actor_applicant_form_params
      params.require(:actor_applicant_form).permit(:project_title, :preferred_role, :interest_reason, :availability, :audition_tape)
    end
end

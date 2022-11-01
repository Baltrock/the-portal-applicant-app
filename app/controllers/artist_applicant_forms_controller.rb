class ArtistApplicantFormsController < ApplicationController
  before_action :set_artist_applicant_form, only: %i[ show edit update destroy ]

  # GET /artist_applicant_forms or /artist_applicant_forms.json
  def index
    @artist_applicant_forms = ArtistApplicantForm.all
  end

  # GET /artist_applicant_forms/1 or /artist_applicant_forms/1.json
  def show
  end

  # GET /artist_applicant_forms/new
  def new
    @artist_applicant_form = ArtistApplicantForm.new
  end

  # GET /artist_applicant_forms/1/edit
  def edit
  end

  # POST /artist_applicant_forms or /artist_applicant_forms.json
  def create
    @artist_applicant_form = ArtistApplicantForm.new(artist_applicant_form_params)
    @artist_applicant_form.user = current_user

    respond_to do |format|
      if @artist_applicant_form.save
        format.html { redirect_to artist_applicant_form_url(@artist_applicant_form), notice: "Artist applicant form was successfully created." }
        format.json { render :show, status: :created, location: @artist_applicant_form }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @artist_applicant_form.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /artist_applicant_forms/1 or /artist_applicant_forms/1.json
  def update
    respond_to do |format|
      if @artist_applicant_form.update(artist_applicant_form_params)
        format.html { redirect_to artist_applicant_form_url(@artist_applicant_form), notice: "Artist applicant form was successfully updated." }
        format.json { render :show, status: :ok, location: @artist_applicant_form }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @artist_applicant_form.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /artist_applicant_forms/1 or /artist_applicant_forms/1.json
  def destroy
    @artist_applicant_form.destroy

    respond_to do |format|
      format.html { redirect_to artist_applicant_forms_url, notice: "Artist applicant form was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_artist_applicant_form
      @artist_applicant_form = ArtistApplicantForm.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def artist_applicant_form_params
      params.require(:artist_applicant_form).permit(:project_title, :art_form, :art_style, :interest_reason, :availability, :art_submission)
    end
end

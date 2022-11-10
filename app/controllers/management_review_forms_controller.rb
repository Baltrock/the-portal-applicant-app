class ManagementReviewFormsController < ApplicationController
  before_action :set_management_review_form, only: %i[ show edit update destroy ]

  # GET /management_review_forms or /management_review_forms.json
  def index
    @management_review_forms = ManagementReviewForm.all
  end

  # GET /management_review_forms/1 or /management_review_forms/1.json
  def show
  end

  # GET /management_review_forms/new
  def new
    @management_review_form = ManagementReviewForm.new
  end

  # GET /management_review_forms/1/edit
  def edit
  end

  # POST /management_review_forms or /management_review_forms.json
  def create
    @management_review_form = ManagementReviewForm.new(management_review_form_params)
    @management_review_form.user = current_user

    respond_to do |format|
      if @management_review_form.save
        format.html { redirect_to management_review_form_url(@management_review_form), notice: "Management review form was successfully created." }
        format.json { render :show, status: :created, location: @management_review_form }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @management_review_form.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /management_review_forms/1 or /management_review_forms/1.json
  def update
    respond_to do |format|
      if @management_review_form.update(management_review_form_params)
        format.html { redirect_to management_review_form_url(@management_review_form), notice: "Management review form was successfully updated." }
        format.json { render :show, status: :ok, location: @management_review_form }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @management_review_form.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /management_review_forms/1 or /management_review_forms/1.json
  def destroy
    @management_review_form.destroy

    respond_to do |format|
      format.html { redirect_to management_review_forms_url, notice: "Management review form was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_management_review_form
      @management_review_form = ManagementReviewForm.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def management_review_form_params
      params.require(:management_review_form).permit(:review_title, :project_involved, :people_involved, :review_purpose, :outcome_recommendation)
    end
end

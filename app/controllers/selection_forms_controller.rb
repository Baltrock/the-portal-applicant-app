class SelectionFormsController < ApplicationController
  before_action :set_selection_form, only: %i[ show edit update destroy ]

  # GET /selection_forms or /selection_forms.json
  def index
    @selection_forms = SelectionForm.all
  end

  # GET /selection_forms/1 or /selection_forms/1.json
  def show
  end

  # GET /selection_forms/new
  def new
    @selection_form = SelectionForm.new
  end

  # GET /selection_forms/1/edit
  def edit
  end

  # POST /selection_forms or /selection_forms.json
  def create
    @selection_form = SelectionForm.new(selection_form_params)
    @selection_form.admin = current_user

    respond_to do |format|
      if @selection_form.save
        format.html { redirect_to selection_form_url(@selection_form), notice: "Selection form was successfully created." }
        format.json { render :show, status: :created, location: @selection_form }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @selection_form.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /selection_forms/1 or /selection_forms/1.json
  def update
    respond_to do |format|
      if @selection_form.update(selection_form_params)
        format.html { redirect_to selection_form_url(@selection_form), notice: "Selection form was successfully updated." }
        format.json { render :show, status: :ok, location: @selection_form }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @selection_form.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /selection_forms/1 or /selection_forms/1.json
  def destroy
    @selection_form.destroy

    respond_to do |format|
      format.html { redirect_to selection_forms_url, notice: "Selection form was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_selection_form
      @selection_form = SelectionForm.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def selection_form_params
      params.require(:selection_form).permit(:role_involved, :project_involved, :applicant_selected, :admin_id)
    end
end

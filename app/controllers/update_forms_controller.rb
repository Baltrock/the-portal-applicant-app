class UpdateFormsController < ApplicationController
  before_action :set_update_form, only: %i[ show edit update destroy ]

  # GET /update_forms or /update_forms.json
  def index
    @update_forms = UpdateForm.all
  end

  # GET /update_forms/1 or /update_forms/1.json
  def show
  end

  # GET /update_forms/new
  def new
    @update_form = UpdateForm.new
  end

  # GET /update_forms/1/edit
  def edit
  end

  # POST /update_forms or /update_forms.json
  def create
    @update_form = UpdateForm.new(update_form_params)
    @update_form.admin = current_user

    respond_to do |format|
      if @update_form.save
        format.html { redirect_to update_form_url(@update_form), notice: "Update form was successfully created." }
        format.json { render :show, status: :created, location: @update_form }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @update_form.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /update_forms/1 or /update_forms/1.json
  def update
    respond_to do |format|
      if @update_form.update(update_form_params)
        format.html { redirect_to update_form_url(@update_form), notice: "Update form was successfully updated." }
        format.json { render :show, status: :ok, location: @update_form }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @update_form.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /update_forms/1 or /update_forms/1.json
  def destroy
    @update_form.destroy

    respond_to do |format|
      format.html { redirect_to update_forms_url, notice: "Update form was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_update_form
      @update_form = UpdateForm.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def update_form_params
      params.require(:update_form).permit(:update_title, :project_involved, :update_description, :admin_id)
    end
end

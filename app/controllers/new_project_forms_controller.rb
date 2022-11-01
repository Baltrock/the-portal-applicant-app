class NewProjectFormsController < ApplicationController
  before_action :set_new_project_form, only: %i[ show edit update destroy ]

  # GET /new_project_forms or /new_project_forms.json
  def index
    @new_project_forms = NewProjectForm.all
  end

  # GET /new_project_forms/1 or /new_project_forms/1.json
  def show
  end

  # GET /new_project_forms/new
  def new
    @new_project_form = NewProjectForm.new
  end

  # GET /new_project_forms/1/edit
  def edit
  end

  # POST /new_project_forms or /new_project_forms.json
  def create
    @new_project_form = NewProjectForm.new(new_project_form_params)

    respond_to do |format|
      if @new_project_form.save
        format.html { redirect_to new_project_form_url(@new_project_form), notice: "New project form was successfully created." }
        format.json { render :show, status: :created, location: @new_project_form }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @new_project_form.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /new_project_forms/1 or /new_project_forms/1.json
  def update
    respond_to do |format|
      if @new_project_form.update(new_project_form_params)
        format.html { redirect_to new_project_form_url(@new_project_form), notice: "New project form was successfully updated." }
        format.json { render :show, status: :ok, location: @new_project_form }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @new_project_form.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /new_project_forms/1 or /new_project_forms/1.json
  def destroy
    @new_project_form.destroy

    respond_to do |format|
      format.html { redirect_to new_project_forms_url, notice: "New project form was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_new_project_form
      @new_project_form = NewProjectForm.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def new_project_form_params
      params.require(:new_project_form).permit(:project_title, :project_introduction, :project_description, :available_frontstage_roles, :available_backstage_roles, :admin_id)
    end
end

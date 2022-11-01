class GlitchInputFormsController < ApplicationController
  before_action :set_glitch_input_form, only: %i[ show edit update destroy ]

  # GET /glitch_input_forms or /glitch_input_forms.json
  def index
    @glitch_input_forms = GlitchInputForm.all
  end

  # GET /glitch_input_forms/1 or /glitch_input_forms/1.json
  def show
  end

  # GET /glitch_input_forms/new
  def new
    @glitch_input_form = GlitchInputForm.new
  end

  # GET /glitch_input_forms/1/edit
  def edit
  end

  # POST /glitch_input_forms or /glitch_input_forms.json
  def create
    @glitch_input_form = GlitchInputForm.new(glitch_input_form_params)

    respond_to do |format|
      if @glitch_input_form.save
        format.html { redirect_to glitch_input_form_url(@glitch_input_form), notice: "Glitch input form was successfully created." }
        format.json { render :show, status: :created, location: @glitch_input_form }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @glitch_input_form.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /glitch_input_forms/1 or /glitch_input_forms/1.json
  def update
    respond_to do |format|
      if @glitch_input_form.update(glitch_input_form_params)
        format.html { redirect_to glitch_input_form_url(@glitch_input_form), notice: "Glitch input form was successfully updated." }
        format.json { render :show, status: :ok, location: @glitch_input_form }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @glitch_input_form.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /glitch_input_forms/1 or /glitch_input_forms/1.json
  def destroy
    @glitch_input_form.destroy

    respond_to do |format|
      format.html { redirect_to glitch_input_forms_url, notice: "Glitch input form was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_glitch_input_form
      @glitch_input_form = GlitchInputForm.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def glitch_input_form_params
      params.require(:glitch_input_form).permit(:glitch_title, :glitch_message, :spoiler_hint, :riddle_hint)
    end
end

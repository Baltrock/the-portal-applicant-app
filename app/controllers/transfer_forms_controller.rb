class TransferFormsController < ApplicationController
  before_action :set_transfer_form, only: %i[ show edit update destroy ]

  # GET /transfer_forms or /transfer_forms.json
  def index
    @transfer_forms = TransferForm.all
  end

  # GET /transfer_forms/1 or /transfer_forms/1.json
  def show
  end

  # GET /transfer_forms/new
  def new
    @transfer_form = TransferForm.new
  end

  # GET /transfer_forms/1/edit
  def edit
  end

  # POST /transfer_forms or /transfer_forms.json
  def create
    @transfer_form = TransferForm.new(transfer_form_params)
    @transfer_form.user = current_user

    respond_to do |format|
      if @transfer_form.save
        format.html { redirect_to transfer_form_url(@transfer_form), notice: "Transfer form was successfully created." }
        format.json { render :show, status: :created, location: @transfer_form }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @transfer_form.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /transfer_forms/1 or /transfer_forms/1.json
  def update
    respond_to do |format|
      if @transfer_form.update(transfer_form_params)
        format.html { redirect_to transfer_form_url(@transfer_form), notice: "Transfer form was successfully updated." }
        format.json { render :show, status: :ok, location: @transfer_form }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @transfer_form.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /transfer_forms/1 or /transfer_forms/1.json
  def destroy
    @transfer_form.destroy

    respond_to do |format|
      format.html { redirect_to transfer_forms_url, notice: "Transfer form was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_transfer_form
      @transfer_form = TransferForm.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def transfer_form_params
      params.require(:transfer_form).permit(:current_project, :preferred_project, :current_role, :prefered_role, :transfer_reason, :outcome_expectation, :availability, :user_id)
    end
end

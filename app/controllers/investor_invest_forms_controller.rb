class InvestorInvestFormsController < ApplicationController
  before_action :set_investor_invest_form, only: %i[ show edit update destroy ]

  # GET /investor_invest_forms or /investor_invest_forms.json
  def index
    @investor_invest_forms = InvestorInvestForm.all
  end

  # GET /investor_invest_forms/1 or /investor_invest_forms/1.json
  def show
  end

  # GET /investor_invest_forms/new
  def new
    @investor_invest_form = InvestorInvestForm.new
  end

  # GET /investor_invest_forms/1/edit
  def edit
  end

  # POST /investor_invest_forms or /investor_invest_forms.json
  def create
    @investor_invest_form = InvestorInvestForm.new(investor_invest_form_params)
    @investor_invest_form.user = current_user

    respond_to do |format|
      if @investor_invest_form.save
        format.html { redirect_to investor_invest_form_url(@investor_invest_form), notice: "Investor invest form was successfully created." }
        format.json { render :show, status: :created, location: @investor_invest_form }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @investor_invest_form.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /investor_invest_forms/1 or /investor_invest_forms/1.json
  def update
    respond_to do |format|
      if @investor_invest_form.update(investor_invest_form_params)
        format.html { redirect_to investor_invest_form_url(@investor_invest_form), notice: "Investor invest form was successfully updated." }
        format.json { render :show, status: :ok, location: @investor_invest_form }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @investor_invest_form.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /investor_invest_forms/1 or /investor_invest_forms/1.json
  def destroy
    @investor_invest_form.destroy

    respond_to do |format|
      format.html { redirect_to investor_invest_forms_url, notice: "Investor invest form was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_investor_invest_form
      @investor_invest_form = InvestorInvestForm.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def investor_invest_form_params
      params.require(:investor_invest_form).permit(:general_or_key, :currency, :investment_amount, :interest_reason, :investment_history, :availability)
    end
end

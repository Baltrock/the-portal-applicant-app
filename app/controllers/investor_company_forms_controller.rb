class InvestorCompanyFormsController < ApplicationController
  before_action :set_investor_company_form, only: %i[ show edit update destroy ]

  # GET /investor_company_forms or /investor_company_forms.json
  def index
    @investor_company_forms = InvestorCompanyForm.all
  end

  # GET /investor_company_forms/1 or /investor_company_forms/1.json
  def show
  end

  # GET /investor_company_forms/new
  def new
    @investor_company_form = InvestorCompanyForm.new
  end

  # GET /investor_company_forms/1/edit
  def edit
  end

  # POST /investor_company_forms or /investor_company_forms.json
  def create
    @investor_company_form = InvestorCompanyForm.new(investor_company_form_params)
    @investor_company_form.user = current_user

    respond_to do |format|
      if @investor_company_form.save
        format.html { redirect_to investor_company_form_url(@investor_company_form), notice: "Investor company form was successfully created." }
        format.json { render :show, status: :created, location: @investor_company_form }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @investor_company_form.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /investor_company_forms/1 or /investor_company_forms/1.json
  def update
    respond_to do |format|
      if @investor_company_form.update(investor_company_form_params)
        format.html { redirect_to investor_company_form_url(@investor_company_form), notice: "Investor company form was successfully updated." }
        format.json { render :show, status: :ok, location: @investor_company_form }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @investor_company_form.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /investor_company_forms/1 or /investor_company_forms/1.json
  def destroy
    @investor_company_form.destroy

    respond_to do |format|
      format.html { redirect_to investor_company_forms_url, notice: "Investor company form was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_investor_company_form
      @investor_company_form = InvestorCompanyForm.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def investor_company_form_params
      params.require(:investor_company_form).permit(:company_name, :company_address, :company_website_link, :interest_reason, :availability)
    end
end

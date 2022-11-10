class CreateInvestorCompanyForms < ActiveRecord::Migration[7.0]
  def change
    create_table :investor_company_forms do |t|
      t.string :company_name
      t.string :company_address
      t.string :company_website_link
      t.string :interest_reason
      t.string :availability

      t.timestamps
    end
  end
end

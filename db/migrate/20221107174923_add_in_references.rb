class AddInReferences < ActiveRecord::Migration[7.0]
  def change
    add_reference :investor_company_forms, :user
    add_reference :investor_invest_forms, :user
    add_reference :management_applicant_forms, :user
    add_reference :management_request_forms, :user
    add_reference :management_review_forms, :user
    add_foreign_key "investor_company_forms", 'users'
    add_foreign_key "investor_invest_forms", 'users'
    add_foreign_key "management_applicant_forms", 'users'
    add_foreign_key "management_request_forms", 'users'
    add_foreign_key "management_review_forms", 'users'
  end
end

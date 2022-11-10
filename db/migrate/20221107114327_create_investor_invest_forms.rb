class CreateInvestorInvestForms < ActiveRecord::Migration[7.0]
  def change
    create_table :investor_invest_forms do |t|
      t.string :general_or_key
      t.string :currency
      t.string :investment_amount
      t.string :interest_reason
      t.string :investment_history
      t.string :availability

      t.timestamps
    end
  end
end

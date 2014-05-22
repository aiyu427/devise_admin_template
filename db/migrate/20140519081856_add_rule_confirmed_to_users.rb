class AddRuleConfirmedToUsers < ActiveRecord::Migration
  def change
    add_column :users, :nickname, :string, null: false
    add_column :users, :rule_confirmed, :boolean

    add_index :users, :nickname, unique: true
  end
end

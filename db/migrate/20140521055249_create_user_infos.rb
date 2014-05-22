class CreateUserInfos < ActiveRecord::Migration
  def change
    create_table :user_infos do |t|
      t.string  :users, :firstname,     null: false, default: ""
      t.string  :users, :lastname,      null: false, default: ""
      t.string  :users, :firstname_kana
      t.string  :users, :lastname_kana
      t.string  :users, :tel
      t.integer :users, :sex
      t.string  :users, :post_code
      t.string  :users, :address1
      t.string  :users, :address2
      t.date    :users, :birthday
    end
  end
end

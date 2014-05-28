class CreateUserInfos < ActiveRecord::Migration
  def change
    create_table :user_infos do |t|
      t.integer :user_id, null: false
      t.string  :firstname,     null: false, default: ""
      t.string  :lastname,      null: false, default: ""
      t.string  :firstname_kana
      t.string  :lastname_kana
      t.string  :tel
      t.integer :sex
      t.string  :zip_code
      t.string  :address1
      t.string  :address2
      t.date    :birthday

      t.timestamps
    end
  end
end

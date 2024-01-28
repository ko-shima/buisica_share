class CreateCards < ActiveRecord::Migration[7.0]
  def change
    create_table :cards do |t|
      t.string  :client_last_name,    null: false
      t.string  :client_first_name,   null: false
      t.string  :company_name,        null: false
      t.string  :client_email,        null: false
      t.string  :client_department,   null: false
      t.string  :client_phone_number, null: false
      t.text    :description
      t.references :user,             null: false, foreign_key: true
      t.timestamps
    end
  end
end

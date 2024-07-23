class CreateCredentials < ActiveRecord::Migration[8.0]
  def change
    create_table :credentials do |t|
      t.string :name
      t.string :email
      t.string :password

      t.timestamps
    end
  end
end

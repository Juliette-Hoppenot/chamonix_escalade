class CreateInscriptions < ActiveRecord::Migration[5.2]
  def change
    create_table :inscriptions do |t|
      t.string :first_name
      t.string :last_name
      t.string :email
      t.date :birthday
      t.string :phone

      t.timestamps
    end
  end
end

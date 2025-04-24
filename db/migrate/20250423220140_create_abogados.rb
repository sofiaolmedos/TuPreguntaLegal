class CreateAbogados < ActiveRecord::Migration[7.1]
  def change
    create_table :abogados do |t|
      t.string :name
      t.string :specialty
      t.string :email
      t.string :phone

      t.timestamps
    end
  end
end

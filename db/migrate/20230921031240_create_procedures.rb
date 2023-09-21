class CreateProcedures < ActiveRecord::Migration[7.0]
  def change
    create_table :procedures do |t|
      t.text :cooking_method, null: false
      t.references :recipe,   null: false, foreign_key: true
      t.timestamps
    end
  end
end

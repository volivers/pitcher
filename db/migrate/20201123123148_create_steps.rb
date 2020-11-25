class CreateSteps < ActiveRecord::Migration[6.0]
  def change
    create_table :steps do |t|
      t.string :standpoint
      t.string :viewpoint
      t.string :actionpoint
      t.references :userjourney, null: false, foreign_key: true

      t.timestamps
    end
  end
end

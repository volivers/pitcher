class CreatePersonas < ActiveRecord::Migration[6.0]
  def change
    create_table :personas do |t|
      t.string :name
      t.integer :age
      t.text :bio
      t.string :nationality
      t.string :location
      t.string :job
      t.string :relationship_status
      t.string :income
      t.references :demo, null: false, foreign_key: true

      t.timestamps
    end
  end
end

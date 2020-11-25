class CreateUserjourneys < ActiveRecord::Migration[6.0]
  def change
    create_table :userjourneys do |t|
      t.references :demo, null: false, foreign_key: true
      t.references :persona, null: false, foreign_key: true

      t.timestamps
    end
  end
end

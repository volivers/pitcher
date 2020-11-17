class CreatePitches < ActiveRecord::Migration[6.0]
  def change
    create_table :pitches do |t|
      t.string :pain
      t.string :target
      t.string :solution

      t.timestamps
    end
  end
end

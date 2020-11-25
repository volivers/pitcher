class AddNameToUserjourneys < ActiveRecord::Migration[6.0]
  def change
    add_column :userjourneys, :name, :string
  end
end

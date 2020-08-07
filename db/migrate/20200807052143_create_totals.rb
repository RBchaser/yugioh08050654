class CreateTotals < ActiveRecord::Migration[5.0]
  def change
    create_table :totals do |t|
      t.string :score

      t.timestamps
    end
  end
end

class AddStarIdToStatuses < ActiveRecord::Migration[5.0]
  def change
    add_column :statuses, :star_id, :integer
  end
end

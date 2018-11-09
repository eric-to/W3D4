class ChangeAuthorIdTypeToBeIntegerInPolls < ActiveRecord::Migration[5.1]
  def change
    remove_column :polls, :author_id
    add_column :polls, :author_id, :integer
  end
end

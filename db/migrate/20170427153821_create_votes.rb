class CreateVotes < ActiveRecord::Migration
  def change
    create_table :votes do |t|
      t.integer :votable_id,  null: false
      t.integer :voter_id, null: false

      t.timestamps(null: false)
    end
  end
end

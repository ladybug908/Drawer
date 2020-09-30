class CreatePartitions < ActiveRecord::Migration[6.0]
  def change
    create_table :partitions do |t|
      t.string :title,    null: false
      t.string :category, null: false
      t.text   :comment
      t.references :user, null: false, foreign_key: true
      t.timestamps
    end
  end
end

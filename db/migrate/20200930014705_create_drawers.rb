class CreateDrawers < ActiveRecord::Migration[6.0]
  def change
    create_table :drawers do |t|

      t.timestamps
    end
  end
end

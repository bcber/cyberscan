class CreateReports < ActiveRecord::Migration
  def change
    create_table :reports do |t|
      t.integer :target_id
      t.string :tool
      t.text :tool_output

      t.timestamps
    end
  end
end

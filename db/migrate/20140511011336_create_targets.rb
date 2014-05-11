class CreateTargets < ActiveRecord::Migration
  def change
    create_table :targets do |t|
      t.string :name
      t.string :ip_address
      t.boolean :status
      t.integer :report_id

      t.timestamps
    end
  end
end

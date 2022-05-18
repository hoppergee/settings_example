class CreateSettings < ActiveRecord::Migration[7.0]
  def change
    create_table :settings do |t|
      t.string :key, null: false, index: { unique: true }
      t.string :value_type
      t.string :value

      t.timestamps
    end
  end
end

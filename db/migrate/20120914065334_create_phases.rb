class CreatePhases < ActiveRecord::Migration
  def change
    create_table :phases do |t|
      t.string :name
      t.integer :level

      # Lengths and intervals are in minutes.
      t.integer :core_length
      t.integer :daily_length
      t.integer :nap_count
      t.integer :nap_interval
      t.integer :nap_length
      t.timestamps
    end
  end
end

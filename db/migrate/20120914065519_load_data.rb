class LoadData < ActiveRecord::Migration
  def up
    # Add basic phases. Later support user-added phases.
    
    
  end

  def down
      Phase.delete_all
  end
end

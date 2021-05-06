class CreateIdentifications < ActiveRecord::Migration[6.1]
  def change
    create_table :identifications do |t|
      t.belongs_to :doctor, index: true
      t.belongs_to :specialty, index: true
      
      t.timestamps
    end
  end
end

class CreateStrolls < ActiveRecord::Migration[5.2]
  def change
    create_table :strolls do |t|
      t.belongs_to :dogsitter, index: true
      t.belongs_to :doggy, index: true
      t.belongs_to :city, index: true
      t.datetime :date
      t.timestamps
    end
  end
end

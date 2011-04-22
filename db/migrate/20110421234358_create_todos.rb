class CreateTodos < ActiveRecord::Migration
  def self.up
    create_table :todos do |t|
      t.string :content
      t.integer :days_left, :default => 0
      t.boolean :completed, :default => false
      t.timestamps
    end
  end

  def self.down
    drop_table :todos
  end
end

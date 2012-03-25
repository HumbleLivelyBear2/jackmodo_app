class AddTimeTitleToProject < ActiveRecord::Migration
  def self.up
    add_column :projects, :start_time, :string
    add_column :projects, :end_time, :string
    add_column :projects, :title, :string
  end

  def self.down
    remove_column :projects, :title
    remove_column :projects, :end_time
    remove_column :projects, :start_time
  end
end

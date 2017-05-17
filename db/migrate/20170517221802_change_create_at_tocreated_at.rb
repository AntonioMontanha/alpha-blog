class ChangeCreateAtTocreatedAt < ActiveRecord::Migration
  def change
    change_table :articles do |t|
      t.rename :create_at, :created_at
    end
  end
end

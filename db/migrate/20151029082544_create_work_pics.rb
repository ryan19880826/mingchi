class CreateWorkPics < ActiveRecord::Migration
  def change
    create_table :work_pics do |t|
      t.string :photo
      t.belongs_to :work
      t.timestamps
    end
  end
end

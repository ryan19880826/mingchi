class CreateQas < ActiveRecord::Migration
  def change
    create_table :qas do |t|
      t.string :question
      t.string :answer

      t.timestamps
    end
  end
end

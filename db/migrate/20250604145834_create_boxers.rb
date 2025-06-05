class CreateBoxers < ActiveRecord::Migration[8.0]
  def change
    create_table :boxers do |t|
      t.timestamps
    end
  end
end

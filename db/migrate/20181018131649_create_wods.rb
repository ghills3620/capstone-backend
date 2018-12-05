class CreateWods < ActiveRecord::Migration[5.2]
  def change
    create_table :wods do |t|
      t.string :metcon
      t.string :result

      t.timestamps
    end
  end
end

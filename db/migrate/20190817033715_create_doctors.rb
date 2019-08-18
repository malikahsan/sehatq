class CreateDoctors < ActiveRecord::Migration[5.2]
  def change
    create_table :doctors do |t|
      t.string :name
      t.belongs_to :specialist, foreign_key: true
      t.belongs_to :hospital, foreign_key: true

      t.timestamps
    end
  end
end

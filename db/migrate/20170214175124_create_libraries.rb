class CreateLibraries < ActiveRecord::Migration[5.0]
  def change
    create_table :libraries do |t|
      t.string :library_type
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end

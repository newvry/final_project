class Drop2Jointable < ActiveRecord::Migration[5.0]
  def change
    drop_table :videouploads
    drop_table :fileuploads
    drop_table :notes

    remove_column :units, :read
    remove_column :users, :video
    remove_column :users, :document

    add_column :units, :video, :string
    add_column :units, :document, :string
  end
end

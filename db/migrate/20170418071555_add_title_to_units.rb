class AddTitleToUnits < ActiveRecord::Migration[5.0]
  def change

    add_column :videouploads, :title, :string
    add_column :videouploads, :description, :string

    add_column :fileuploads, :title, :string
    add_column :fileuploads, :description, :string

  end
end

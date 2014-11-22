class AddSlugToScholarship < ActiveRecord::Migration
  def change
    add_column :scholarships, :slug, :string
    add_index :scholarships, :slug, unique: true
  end
end

class AddMediumToMedia < ActiveRecord::Migration
  def change
    add_column :media, :medium, :string
  end
end

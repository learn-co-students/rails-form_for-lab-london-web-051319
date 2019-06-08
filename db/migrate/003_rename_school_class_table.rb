class RenameSchoolClassTable < ActiveRecord::Migration[4.2]
  def change
    rename_table :school_class, :school_classes
  end
end
class ChangeColumnsAddNotnullOnProperties < ActiveRecord::Migration[6.0]
  def change
    change_column_null :properties, :name, false
    change_column_null :properties, :rent, false
    change_column_null :properties, :address, false
    change_column_null :properties, :age, false
  end
end

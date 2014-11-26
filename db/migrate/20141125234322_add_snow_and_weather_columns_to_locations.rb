class AddSnowAndWeatherColumnsToLocations < ActiveRecord::Migration
  def change
    add_column :locations, :link,         :string
    add_column :locations, :snow_base,    :string
    add_column :locations, :snow_fall,    :string
    add_column :locations, :current_temp, :string
  end
end

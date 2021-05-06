class ChangeAppointment < ActiveRecord::Migration[6.1]
  def change
    remove_column :appointments, :city, :string
  end
end

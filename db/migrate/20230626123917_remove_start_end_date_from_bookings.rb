class RemoveStartEndDateFromBookings < ActiveRecord::Migration[7.0]
  def change
    remove_column :bookings, :start_date, :datetime
    remove_column :bookings, :end_date, :datetime
  end
end

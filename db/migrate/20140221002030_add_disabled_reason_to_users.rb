class AddDisabledReasonToUsers < ActiveRecord::Migration
  def change
    add_column :users, :disabled_reason, :string
  end
end

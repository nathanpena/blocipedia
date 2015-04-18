class AddAutoRenewToSubscription < ActiveRecord::Migration
  def change
    add_column    :subscriptions, :auto_renew, :boolean
    remove_column :subscriptions, :subscription_type, :string
    remove_column :subscriptions, :upgraded, :boolean
    remove_column :subscriptions, :has_upgraded, :boolean
  end
end

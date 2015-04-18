class CreateSubscriptions < ActiveRecord::Migration
  def change
    create_table :subscriptions do |t|
      t.string :type
      t.boolean :upgraded
      t.boolean :has_upgraded
      t.datetime :subscription_end_date
      t.references :user, index: true

      t.timestamps
    end
  end
end

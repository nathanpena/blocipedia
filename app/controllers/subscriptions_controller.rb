class SubscriptionsController < ApplicationController

def downgrade
  @user = current_user
  @subscription = @user.subscription
  @subscription.update(
    subscription_type: "standard",
    upgraded: false,
    has_upgraded: true,
    subscription_end_date: set_end_date
    )
end

private

def set_end_date
  d = Date.today
  return Date.civil(d.year, d.month, -1)
end

end

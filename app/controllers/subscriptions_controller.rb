class SubscriptionsController < ApplicationController

def downgrade
  @subscription = current_user.subscriptions.last
  @subscription.auto_renew = false    

  if @subscription.save
    flash[:notice] = "Subscription will terminate #{@subscription.subscription_end_date}"
  else 
    flash[:error] = "The site failed to cancel your subscription. Contact support at support.app.com"
  end

end
end

class SubscriptionsController < ApplicationController
respond_to :js
def downgrade
  @subscription = current_user.subscriptions.last
  @subscription.update(
    auto_renew: false    
    )
  if @subscription.update
    flash[:notice] = "Subscription will terminate #{@subscription.subscription_end_date}"
  else 
    flash[:error] = "The site failed to cancel your subscription. Contact support at support.app.com"
end

end

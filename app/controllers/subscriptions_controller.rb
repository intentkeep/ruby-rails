# frozen_string_literal: true

require_relative '../services/subscription_service'

class SubscriptionsController
  def activate(params)
    status = SubscriptionService.activate(params[:plan])
    { status: 200, body: { status: status } }
  rescue ArgumentError => e
    { status: 422, body: { error: e.message } }
  end
end

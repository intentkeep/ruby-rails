# frozen_string_literal: true

module SubscriptionService
  BILLING_GRACE_PERIOD_DAYS = 14

  module_function

  def activate(plan)
    raise ArgumentError, 'INVALID_PLAN' unless plan == 'pro'

    'ACTIVE'
  end
end

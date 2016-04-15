# frozen_string_literal: true
class Admin
  class SubscriptionsController < ApplicationController

    authenticate_admin

    # GET /admin/subscriptions
    def index
      @subscriptions = Subscription.email_ordered
    end
  end
end

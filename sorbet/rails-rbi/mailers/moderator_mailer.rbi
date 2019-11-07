# typed: strong
# This is an autogenerated file for Rails helpers.
# Please rerun rake rails_rbi:mailers to regenerate.
class ModeratorMailer
  sig { params(story: T.untyped).returns(ActionMailer::MessageDelivery) }
  def self.story_approved(story); end

  sig { params(story: T.untyped).returns(ActionMailer::MessageDelivery) }
  def self.story_created(story); end

  sig { params(subscription: T.untyped).returns(ActionMailer::MessageDelivery) }
  def self.subscription_verification(subscription); end
end
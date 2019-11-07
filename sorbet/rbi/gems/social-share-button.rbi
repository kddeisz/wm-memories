# This file is autogenerated. Do not edit it by hand. Regenerate it with:
#   srb rbi gems

# typed: strong
#
# If you would like to make changes to this file, great! Please create the gem's shim here:
#
#   https://github.com/sorbet/sorbet-typed/new/master?filename=lib/social-share-button/all/social-share-button.rbi
#
# social-share-button-1.2.1
module SocialShareButton
  def self.config; end
  def self.config=(arg0); end
  def self.configure; end
end
class SocialShareButton::Config
  def allow_sites; end
  def allow_sites=(arg0); end
  def initialize; end
end
module SocialShareButton::Helper
  def social_share_button_tag(title = nil, opts = nil); end
end
module SocialShareButton::Rails
end
class SocialShareButton::Rails::Engine < Rails::Engine
end

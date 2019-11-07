# This file is autogenerated. Do not edit it by hand. Regenerate it with:
#   srb rbi gems

# typed: true
#
# If you would like to make changes to this file, great! Please create the gem's shim here:
#
#   https://github.com/sorbet/sorbet-typed/new/master?filename=lib/twitter/all/twitter.rbi
#
# twitter-6.2.0
module Twitter
end
module Twitter::NullObject::Customizations
  def !; end
  def <=>(other); end
  def as_json(*arg0); end
  def instance_of?(klass); end
  def is_a?(mod); end
  def kind_of?(mod); end
  def nil?; end
  def respond_to?(*arg0); end
  def to_json(*args); end
  include Comparable
end
module Twitter::NullObject::GeneratedMethods
  def initialize(*arg0); end
  def inspect; end
  def method_missing(method_name, *args, &block); end
  def respond_to?(*arg0); end
  def to_a(*args, &block); end
  def to_ary; end
  def to_c(*args, &block); end
  def to_f(*args, &block); end
  def to_h(*args, &block); end
  def to_hash; end
  def to_i(*args, &block); end
  def to_int; end
  def to_r(*args, &block); end
  def to_s(*args, &block); end
  def to_str; end
  extend Forwardable
end
class Twitter::NullObject < Naught::BasicObject
  def class; end
  def self.get(*arg0); end
  include Naught::Conversions
  include Naught::NullObjectTag
  include Twitter::NullObject::Customizations
  include Twitter::NullObject::GeneratedMethods
end
module Twitter::Utils
  def flat_pmap(enumerable); end
  def pmap(enumerable); end
  def self.flat_pmap(enumerable); end
  def self.pmap(enumerable); end
end
class Twitter::Base
  def [](method); end
  def attr_falsey_or_empty?(key); end
  def attrs; end
  def attrs_for_object(key1, key2 = nil); end
  def initialize(attrs = nil); end
  def self.attr_reader(*attrs); end
  def self.define_attribute_method(key1, klass = nil, key2 = nil); end
  def self.define_predicate_method(key1, key2 = nil); end
  def self.define_uri_method(key1, key2); end
  def self.display_uri_attr_reader; end
  def self.object_attr_reader(klass, key1, key2 = nil); end
  def self.predicate_attr_reader(*attrs); end
  def self.uri_attr_reader(*attrs); end
  def to_h; end
  def to_hash; end
  extend Forwardable
  extend Memoizable::ModuleMethods
  include Memoizable
  include Twitter::Utils
end
class Twitter::Configuration < Twitter::Base
  def characters_reserved_per_media(&block); end
  def characters_reserved_per_media?(&block); end
  def dm_text_character_limit(&block); end
  def dm_text_character_limit?(&block); end
  def max_media_per_upload(&block); end
  def max_media_per_upload?(&block); end
  def non_username_paths(&block); end
  def non_username_paths?(&block); end
  def photo_size_limit(&block); end
  def photo_size_limit?(&block); end
  def photo_sizes(&block); end
  def short_uri_length(&block); end
  def short_uri_length_https(&block); end
  def short_url_length(&block); end
  def short_url_length?(&block); end
  def short_url_length_https(&block); end
  def short_url_length_https?(&block); end
  extend Memoizable::ModuleMethods
  include Memoizable
end
module Twitter::Enumerable
  def each(start = nil); end
  def last?; end
  include Enumerable
end
class Twitter::RateLimit < Twitter::Base
  def limit(&block); end
  def remaining(&block); end
  def reset_at(&block); end
  def reset_in; end
  def retry_after; end
  extend Memoizable::ModuleMethods
  include Memoizable
end
class Twitter::Error < StandardError
  def code; end
  def initialize(message = nil, rate_limit = nil, code = nil); end
  def rate_limit; end
  def self.extract_message_from_errors(body); end
  def self.from_response(body, headers); end
  def self.parse_error(body); end
end
class Twitter::Error::ClientError < Twitter::Error
end
class Twitter::Error::BadRequest < Twitter::Error::ClientError
end
class Twitter::Error::Unauthorized < Twitter::Error::ClientError
end
class Twitter::Error::Forbidden < Twitter::Error::ClientError
end
class Twitter::Error::RequestEntityTooLarge < Twitter::Error::ClientError
end
class Twitter::Error::AlreadyFavorited < Twitter::Error::Forbidden
end
class Twitter::Error::AlreadyRetweeted < Twitter::Error::Forbidden
end
class Twitter::Error::DuplicateStatus < Twitter::Error::Forbidden
end
class Twitter::Error::NotFound < Twitter::Error::ClientError
end
class Twitter::Error::NotAcceptable < Twitter::Error::ClientError
end
class Twitter::Error::UnprocessableEntity < Twitter::Error::ClientError
end
class Twitter::Error::TooManyRequests < Twitter::Error::ClientError
end
class Twitter::Error::ServerError < Twitter::Error
end
class Twitter::Error::InternalServerError < Twitter::Error::ServerError
end
class Twitter::Error::BadGateway < Twitter::Error::ServerError
end
class Twitter::Error::ServiceUnavailable < Twitter::Error::ServerError
end
class Twitter::Error::GatewayTimeout < Twitter::Error::ServerError
end
module Twitter::Error::Code
end
class Twitter::Headers
  def auth_header; end
  def bearer_auth_header; end
  def bearer_token_credentials_auth_header; end
  def bearer_token_request?; end
  def initialize(client, request_method, url, options = nil); end
  def oauth_auth_header; end
  def request_headers; end
end
module Twitter::REST
end
class Twitter::REST::Request
  def client; end
  def client=(arg0); end
  def error(code, body, headers); end
  def fail_or_return_response_body(code, body, headers); end
  def forbidden_error(body, headers); end
  def headers; end
  def headers=(arg0); end
  def http_client; end
  def initialize(client, request_method, path, options = nil); end
  def merge_multipart_file!(options); end
  def mime_type(basename); end
  def options; end
  def options=(arg0); end
  def path; end
  def path=(arg0); end
  def perform; end
  def proxy; end
  def rate_limit; end
  def rate_limit=(arg0); end
  def request_method; end
  def request_method=(arg0); end
  def set_multipart_options!(request_method, options); end
  def symbolize_keys!(object); end
  def uri; end
  def uri=(arg0); end
  def verb; end
  include Twitter::Utils
end
class Twitter::Cursor
  def attrs; end
  def attrs=(attrs); end
  def fetch_next_page; end
  def initialize(key, klass, request); end
  def last?; end
  def next; end
  def next_cursor; end
  def to_h; end
  def to_hash; end
  include Twitter::Enumerable
  include Twitter::Utils
end
module Twitter::Creatable
  def created?(&block); end
  def created_at(&block); end
  extend Memoizable::ModuleMethods
  include Memoizable
end
class Twitter::Entity < Twitter::Base
  def indices(&block); end
  def indices?(&block); end
end
class Twitter::Entity::Hashtag < Twitter::Entity
  def text(&block); end
  def text?(&block); end
end
class Twitter::Entity::Symbol < Twitter::Entity
  def text(&block); end
  def text?(&block); end
end
class Twitter::Entity::URI < Twitter::Entity
  def display_uri(&block); end
  def display_uri?(&block); end
  def display_url(&block); end
  def display_url?(&block); end
  def expanded_uri(&block); end
  def expanded_uri?(&block); end
  def expanded_url(&block); end
  def expanded_url?(&block); end
  def uri(&block); end
  def uri?(&block); end
  def url(&block); end
  def url?(&block); end
end
class Twitter::Entity::UserMention < Twitter::Entity
  def id(&block); end
  def id?(&block); end
  def name(&block); end
  def name?(&block); end
  def screen_name(&block); end
  def screen_name?(&block); end
end
class Twitter::Factory
  def self.new(method, klass, attrs = nil); end
end
class Twitter::Identity < Twitter::Base
  def id(&block); end
  def id?(&block); end
  def initialize(attrs = nil); end
  include Anonymous_Equalizer_10
  include Equalizer::Methods
end
module Anonymous_Equalizer_10
  def cmp?(comparator, other); end
  def hash; end
  def inspect; end
end
class Twitter::Variant < Twitter::Base
  def bitrate(&block); end
  def bitrate?(&block); end
  def content_type(&block); end
  def content_type?(&block); end
  def uri(&block); end
  def uri?(&block); end
  def url(&block); end
  def url?(&block); end
end
module Twitter::Media
end
class Twitter::Media::VideoInfo < Twitter::Base
  def aspect_ratio(&block); end
  def aspect_ratio?(&block); end
  def duration_millis(&block); end
  def duration_millis?(&block); end
  def variants(&block); end
  extend Memoizable::ModuleMethods
  include Memoizable
end
class Twitter::Media::Video < Twitter::Identity
  def display_uri(&block); end
  def display_uri?(&block); end
  def display_url(&block); end
  def display_url?(&block); end
  def expanded_uri(&block); end
  def expanded_uri?(&block); end
  def expanded_url(&block); end
  def expanded_url?(&block); end
  def indices(&block); end
  def indices?(&block); end
  def media_uri(&block); end
  def media_uri?(&block); end
  def media_uri_https(&block); end
  def media_uri_https?(&block); end
  def media_url(&block); end
  def media_url?(&block); end
  def media_url_https(&block); end
  def media_url_https?(&block); end
  def sizes(&block); end
  def type(&block); end
  def type?(&block); end
  def uri(&block); end
  def uri?(&block); end
  def url(&block); end
  def url?(&block); end
  def video_info(&block); end
  extend Memoizable::ModuleMethods
  include Memoizable
end
class Twitter::Media::AnimatedGif < Twitter::Media::Video
end
class Twitter::Media::Photo < Twitter::Identity
  def display_uri(&block); end
  def display_uri?(&block); end
  def display_url(&block); end
  def display_url?(&block); end
  def expanded_uri(&block); end
  def expanded_uri?(&block); end
  def expanded_url(&block); end
  def expanded_url?(&block); end
  def indices(&block); end
  def indices?(&block); end
  def media_uri(&block); end
  def media_uri?(&block); end
  def media_uri_https(&block); end
  def media_uri_https?(&block); end
  def media_url(&block); end
  def media_url?(&block); end
  def media_url_https(&block); end
  def media_url_https?(&block); end
  def sizes(&block); end
  def type(&block); end
  def type?(&block); end
  def uri(&block); end
  def uri?(&block); end
  def url(&block); end
  def url?(&block); end
  extend Memoizable::ModuleMethods
  include Memoizable
end
class Twitter::MediaFactory < Twitter::Factory
  def self.new(attrs = nil); end
end
module Twitter::Entities
  def entities(klass, key2, key1 = nil); end
  def entities?(&block); end
  def hashtags(&block); end
  def hashtags?(&block); end
  def media(&block); end
  def media?(&block); end
  def symbols(&block); end
  def symbols?(&block); end
  def uris(&block); end
  def uris?; end
  def urls(&block); end
  def urls?; end
  def user_mentions(&block); end
  def user_mentions?(&block); end
  extend Memoizable::ModuleMethods
  include Memoizable
end
class Twitter::DirectMessage < Twitter::Identity
  def full_text(&block); end
  def recipient(&block); end
  def recipient?(&block); end
  def sender(&block); end
  def sender?(&block); end
  def text(&block); end
  def text?(&block); end
  extend Memoizable::ModuleMethods
  extend Memoizable::ModuleMethods
  include Memoizable
  include Memoizable
  include Twitter::Creatable
  include Twitter::Entities
end
class Twitter::Geo < Twitter::Base
  def coordinates(&block); end
  def coordinates?(&block); end
  def coords(&block); end
  include Anonymous_Equalizer_11
  include Equalizer::Methods
end
module Anonymous_Equalizer_11
  def cmp?(comparator, other); end
  def hash; end
  def inspect; end
end
class Twitter::Geo::Point < Twitter::Geo
  def lat; end
  def latitude; end
  def lng; end
  def long; end
  def longitude; end
end
class Twitter::Geo::Polygon < Twitter::Geo
end
class Twitter::GeoFactory < Twitter::Factory
  def self.new(attrs = nil); end
end
class Twitter::Language < Twitter::Base
  def code(&block); end
  def code?(&block); end
  def name(&block); end
  def name?(&block); end
  def status(&block); end
  def status?(&block); end
end
class Twitter::List < Twitter::Identity
  def description(&block); end
  def description?(&block); end
  def following?(&block); end
  def full_name(&block); end
  def full_name?(&block); end
  def member_count(&block); end
  def member_count?(&block); end
  def members_uri(&block); end
  def members_url(&block); end
  def mode(&block); end
  def mode?(&block); end
  def name(&block); end
  def name?(&block); end
  def slug(&block); end
  def slug?(&block); end
  def subscriber_count(&block); end
  def subscriber_count?(&block); end
  def subscribers_uri(&block); end
  def subscribers_url(&block); end
  def uri(&block); end
  def uri?(&block); end
  def url(&block); end
  def user(&block); end
  def user?(&block); end
  extend Memoizable::ModuleMethods
  include Memoizable
  include Twitter::Creatable
end
class Twitter::Metadata < Twitter::Base
  def iso_language_code(&block); end
  def iso_language_code?(&block); end
  def result_type(&block); end
  def result_type?(&block); end
end
class Twitter::OEmbed < Twitter::Base
  def author_name(&block); end
  def author_name?(&block); end
  def author_uri(&block); end
  def author_uri?(&block); end
  def author_url(&block); end
  def author_url?(&block); end
  def cache_age(&block); end
  def cache_age?(&block); end
  def height(&block); end
  def height?(&block); end
  def html(&block); end
  def html?(&block); end
  def provider_name(&block); end
  def provider_name?(&block); end
  def provider_uri(&block); end
  def provider_uri?(&block); end
  def provider_url(&block); end
  def provider_url?(&block); end
  def type(&block); end
  def type?(&block); end
  def uri(&block); end
  def uri?(&block); end
  def url(&block); end
  def url?(&block); end
  def version(&block); end
  def version?(&block); end
  def width(&block); end
  def width?(&block); end
end
class Twitter::Place < Twitter::Identity
  def attributes(&block); end
  def attributes?(&block); end
  def bounding_box(&block); end
  def bounding_box?(&block); end
  def contained?(&block); end
  def contained_within(&block); end
  def contained_within?(&block); end
  def country(&block); end
  def country?(&block); end
  def country_code(&block); end
  def full_name(&block); end
  def full_name?(&block); end
  def initialize(attrs = nil); end
  def name(&block); end
  def name?(&block); end
  def parent_id(&block); end
  def place_type(&block); end
  def uri(&block); end
  def uri?(&block); end
  def url(&block); end
  def url?(&block); end
  def woe_id(&block); end
  def woeid(&block); end
  extend Memoizable::ModuleMethods
  include Memoizable
end
class Twitter::ProfileBanner < Twitter::Base
  def sizes(&block); end
  extend Memoizable::ModuleMethods
  include Memoizable
end
class Twitter::Relationship < Twitter::Base
  def initialize(attrs = nil); end
  def source(&block); end
  def source?(&block); end
  def target(&block); end
  def target?(&block); end
end
module Twitter::Version
  def major; end
  def minor; end
  def patch; end
  def pre; end
  def self.major; end
  def self.minor; end
  def self.patch; end
  def self.pre; end
  def self.to_a; end
  def self.to_h; end
  def self.to_s; end
  def to_a; end
  def to_h; end
  def to_s; end
end
class Twitter::Client
  def access_token; end
  def access_token=(arg0); end
  def access_token_secret; end
  def access_token_secret=(arg0); end
  def blank?(s); end
  def consumer_key; end
  def consumer_key=(arg0); end
  def consumer_secret; end
  def consumer_secret=(arg0); end
  def credentials; end
  def credentials?; end
  def initialize(options = nil); end
  def proxy; end
  def proxy=(arg0); end
  def timeouts; end
  def timeouts=(arg0); end
  def user_agent; end
  def user_agent=(arg0); end
  def user_token?; end
  include Twitter::Utils
end
class Twitter::Arguments < Array
  def initialize(args); end
  def options; end
end
class Twitter::BasicUser < Twitter::Identity
  def following?(&block); end
  def screen_name(&block); end
  def screen_name?(&block); end
end
module Twitter::Profile
  def insecure_uri(uri); end
  def parse_uri(uri); end
  def profile_banner_uri(size = nil); end
  def profile_banner_uri?(&block); end
  def profile_banner_uri_https(size = nil); end
  def profile_banner_uri_https?(&block); end
  def profile_banner_url(size = nil); end
  def profile_banner_url?(&block); end
  def profile_banner_url_https(size = nil); end
  def profile_banner_url_https?(&block); end
  def profile_image_suffix(size); end
  def profile_image_uri(size = nil); end
  def profile_image_uri?(&block); end
  def profile_image_uri_https(size = nil); end
  def profile_image_uri_https?(&block); end
  def profile_image_url(size = nil); end
  def profile_image_url?(&block); end
  def profile_image_url_https(size = nil); end
  def profile_image_url_https?(&block); end
  def self.alias_method_sub(method, pattern, replacement); end
  def self.alias_predicate_uri_methods(method); end
  extend Memoizable::ModuleMethods
  include Memoizable
end
class Twitter::User < Twitter::BasicUser
  def connections(&block); end
  def connections?(&block); end
  def contributors_enabled?(&block); end
  def default_profile?(&block); end
  def default_profile_image?(&block); end
  def description(&block); end
  def description?(&block); end
  def description_uris(&block); end
  def description_uris?(&block); end
  def description_urls(&block); end
  def description_urls?(&block); end
  def email(&block); end
  def email?(&block); end
  def entities?(&block); end
  def favorites_count(&block); end
  def favourites_count(&block); end
  def favourites_count?(&block); end
  def follow_request_sent?(&block); end
  def followers_count(&block); end
  def followers_count?(&block); end
  def friends_count(&block); end
  def friends_count?(&block); end
  def geo_enabled?(&block); end
  def lang(&block); end
  def lang?(&block); end
  def listed_count(&block); end
  def listed_count?(&block); end
  def location(&block); end
  def location?(&block); end
  def muting?(&block); end
  def name(&block); end
  def name?(&block); end
  def needs_phone_verification?(&block); end
  def notifications?(&block); end
  def profile_background_color(&block); end
  def profile_background_color?(&block); end
  def profile_background_image_uri(&block); end
  def profile_background_image_uri?(&block); end
  def profile_background_image_uri_https(&block); end
  def profile_background_image_uri_https?(&block); end
  def profile_background_image_url(&block); end
  def profile_background_image_url?(&block); end
  def profile_background_image_url_https(&block); end
  def profile_background_image_url_https?(&block); end
  def profile_background_tile?(&block); end
  def profile_link_color(&block); end
  def profile_link_color?(&block); end
  def profile_sidebar_border_color(&block); end
  def profile_sidebar_border_color?(&block); end
  def profile_sidebar_fill_color(&block); end
  def profile_sidebar_fill_color?(&block); end
  def profile_text_color(&block); end
  def profile_text_color?(&block); end
  def profile_use_background_image?(&block); end
  def protected?(&block); end
  def self.define_entity_uris_method(key1, key2); end
  def self.define_entity_uris_methods(key1, key2); end
  def self.define_entity_uris_predicate_method(key1); end
  def status(&block); end
  def status?(&block); end
  def statuses_count(&block); end
  def statuses_count?(&block); end
  def suspended?(&block); end
  def time_zone(&block); end
  def time_zone?(&block); end
  def translation_enabled?(&block); end
  def translator?(&block); end
  def tweet(&block); end
  def tweet?(&block); end
  def tweeted?(&block); end
  def tweets_count(&block); end
  def uri(&block); end
  def url(&block); end
  def utc_offset(&block); end
  def utc_offset?(&block); end
  def verified?(&block); end
  def website(&block); end
  def website?(&block); end
  def website_uris(&block); end
  def website_uris?(&block); end
  def website_urls(&block); end
  def website_urls?(&block); end
  extend Memoizable::ModuleMethods
  extend Memoizable::ModuleMethods
  include Memoizable
  include Memoizable
  include Twitter::Creatable
  include Twitter::Profile
end
module Twitter::REST::Utils
  def collect_users(users); end
  def cursor_from_response_with_user(collection_name, klass, path, args); end
  def extract_id(object); end
  def merge_default_cursor!(options); end
  def merge_user!(hash, user, prefix = nil); end
  def merge_user(hash, user, prefix = nil); end
  def merge_users!(hash, users); end
  def merge_users(hash, users); end
  def objects_from_response_with_user(klass, request_method, path, args); end
  def parallel_objects_from_response(klass, request_method, path, args); end
  def parallel_users_from_response(request_method, path, args); end
  def perform_get(path, options = nil); end
  def perform_get_with_cursor(path, options, collection_name, klass = nil); end
  def perform_get_with_object(path, options, klass); end
  def perform_get_with_objects(path, options, klass); end
  def perform_post(path, options = nil); end
  def perform_post_with_object(path, options, klass); end
  def perform_post_with_objects(path, options, klass); end
  def perform_request(request_method, path, options = nil); end
  def perform_request_with_object(request_method, path, options, klass); end
  def perform_request_with_objects(request_method, path, options, klass); end
  def set_compound_key(key, value, hash, prefix = nil); end
  def user_id; end
  def user_id?; end
  def users_from_response(request_method, path, args); end
  include Twitter::Utils
end
module Twitter::REST::DirectMessages
  def create_direct_message(user, text, options = nil); end
  def d(user, text, options = nil); end
  def destroy_direct_message(*args); end
  def direct_message(id, options = nil); end
  def direct_messages(*args); end
  def direct_messages_received(options = nil); end
  def direct_messages_sent(options = nil); end
  def dm(user, text, options = nil); end
  def m(user, text, options = nil); end
  include Twitter::REST::Utils
  include Twitter::Utils
end
class Twitter::Tweet < Twitter::Identity
  def current_user_retweet(&block); end
  def current_user_retweet?(&block); end
  def favorite_count(&block); end
  def favorite_count?(&block); end
  def favorited?(&block); end
  def filter_level(&block); end
  def filter_level?(&block); end
  def full_text(&block); end
  def geo(&block); end
  def geo?(&block); end
  def in_reply_to_screen_name(&block); end
  def in_reply_to_screen_name?(&block); end
  def in_reply_to_status_id(&block); end
  def in_reply_to_status_id?(&block); end
  def in_reply_to_tweet_id(&block); end
  def in_reply_to_user_id(&block); end
  def in_reply_to_user_id?(&block); end
  def lang(&block); end
  def lang?(&block); end
  def metadata(&block); end
  def metadata?(&block); end
  def place(&block); end
  def place?(&block); end
  def possibly_sensitive?(&block); end
  def quote?(&block); end
  def quoted_status(&block); end
  def quoted_status?(&block); end
  def quoted_tweet(&block); end
  def quoted_tweet?(&block); end
  def reply?(&block); end
  def retweet?(&block); end
  def retweet_count(&block); end
  def retweet_count?(&block); end
  def retweeted?(&block); end
  def retweeted_status(&block); end
  def retweeted_status?(&block); end
  def retweeted_tweet(&block); end
  def retweeted_tweet?(&block); end
  def source(&block); end
  def source?(&block); end
  def text(&block); end
  def text?(&block); end
  def truncated?(&block); end
  def uri(&block); end
  def url(&block); end
  def user(&block); end
  def user?(&block); end
  extend Memoizable::ModuleMethods
  extend Memoizable::ModuleMethods
  include Memoizable
  include Memoizable
  include Twitter::Creatable
  include Twitter::Entities
end
module Twitter::REST::Favorites
  def create_favorite!(*args); end
  def destroy_favorite(*args); end
  def fav!(*args); end
  def fav(*args); end
  def fave!(*args); end
  def fave(*args); end
  def favorite!(*args); end
  def favorite(*args); end
  def favorites(*args); end
  def unfavorite!(*args); end
  def unfavorite(*args); end
  include Twitter::REST::Utils
  include Twitter::Utils
end
module Twitter::REST::FriendsAndFollowers
  def create_friendship!(*args); end
  def create_friendship(*args); end
  def destroy_friendship(*args); end
  def follow!(*args); end
  def follow(*args); end
  def follower_ids(*args); end
  def followers(*args); end
  def following(*args); end
  def friend_ids(*args); end
  def friends(*args); end
  def friendship(source, target, options = nil); end
  def friendship?(source, target, options = nil); end
  def friendship_show(source, target, options = nil); end
  def friendship_update(user, options = nil); end
  def friendships(*args); end
  def friendships_incoming(options = nil); end
  def friendships_outgoing(options = nil); end
  def no_retweet_ids(options = nil); end
  def no_retweets_ids(options = nil); end
  def relationship(source, target, options = nil); end
  def unfollow(*args); end
  include Twitter::REST::Utils
  include Twitter::Utils
end
module Twitter::REST::Help
  def configuration(options = nil); end
  def languages(options = nil); end
  def privacy(options = nil); end
  def tos(options = nil); end
  include Twitter::REST::Utils
end
module Twitter::REST::Lists
  def add_list_member(*args); end
  def add_list_members(*args); end
  def create_list(name, options = nil); end
  def cursor_from_response_with_list(path, args); end
  def destroy_list(*args); end
  def list(*args); end
  def list_from_response(request_method, path, args); end
  def list_from_response_with_user(path, args); end
  def list_from_response_with_users(path, args); end
  def list_member?(*args); end
  def list_members(*args); end
  def list_subscribe(*args); end
  def list_subscriber?(*args); end
  def list_subscribers(*args); end
  def list_timeline(*args); end
  def list_unsubscribe(*args); end
  def list_update(*args); end
  def list_user?(request_method, path, args); end
  def lists(*args); end
  def lists_subscribed_to(*args); end
  def memberships(*args); end
  def merge_list!(hash, list); end
  def merge_list_and_owner!(hash, list); end
  def merge_owner!(hash, user); end
  def merge_slug_and_owner!(hash, path); end
  def owned_lists(*args); end
  def remove_list_member(*args); end
  def remove_list_members(*args); end
  def subscriptions(*args); end
  include Twitter::REST::Utils
  include Twitter::Utils
end
module Twitter::REST::OAuth
  def bearer_token(options = nil); end
  def invalidate_token(access_token, options = nil); end
  def reverse_token; end
  def token(options = nil); end
  include Twitter::REST::Utils
end
class Twitter::GeoResults
  def attrs; end
  def initialize(attrs = nil); end
  def to_h; end
  def to_hash; end
  def token; end
  include Twitter::Enumerable
  include Twitter::Utils
end
module Twitter::REST::PlacesAndGeo
  def geo_search(options = nil); end
  def place(place_id, options = nil); end
  def places_nearby(options = nil); end
  def places_similar(options = nil); end
  def reverse_geocode(options = nil); end
  def similar_places(options = nil); end
  include Twitter::REST::Utils
end
class Twitter::SavedSearch < Twitter::Identity
  def name(&block); end
  def name?(&block); end
  def position(&block); end
  def position?(&block); end
  def query(&block); end
  def query?(&block); end
  extend Memoizable::ModuleMethods
  include Memoizable
  include Twitter::Creatable
end
module Twitter::REST::SavedSearches
  def create_saved_search(query, options = nil); end
  def destroy_saved_search(*args); end
  def saved_search(id, options = nil); end
  def saved_searches(*args); end
  include Twitter::REST::Utils
  include Twitter::Utils
end
class Twitter::SearchResults
  def attrs; end
  def attrs=(attrs); end
  def fetch_next_page; end
  def initialize(request); end
  def last?; end
  def next_page; end
  def next_page?; end
  def query_string_to_hash(query_string); end
  def to_h; end
  def to_hash; end
  include Twitter::Enumerable
  include Twitter::Utils
end
module Twitter::REST::Search
  def search(q, options = nil); end
end
module Twitter::REST::SpamReporting
  def report_spam(*args); end
  include Twitter::REST::Utils
end
class Twitter::Suggestion < Twitter::Base
  def name(&block); end
  def name?(&block); end
  def size(&block); end
  def size?(&block); end
  def slug(&block); end
  def slug?(&block); end
  def users(&block); end
  extend Memoizable::ModuleMethods
  include Anonymous_Equalizer_12
  include Equalizer::Methods
  include Memoizable
end
module Anonymous_Equalizer_12
  def cmp?(comparator, other); end
  def hash; end
  def inspect; end
end
module Twitter::REST::SuggestedUsers
  def suggest_users(slug, options = nil); end
  def suggestions(*args); end
  include Twitter::REST::Utils
end
module Twitter::REST::Timelines
  def collect_with_count(count); end
  def collect_with_max_id(collection = nil, max_id = nil, &block); end
  def home_timeline(options = nil); end
  def mentions(options = nil); end
  def mentions_timeline(options = nil); end
  def retweeted_by(user, options = nil); end
  def retweeted_by_me(options = nil); end
  def retweeted_by_user(user, options = nil); end
  def retweeted_to_me(options = nil); end
  def retweets_from_timeline(options); end
  def retweets_of_me(options = nil); end
  def select_retweets(tweets); end
  def user_timeline(*args); end
  include Twitter::REST::Utils
end
class Twitter::TrendResults
  def as_of(&block); end
  def as_of?(&block); end
  def attrs; end
  def initialize(attrs = nil); end
  def location(&block); end
  def location?(&block); end
  def to_h; end
  def to_hash; end
  extend Memoizable::ModuleMethods
  extend Memoizable::ModuleMethods
  include Memoizable
  include Memoizable
  include Twitter::Creatable
  include Twitter::Enumerable
  include Twitter::Utils
end
module Twitter::REST::Trends
  def local_trends(id = nil, options = nil); end
  def trend_locations(options = nil); end
  def trends(id = nil, options = nil); end
  def trends_available(options = nil); end
  def trends_closest(options = nil); end
  def trends_place(id = nil, options = nil); end
  include Twitter::REST::Utils
end
module Twitter::REST::Tweets
  def array_wrap(object); end
  def destroy_status(*args); end
  def destroy_tweet(*args); end
  def oembed(tweet, options = nil); end
  def oembeds(*args); end
  def post_retweet(tweet, options); end
  def post_unretweet(tweet, options); end
  def retweet!(*args); end
  def retweet(*args); end
  def retweeters_ids(*args); end
  def retweeters_of(tweet, options = nil); end
  def retweets(tweet, options = nil); end
  def status(tweet, options = nil); end
  def statuses(*args); end
  def unretweet(*args); end
  def update!(status, options = nil); end
  def update(status, options = nil); end
  def update_with_media(status, media, options = nil); end
  def upload(media); end
  include Twitter::REST::Utils
  include Twitter::Utils
end
module Twitter::REST::Undocumented
  def following_followers_of(*args); end
  def tweet_count(url, options = nil); end
  include Twitter::REST::Utils
end
class Twitter::Settings < Twitter::Base
  def allow_contributor_request?(&block); end
  def allow_dm_groups_from?(&block); end
  def allow_dms_from?(&block); end
  def always_use_https?(&block); end
  def discoverable_by_email?(&block); end
  def discoverable_by_mobile_phone?(&block); end
  def display_sensitive_media?(&block); end
  def geo_enabled?(&block); end
  def language(&block); end
  def language?(&block); end
  def protected?(&block); end
  def screen_name(&block); end
  def screen_name?(&block); end
  def show_all_inline_media?(&block); end
  def sleep_time(&block); end
  def sleep_time?(&block); end
  def time_zone(&block); end
  def time_zone?(&block); end
  def trend_location(&block); end
  def trend_location?(&block); end
  def use_cookie_personalization?(&block); end
end
module Twitter::REST::Users
  def block(*args); end
  def block?(user, options = nil); end
  def blocked(options = nil); end
  def blocked_ids(*args); end
  def contributees(*args); end
  def contributors(*args); end
  def mute(*args); end
  def muted(options = nil); end
  def muted_ids(*args); end
  def post_profile_image(path, image, options); end
  def profile_banner(*args); end
  def remove_profile_banner(options = nil); end
  def settings(options = nil); end
  def unblock(*args); end
  def unmute(*args); end
  def update_delivery_device(device, options = nil); end
  def update_profile(options = nil); end
  def update_profile_background_image(image, options = nil); end
  def update_profile_banner(banner, options = nil); end
  def update_profile_image(image, options = nil); end
  def user(*args); end
  def user?(user, options = nil); end
  def user_search(query, options = nil); end
  def users(*args); end
  def verify_credentials(options = nil); end
  include Twitter::REST::Utils
  include Twitter::Utils
end
module Twitter::REST::API
  include Twitter::REST::DirectMessages
  include Twitter::REST::Favorites
  include Twitter::REST::FriendsAndFollowers
  include Twitter::REST::Help
  include Twitter::REST::Lists
  include Twitter::REST::OAuth
  include Twitter::REST::PlacesAndGeo
  include Twitter::REST::SavedSearches
  include Twitter::REST::Search
  include Twitter::REST::SpamReporting
  include Twitter::REST::SuggestedUsers
  include Twitter::REST::Timelines
  include Twitter::REST::Trends
  include Twitter::REST::Tweets
  include Twitter::REST::Undocumented
  include Twitter::REST::Users
end
class Twitter::REST::Client < Twitter::Client
  def bearer_token; end
  def bearer_token=(arg0); end
  def bearer_token?; end
  def credentials?; end
  include Twitter::REST::API
end
class Twitter::Size < Twitter::Base
  def h(&block); end
  def h?(&block); end
  def height(&block); end
  def resize(&block); end
  def resize?(&block); end
  def w(&block); end
  def w?(&block); end
  def width(&block); end
  include Anonymous_Equalizer_13
  include Equalizer::Methods
end
module Anonymous_Equalizer_13
  def cmp?(comparator, other); end
  def hash; end
  def inspect; end
end
class Twitter::SourceUser < Twitter::BasicUser
  def all_replies?(&block); end
  def blocking?(&block); end
  def can_dm?(&block); end
  def followed_by?(&block); end
  def marked_spam?(&block); end
  def muting?(&block); end
  def notifications_enabled?(&block); end
  def want_retweets?(&block); end
end
module Twitter::Streaming
end
class Twitter::Streaming::Connection
  def connect(request); end
  def initialize(options = nil); end
  def new_tcp_socket(host, port); end
  def ssl_socket_class; end
  def stream(request, response); end
  def tcp_socket_class; end
end
class Twitter::Streaming::DeletedTweet < Twitter::Identity
  def user_id(&block); end
  def user_id?(&block); end
end
class Twitter::Streaming::Event
  def initialize(data); end
  def name; end
  def source; end
  def target; end
  def target_object; end
  def target_object_factory(event_name, data); end
end
class Twitter::Streaming::FriendList < Array
end
class Twitter::Streaming::StallWarning < Twitter::Base
  def code(&block); end
  def code?(&block); end
  def message(&block); end
  def message?(&block); end
  def percent_full(&block); end
  def percent_full?(&block); end
end
class Twitter::Streaming::MessageParser
  def self.parse(data); end
end
class Twitter::Streaming::Response
  def <<(data); end
  def initialize(&block); end
  def on_body(data); end
  def on_headers_complete(_headers); end
end
class Twitter::Streaming::Client < Twitter::Client
  def before_request(&block); end
  def collect_user_ids(users); end
  def connection=(arg0); end
  def filter(options = nil, &block); end
  def firehose(options = nil, &block); end
  def initialize(options = nil); end
  def request(method, uri, params); end
  def sample(options = nil, &block); end
  def site(*args, &block); end
  def to_url_params(params); end
  def user(options = nil, &block); end
  include Twitter::Utils
end
class Twitter::TargetUser < Twitter::BasicUser
  def followed_by?(&block); end
end
class Twitter::Trend < Twitter::Base
  def events(&block); end
  def events?(&block); end
  def name(&block); end
  def name?(&block); end
  def promoted_content?(&block); end
  def query(&block); end
  def query?(&block); end
  def tweet_volume(&block); end
  def tweet_volume?(&block); end
  def uri(&block); end
  def uri?(&block); end
  def url(&block); end
  def url?(&block); end
  include Anonymous_Equalizer_14
  include Equalizer::Methods
end
module Anonymous_Equalizer_14
  def cmp?(comparator, other); end
  def hash; end
  def inspect; end
end

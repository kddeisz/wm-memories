# This file is autogenerated. Do not edit it by hand. Regenerate it with:
#   srb rbi gems

# typed: true
#
# If you would like to make changes to this file, great! Please create the gem's shim here:
#
#   https://github.com/sorbet/sorbet-typed/new/master?filename=lib/http/all/http.rbi
#
# http-3.3.0
module HTTP
  def self.[](headers); end
  extend HTTP::Chainable
end
class HTTP::Error < StandardError
end
class HTTP::ConnectionError < HTTP::Error
end
class HTTP::RequestError < HTTP::Error
end
class HTTP::ResponseError < HTTP::Error
end
class HTTP::StateError < HTTP::ResponseError
end
class HTTP::TimeoutError < HTTP::Error
end
class HTTP::HeaderError < HTTP::Error
end
module HTTP::Timeout
end
class HTTP::Timeout::Null
  def <<(data); end
  def close(*args, &block); end
  def closed?(*args, &block); end
  def connect(socket_class, host, port, nodelay = nil); end
  def connect_ssl; end
  def initialize(options = nil); end
  def options; end
  def readpartial(size, buffer = nil); end
  def rescue_readable(timeout = nil); end
  def rescue_writable(timeout = nil); end
  def socket; end
  def start_tls(host, ssl_socket_class, ssl_context); end
  def write(data); end
  extend Forwardable
end
class HTTP::Timeout::PerOperation < HTTP::Timeout::Null
  def connect(socket_class, host, port, nodelay = nil); end
  def connect_ssl; end
  def connect_timeout; end
  def initialize(*args); end
  def read_timeout; end
  def readpartial(size, buffer = nil); end
  def write(data); end
  def write_timeout; end
end
class HTTP::Timeout::Global < HTTP::Timeout::PerOperation
  def <<(data); end
  def connect(socket_class, host, port, nodelay = nil); end
  def connect_ssl; end
  def initialize(*args); end
  def log_time; end
  def perform_io; end
  def read_nonblock(size, buffer = nil); end
  def readpartial(size, buffer = nil); end
  def reset_counter; end
  def reset_timer; end
  def time_left; end
  def total_timeout; end
  def wait_readable_or_timeout; end
  def wait_writable_or_timeout; end
  def write(data); end
  def write_nonblock(data); end
end
class HTTP::Headers
  def ==(other); end
  def [](name); end
  def []=(name, value); end
  def add(name, value); end
  def delete(name); end
  def each; end
  def empty?(*args, &block); end
  def get(name); end
  def hash(*args, &block); end
  def include?(name); end
  def initialize; end
  def initialize_copy(orig); end
  def inspect; end
  def keys; end
  def merge!(other); end
  def merge(other); end
  def normalize_header(name); end
  def self.[](object); end
  def self.coerce(object); end
  def set(name, value); end
  def to_a; end
  def to_h; end
  def to_hash; end
  extend Forwardable
  include Enumerable
end
module HTTP::Headers::Mixin
  def [](*args, &block); end
  def []=(*args, &block); end
  def headers; end
  extend Forwardable
end
module HTTP::Chainable
  def accept(type); end
  def auth(value); end
  def basic_auth(opts); end
  def branch(options); end
  def build_request(verb, uri, options = nil); end
  def connect(uri, options = nil); end
  def cookies(cookies); end
  def default_options; end
  def default_options=(opts); end
  def delete(uri, options = nil); end
  def encoding(encoding); end
  def follow(options = nil); end
  def get(uri, options = nil); end
  def head(uri, options = nil); end
  def headers(headers); end
  def nodelay; end
  def options(uri, options = nil); end
  def patch(uri, options = nil); end
  def persistent(host, timeout: nil); end
  def post(uri, options = nil); end
  def put(uri, options = nil); end
  def request(verb, uri, options = nil); end
  def through(*proxy); end
  def timeout(klass, options = nil); end
  def trace(uri, options = nil); end
  def use(*features); end
  def via(*proxy); end
end
class HTTP::URI
  def ==(other); end
  def authority(*args, &block); end
  def authority=(*args, &block); end
  def dup; end
  def eql?(other); end
  def fragment(*args, &block); end
  def fragment=(*args, &block); end
  def hash; end
  def host(*args, &block); end
  def host=(*args, &block); end
  def http?; end
  def https?; end
  def initialize(options_or_uri = nil); end
  def inspect; end
  def join(*args, &block); end
  def normalize(*args, &block); end
  def normalized_authority(*args, &block); end
  def normalized_fragment(*args, &block); end
  def normalized_host(*args, &block); end
  def normalized_password(*args, &block); end
  def normalized_path(*args, &block); end
  def normalized_port(*args, &block); end
  def normalized_query(*args, &block); end
  def normalized_scheme(*args, &block); end
  def normalized_user(*args, &block); end
  def omit(*args, &block); end
  def origin(*args, &block); end
  def origin=(*args, &block); end
  def password(*args, &block); end
  def password=(*args, &block); end
  def path(*args, &block); end
  def path=(*args, &block); end
  def port; end
  def port=(*args, &block); end
  def query(*args, &block); end
  def query=(*args, &block); end
  def query_values(*args, &block); end
  def query_values=(*args, &block); end
  def request_uri(*args, &block); end
  def request_uri=(*args, &block); end
  def scheme(*args, &block); end
  def scheme=(*args, &block); end
  def self.form_encode(form_values, sort = nil); end
  def self.parse(uri); end
  def to_s; end
  def to_str; end
  def user(*args, &block); end
  def user=(*args, &block); end
  extend Forwardable
end
class HTTP::Feature
  def initialize(opts = nil); end
end
module HTTP::Features
end
class HTTP::Features::AutoInflate < HTTP::Feature
  def stream_for(connection, response); end
end
class HTTP::Features::AutoDeflate < HTTP::Feature
  def deflated_body(body); end
  def initialize(*arg0); end
  def method; end
end
class HTTP::Features::AutoDeflate::CompressedBody
  def compress_all!; end
  def compressed_each; end
  def each(&block); end
  def initialize(body); end
  def size; end
end
class HTTP::Features::AutoDeflate::GzippedBody < HTTP::Features::AutoDeflate::CompressedBody
  def compress(&block); end
end
class HTTP::Features::AutoDeflate::GzippedBody::BlockIO
  def initialize(block); end
  def write(data); end
end
class HTTP::Features::AutoDeflate::DeflatedBody < HTTP::Features::AutoDeflate::CompressedBody
  def compress; end
end
class HTTP::Options
  def []=(option, val); end
  def argument_error!(message); end
  def body; end
  def body=(arg0); end
  def cookies; end
  def cookies=(arg0); end
  def dup; end
  def encoding; end
  def encoding=(arg0); end
  def feature(name); end
  def features; end
  def features=(features); end
  def follow; end
  def follow=(value); end
  def form; end
  def form=(arg0); end
  def headers; end
  def headers=(arg0); end
  def initialize(options = nil); end
  def json; end
  def json=(arg0); end
  def keep_alive_timeout; end
  def keep_alive_timeout=(arg0); end
  def merge(other); end
  def nodelay; end
  def nodelay=(arg0); end
  def params; end
  def params=(arg0); end
  def persistent; end
  def persistent=(value); end
  def persistent?; end
  def proxy; end
  def proxy=(arg0); end
  def response; end
  def response=(arg0); end
  def self.available_features; end
  def self.def_option(name, &interpreter); end
  def self.default_socket_class; end
  def self.default_socket_class=(arg0); end
  def self.default_ssl_socket_class; end
  def self.default_ssl_socket_class=(arg0); end
  def self.default_timeout_class; end
  def self.default_timeout_class=(arg0); end
  def self.defined_options; end
  def self.new(options = nil); end
  def socket_class; end
  def socket_class=(arg0); end
  def ssl; end
  def ssl=(arg0); end
  def ssl_context; end
  def ssl_context=(arg0); end
  def ssl_socket_class; end
  def ssl_socket_class=(arg0); end
  def timeout_class; end
  def timeout_class=(arg0); end
  def timeout_options; end
  def timeout_options=(arg0); end
  def to_hash; end
  def with_body(value); end
  def with_cookies(value); end
  def with_encoding(value); end
  def with_features(value); end
  def with_follow(value); end
  def with_form(value); end
  def with_headers(value); end
  def with_json(value); end
  def with_keep_alive_timeout(value); end
  def with_nodelay(value); end
  def with_params(value); end
  def with_persistent(value); end
  def with_proxy(value); end
  def with_response(value); end
  def with_socket_class(value); end
  def with_ssl(value); end
  def with_ssl_context(value); end
  def with_ssl_socket_class(value); end
  def with_timeout_class(value); end
  def with_timeout_options(value); end
end
class HTTP::Response
  def body; end
  def body_stream_for(connection, opts); end
  def charset(*args, &block); end
  def chunked?; end
  def code(*args, &block); end
  def connection(*args, &block); end
  def content_length; end
  def content_type; end
  def cookies; end
  def flush; end
  def initialize(opts); end
  def inspect; end
  def mime_type(*args, &block); end
  def parse(as = nil); end
  def proxy_headers; end
  def readpartial(*args, &block); end
  def reason(*args, &block); end
  def status; end
  def to_a; end
  def to_s(*args, &block); end
  def to_str(*args, &block); end
  def uri; end
  extend Forwardable
  include HTTP::Headers::Mixin
end
class HTTP::Response::Parser
  def <<(data); end
  def add(data); end
  def finished?; end
  def headers; end
  def headers?; end
  def http_version; end
  def initialize; end
  def on_body(chunk); end
  def on_headers_complete(headers); end
  def on_message_complete; end
  def read(size); end
  def reset; end
  def status_code; end
end
class HTTP::Connection
  def close; end
  def expired?; end
  def failed_proxy_connect?; end
  def finish_response; end
  def headers(*args, &block); end
  def http_version(*args, &block); end
  def initialize(req, options); end
  def keep_alive?; end
  def proxy_response_headers; end
  def read_headers!; end
  def read_more(size); end
  def readpartial(size = nil); end
  def reset_timer; end
  def send_proxy_connect_request(req); end
  def send_request(req); end
  def set_keep_alive; end
  def start_tls(req, options); end
  def status_code(*args, &block); end
  extend Forwardable
end
class HTTP::Redirector
  def endless_loop?; end
  def initialize(opts = nil); end
  def max_hops; end
  def perform(request, response); end
  def redirect_to(uri); end
  def strict; end
  def too_many_hops?; end
end
class HTTP::Redirector::TooManyRedirectsError < HTTP::ResponseError
end
class HTTP::Redirector::EndlessRedirectError < HTTP::Redirector::TooManyRedirectsError
end
class HTTP::Client
  def build_request(verb, uri, opts = nil); end
  def close; end
  def initialize(default_options = nil); end
  def make_request_body(opts, headers); end
  def make_request_headers(opts); end
  def make_request_uri(uri, opts); end
  def perform(req, options); end
  def persistent?(*args, &block); end
  def request(verb, uri, opts = nil); end
  def verify_connection!(uri); end
  extend Forwardable
  include HTTP::Chainable
end
class HTTP::Request
  def body; end
  def connect_using_proxy(socket); end
  def default_host_header_value; end
  def headline; end
  def host(*args, &block); end
  def include_proxy_authorization_header; end
  def include_proxy_headers; end
  def initialize(opts); end
  def normalize_uri(uri); end
  def port; end
  def proxy; end
  def proxy_authorization_header; end
  def proxy_connect_header; end
  def proxy_connect_headers; end
  def redirect(uri, verb = nil); end
  def request_body(body, opts); end
  def scheme; end
  def socket_host; end
  def socket_port; end
  def stream(socket); end
  def uri; end
  def using_authenticated_proxy?; end
  def using_proxy?; end
  def verb; end
  def version; end
  extend Forwardable
  include HTTP::Headers::Mixin
end
class HTTP::Request::Body
  def each(&block); end
  def initialize(source); end
  def size; end
  def source; end
  def validate_source_type!; end
end
class HTTP::Request::Body::ProcIO
  def initialize(block); end
  def write(data); end
end
class HTTP::Request::Writer
  def add_body_type_headers; end
  def add_headers; end
  def chunked?; end
  def connect_through_proxy; end
  def encode_chunk(chunk); end
  def initialize(socket, body, headers, headline); end
  def join_headers; end
  def send_request; end
  def stream; end
  def write(data); end
end
class HTTP::Request::UnsupportedMethodError < HTTP::RequestError
end
class HTTP::Request::UnsupportedSchemeError < HTTP::RequestError
end
class HTTP::ContentType < Struct
  def charset; end
  def charset=(_); end
  def mime_type; end
  def mime_type=(_); end
  def self.[](*arg0); end
  def self.charset(str); end
  def self.inspect; end
  def self.members; end
  def self.mime_type(str); end
  def self.new(*arg0); end
  def self.parse(str); end
end
module HTTP::MimeType
  def self.[](type); end
  def self.adapters; end
  def self.aliases; end
  def self.normalize(type); end
  def self.register_adapter(type, adapter); end
  def self.register_alias(type, shortcut); end
end
class HTTP::MimeType::Adapter
  def decode(*arg0); end
  def encode(*arg0); end
  def self.allocate; end
  def self.decode(*args, &block); end
  def self.encode(*args, &block); end
  def self.instance; end
  def self.new(*arg0); end
  extend Singleton::SingletonClassMethods
  include Singleton
end
class HTTP::MimeType::JSON < HTTP::MimeType::Adapter
  def decode(str); end
  def encode(obj); end
  def self.instance; end
end
class HTTP::Response::Status < Delegator
  def __getobj__; end
  def __setobj__(obj); end
  def accepted?; end
  def already_reported?; end
  def bad_gateway?; end
  def bad_request?; end
  def client_error?; end
  def code; end
  def conflict?; end
  def continue?; end
  def created?; end
  def expectation_failed?; end
  def failed_dependency?; end
  def forbidden?; end
  def found?; end
  def gateway_timeout?; end
  def gone?; end
  def http_version_not_supported?; end
  def im_used?; end
  def informational?; end
  def inspect; end
  def insufficient_storage?; end
  def internal_server_error?; end
  def length_required?; end
  def locked?; end
  def loop_detected?; end
  def method_not_allowed?; end
  def misdirected_request?; end
  def moved_permanently?; end
  def multi_status?; end
  def multiple_choices?; end
  def network_authentication_required?; end
  def no_content?; end
  def non_authoritative_information?; end
  def not_acceptable?; end
  def not_extended?; end
  def not_found?; end
  def not_implemented?; end
  def not_modified?; end
  def ok?; end
  def partial_content?; end
  def payload_too_large?; end
  def payment_required?; end
  def permanent_redirect?; end
  def precondition_failed?; end
  def precondition_required?; end
  def processing?; end
  def proxy_authentication_required?; end
  def range_not_satisfiable?; end
  def reason; end
  def redirect?; end
  def request_header_fields_too_large?; end
  def request_timeout?; end
  def reset_content?; end
  def see_other?; end
  def self.[](object); end
  def self.coerce(object); end
  def self.symbolize(str); end
  def server_error?; end
  def service_unavailable?; end
  def success?; end
  def switching_protocols?; end
  def temporary_redirect?; end
  def to_s; end
  def to_sym; end
  def too_many_requests?; end
  def unauthorized?; end
  def unavailable_for_legal_reasons?; end
  def unprocessable_entity?; end
  def unsupported_media_type?; end
  def upgrade_required?; end
  def uri_too_long?; end
  def use_proxy?; end
  def variant_also_negotiates?; end
end
class HTTP::Response::Inflater
  def connection; end
  def initialize(connection); end
  def readpartial(*args); end
  def zstream; end
end
class HTTP::Response::Body
  def connection; end
  def each; end
  def empty?(*args, &block); end
  def find_encoding(encoding); end
  def initialize(stream, encoding: nil); end
  def inspect; end
  def readpartial(*args); end
  def stream!; end
  def to_s; end
  def to_str; end
  extend Forwardable
  include Enumerable
end
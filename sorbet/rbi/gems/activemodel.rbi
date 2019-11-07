# This file is autogenerated. Do not edit it by hand. Regenerate it with:
#   srb rbi gems

# typed: true
#
# If you would like to make changes to this file, great! Please create the gem's shim here:
#
#   https://github.com/sorbet/sorbet-typed/new/master?filename=lib/activemodel/all/activemodel.rbi
#
# activemodel-6.0.1
module ActiveModel
  def self.eager_load!; end
  def self.gem_version; end
  def self.version; end
  extend ActiveSupport::Autoload
end
module ActiveModel::VERSION
end
module ActiveModel::Serializers
  extend ActiveSupport::Autoload
end
class ActiveModel::Attribute
  def ==(other); end
  def _original_value_for_database; end
  def assigned?; end
  def came_from_user?; end
  def changed?; end
  def changed_from_assignment?; end
  def changed_in_place?; end
  def encode_with(coder); end
  def eql?(other); end
  def forgetting_assignment; end
  def has_been_read?; end
  def hash; end
  def init_with(coder); end
  def initialize(name, value_before_type_cast, type, original_attribute = nil); end
  def initialize_dup(other); end
  def initialized?; end
  def name; end
  def original_attribute; end
  def original_value; end
  def original_value_for_database; end
  def self.from_database(name, value, type); end
  def self.from_user(name, value, type, original_attribute = nil); end
  def self.null(name); end
  def self.uninitialized(name, type); end
  def self.with_cast_value(name, value, type); end
  def type; end
  def type_cast(*arg0); end
  def value; end
  def value_before_type_cast; end
  def value_for_database; end
  def with_cast_value(value); end
  def with_type(type); end
  def with_value_from_database(value); end
  def with_value_from_user(value); end
end
class ActiveModel::Attribute::FromDatabase < ActiveModel::Attribute
  def _original_value_for_database; end
  def type_cast(value); end
end
class ActiveModel::Attribute::FromUser < ActiveModel::Attribute
  def came_from_user?; end
  def type_cast(value); end
end
class ActiveModel::Attribute::WithCastValue < ActiveModel::Attribute
  def changed_in_place?; end
  def type_cast(value); end
end
class ActiveModel::Attribute::Null < ActiveModel::Attribute
  def initialize(name); end
  def type_cast(*arg0); end
  def with_cast_value(value); end
  def with_type(type); end
  def with_value_from_database(value); end
  def with_value_from_user(value); end
end
class ActiveModel::Attribute::Uninitialized < ActiveModel::Attribute
  def forgetting_assignment; end
  def initialize(name, type); end
  def initialized?; end
  def original_value; end
  def value; end
  def value_for_database; end
  def with_type(type); end
end
class ActiveModel::AttributeSet
  def ==(other); end
  def [](name); end
  def []=(name, value); end
  def accessed; end
  def attributes; end
  def deep_dup; end
  def each_value(*args, &block); end
  def except(*args, &block); end
  def fetch(*args, &block); end
  def fetch_value(name, &block); end
  def freeze; end
  def initialize(attributes); end
  def initialize_clone(_); end
  def initialize_dup(_); end
  def initialized_attributes; end
  def key?(name); end
  def keys; end
  def map(&block); end
  def reset(key); end
  def to_h; end
  def to_hash; end
  def values_before_type_cast; end
  def write_cast_value(name, value); end
  def write_from_database(name, value); end
  def write_from_user(name, value); end
end
class ActiveModel::AttributeSet::Builder
  def build_from_database(values = nil, additional_types = nil); end
  def default_attributes; end
  def initialize(types, default_attributes = nil); end
  def types; end
end
class ActiveModel::LazyAttributeHash
  def ==(other); end
  def [](key); end
  def []=(key, value); end
  def additional_types; end
  def assign_default_value(name); end
  def deep_dup; end
  def default_attributes; end
  def delegate_hash; end
  def each_key(*args, &block); end
  def each_value(*args, &block); end
  def except(*args, &block); end
  def fetch(*args, &block); end
  def initialize(types, values, additional_types, default_attributes, delegate_hash = nil); end
  def initialize_dup(_); end
  def key?(key); end
  def marshal_dump; end
  def marshal_load(values); end
  def materialize; end
  def select; end
  def transform_values(*args, &block); end
  def types; end
  def values; end
end
class ActiveModel::AttributeSet::YAMLEncoder
  def decode(coder); end
  def default_types; end
  def encode(attribute_set, coder); end
  def initialize(default_types); end
end
class ActiveModel::MissingAttributeError < NoMethodError
end
module ActiveModel::AttributeMethods
  def _read_attribute(attr); end
  def attribute_method?(attr_name); end
  def attribute_missing(match, *args, &block); end
  def matched_attribute_method(method_name); end
  def method_missing(method, *args, &block); end
  def missing_attribute(attr_name, stack); end
  def respond_to?(method, include_private_methods = nil); end
  def respond_to_without_attributes?(*arg0); end
  extend ActiveSupport::Concern
end
module ActiveModel::AttributeMethods::ClassMethods
  def alias_attribute(new_name, old_name); end
  def attribute_alias(name); end
  def attribute_alias?(new_name); end
  def attribute_method_affix(*affixes); end
  def attribute_method_matchers_cache; end
  def attribute_method_matchers_matching(method_name); end
  def attribute_method_prefix(*prefixes); end
  def attribute_method_suffix(*suffixes); end
  def define_attribute_method(attr_name); end
  def define_attribute_methods(*attr_names); end
  def define_proxy_call(include_private, mod, name, target, *extra); end
  def generated_attribute_methods; end
  def instance_method_already_implemented?(method_name); end
  def undefine_attribute_methods; end
end
class ActiveModel::AttributeMethods::ClassMethods::AttributeMethodMatcher
  def initialize(options = nil); end
  def match(method_name); end
  def method_name(attr_name); end
  def plain?; end
  def prefix; end
  def suffix; end
  def target; end
end
class ActiveModel::AttributeMethods::ClassMethods::AttributeMethodMatcher::AttributeMethodMatch < Struct
  def attr_name; end
  def attr_name=(_); end
  def self.[](*arg0); end
  def self.inspect; end
  def self.members; end
  def self.new(*arg0); end
  def target; end
  def target=(_); end
end
module ActiveModel::AttributeMethods::AttrNames
  def self.define_attribute_accessor_method(mod, attr_name, writer: nil); end
end
class ActiveModel::Errors
  def [](attribute); end
  def add(attribute, message = nil, options = nil); end
  def added?(attribute, message = nil, options = nil); end
  def apply_default_array(hash); end
  def as_json(options = nil); end
  def blank?; end
  def clear; end
  def copy!(other); end
  def count; end
  def delete(key); end
  def details; end
  def each; end
  def empty?; end
  def full_message(attribute, message); end
  def full_messages; end
  def full_messages_for(attribute); end
  def generate_message(attribute, type = nil, options = nil); end
  def has_key?(attribute); end
  def include?(attribute); end
  def init_with(coder); end
  def initialize(base); end
  def initialize_dup(other); end
  def key?(attribute); end
  def keys; end
  def marshal_dump; end
  def marshal_load(array); end
  def merge!(other); end
  def messages; end
  def normalize_detail(message, options); end
  def normalize_message(attribute, message, options); end
  def of_kind?(attribute, message = nil); end
  def self.i18n_customize_full_message; end
  def self.i18n_customize_full_message=(arg0); end
  def size; end
  def slice!(*keys); end
  def to_a; end
  def to_hash(full_messages = nil); end
  def to_xml(options = nil); end
  def values; end
  def without_default_proc(hash); end
  include Enumerable
end
class ActiveModel::StrictValidationFailed < StandardError
end
class ActiveModel::RangeError < RangeError
end
class ActiveModel::UnknownAttributeError < NoMethodError
  def attribute; end
  def initialize(record, attribute); end
  def record; end
end
class ActiveModel::Railtie < Rails::Railtie
end
class ActiveModel::Validator
  def initialize(options = nil); end
  def kind; end
  def options; end
  def self.kind; end
  def validate(record); end
end
class ActiveModel::EachValidator < ActiveModel::Validator
  def attributes; end
  def check_validity!; end
  def initialize(options); end
  def validate(record); end
  def validate_each(record, attribute, value); end
end
class ActiveModel::BlockValidator < ActiveModel::EachValidator
  def initialize(options, &block); end
  def validate_each(record, attribute, value); end
end
module ActiveModel::Validations
  def errors; end
  def initialize_dup(other); end
  def invalid?(context = nil); end
  def raise_validation_error; end
  def read_attribute_for_validation(*arg0); end
  def run_validations!; end
  def valid?(context = nil); end
  def validate!(context = nil); end
  def validate(context = nil); end
  def validates_with(*args, &block); end
  extend ActiveSupport::Concern
end
module ActiveModel::Validations::ClassMethods
  def _parse_validates_options(options); end
  def _validates_default_keys; end
  def attribute_method?(attribute); end
  def clear_validators!; end
  def inherited(base); end
  def validate(*args, &block); end
  def validates!(*attributes); end
  def validates(*attributes); end
  def validates_each(*attr_names, &block); end
  def validates_with(*args, &block); end
  def validators; end
  def validators_on(*attributes); end
end
module ActiveModel::Validations::Clusivity
  def check_validity!; end
  def delimiter; end
  def include?(record, value); end
  def inclusion_method(enumerable); end
end
class ActiveModel::Validations::InclusionValidator < ActiveModel::EachValidator
  def validate_each(record, attribute, value); end
  include ActiveModel::Validations::Clusivity
end
module ActiveModel::Validations::HelperMethods
  def _merge_attributes(attr_names); end
  def validates_absence_of(*attr_names); end
  def validates_acceptance_of(*attr_names); end
  def validates_confirmation_of(*attr_names); end
  def validates_exclusion_of(*attr_names); end
  def validates_format_of(*attr_names); end
  def validates_inclusion_of(*attr_names); end
  def validates_length_of(*attr_names); end
  def validates_numericality_of(*attr_names); end
  def validates_presence_of(*attr_names); end
  def validates_size_of(*attr_names); end
end
class ActiveModel::Validations::AbsenceValidator < ActiveModel::EachValidator
  def validate_each(record, attr_name, value); end
end
class ActiveModel::Validations::NumericalityValidator < ActiveModel::EachValidator
  def allow_only_integer?(record); end
  def check_validity!; end
  def filtered_options(value); end
  def is_hexadecimal_literal?(raw_value); end
  def is_integer?(raw_value); end
  def is_number?(raw_value); end
  def parse_as_number(raw_value); end
  def record_attribute_changed_in_place?(record, attr_name); end
  def validate_each(record, attr_name, value); end
end
module ActiveModel::Validations::Callbacks
  def run_validations!; end
  extend ActiveSupport::Concern
end
module ActiveModel::Validations::Callbacks::ClassMethods
  def after_validation(*args, &block); end
  def before_validation(*args, &block); end
end
class ActiveModel::Validations::ExclusionValidator < ActiveModel::EachValidator
  def validate_each(record, attribute, value); end
  include ActiveModel::Validations::Clusivity
end
class ActiveModel::Validations::ConfirmationValidator < ActiveModel::EachValidator
  def confirmation_value_equal?(record, attribute, value, confirmed); end
  def initialize(options); end
  def setup!(klass); end
  def validate_each(record, attribute, value); end
end
class ActiveModel::Validations::FormatValidator < ActiveModel::EachValidator
  def check_options_validity(name); end
  def check_validity!; end
  def option_call(record, name); end
  def record_error(record, attribute, name, value); end
  def regexp_using_multiline_anchors?(regexp); end
  def validate_each(record, attribute, value); end
end
class ActiveModel::Validations::LengthValidator < ActiveModel::EachValidator
  def check_validity!; end
  def initialize(options); end
  def skip_nil_check?(key); end
  def validate_each(record, attribute, value); end
end
class ActiveModel::Validations::AcceptanceValidator < ActiveModel::EachValidator
  def acceptable_option?(value); end
  def initialize(options); end
  def setup!(klass); end
  def validate_each(record, attribute, value); end
end
class ActiveModel::Validations::AcceptanceValidator::LazilyDefineAttributes < Module
  def ==(other); end
  def attributes; end
  def define_on(klass); end
  def included(klass); end
  def initialize(attributes); end
  def matches?(method_name); end
end
class ActiveModel::Validations::WithValidator < ActiveModel::EachValidator
  def validate_each(record, attr, val); end
end
class ActiveModel::ValidationError < StandardError
  def initialize(model); end
  def model; end
end
class ActiveModel::Validations::PresenceValidator < ActiveModel::EachValidator
  def validate_each(record, attr_name, value); end
end
module ActiveModel::SecurePassword
  def self.min_cost; end
  def self.min_cost=(arg0); end
  extend ActiveSupport::Concern
end
module ActiveModel::SecurePassword::ClassMethods
  def has_secure_password(attribute = nil, validations: nil); end
end
class ActiveModel::SecurePassword::InstanceMethodsOnActivation < Module
  def initialize(attribute); end
end

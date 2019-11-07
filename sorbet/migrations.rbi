# typed: strong
# This is an autogenerated file for Rails migrations.
# Please rerun bundle exec rake rbi:migrations to regenerate.
class ActiveRecord::Migration
  sig { params(table_name: T.untyped).void }
  def primary_key(table_name); end

  sig { params(table_name: T.untyped).void }
  def foreign_keys(table_name); end

  sig { params(table_name: T.untyped, index_name: T.untyped).void }
  def index_name_exists?(table_name, index_name); end

  sig { params(table_name: T.untyped, ref_name: T.untyped, options: T.untyped).void }
  def add_reference(table_name, ref_name, **options); end

  sig { params(table_name: T.untyped).void }
  def table_options(table_name); end

  sig { params(table_name: T.untyped, ref_name: T.untyped, options: T.untyped).void }
  def add_belongs_to(table_name, ref_name, **options); end

  sig do
    params(
      table_name: T.untyped,
      ref_name: T.untyped,
      foreign_key: T.untyped,
      polymorphic: T.untyped,
      options: T.untyped
    ).void
  end
  def remove_reference(table_name, ref_name, foreign_key:, polymorphic:, **options); end

  sig { params(from_table: T.untyped, to_table: T.untyped, options: T.untyped).void }
  def remove_foreign_key(from_table, to_table, **options); end

  sig do
    params(
      table_name: T.untyped,
      ref_name: T.untyped,
      foreign_key: T.untyped,
      polymorphic: T.untyped,
      options: T.untyped
    ).void
  end
  def remove_belongs_to(table_name, ref_name, foreign_key:, polymorphic:, **options); end

  sig { params(from_table: T.untyped, to_table: T.untyped, options: T.untyped).void }
  def add_foreign_key(from_table, to_table, options); end

  sig { params(table_name: T.untyped).void }
  def indexes(table_name); end

  sig { params(from_table: T.untyped, to_table: T.untyped, options: T.untyped).void }
  def foreign_key_exists?(from_table, to_table, **options); end

  sig { params(table_name: T.untyped).void }
  def foreign_key_column_for(table_name); end

  sig { void }
  def dump_schema_information; end

  sig { void }
  def views; end

  sig { void }
  def internal_string_options_for_primary_key; end

  sig { params(version: T.untyped, migrations_paths: T.untyped).void }
  def assume_migrated_upto_version(version, migrations_paths); end

  sig { params(columns: T.untyped, orders: T.untyped).void }
  def columns_for_distinct(columns, orders); end

  sig { params(table_name: T.untyped, options: T.untyped).void }
  def add_timestamps(table_name, options); end

  sig do
    params(
      type: T.untyped,
      limit: T.untyped,
      precision: T.untyped,
      scale: T.untyped,
      _: T.untyped
    ).void
  end
  def type_to_sql(type, limit:, precision:, scale:, **_); end

  sig { params(table_name: T.untyped, options: T.untyped).void }
  def remove_timestamps(table_name, options); end

  sig { params(from_table: T.untyped, to_table: T.untyped, options: T.untyped).void }
  def foreign_key_options(from_table, to_table, options); end

  sig { params(options: T.untyped).void }
  def options_include_default?(options); end

  sig { params(table_name: T.untyped).void }
  def columns(table_name); end

  sig { params(table_name: T.untyped).void }
  def table_comment(table_name); end

  sig { params(table_name: T.untyped).void }
  def table_alias_for(table_name); end

  sig { params(view_name: T.untyped).void }
  def view_exists?(view_name); end

  sig { params(table_name: T.untyped, column_name: T.untyped, options: T.untyped).void }
  def index_exists?(table_name, column_name, options); end

  sig do
    params(
      table_name: T.untyped,
      column_name: T.untyped,
      type: T.untyped,
      options: T.untyped
    ).void
  end
  def column_exists?(table_name, column_name, type, **options); end

  sig { params(table_name: T.untyped, options: T.untyped).void }
  def create_table(table_name, **options); end

  sig { params(table_name: T.untyped, options: T.untyped).void }
  def drop_table(table_name, options); end

  sig { params(name: T.untyped).void }
  def data_source_exists?(name); end

  sig { params(table_name: T.untyped, comment_or_changes: T.untyped).void }
  def change_table_comment(table_name, comment_or_changes); end

  sig { void }
  def data_sources; end

  sig { params(table_name: T.untyped, column_name: T.untyped, options: T.untyped).void }
  def add_index(table_name, column_name, options); end

  sig { params(table_name: T.untyped, column_name: T.untyped, comment_or_changes: T.untyped).void }
  def change_column_comment(table_name, column_name, comment_or_changes); end

  sig do
    params(
      table_1: T.untyped,
      table_2: T.untyped,
      column_options: T.untyped,
      options: T.untyped
    ).void
  end
  def create_join_table(table_1, table_2, column_options:, **options); end

  sig { params(table_1: T.untyped, table_2: T.untyped, options: T.untyped).void }
  def drop_join_table(table_1, table_2, options); end

  sig { params(table_name: T.untyped, options: T.untyped).void }
  def change_table(table_name, options); end

  sig { params(table_name: T.untyped).void }
  def table_exists?(table_name); end

  sig { params(table_name: T.untyped, base: T.untyped).void }
  def update_table_definition(table_name, base); end

  sig { void }
  def native_database_types; end

  sig { params(table_name: T.untyped, new_name: T.untyped).void }
  def rename_table(table_name, new_name); end

  sig do
    params(
      table_name: T.untyped,
      column_name: T.untyped,
      type: T.untyped,
      options: T.untyped
    ).void
  end
  def add_column(table_name, column_name, type, **options); end

  sig { params(table_name: T.untyped, column_names: T.untyped).void }
  def remove_columns(table_name, *column_names); end

  sig do
    params(
      table_name: T.untyped,
      column_name: T.untyped,
      type: T.untyped,
      options: T.untyped
    ).void
  end
  def remove_column(table_name, column_name, type, options); end

  sig do
    params(
      table_name: T.untyped,
      column_name: T.untyped,
      type: T.untyped,
      options: T.untyped
    ).void
  end
  def change_column(table_name, column_name, type, options); end

  sig { params(table_name: T.untyped, column_name: T.untyped, default_or_changes: T.untyped).void }
  def change_column_default(table_name, column_name, default_or_changes); end

  sig do
    params(
      table_name: T.untyped,
      column_name: T.untyped,
      null: T.untyped,
      default: T.untyped
    ).void
  end
  def change_column_null(table_name, column_name, null, default); end

  sig { params(table_name: T.untyped, column_name: T.untyped, new_column_name: T.untyped).void }
  def rename_column(table_name, column_name, new_column_name); end

  sig do
    params(
      table_name: T.untyped,
      column_name: T.untyped,
      comment: T.untyped,
      options: T.untyped
    ).void
  end
  def add_index_options(table_name, column_name, comment:, **options); end

  sig { params(table_name: T.untyped, options: T.untyped).void }
  def index_name(table_name, options); end

  sig { void }
  def tables; end

  sig { params(options: T.untyped).void }
  def create_schema_dumper(options); end

  sig { params(table_name: T.untyped, options: T.untyped).void }
  def remove_index(table_name, options); end

  sig { params(table_name: T.untyped, old_name: T.untyped, new_name: T.untyped).void }
  def rename_index(table_name, old_name, new_name); end
end
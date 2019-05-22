require 'active_record/connection_adapters/mysql2_adapter'

adapter = if defined? ActiveRecord::ConnectionAdapters::MySQLJdbcConnection
            ActiveRecord::ConnectionAdapters::MySQLJdbcConnection
          elsif defined? ActiveRecord::ConnectionAdapters::Mysql2Adapter
            ActiveRecord::ConnectionAdapters::Mysql2Adapter
          elsif defined? ActiveRecord::ConnectionAdapters::MysqlAdapter
            ActiveRecord::ConnectionAdapters::MysqlAdapter
          end

adapter.module_eval do
  alias __native_database_types_enum native_database_types

  # :nodoc
  def native_database_types
    __native_database_types_enum.tap do |types|
      types[:enum] = { :name => 'enum' }
    end
  end
end

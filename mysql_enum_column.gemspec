Gem::Specification.new do |s|
  s.name = 'mysql_enum_column'
  s.version = '0.2.0'
  s.authors = ['Nick Pohodnya', 'Gonzalo Fernandez']
  s.email = ['chalofa@gmail.com']
  s.description = 'Enum column support for Rails >= 4.*'
  s.license = 'LICENSE'

  s.files = [
    'README.txt',
    'LICENSE',
    'init.rb',
    'lib/mysql_enum_column.rb',
    'lib/enum/active_record_helper.rb',
    'lib/enum/enum_adapter.rb',
    'lib/enum/mysql_adapter.rb',
    'lib/enum/quoting.rb',
    'lib/enum/schema_definitions.rb',
    'lib/enum/schema_statements.rb',
    'lib/enum/validations.rb'
  ]
  s.homepage = 'http://github.com/devgile/mysql_enum_column'
  s.require_paths = ['lib']
  s.summary = 'Enable enum type for MySQL databases.'
  s.test_files = [
    'test/test_helper.rb',
    'test/db/schema.rb',
    'test/fixtures/enumeration.rb',
    'test/fixtures/enum_controller.rb',
    'test/enum_controller_test.rb',
    'test/enum_mysql_test.rb'
  ]
end

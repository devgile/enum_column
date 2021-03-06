# MySQL Enum column type support for Rails >= 4.*

How to use it.

### In you Gemfile:

```
gem 'mysql_enum_column'
```

Then: `bundle install`


### In your schema:

When you create your schema, specify the constraint as a limit:

```
create_table :enumerations, :force => true do |t|
  t.column :severity, :enum, :limit => [:low, :medium, :high, :critical], :default => :medium
  t.column :color, :enum, :limit => [:red, :blue, :green, :yellow]
  ...
end
```


### In the model:

You can then automatically validate this column using:

`validates_columns :severity, :color`

The rest will be handled for you. All enumerated values will be given as symbols.

```
@e = Enumeration.new
@e.severity = :medium
```

You can always use the column reflection to get the list of possible values from the database column.

```
Enumeration.columns_hash['color'].limit

# or

@enumeration.column_for_attribute(:color).limit
```
Will yield: `[:red, :blue, :green, :yellow]`


### In views:

You can use enum_select helper to generate input for enumerated attribute as:

```
 <%= enum_select(@enumeration, 'severity')%>
 or
 <%= form_for @enumeration do |f| %>
    <%= f.label :severity %>
    <%= f.enum_select :severity %>
 <% end %>
```

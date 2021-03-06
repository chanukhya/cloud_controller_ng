Sequel.migration do
  up do
    default_total_routes = 1000
    add_column :quota_definitions, :total_routes, :integer, null: true
    run("UPDATE quota_definitions SET total_routes = #{default_total_routes}")

    alter_table :quota_definitions do
      set_column_not_null :total_routes
    end
  end

  down do
    drop_column :quota_definitions, :total_routes
  end
end

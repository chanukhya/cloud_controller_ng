Sequel.migration do
  up do
    alter_table :service_bindings do
      set_column_type :volume_mounts, String, text: true
    end
  end

  down do
    alter_table :service_bindings do
      set_column_type :volume_mounts, String
    end
  end
end

# frozen_string_literal: true

Sequel.migration do
  up do
    create_table?(:script_settings) do
      String :script, null: false
      String :key, null: false
      String :description

      DateTime :created_at, null: false
      DateTime :updated_at

      index Sequel.function(:lower, :script)
      index Sequel.function(:lower, :key)
    end
  end

  down do
    drop_table(:script_settings)
  end
end

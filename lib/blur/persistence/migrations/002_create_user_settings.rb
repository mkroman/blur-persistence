# frozen_string_literal: true

Sequel.migration do
  up do
    create_table?(:user_settings) do
      String :key, null: false
      String :value, null: false
      String :account, null: false

      DateTime :created_at, null: false
      DateTime :updated_at

      index [Sequel.function(:lower, :key), Sequel.function(:lower, :account)], unique: true
    end
  end

  down do
    drop_table(:user_settings)
  end
end

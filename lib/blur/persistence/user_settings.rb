# frozen_string_literal: true

module Blur
  module Persistence
    class UserSetting < Sequel::Model
      plugin :timestamps
    end
  end
end

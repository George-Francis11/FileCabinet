class Doc < ApplicationRecord
    belongs_to :user

    def self.ransackable_attributes(auth_object = nil)
        ["content", "created_at", "id", "title", "updated_at", "user_id"]
      end

    def self.Ransackable_associations(auth_object = nil)
        ["user_id", "user"]
    end
end

class ActivitySerializer < ActiveModel::Serializer
  attributes :id, :name, :date, :user_id
end

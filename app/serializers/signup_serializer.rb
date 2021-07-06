class SignupSerializer < ActiveModel::Serializer
  # attributes :id, :time
  # has_one :camper
  belongs_to :activity
end

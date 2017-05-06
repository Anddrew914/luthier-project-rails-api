class InstrumentSerializer < ActiveModel::Serializer
  attributes :id, :instrument_type, :price
  has_one :user
end

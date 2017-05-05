class InstrumentSerializer < ActiveModel::Serializer
  attributes :id, :instrument_type, :maker, :price, :details
end

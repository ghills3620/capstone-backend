class WodSerializer < ActiveModel::Serializer
  attributes :id, :metcon, :result
  belongs_to :user

  def editable
    scope == object.user
  end
end

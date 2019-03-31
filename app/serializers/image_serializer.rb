class ImageSerializer < ActiveModel::Serializer
	belongs_to :user

	attributes :id, :title, :url, :attribution, :notes, :live, :user_id
end

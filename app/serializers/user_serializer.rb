class UserSerializer < ActiveModel::Serializer
	has_many :images

	attributes :id, :first_name, :last_name, :username, :email
end

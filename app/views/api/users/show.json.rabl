object @user
	attributes :id,:name
	node(:image) { |obj| obj.image.try(:thumb) }
module AppHelper
	module Inst
		def slug
			self.name.gsub(" ", "-").downcase
		end
	end

	module Clas
		def find_by_slug(slug)
			name = slug.gsub("-", " ").split(" ").map(&:capitalize).join(" ")
			self.find_by name: name
		end
	end
end
class Note < ActiveRecord::Base
	before_save :default_values

	validates :note, presence: true

	def default_values
		self.title = self.title.present? ? self.title : "note #{Note.all.count + 1}"
	end
end

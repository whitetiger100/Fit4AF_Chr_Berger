module ApplicationHelper
	def name(author)
		name="#{author.vorname}"+"#{author.nachname}"
		puts name
	end
end

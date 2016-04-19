require 'json'
class ContactsRank
	def initialize
	end

	def self.rank(query)
		# temporarily hardcoded for testing
		path = "./lib/contacts.json"

		f = File.read(path)
		contacts = JSON.parse(f)
		# ranking is a hash with the index as key and point as value
		ranking = []

		contacts.each_with_index do |contact, index|
			points = 0

			contact.each do |k, v|	
				case k
				when "name"
					points += 2 if v.downcase.include?(query)
				when "email" || "phone"
					if v.downcase.include?(query)
						points += 1
					end
				end
			end

			ranking[index] = points
		end	

		filtered_contact_index = ranking.each_with_index.max[1]
		return [contacts[filtered_contact_index]]

	end
end
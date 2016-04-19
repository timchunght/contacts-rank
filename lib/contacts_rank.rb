require 'json'
class ContactRank
	def initialize
	end

	def self.rank(query)
		# temporarily hardcoded for testing
		path = "./lib/contacts.json"

		f = File.read(path)
		contacts = JSON.parse(f)
		# ranking is a hash with the index as key and point as value
		ranking = {}

		contacts.each_with_index do |contact, index|
			points = 0

			contact.each do |k, v|	
				case k
				when "name"
					
				when "email"
				when "phone"
				end
			end
		end	
	end
end
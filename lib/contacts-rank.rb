require 'json'
class ContactRank
	def initialize
	end

	def self.rank(query)
		# temporarily hardcoded for testing
		path = "./contacts.json"

		f = File.read(path)
		contacts = JSON.parse(f)
		puts contacts.to_json
	end
end

ContactRank.rank("z")
require 'json'
class ContactRank
	def initialize
	end

	def self.import(query)
		# temporarily hardcoded for testing
		path = "./lib/contacts.json"

		f = File.read(path)
		contacts = JSON.parse(f)
		result =  contacts[19]
		return [result]
	end

	def filter(hash)	
	end

end
#!/usr/bin/env ruby
require 'json'
require './lib/contacts_rank'

query = ARGV[0]
if query.nil?
	puts "Input required! ./contacts-rank <query_string>"
elsif query.to_s == ""
	puts "Do not use a blank string! ./contacts-rank <query_string>"
else
	puts puts JSON.pretty_generate(ContactsRank.rank(query))
end
require 'spec_helper'

describe "ContactsRank" do
 	
 	it "generates correct result for z" do
 		result = ContactRank.import("z")

 		expected = [
	    {
	        "name" => "zed",
	        "email" => "zz@zed.com",
	        "phone" => "111.111.4444"
	    }
		]

		expect(result).to eq(expected)
 	end
end
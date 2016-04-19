require 'spec_helper'

describe "ContactsRank" do
 	
 	it "generates correct result for z" do
 		result = ContactsRank.rank("z")

 		expected = [
	    {
        "name" => "zed",
        "email" => "zz@zed.com",
        "phone" => "111.111.4444"
	    }
		]

		expect(result).to eq(expected)
 	end

 	it "generates correct result for zz" do
 		result = ContactsRank.rank("zz")

 		expected = [
		  {
		      "name" => "zed",
		      "email" => "zz@zed.com",
		      "phone" => "111.111.4444"
		  }
		]

		expect(result).to eq(expected)
 	end

 	it "generates correct result for @yahoo" do
 		result = ContactRanks.rank("@yahoo")

 		expected = [
		  {
	      "name" => "Jenny J",
	      "email" => "jj@Yahoo.com"
		  }
		]

		expect(result).to eq(expected)
 	end

end
require 'spec_helper'

describe "ContactsRank" do
 	
 	it "generates correct result for z" do
 		result = ContactRank.rank("z")

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
 		result = ContactRank.rank("zz")

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
 		result = ContactRank.rank("@yahoo")

 		expected = [
		  {
	      "name" => "Jenny J",
	      "email" => "jj@Yahoo.com"
		  }
		]

		expect(result).to eq(expected)
 	end

end
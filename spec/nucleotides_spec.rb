require "spec_helper"
require "nucleotides"

describe Nucleotides do
	subject { Nucleotides.new("AACCCGGTTT").compute }

	its(:a) { should == 2 }

	its(:c) { should == 3 }

	its(:g) { should == 2 }

	its(:t) { should == 3 }

	its(:spit) { should == "2 3 2 3" }
end
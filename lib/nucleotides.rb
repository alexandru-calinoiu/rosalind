class Nucleotides
	ALPHABET = [:a, :c, :g, :t]

	attr_reader :dna

	def initialize(dna)	
		@dna = dna		
		@hash = {}
	end

	def compute
		@dna.each_char do |c|
			key = c.downcase.to_sym
			@hash[key] ||= 0
			@hash[key] += 1
		end
		self
	end

	def spit
		compute if @hash.empty?
		"#{a} #{c} #{g} #{t}"
	end

	def method_missing(name, *args, &block)
		if ALPHABET.include?(name)
			@hash[name]
		else
			super
		end
	end
end
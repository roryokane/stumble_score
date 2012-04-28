require File.expand_path(File.join('..', 'stumble_score'), __FILE__)

class CLI

  def self.run(*args)
  	cli_with_output = CLIWithOutput.new
    return cli_with_output.run(*args)
  end

end

class CLIWithOutput
	def initialize()
		@output = ""
	end
	
	def run(*args)
		run_ready_to_output(*args)
		return @output
	end

	def run_ready_to_output(address="")
		println "Welcome to StumbleScore."
		println "The address you entered:"
		println address
	end

	def print(string)
		@output += string
	end

	def println(string)
		print string + "\n"
	end
end
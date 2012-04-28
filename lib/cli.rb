require File.expand_path(File.join('..', 'stumble_score'), __FILE__)

class CLI

  def self.run(*args)
    cli_with_output = CLIWithOutput.new
    return cli_with_output.run(*args)
  end

end

class CLIWithOutput
  include StumbleScore

  def initialize()
    @output = ""
  end
  
  def run(*args)
    run_ready_to_output(*args)
    return @output
  end

  def run_ready_to_output(address="")
    println "Welcome to StumbleScore."

    if address == ""
      println "Usage: stumble_score <address>"
      return
    end

    println "The address you entered:"
    println address

    location = Location.new(address)
    println "Bar count: #{location.bar_count}"
    println "StumbleScore: #{location.score}"
  end

  def print(string)
    @output += string
  end

  def println(string="")
    print string + "\n"
  end
end
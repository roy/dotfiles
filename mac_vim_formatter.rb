require "rspec/core/formatters/progress_formatter"

class MacVimFormatter < RSpec::Core::Formatters::ProgressFormatter

  def dump_backtrace(example)
    format_backtrace(example.execution_result[:exception].backtrace, example.metadata).each do |backtrace_info|
      backtrace_split = backtrace_info.split(":")

      file = backtrace_split[0]       # the file
      file = file[2..-1]              # remove ./ from the beginning of the file
      file = File.join Dir.pwd, file  # create an absolute path

      line = backtrace_split[1]       # line number
      rest = backtrace_split[2..-1]   # the rest

      # output.puts cyan("#{long_padding}# #{backtrace_info}")
      output.puts cyan("#{long_padding}# mvim://open?url=file://#{file}&line=#{line} #{rest.join(':')}")
    end
  end

end

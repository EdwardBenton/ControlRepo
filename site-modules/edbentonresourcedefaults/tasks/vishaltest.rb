# puppet_task.rb

require 'json'

task :example_task do
  string_output = "String"
  result = { key1: 'value1', key2: 'value2' }


  puts string_output

  # Return the remaining results as JSON
 puts result.to_json
end

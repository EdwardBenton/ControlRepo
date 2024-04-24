# puppet_task.py

import json

def example_task():
    string_output = "String"
    result = {'key1': 'value1', 'key2': 'value2'}

    # Return the "string" as part of the output
    print(string_output)

    # Return the remaining results as JSON
    print(json.dumps(result))

example_task()

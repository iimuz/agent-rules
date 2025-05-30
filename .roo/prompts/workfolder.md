# Working folder

- *new_task
  - mode: code
- *execute_command

First, create a working folder under the `.agent-memory` directory, naming it appropriately for the current task.

For any file outputs required during the task, save them in the created working folder.
When retrieving command results, output them to appropriately named files within the working folder.
If you need the same command output again, read and use the previously saved file.

When using subtasks, specify input and output files within the working folder.
If long context communication between subtasks is needed, create and use text files with appropriate names in the working folder.

The final results should also be output as files under the working folder.

If the output is not a direct command result and does not require a specific file extension, use Markdown format and name the file with a `.md` extension.

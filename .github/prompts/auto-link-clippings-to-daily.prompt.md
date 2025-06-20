---
mode: "agent"
tools: []
description: "Automates moving and linking clippings to daily notes."
---

## Overview

Detect files in the Clippings folder that start with a specified prefix, then perform front matter formatting, move them to the zettelkasten folder, and add links to the daily note.

If any of the following items cannot be determined, please ask the user:

- Path to the Clippings folder
- Path to the destination folder for moving files
- Path to the daily note
- Prefix of files to detect

## Procedure

Create a list of files, and for each file, perform the following steps:

- Remove unnecessary `"` characters from the front matter where they are not needed
- If the `tags` field in the front matter is empty, rewrite it as `tags: []`
- Move the file to the specified folder and add a link to the specified file
  - The link should be in the format: `- hh:mm [title](link)`
  - The link should use the basename (no file extension)
  - The link should be placed directly under the `## Mobile First Daily Interface` section, in a subsection titled `### YYYY-MM-DDT00:00:00.000+09:00`. If this section already exists, do not create it again.
  - The links should be sorted in order of hh:mm
  - The hh:mm should be obtained by converting the `date` in the front matter

## Notes

- If there is already front matter or a link section, append without duplication
- Automatically replace file names and date parts as needed
- If an error occurs, output the error details

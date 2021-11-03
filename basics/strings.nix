[
  "Strings literals are in double quotes."

  "
    String literals can span
    multiple lines.
  "

  ''
    This is called an "indented string" literal.
    It intelligently strips leading whitespace.
  ''

  ''
    a
      b
  ''

  ("ab" + "cd") # String concatenation

  # Antiquotation lets you embed values into strings.
  ("Your home directory is ${builtins.getEnv "HOME"}")
]

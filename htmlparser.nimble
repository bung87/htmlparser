# Package

version       = "0.1.0"
author        = "bung87"
description   = "a html parser"
license       = "MIT"
srcDir        = "src"



# Dependencies

requires "nim >= 1.2.0"
task test, "Runs the test suite":
  exec "nim c -r tests/test1.nim"
  exec "nim c -r --gc:arc tests/test_gc.nim"
  exec "nim c -r --gc:orc tests/test_gc.nim"

  exec "nim c -r --gc:arc tests/test_gc_std.nim"
  exec "nim c -r --gc:orc tests/test_gc_std.nim"
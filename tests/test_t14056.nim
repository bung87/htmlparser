
import ./../ src / htmlparser
import ./../ src / htmlparser / xmltree
import unittest,strutils

test "test issue #14056 xmlparser removes significant white space":
  # https://github.com/nim-lang/Nim/issues/14056
  const s = """<p>one <em>two</em> <strong>three</strong> four</p>"""

  var n = parseHtml(s)
  check $n == "<p>one <em>two</em> <strong>three</strong> four</p>"
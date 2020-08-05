
import unittest,os,strutils

import ./../ src / htmlparser
import ./../ src / htmlparser / xmltree
test "test demo.html":
  let expected = readFile("tests"  / "demo.expect.html")
  let html = parseHtml(readFile("tests"  / "demo.html") )
  var cleanHtml = ($(html.child("html")))
  cleanHtml.stripLineEnd
  var cleanExpected = ($expected)
  cleanExpected.stripLineEnd
  check cleanHtml == cleanExpected

test "test tag":
  var a = newElement("firstTag")
  a.add newElement("childTag")
  check $a == """<firstTag>
  <childTag>
  </childTag>
</firstTag>"""

test "test mutation":
  var f = newElement("myTag")
  f.add newElement("first")
  f.insert(newElement("second"), 0)
  check $f[1] == """<first>
</first>"""
  check $f[0] == """<second>
</second>"""

# test "text":
#   var
#     a = newElement("firstTag")
#     b = newText("my text")
#     c = newComment("my comment")
#     s = ""
#   s.add(c)
#   s.add(a)
#   s.add(b)
#   echo s
#   assert s == "<!-- my comment --><firstTag>my text</firstTag>"
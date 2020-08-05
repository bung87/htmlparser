import ./../ src / htmlparser
import ./../ src / htmlparser / xmltree
import unittest,strutils

test "test gc":
  # fix https://github.com/nim-lang/Nim/issues/13946
  var html = """
<div>
    <img src="something.png"/>
    Hello World
</div>
"""
  let doc = parseHtml(html)
  html.stripLineEnd
  check $(doc.child("div")) == html
 
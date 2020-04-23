# This is just an example to get you started. You may wish to put all of your
# tests into a single file, or separate them into multiple `test1`, `test2`
# etc. files (better names are recommended, just make sure the name starts with
# the letter 't').
#
# To run these tests, simply execute `nimble test`.

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

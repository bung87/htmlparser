import std/htmlparser
import xmltree
import unittest,strutils

test "test gc std":
    var html = """
<div>
    <img src="something.png" />
    Hello World
</div>
"""
    let doc = parseHtml(html)
    html.stripLineEnd
    check $(doc.child("div")) == html
 
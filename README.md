fast_key
========

Super-tiny library for getting a value from a proplist or a map.

Usage
-----

```erlang
Joe = #{name => "Joe"},
Robert = [{name, "Robert"}],
Mike = #{},

"Joe" = fast_key:get(name, Joe),
"Robert" = fast_key:get(name, Robert),
"Mike" = fast_key:get(name, Mike, "Mike").
```

# lua-getpid

[![test](https://github.com/mah0x211/lua-getpid/actions/workflows/test.yml/badge.svg)](https://github.com/mah0x211/lua-getpid/actions/workflows/test.yml)
[![codecov](https://codecov.io/gh/mah0x211/lua-getpid/branch/master/graph/badge.svg)](https://codecov.io/gh/mah0x211/lua-getpid)

get parent or calling process-id.


## Installation

```
luarocks install getpid
```


## pid = getpid( [parent] )

get parent or calling process-id.

```lua
local getpid = require('getpid')
print(getpid())     -- 55903
print(getpid(true)) -- 53189
```

**Parameters**

- `parent:boolean`: set to `true` to get the parent process-id.

**Returns**

- `pid:integer`: process id.



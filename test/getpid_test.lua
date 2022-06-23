local assert = require('assert')
local getpid = require('getpid')

-- test that get calling process-id
local pid = getpid()
assert.greater(pid, 1)

-- test that get parent process-id
local ppid = getpid(true)
assert.greater(ppid, 1)
assert.less(ppid, pid)

-- test that throws an error if argument is not boolean
local err = assert.throws(getpid, {})
assert.match(err, 'boolean expected,')


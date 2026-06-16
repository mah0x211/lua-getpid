local testcase = require('testcase')
local assert = require('assert')
local getpid = require('getpid')

function testcase.getpid()
    -- test that get calling process-id
    local pid = getpid()
    assert.greater(pid, 1)
end

function testcase.getppid()
    -- test that get parent process-id
    local pid = getpid()
    local ppid = getpid(true)
    assert.greater(ppid, 1)
    assert.less(ppid, pid)
end

function testcase.invalid_argument()
    -- test that throws an error if argument is not boolean
    local err = assert.throws(getpid, {})
    assert.match(err, 'boolean expected,')
end

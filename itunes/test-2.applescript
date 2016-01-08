#!/usr/bin/osascript

set aFn to (path to desktop as text) & "out.txt"
set myOut to open for access aFn with write permission
set allOut to ""
set cnt to 0
tell application "iTunes"
  repeat with curTrack in tracks
    set tId to id of curTrack
    set dId to database id of curTrack
    set allOut to allOut & dId & "\t" & tId & "\n"
    -- set cnt to cnt + finish of curTrack
  end repeat
end tell
write allOut to myOut
close access myOut

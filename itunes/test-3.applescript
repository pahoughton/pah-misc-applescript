#!/usr/bin/osascript

set aFn to (path to desktop as text) & "ittracs.txt"
tell application "iTunes"

  set myOut to open for access aFn with write permission
  repeat with curTrack in tracks
    tell curTrack
      set t_did to database id
      set t_id to id
      set t_art to artist
      set t_nm to description
      write "d:" & t_did & "\t" & t_id & "\t" & t_art & "\t" & t_nm  to myOut

      write "\n" to myOut
    end tell
    -- set cnt to cnt + finish of curTrack
  end repeat
  close access myOut
end tell


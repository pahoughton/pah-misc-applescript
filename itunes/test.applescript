#!/usr/bin/osascript

set myOut to open for access "./tout.txt" with write permission

tell application "iTunes"
	repeat with curTrack in tracks
		-- write name of curTrack to myOut
		write "test" to myOut
	end repeat
end tell

close access myOut

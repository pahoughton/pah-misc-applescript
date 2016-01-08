set kitchenTunes to application "iTunes" of machine "eppc://patty:tango@192.168.0.12"

using terms from application "iTunes"
	tell kitchenTunes
		next track
	end tell
end using terms from

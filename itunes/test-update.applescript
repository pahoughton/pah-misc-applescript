#!/usr/bin/osascript


tell application "iTunes"
set low_date to date "1/1/1990 00:00:00"

  tell track id 40652
    set loc to location as string
    if loc = "Macintosh HD:Users:paul:Public:Music:Library:Stevie Wonder:#1s:08 Living For The City.mp3" then
      set played count to 0
      set unplayed to true
      if played date > low_date then
        set played date to low_date
      end if
    end if
  end tell


end tell

#!/usr/bin/osascript

on min(x, y)
  if x ≤ y then
    return x
  end if
  return y
end min

tell application "Spotify" to set sound volume to (my min(sound volume + 10, 100))

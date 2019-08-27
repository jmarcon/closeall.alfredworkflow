on alfred_script(q)
	tell application "System Events"
		tell process "Notification Center"
			set theseWindows to every window whose subrole is "AXNotificationCenterAlert" or subrole is "AXNotificationCenterBanner"
			repeat with i from 1 to number of items in theseWindows
				set this_item to item i of theseWindows
				try
					click button 1 of this_item
				on error
					my alfred_script(q)
				end try
			end repeat
		end tell
	end tell
end alfred_script
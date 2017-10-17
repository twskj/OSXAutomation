on run
	tell application "Finder"
		try
			activate
			set frontWin to folder of front window as string
			set frontWinPath to (get POSIX path of frontWin)
			tell application "Terminal"
				activate
				do script with command "cd \"" & frontWinPath & "\""
			end tell
		on error error_message
			beep
			display dialog error_message buttons ¬
				{"OK"} default button 1
		end try
	end tell
end run

on run
	tell application "Finder"
		try
			activate
			set frontWin to folder of front window as string
			set frontWinPath to (get POSIX path of frontWin)
			do shell script "/usr/local/bin/code " & frontWinPath
		on error error_message
			beep
			display dialog error_message buttons ¬
				{"OK"} default button 1
		end try
	end tell
end run

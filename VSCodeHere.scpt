app = Application.currentApplication()
app.includeStandardAdditions = true
SystemEvents = Application('System Events')

var pathToMe = app.pathTo(this)
var containerPOSIXPath = SystemEvents.files[pathToMe.toString()].container().posixPath()

app.doShellScript("/usr/local/bin/code "+ containerPOSIXPath)

IF ([Environment]::Is64BitOperatingSystem) {
	& "C:\Program Files\dos2win\dos2win64.exe" $Args[0] $Args[1] $Args[2] $Args[3] $Args[4]
}
ELSE {
	& "C:\Program Files\dos2win\dos2win32.exe" $Args[0] $Args[1] $Args[2] $Args[3] $Args[4]
}
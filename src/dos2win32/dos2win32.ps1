IF ($Args[0] -eq '-o') {
	& "C:\Program Files\MS-DOS\i386_x86\msdos.exe" -c$Args[1] $Args[2]
}
ELSEIF ($Args[0] -eq '-a') {
	IF ($Args[1] -match 'i86|i286|i386|i486|ia32|pentium4|v30'){
		$CPU = $Args[1]
	}
	ELSE {
		Write-Host "Error: Wrong CPU type" -ForegroundColor red
		exit 1
	}

	IF ($Args[2] -eq '-o') {
		& "C:\Program Files\MS-DOS\${CPU}_x86\msdos.exe" -c$Args[3] $Args[4]
	}
	ELSEIF (($Args[2] -eq '--') -and ($Args[3] -eq '--help')) {
		& "C:\Program Files\MS-DOS\${CPU}_x86\msdos.exe"
	}
	ELSE {
		& "C:\Program Files\MS-DOS\${CPU}_x86\msdos.exe" -c$Args[2] $Args[3]
	}
}
ELSEIF (($Args[0] -eq '--') -and ($Args[1] -eq '--help')) {
	& "C:\Program Files\MS-DOS\i386_x86\msdos.exe" --help
}
ELSEIF ($Args[0] -eq '--help') {
	"dos2win32 for Windows
dos2win32 makes 32-bit Windows executables out of MS-DOS .com and .exe files.

Usage:

dos2win32 [-a CPU_TYPE] [[-o] OUTPUT_FILE INPUT_FILE] [-- 'other flags']

Valid CPU types are: i86 i286 i386 i486 ia32 pentium4 v30
dos2win32 standards to CPU type i386."
}
ELSE {
	& "C:\Program Files\MS-DOS\i386_x86\msdos.exe" -c$Args[0] $Args[1]
}
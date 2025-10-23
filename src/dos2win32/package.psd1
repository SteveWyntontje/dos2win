@{
    Root = 'c:\Users\wynto\Projects\PowerShell Stuff\dos2win\src\dos2win32\dos2win32.ps1'
    OutputPath = 'c:\Users\wynto\Projects\PowerShell Stuff\dos2win\build'
    Package = @{
        Enabled = $true
        Obfuscate = $false
        HideConsoleWindow = $false
        DotNetVersion = 'v4.8.1'
        FileVersion = ''
        FileDescription = ''
        ProductName = 'dos2win'
        ProductVersion = '1.0.0'
        Copyright = ''
        RequireElevation = $false
        ApplicationIconPath = ''
        PackageType = 'Console'
    }
    Bundle = @{
        Enabled = $true
        Modules = $true
        # IgnoredModules = @()
    }
}
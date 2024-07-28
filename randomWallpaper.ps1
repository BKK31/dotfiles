# Set the path to your wallpaper folder
$wallpaperPath = "C:\Users\Bhargava K K\dotfiles\wallhaven"

# Get a random wallpaper from the folder
$wallpapers = Get-ChildItem -Path $wallpaperPath -Include *.jpg,*.png -File -Recurse
$randomWallpaper = $wallpapers | Get-Random
$randomWallpaperPath = $randomWallpaper.FullName

# Set the wallpaper
Add-Type -TypeDefinition @"
using System;
using System.Runtime.InteropServices;

public class Wallpaper {
    [DllImport("user32.dll", CharSet = CharSet.Auto)]
    private static extern int SystemParametersInfo(int uAction, int uParam, string lpvParam, int fuWinIni);

    public static void SetWallpaper(string path) {
        SystemParametersInfo(20, 0, path, 0x01 | 0x02);
    }
}
"@
[Wallpaper]::SetWallpaper($randomWallpaperPath)



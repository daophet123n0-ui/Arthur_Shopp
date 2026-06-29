# ========================================
# ARTHUR_SHOP - Premium Edition
# By Arthur
# ========================================

# Clear screen and set colors
Clear-Host
$host.UI.RawUI.BackgroundColor = "Black"
$host.UI.RawUI.ForegroundColor = "Cyan"

# ANSI Art Banner - DASHER Style
$banner = @"
╔═══════════════════════════════════════════════════════════════╗
║                                                               ║
║         ╔═══════════════════════════════════════════╗         ║
║         ║                                           ║         ║
║         ║      ╔═════════════════════════════╗     ║         ║
║         ║      ║   ARTHUR_SHOP v1.0 PRO    ║     ║         ║
║         ║      ╚═════════════════════════════╝     ║         ║
║         ║                                           ║         ║
║         ║      [+] ARTHUR SHOP BY ARTHUR [+]       ║         ║
║         ║                                           ║         ║
║         ╚═══════════════════════════════════════════╝         ║
║                                                               ║
╚═══════════════════════════════════════════════════════════════╝
"@

Write-Host $banner -ForegroundColor Cyan

# Simulate downloading
Write-Host "`n[*] Initializing Arthur Shop System..." -ForegroundColor Yellow
Start-Sleep -Milliseconds 500

Write-Host "[*] Loading core modules..." -ForegroundColor Yellow
Start-Sleep -Milliseconds 300

Write-Host "[+] Downloaded: https://github.com/daophet123n0-ui/Arthur_Shopp/raw/main/arthur_shop.ps1" -ForegroundColor Green
Start-Sleep -Milliseconds 500

Write-Host "[+] System initialized successfully!" -ForegroundColor Green
Start-Sleep -Milliseconds 500

# License Section
Write-Host "`n" -ForegroundColor Green
Write-Host "╔═══════════════════════════════════════════════════════════════╗" -ForegroundColor Cyan
Write-Host "║                      [LICENSE]                               ║" -ForegroundColor Cyan
Write-Host "╚═══════════════════════════════════════════════════════════════╝" -ForegroundColor Cyan
Write-Host ""

$licenseKey = Read-Host "[>] Enter license key"

if ($licenseKey -eq "arthur" -or $licenseKey -eq "ARTHUR" -or $licenseKey -eq "arthur_shop" -or $licenseKey -eq "12345" -or $licenseKey -eq "Arthur_shop.exe") {
    Write-Host "`n[+] License key verified! ✓" -ForegroundColor Green
    Start-Sleep -Milliseconds 500
    Write-Host "[*] Opening Discord channel..." -ForegroundColor Yellow
    Start-Sleep -Milliseconds 300
    Start-Process "https://discord.com/channels/1488127212262785107/1520977401520062474"
    Write-Host "[+] Discord channel opened! 🎉" -ForegroundColor Green
    Start-Sleep -Milliseconds 500
    Write-Host "[+] Welcome to Arthur Shop Pro!" -ForegroundColor Green
    Start-Sleep -Milliseconds 300
} else {
    Write-Host "`n[!] Invalid license key!" -ForegroundColor Red
    Start-Sleep -Milliseconds 500
    Write-Host "[!] Hint: Try 'arthur', 'arthur_shop', '12345', or 'Arthur_shop.exe'" -ForegroundColor Yellow
    Start-Sleep -Milliseconds 300
    Read-Host "Press Enter to try again"
    & powershell -Command "iex (irm 'https://raw.githubusercontent.com/daophet123n0-ui/Arthur_Shopp/main/arthur_shop.ps1')"
    exit
}

# Main Menu - DASHER Style
while($true) {
    Clear-Host
    Write-Host $banner -ForegroundColor Cyan
    
    Write-Host "`n" -ForegroundColor Cyan
    Write-Host "  ┌─────────────────────────────────────────┐" -ForegroundColor Cyan
    Write-Host "  │          [MAIN MENU]                    │" -ForegroundColor Cyan
    Write-Host "  ├─────────────────────────────────────────┤" -ForegroundColor Cyan
    Write-Host "  │                                         │" -ForegroundColor Cyan
    Write-Host "  │  [1] LOW                                │" -ForegroundColor Green
    Write-Host "  │  [2] Medium                             │" -ForegroundColor Green
    Write-Host "  │  [3] High                               │" -ForegroundColor Green
    Write-Host "  │  [4] Reset                              │" -ForegroundColor Yellow
    Write-Host "  │                                         │" -ForegroundColor Cyan
    Write-Host "  │  Scroll wheel to navigate, Enter to select" -ForegroundColor Gray
    Write-Host "  │                                         │" -ForegroundColor Cyan
    Write-Host "  └─────────────────────────────────────────┘" -ForegroundColor Cyan
    Write-Host ""
    
    $choice = Read-Host "[>] Select option (1-4)"
    
    switch($choice) {
        "1" { Show-LowMode }
        "2" { Show-MediumMode }
        "3" { Show-HighMode }
        "4" { Show-Reset }
        default { 
            Write-Host "`n[!] Invalid option!" -ForegroundColor Red
            Start-Sleep -Milliseconds 500
        }
    }
}

# ========================================
# LOW MODE
# ========================================

function Show-LowMode {
    Clear-Host
    Write-Host $banner -ForegroundColor Cyan
    
    Write-Host "`n" -ForegroundColor Cyan
    Write-Host "  ┌─────────────────────────────────────────┐" -ForegroundColor Cyan
    Write-Host "  │          [1] LOW MODE                   │" -ForegroundColor Yellow
    Write-Host "  ├─────────────────────────────────────────┤" -ForegroundColor Cyan
    Write-Host "  │                                         │" -ForegroundColor Cyan
    Write-Host "  │  📝 To-Do List Manager                  │" -ForegroundColor Green
    Write-Host "  │  🧮 Calculator Pro                      │" -ForegroundColor Green
    Write-Host "  │  💻 System Analyzer                     │" -ForegroundColor Green
    Write-Host "  │                                         │" -ForegroundColor Cyan
    Write-Host "  │  [5] Back to Menu                       │" -ForegroundColor Red
    Write-Host "  │                                         │" -ForegroundColor Cyan
    Write-Host "  └─────────────────────────────────────────┘" -ForegroundColor Cyan
    Write-Host ""
    
    $choice = Read-Host "[>] Select option (1-3 or 5)"
    
    switch($choice) {
        "1" { Show-TodoMenu }
        "2" { Show-Calculator }
        "3" { Show-SystemInfo }
        "5" { return }
        default { 
            Write-Host "`n[!] Invalid option!" -ForegroundColor Red
            Start-Sleep -Milliseconds 500
            Show-LowMode
        }
    }
}

# ========================================
# MEDIUM MODE
# ========================================

function Show-MediumMode {
    Clear-Host
    Write-Host $banner -ForegroundColor Cyan
    
    Write-Host "`n" -ForegroundColor Cyan
    Write-Host "  ┌─────────────────────────────────────────┐" -ForegroundColor Cyan
    Write-Host "  │          [2] MEDIUM MODE                │" -ForegroundColor Yellow
    Write-Host "  ├─────────────────────────────────────────┤" -ForegroundColor Cyan
    Write-Host "  │                                         │" -ForegroundColor Cyan
    Write-Host "  │  📝 To-Do List Manager                  │" -ForegroundColor Green
    Write-Host "  │  🧮 Calculator Pro                      │" -ForegroundColor Green
    Write-Host "  │  💻 System Analyzer                     │" -ForegroundColor Green
    Write-Host "  │  🎮 Mini Games                          │" -ForegroundColor Green
    Write-Host "  │  ℹ️  About Arthur Shop                  │" -ForegroundColor Green
    Write-Host "  │                                         │" -ForegroundColor Cyan
    Write-Host "  │  [6] Back to Menu                       │" -ForegroundColor Red
    Write-Host "  │                                         │" -ForegroundColor Cyan
    Write-Host "  └─────────────────────────────────────────┘" -ForegroundColor Cyan
    Write-Host ""
    
    $choice = Read-Host "[>] Select option (1-5 or 6)"
    
    switch($choice) {
        "1" { Show-TodoMenu }
        "2" { Show-Calculator }
        "3" { Show-SystemInfo }
        "4" { Show-Games }
        "5" { Show-About }
        "6" { return }
        default { 
            Write-Host "`n[!] Invalid option!" -ForegroundColor Red
            Start-Sleep -Milliseconds 500
            Show-MediumMode
        }
    }
}

# ========================================
# HIGH MODE
# ========================================

function Show-HighMode {
    Clear-Host
    Write-Host $banner -ForegroundColor Cyan
    
    Write-Host "`n" -ForegroundColor Cyan
    Write-Host "  ┌─────────────────────────────────────────┐" -ForegroundColor Cyan
    Write-Host "  │          [3] HIGH MODE                  │" -ForegroundColor Yellow
    Write-Host "  ├─────────────────────────────────────────┤" -ForegroundColor Cyan
    Write-Host "  │                                         │" -ForegroundColor Cyan
    Write-Host "  │  📝 To-Do List Manager                  │" -ForegroundColor Green
    Write-Host "  │  🧮 Calculator Pro (Advanced)           │" -ForegroundColor Green
    Write-Host "  │  💻 System Analyzer (Full)              │" -ForegroundColor Green
    Write-Host "  │  🎮 Mini Games (All)                    │" -ForegroundColor Green
    Write-Host "  │  ℹ️  About Arthur Shop                  │" -ForegroundColor Green
    Write-Host "  │  🔧 System Tools                        │" -ForegroundColor Green
    Write-Host "  │  📊 Performance Monitor                 │" -ForegroundColor Green
    Write-Host "  │                                         │" -ForegroundColor Cyan
    Write-Host "  │  [8] Back to Menu                       │" -ForegroundColor Red
    Write-Host "  │                                         │" -ForegroundColor Cyan
    Write-Host "  └─────────────────────────────────────────┘" -ForegroundColor Cyan
    Write-Host ""
    
    $choice = Read-Host "[>] Select option (1-7 or 8)"
    
    switch($choice) {
        "1" { Show-TodoMenu }
        "2" { Show-Calculator }
        "3" { Show-SystemInfo }
        "4" { Show-Games }
        "5" { Show-About }
        "6" { Show-SystemTools }
        "7" { Show-PerformanceMonitor }
        "8" { return }
        default { 
            Write-Host "`n[!] Invalid option!" -ForegroundColor Red
            Start-Sleep -Milliseconds 500
            Show-HighMode
        }
    }
}

# ========================================
# RESET
# ========================================

function Show-Reset {
    Clear-Host
    Write-Host $banner -ForegroundColor Cyan
    
    Write-Host "`n" -ForegroundColor Cyan
    Write-Host "  ┌─────────────────────────────────────────┐" -ForegroundColor Cyan
    Write-Host "  │          [4] RESET                      │" -ForegroundColor Yellow
    Write-Host "  ├─────────────────────────────────────────┤" -ForegroundColor Cyan
    Write-Host "  │                                         │" -ForegroundColor Cyan
    Write-Host "  │  [1] Clear To-Do List                   │" -ForegroundColor Green
    Write-Host "  │  [2] Reset Settings                     │" -ForegroundColor Green
    Write-Host "  │  [3] Clear Cache                        │" -ForegroundColor Green
    Write-Host "  │  [4] Factory Reset                      │" -ForegroundColor Red
    Write-Host "  │                                         │" -ForegroundColor Cyan
    Write-Host "  │  [5] Back to Menu                       │" -ForegroundColor Red
    Write-Host "  │                                         │" -ForegroundColor Cyan
    Write-Host "  └─────────────────────────────────────────┘" -ForegroundColor Cyan
    Write-Host ""
    
    $choice = Read-Host "[>] Select option (1-5)"
    
    switch($choice) {
        "1" { 
            Clear-Host
            $todoFile = "$env:USERPROFILE\Desktop\arthur_todos.txt"
            if (Test-Path $todoFile) {
                Remove-Item $todoFile
                Write-Host "[+] To-Do List cleared! ✓" -ForegroundColor Green
            } else {
                Write-Host "[!] No To-Do List found!" -ForegroundColor Yellow
            }
            Start-Sleep -Milliseconds 1000
            Show-Reset
        }
        "2" { 
            Clear-Host
            Write-Host "[+] Settings reset! ✓" -ForegroundColor Green
            Start-Sleep -Milliseconds 1000
            Show-Reset
        }
        "3" { 
            Clear-Host
            Write-Host "[+] Cache cleared! ✓" -ForegroundColor Green
            Start-Sleep -Milliseconds 1000
            Show-Reset
        }
        "4" { 
            Clear-Host
            Write-Host "[!] Factory Reset initiated..." -ForegroundColor Red
            Start-Sleep -Milliseconds 500
            Write-Host "[*] Shutting down Arthur Shop..." -ForegroundColor Yellow
            Start-Sleep -Milliseconds 300
            Write-Host "[+] Goodbye! Thanks for using Arthur Shop! 👋" -ForegroundColor Green
            Start-Sleep -Milliseconds 300
            Write-Host "[*] Opening Discord channel..." -ForegroundColor Yellow
            Start-Process "https://discord.com/channels/1488127212262785107/1520977401520062474"
            Start-Sleep -Milliseconds 500
            exit
        }
        "5" { return }
        default { 
            Write-Host "`n[!] Invalid option!" -ForegroundColor Red
            Start-Sleep -Milliseconds 500
            Show-Reset
        }
    }
}

# ========================================
# TO-DO LIST MANAGER
# ========================================

function Show-TodoMenu {
    $todoFile = "$env:USERPROFILE\Desktop\arthur_todos.txt"
    
    while($true) {
        Clear-Host
        Write-Host "`n╔════════════════════════════════════╗" -ForegroundColor Cyan
        Write-Host "║   📝 TO-DO LIST MANAGER             ║" -ForegroundColor Cyan
        Write-Host "╚════════════════════════════════════╝`n" -ForegroundColor Cyan
        
        Write-Host "  1. View tasks" -ForegroundColor Green
        Write-Host "  2. Add task" -ForegroundColor Green
        Write-Host "  3. Complete task" -ForegroundColor Green
        Write-Host "  4. Delete task" -ForegroundColor Green
        Write-Host "  5. Back to menu" -ForegroundColor Red
        Write-Host ""
        
        $choice = Read-Host "[>] Select option (1-5)"
        
        switch($choice) {
            "1" { 
                Clear-Host
                Write-Host "`n[TASKS]`n" -ForegroundColor Yellow
                if (Test-Path $todoFile) {
                    $tasks = Get-Content $todoFile
                    $i = 1
                    foreach ($task in $tasks) {
                        Write-Host "$i. $task" -ForegroundColor Green
                        $i++
                    }
                } else {
                    Write-Host "No tasks yet!" -ForegroundColor Gray
                }
                Read-Host "`n[*] Press Enter to continue"
            }
            "2" { 
                $task = Read-Host "`n[+] Enter task description"
                if ($task) {
                    Add-Content -Path $todoFile -Value "⏳ $task"
                    Write-Host "[+] Task added! ✓" -ForegroundColor Green
                    Start-Sleep -Milliseconds 500
                }
            }
            "3" { 
                if (Test-Path $todoFile) {
                    $tasks = Get-Content $todoFile
                    $i = 1
                    foreach ($task in $tasks) {
                        Write-Host "$i. $task" -ForegroundColor Green
                        $i++
                    }
                    $taskNum = Read-Host "`n[>] Task number to complete"
                    if ($taskNum -gt 0 -and $taskNum -le $tasks.Count) {
                        $tasks[$taskNum - 1] = $tasks[$taskNum - 1] -replace "⏳", "✅"
                        $tasks | Set-Content $todoFile
                        Write-Host "[+] Task completed! ✓" -ForegroundColor Green
                        Start-Sleep -Milliseconds 500
                    }
                }
            }
            "4" { 
                if (Test-Path $todoFile) {
                    $tasks = Get-Content $todoFile
                    $i = 1
                    foreach ($task in $tasks) {
                        Write-Host "$i. $task" -ForegroundColor Green
                        $i++
                    }
                    $taskNum = Read-Host "`n[>] Task number to delete"
                    if ($taskNum -gt 0 -and $taskNum -le $tasks.Count) {
                        $tasks = $tasks | Where-Object { $_ -ne $tasks[$taskNum - 1] }
                        $tasks | Set-Content $todoFile
                        Write-Host "[+] Task deleted! ✓" -ForegroundColor Green
                        Start-Sleep -Milliseconds 500
                    }
                }
            }
            "5" { return }
        }
    }
}

# ========================================
# CALCULATOR
# ========================================

function Show-Calculator {
    while($true) {
        Clear-Host
        Write-Host "`n╔════════════════════════════════════╗" -ForegroundColor Cyan
        Write-Host "║   🧮 CALCULATOR PRO                ║" -ForegroundColor Cyan
        Write-Host "╚════════════════════════════════════╝`n" -ForegroundColor Cyan
        
        Write-Host "  1. ➕ Add" -ForegroundColor Green
        Write-Host "  2. ➖ Subtract" -ForegroundColor Green
        Write-Host "  3. ✖️  Multiply" -ForegroundColor Green
        Write-Host "  4. ➗ Divide" -ForegroundColor Green
        Write-Host "  5. Back to menu" -ForegroundColor Red
        Write-Host ""
        
        $choice = Read-Host "[>] Select operation (1-5)"
        
        switch($choice) {
            "1" { 
                $num1 = Read-Host "`n[+] First number"
                $num2 = Read-Host "[+] Second number"
                $result = [double]$num1 + [double]$num2
                Write-Host "`n[RESULT] $num1 + $num2 = $result" -ForegroundColor Green
                Read-Host "[*] Press Enter to continue"
            }
            "2" { 
                $num1 = Read-Host "`n[+] First number"
                $num2 = Read-Host "[+] Second number"
                $result = [double]$num1 - [double]$num2
                Write-Host "`n[RESULT] $num1 - $num2 = $result" -ForegroundColor Green
                Read-Host "[*] Press Enter to continue"
            }
            "3" { 
                $num1 = Read-Host "`n[+] First number"
                $num2 = Read-Host "[+] Second number"
                $result = [double]$num1 * [double]$num2
                Write-Host "`n[RESULT] $num1 × $num2 = $result" -ForegroundColor Green
                Read-Host "[*] Press Enter to continue"
            }
            "4" { 
                $num1 = Read-Host "`n[+] First number"
                $num2 = Read-Host "[+] Second number"
                if ([double]$num2 -eq 0) {
                    Write-Host "`n[!] Cannot divide by zero!" -ForegroundColor Red
                } else {
                    $result = [double]$num1 / [double]$num2
                    Write-Host "`n[RESULT] $num1 ÷ $num2 = $result" -ForegroundColor Green
                }
                Read-Host "[*] Press Enter to continue"
            }
            "5" { return }
        }
    }
}

# ========================================
# SYSTEM ANALYZER
# ========================================

function Show-SystemInfo {
    Clear-Host
    Write-Host "`n╔════════════════════════════════════╗" -ForegroundColor Cyan
    Write-Host "║   💻 SYSTEM ANALYZER               ║" -ForegroundColor Cyan
    Write-Host "╚════════════════════════════════════╝`n" -ForegroundColor Cyan
    
    Write-Host "[+] Computer Name: " -NoNewline -ForegroundColor Green
    Write-Host (Get-ComputerName) -ForegroundColor Yellow
    
    Write-Host "[+] OS: " -NoNewline -ForegroundColor Green
    Write-Host ([System.Environment]::OSVersion.VersionString) -ForegroundColor Yellow
    
    Write-Host "[+] Processor: " -NoNewline -ForegroundColor Green
    Write-Host (Get-WmiObject Win32_Processor).Name -ForegroundColor Yellow
    
    Write-Host "[+] RAM: " -NoNewline -ForegroundColor Green
    $ram = [math]::Round((Get-WmiObject Win32_ComputerSystem).TotalPhysicalMemory / 1GB, 2)
    Write-Host "$ram GB" -ForegroundColor Yellow
    
    Write-Host "[+] Current User: " -NoNewline -ForegroundColor Green
    Write-Host ([System.Security.Principal.WindowsIdentity]::GetCurrent().Name) -ForegroundColor Yellow
    
    Read-Host "`n[*] Press Enter to continue"
}

# ========================================
# MINI GAMES
# ========================================

function Show-Games {
    while($true) {
        Clear-Host
        Write-Host "`n╔════════════════════════════════════╗" -ForegroundColor Cyan
        Write-Host "║   🎮 MINI GAMES                    ║" -ForegroundColor Cyan
        Write-Host "╚════════════════════════════════════╝`n" -ForegroundColor Cyan
        
        Write-Host "  1. 🎯 Guess the Number" -ForegroundColor Green
        Write-Host "  2. 🎲 Dice Roller" -ForegroundColor Green
        Write-Host "  3. Back to menu" -ForegroundColor Red
        Write-Host ""
        
        $choice = Read-Host "[>] Select game (1-3)"
        
        switch($choice) {
            "1" { Play-GuessNumber }
            "2" { Play-DiceRoller }
            "3" { return }
        }
    }
}

function Play-GuessNumber {
    Clear-Host
    Write-Host "`n[GUESS THE NUMBER]`n" -ForegroundColor Yellow
    
    $secretNumber = Get-Random -Minimum 1 -Maximum 100
    $attempts = 0
    
    while($true) {
        $guess = Read-Host "[>] Guess a number (1-100)"
        $attempts++
        
        if ($guess -eq $secretNumber) {
            Write-Host "`n[+] Correct! You guessed it in $attempts attempts! 🎉" -ForegroundColor Green
            Read-Host "[*] Press Enter to continue"
            return
        } elseif ($guess -lt $secretNumber) {
            Write-Host "[*] Too low! Try higher." -ForegroundColor Yellow
        } else {
            Write-Host "[*] Too high! Try lower." -ForegroundColor Yellow
        }
    }
}

function Play-DiceRoller {
    Clear-Host
    Write-Host "`n[DICE ROLLER]`n" -ForegroundColor Yellow
    
    $rolls = Read-Host "[>] How many times to roll?"
    
    Write-Host "`n[RESULTS]`n" -ForegroundColor Green
    $total = 0
    for ($i = 1; $i -le $rolls; $i++) {
        $roll = Get-Random -Minimum 1 -Maximum 7
        $total += $roll
        Write-Host "Roll $i : $roll"
    }
    
    Write-Host "`n[+] Total: $total" -ForegroundColor Green
    Read-Host "[*] Press Enter to continue"
}

# ========================================
# SYSTEM TOOLS
# ========================================

function Show-SystemTools {
    Clear-Host
    Write-Host "`n╔════════════════════════════════════╗" -ForegroundColor Cyan
    Write-Host "║   🔧 SYSTEM TOOLS                  ║" -ForegroundColor Cyan
    Write-Host "╚════════════════════════════════════╝`n" -ForegroundColor Cyan
    
    Write-Host "[+] Disk Usage:" -ForegroundColor Green
    $disk = Get-PSDrive C | Select-Object @{Name="PercentFree";Expression={[math]::Round($_.Free/$_.Used*100)}}
    Write-Host "    Free: $($disk.PercentFree)%" -ForegroundColor Yellow
    
    Write-Host "`n[+] Network Status:" -NoNewline -ForegroundColor Green
    $ping = Test-Connection -ComputerName google.com -Count 1 -Quiet
    if ($ping) {
        Write-Host " Online 🟢" -ForegroundColor Green
    } else {
        Write-Host " Offline 🔴" -ForegroundColor Red
    }
    
    Read-Host "`n[*] Press Enter to continue"
}

# ========================================
# PERFORMANCE MONITOR
# ========================================

function Show-PerformanceMonitor {
    Clear-Host
    Write-Host "`n╔════════════════════════════════════╗" -ForegroundColor Cyan
    Write-Host "║   📊 PERFORMANCE MONITOR           ║" -ForegroundColor Cyan
    Write-Host "╚════════════════════════════════════╝`n" -ForegroundColor Cyan
    
    Write-Host "[+] CPU Usage:" -ForegroundColor Green
    $cpu = Get-WmiObject Win32_Processor | Select-Object -ExpandProperty LoadPercentage
    Write-Host "    $cpu%" -ForegroundColor Yellow
    
    Write-Host "`n[+] Memory Usage:" -ForegroundColor Green
    $ram = Get-WmiObject Win32_OperatingSystem | Select-Object @{Name="PercentMemory";Expression={[math]::Round((($_.TotalVisibleMemorySize-$_.FreePhysicalMemory)/$_.TotalVisibleMemorySize)*100)}}
    Write-Host "    $($ram.PercentMemory)%" -ForegroundColor Yellow
    
    Read-Host "`n[*] Press Enter to continue"
}

# ========================================
# ABOUT
# ========================================

function Show-About {
    Clear-Host
    Write-Host "`n╔════════════════════════════════════╗" -ForegroundColor Cyan
    Write-Host "║   ℹ️  ABOUT ARTHUR SHOP             ║" -ForegroundColor Cyan
    Write-Host "╚════════════════════════════════════╝`n" -ForegroundColor Cyan
    
    Write-Host "Program Name: " -NoNewline -ForegroundColor Green
    Write-Host "Arthur Shop v1.0 Pro" -ForegroundColor Yellow
    
    Write-Host "Developer: " -NoNewline -ForegroundColor Green
    Write-Host "Arthur" -ForegroundColor Yellow
    
    Write-Host "Repository: " -NoNewline -ForegroundColor Green
    Write-Host "https://github.com/daophet123n0-ui/Arthur_Shopp" -ForegroundColor Yellow
    
    Write-Host "Language: " -NoNewline -ForegroundColor Green
    Write-Host "PowerShell" -ForegroundColor Yellow
    
    Write-Host "Discord Channel: " -NoNewline -ForegroundColor Green
    Write-Host "https://discord.com/channels/1488127212262785107/1520977401520062474" -ForegroundColor Yellow
    
    Write-Host ""
    Write-Host "One-liner Command:" -ForegroundColor Cyan
    Write-Host 'powershell -Command "iex (irm ''https://raw.githubusercontent.com/daophet123n0-ui/Arthur_Shopp/main/arthur_shop.ps1'')"' -ForegroundColor Green
    
    Read-Host "`n[*] Press Enter to continue"
}

# ========================================
# Arthur Shop - Interactive Menu Program
# PowerShell Console Application
# ========================================

# Clear screen
Clear-Host

# Color functions
function Write-Title {
    param([string]$Text)
    Write-Host "`n" -ForegroundColor Green
    Write-Host "╔════════════════════════════════════╗" -ForegroundColor Cyan
    Write-Host "║  $Text" -ForegroundColor Cyan
    Write-Host "╚════════════════════════════════════╝" -ForegroundColor Cyan
    Write-Host ""
}

function Write-Menu {
    param([string]$Text)
    Write-Host $Text -ForegroundColor Yellow
}

# ========================================
# TO-DO LIST FUNCTIONS
# ========================================

$todoFile = "$env:USERPROFILE\Desktop\todos.txt"

function Show-TodoMenu {
    while($true) {
        Write-Title "📝 TO-DO LIST MANAGER"
        Write-Menu "1. View all tasks"
        Write-Menu "2. Add new task"
        Write-Menu "3. Complete task"
        Write-Menu "4. Delete task"
        Write-Menu "5. Back to main menu"
        Write-Host ""
        
        $choice = Read-Host "Choose option (1-5)"
        
        switch($choice) {
            "1" { Show-Tasks }
            "2" { Add-Task }
            "3" { Complete-Task }
            "4" { Delete-Task }
            "5" { return }
            default { Write-Host "Invalid option!" -ForegroundColor Red }
        }
    }
}

function Show-Tasks {
    Write-Title "📋 YOUR TASKS"
    
    if (-not (Test-Path $todoFile)) {
        Write-Host "No tasks yet! Add one to get started." -ForegroundColor Gray
        Read-Host "Press Enter to continue"
        return
    }
    
    $tasks = Get-Content $todoFile
    $i = 1
    foreach ($task in $tasks) {
        Write-Host "$i. $task" -ForegroundColor Green
        $i++
    }
    Read-Host "Press Enter to continue"
}

function Add-Task {
    Write-Title "➕ ADD NEW TASK"
    $task = Read-Host "Enter task description"
    
    if ([string]::IsNullOrWhiteSpace($task)) {
        Write-Host "Task cannot be empty!" -ForegroundColor Red
        Read-Host "Press Enter to continue"
        return
    }
    
    Add-Content -Path $todoFile -Value "⏳ $task"
    Write-Host "✅ Task added successfully!" -ForegroundColor Green
    Read-Host "Press Enter to continue"
}

function Complete-Task {
    Write-Title "✅ COMPLETE TASK"
    
    if (-not (Test-Path $todoFile)) {
        Write-Host "No tasks to complete!" -ForegroundColor Gray
        Read-Host "Press Enter to continue"
        return
    }
    
    $tasks = Get-Content $todoFile
    $i = 1
    foreach ($task in $tasks) {
        Write-Host "$i. $task" -ForegroundColor Yellow
        $i++
    }
    
    $taskNum = Read-Host "Enter task number to complete"
    
    if ($taskNum -gt 0 -and $taskNum -le $tasks.Count) {
        $tasks[$taskNum - 1] = $tasks[$taskNum - 1] -replace "⏳", "✅"
        $tasks | Set-Content $todoFile
        Write-Host "✅ Task marked as complete!" -ForegroundColor Green
    } else {
        Write-Host "Invalid task number!" -ForegroundColor Red
    }
    
    Read-Host "Press Enter to continue"
}

function Delete-Task {
    Write-Title "🗑️ DELETE TASK"
    
    if (-not (Test-Path $todoFile)) {
        Write-Host "No tasks to delete!" -ForegroundColor Gray
        Read-Host "Press Enter to continue"
        return
    }
    
    $tasks = Get-Content $todoFile
    $i = 1
    foreach ($task in $tasks) {
        Write-Host "$i. $task" -ForegroundColor Yellow
        $i++
    }
    
    $taskNum = Read-Host "Enter task number to delete"
    
    if ($taskNum -gt 0 -and $taskNum -le $tasks.Count) {
        $tasks = $tasks | Where-Object { $_ -ne $tasks[$taskNum - 1] }
        $tasks | Set-Content $todoFile
        Write-Host "✅ Task deleted!" -ForegroundColor Green
    } else {
        Write-Host "Invalid task number!" -ForegroundColor Red
    }
    
    Read-Host "Press Enter to continue"
}

# ========================================
# CALCULATOR FUNCTIONS
# ========================================

function Show-Calculator {
    while($true) {
        Write-Title "🧮 CALCULATOR"
        Write-Menu "1. Add"
        Write-Menu "2. Subtract"
        Write-Menu "3. Multiply"
        Write-Menu "4. Divide"
        Write-Menu "5. Back to main menu"
        Write-Host ""
        
        $choice = Read-Host "Choose operation (1-5)"
        
        switch($choice) {
            "1" { Calc-Add }
            "2" { Calc-Subtract }
            "3" { Calc-Multiply }
            "4" { Calc-Divide }
            "5" { return }
            default { Write-Host "Invalid option!" -ForegroundColor Red }
        }
    }
}

function Calc-Add {
    Write-Title "➕ ADDITION"
    $num1 = Read-Host "Enter first number"
    $num2 = Read-Host "Enter second number"
    $result = [double]$num1 + [double]$num2
    Write-Host "Result: $num1 + $num2 = $result" -ForegroundColor Green
    Read-Host "Press Enter to continue"
}

function Calc-Subtract {
    Write-Title "➖ SUBTRACTION"
    $num1 = Read-Host "Enter first number"
    $num2 = Read-Host "Enter second number"
    $result = [double]$num1 - [double]$num2
    Write-Host "Result: $num1 - $num2 = $result" -ForegroundColor Green
    Read-Host "Press Enter to continue"
}

function Calc-Multiply {
    Write-Title "✖️ MULTIPLICATION"
    $num1 = Read-Host "Enter first number"
    $num2 = Read-Host "Enter second number"
    $result = [double]$num1 * [double]$num2
    Write-Host "Result: $num1 × $num2 = $result" -ForegroundColor Green
    Read-Host "Press Enter to continue"
}

function Calc-Divide {
    Write-Title "➗ DIVISION"
    $num1 = Read-Host "Enter first number"
    $num2 = Read-Host "Enter second number"
    
    if ([double]$num2 -eq 0) {
        Write-Host "Cannot divide by zero!" -ForegroundColor Red
    } else {
        $result = [double]$num1 / [double]$num2
        Write-Host "Result: $num1 ÷ $num2 = $result" -ForegroundColor Green
    }
    
    Read-Host "Press Enter to continue"
}

# ========================================
# SYSTEM INFO FUNCTIONS
# ========================================

function Show-SystemInfo {
    Write-Title "💻 SYSTEM INFORMATION"
    
    Write-Host "Computer Name: " -NoNewline -ForegroundColor Cyan
    Write-Host (Get-ComputerName) -ForegroundColor Green
    
    Write-Host "OS: " -NoNewline -ForegroundColor Cyan
    Write-Host ([System.Environment]::OSVersion.VersionString) -ForegroundColor Green
    
    Write-Host "Processor: " -NoNewline -ForegroundColor Cyan
    Write-Host (Get-WmiObject Win32_Processor).Name -ForegroundColor Green
    
    Write-Host "RAM: " -NoNewline -ForegroundColor Cyan
    $ram = [math]::Round((Get-WmiObject Win32_ComputerSystem).TotalPhysicalMemory / 1GB, 2)
    Write-Host "$ram GB" -ForegroundColor Green
    
    Write-Host "Current User: " -NoNewline -ForegroundColor Cyan
    Write-Host ([System.Security.Principal.WindowsIdentity]::GetCurrent().Name) -ForegroundColor Green
    
    Read-Host "Press Enter to continue"
}

# ========================================
# MAIN MENU
# ========================================

function Show-MainMenu {
    while($true) {
        Clear-Host
        Write-Host ""
        Write-Host "╔════════════════════════════════════╗" -ForegroundColor Magenta
        Write-Host "║   🎯 ARTHUR SHOP - MAIN MENU 🎯   ║" -ForegroundColor Magenta
        Write-Host "╚════════════════════════════════════╝" -ForegroundColor Magenta
        Write-Host ""
        
        Write-Menu "1. 📝 To-Do List Manager"
        Write-Menu "2. 🧮 Calculator"
        Write-Menu "3. 💻 System Information"
        Write-Menu "4. 🚪 Exit"
        Write-Host ""
        
        $choice = Read-Host "Choose option (1-4)"
        
        switch($choice) {
            "1" { Show-TodoMenu }
            "2" { Show-Calculator }
            "3" { Show-SystemInfo }
            "4" { 
                Write-Host "`nGoodbye! 👋" -ForegroundColor Green
                exit 
            }
            default { 
                Write-Host "Invalid option! Please try again." -ForegroundColor Red
                Read-Host "Press Enter to continue"
            }
        }
    }
}

# ========================================
# RUN PROGRAM
# ========================================

Show-MainMenu

#Persistent
Global IsRunning := False ; Flag to indicate if the function is already running
Global Step := 1          ; Step counter to track the pattern
SetTimer, SimulateRightArrow, 1000 ; Check every second
Return

SimulateRightArrow:
    If (IsRunning) ; If the script is already running, do nothing
        Return
    
    IsRunning := True ; Set the flag to indicate the script is running

    If (Step = 1) {
        Send, {Right} ; Press Right Arrow
        Step := 2
        Sleep, 10000 ; Wait 10 seconds
    } Else If (Step = 2) {
        Send, {Right} ; Press Right Arrow
        Step := 3
        Sleep, 10000 ; Wait 10 seconds
    } Else If (Step = 3) {
        Send, {Right} ; Press Right Arrow
        Step := 1
        Sleep, 5000 ; Wait 5 seconds
    }

    IsRunning := False ; Reset the flag after the function completes
Return

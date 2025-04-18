# Проверка, запущен ли процесс assistant.exe
$process = Get-Process -Name "assistant" -ErrorAction SilentlyContinue

if ($process) {
    Write-Output "Процесс assistant.exe найден. Завершаем..."
    Stop-Process -Name "assistant" -Force
    Write-Output "Процесс assistant.exe был завершён."
} else {
    Write-Output "Процесс assistant.exe не найден. Ничего не делаем."
}

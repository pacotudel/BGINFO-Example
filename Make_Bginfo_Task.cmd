@echo off
:: This script make for you a task locally to run the bginfo script every hour starting at 00H00m00s
@SchTasks /Create /SC HOURLY /TN BGINFO /TR C:\bin\bginfo\bginfo.cmd /ST 00:00
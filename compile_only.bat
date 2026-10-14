@echo off
setlocal
cd /d "%~dp0"
where g++ >nul 2>nul
if errorlevel 1 (
  echo ERROR: g++ was not found. Install a C++ compiler and add it to PATH.
  pause
  exit /b 1
)
if not exist Executable mkdir Executable
g++ -std=c++17 -Wall -Wextra Source\main.cpp Source\Person.cpp Source\Passenger.cpp Source\Route.cpp Source\Bus.cpp Source\Ticket.cpp Source\FileManager.cpp Source\BusSystem.cpp -o Executable\BusTicketBooking.exe
if errorlevel 1 (echo Compilation failed.) else (echo Build successful: Executable\BusTicketBooking.exe)
pause

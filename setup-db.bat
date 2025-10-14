@echo off
setlocal enabledelayedexpansion

echo 🎮 Pokemon Tracker Database Setup
echo ==================================

REM Check if .env.local exists
if not exist .env.local (
    echo ❌ .env.local not found
    echo.
    echo 📋 Setup Instructions:
    echo 1. Copy .env.example to .env.local
    echo 2. Add your Supabase project URL and service role key
    echo 3. Run this script again
    echo.
    echo Example:
    echo   copy .env.example .env.local
    echo   REM Edit .env.local with your Supabase credentials
    echo   setup-db.bat
    exit /b 1
)

echo ✅ Found .env.local

REM Load environment variables from .env.local
for /f "usebackq delims=" %%i in (.env.local) do (
    set line=%%i
    if not "!line:~0,1!"=="#" (
        if not "!line!"=="" (
            for /f "tokens=1,2 delims==" %%a in ("!line!") do (
                set %%a=%%b
            )
        )
    )
)

REM Check required environment variables
if "%NEXT_PUBLIC_SUPABASE_URL%"=="" (
    echo ❌ Missing NEXT_PUBLIC_SUPABASE_URL in .env.local
    exit /b 1
)
if "%SUPABASE_SERVICE_ROLE_KEY%"=="" (
    echo ❌ Missing SUPABASE_SERVICE_ROLE_KEY in .env.local
    exit /b 1
)

echo ✅ Environment variables loaded

REM Install dependencies if needed
if not exist node_modules (
    echo 📦 Installing dependencies...
    npm install
    if errorlevel 1 (
        echo ❌ Failed to install dependencies
        exit /b 1
    )
)

echo.
echo 🚀 Starting database setup process...

REM Step 1: Run migrations
echo.
echo 📊 Step 1: Running database migrations...
npm run db:migrate

if errorlevel 1 (
    echo ❌ Migration failed. Please check your Supabase configuration.
    exit /b 1
)

REM Step 2: Manual instruction for seed data
echo.
echo 🎮 Step 2: Seed data setup...
echo.
echo ✅ Migrations completed successfully!
echo.
echo 📝 Next: Load the seed data in Supabase SQL Editor:
echo    1. Go to your Supabase project dashboard
echo    2. Navigate to SQL Editor
echo    3. Run these files in order:
echo       • database/seed/001_static_data_gen1.sql
echo       • database/seed/002_pokemon_gen1.sql  
echo       • database/seed/003_moves_gen1.sql
echo.
echo 💡 Tip: You can copy/paste each file content into the SQL Editor

echo.
echo 🎉 Database migration setup complete!
echo.
echo Next steps:
echo • Load seed data via Supabase SQL Editor (see above)
echo • Start the development server: npm run dev
echo • Visit your Pokemon tracker and create a playthrough

pause
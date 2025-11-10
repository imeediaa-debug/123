@echo off
chcp 65001 >nul
title Google Reviews System - Starter

echo ========================================
echo نظام مراجعات جوجل - Google Reviews System
echo ========================================
echo.

echo جاري تشغيل الخادم والخادم الأمامي...
echo.

REM Start backend server
start "Backend Server" powershell -NoExit -Command "cd backend && npm run dev"

REM Wait a bit for backend to start
timeout /t 3 /nobreak >nul

REM Start frontend development server
start "Frontend Server" powershell -NoExit -Command "cd frontend && npm run dev"

echo.
echo ✅ تم تشغيل النظام بنجاح!
echo.
echo 📍 روابط التطبيق:
echo - واجهة المستخدم: http://localhost:3000
echo - الخادم: http://localhost:5000
echo.
echo 🔑 بيانات الدخول الافتراضية:
echo - اسم المستخدم: admin
echo - كلمة المرور: admin
echo.
echo ⚠️ ملاحظة: قد تستغرق عملية التشغيل الأولى بعض الوقت
echo.
pause
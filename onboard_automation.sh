#!/bin/bash

# Bank-X ADB Onboarding & Card Ordering Automation Script
# Targets: emulator-5554

ADB="adb -s 57281FDCR000J1"
DUMP_FILE="/tmp/window_dump.xml"

# Check if target emulator is online
if ! $ADB get-state >/dev/null 2>&1; then
  echo "Error: emulator-5554 is not connected or running. Please make sure the emulator is started."
  exit 1
fi

hide_keyboard_if_shown() {
  if $ADB shell dumpsys input_method | grep -q "mInputShown=true"; then
    echo "Dismissing software keyboard..."
    $ADB shell input keyevent 4
    sleep 1.5
  fi
}

click_element() {
  local search=$1
  local retries=15
  local bounds=""
  
  while [ $retries -gt 0 ] && [ -z "$bounds" ]; do
    $ADB shell uiautomator dump /sdcard/window_dump.xml >/dev/null 2>&1
    $ADB pull /sdcard/window_dump.xml $DUMP_FILE >/dev/null 2>&1
    
    bounds=$(grep -o -E "text=\"$search\"[^\>]*bounds=\"[^\"]*\"|content-desc=\"$search\"[^\>]*bounds=\"[^\"]*\"" $DUMP_FILE | grep -o -E "bounds=\"[^\"]*\"" | cut -d'"' -f2 | head -n 1)
    
    if [ -z "$bounds" ]; then
      retries=$((retries - 1))
      [ $retries -gt 0 ] && sleep 1
    fi
  done

  if [ ! -z "$bounds" ]; then
    local x1=$(echo $bounds | cut -d'[' -f2 | cut -d',' -f1)
    local y1=$(echo $bounds | cut -d',' -f2 | cut -d']' -f1)
    local x2=$(echo $bounds | cut -d'[' -f3 | cut -d',' -f1)
    local y2=$(echo $bounds | cut -d',' -f3 | cut -d']' -f1)
    
    local cx=$(( (x1 + x2) / 2 ))
    local cy=$(( (y1 + y2) / 2 ))
    
    echo "Found '$search' at ($cx, $cy). Clicking..."
    $ADB shell input tap $cx $cy
  else
    echo "Warning: Element '$search' not found after retries."
  fi
}

click_element_or_tap() {
  local search=$1
  local fallback_x=$2
  local fallback_y=$3
  local retries=15
  local bounds=""
  
  while [ $retries -gt 0 ] && [ -z "$bounds" ]; do
    $ADB shell uiautomator dump /sdcard/window_dump.xml >/dev/null 2>&1
    $ADB pull /sdcard/window_dump.xml $DUMP_FILE >/dev/null 2>&1
    bounds=$(grep -o -E "text=\"$search\"[^\>]*bounds=\"[^\"]*\"|content-desc=\"$search\"[^\>]*bounds=\"[^\"]*\"" $DUMP_FILE | grep -o -E "bounds=\"[^\"]*\"" | cut -d'"' -f2 | head -n 1)
    
    if [ -z "$bounds" ]; then
      sleep 1
      retries=$((retries-1))
    fi
  done
  
  if [ ! -z "$bounds" ]; then
    local x1=$(echo $bounds | cut -d'[' -f2 | cut -d',' -f1)
    local y1=$(echo $bounds | cut -d',' -f2 | cut -d']' -f1)
    local x2=$(echo $bounds | cut -d'[' -f3 | cut -d',' -f1)
    local y2=$(echo $bounds | cut -d',' -f3 | cut -d']' -f1)
    local cx=$(( (x1 + x2) / 2 ))
    local cy=$(( (y1 + y2) / 2 ))
    echo "Found '$search' at ($cx, $cy). Clicking..."
    $ADB shell input tap $cx $cy
  else
    echo "Element '$search' not found after retries. Tapping fallback coordinate ($fallback_x, $fallback_y)..."
    $ADB shell input tap $fallback_x $fallback_y
  fi
}

click_keypad_confirm() {
  $ADB shell uiautomator dump /sdcard/window_dump.xml >/dev/null 2>&1
  $ADB pull /sdcard/window_dump.xml $DUMP_FILE >/dev/null 2>&1
  
  local bounds=$(grep -o -E "text=\"0\"[^\>]*bounds=\"[^\"]*\"|content-desc=\"0\"[^\>]*bounds=\"[^\"]*\"" $DUMP_FILE | grep -o -E "bounds=\"[^\"]*\"" | cut -d'"' -f2 | head -n 1)
  
  if [ ! -z "$bounds" ]; then
    local x1=$(echo $bounds | cut -d'[' -f2 | cut -d',' -f1)
    local y1=$(echo $bounds | cut -d',' -f2 | cut -d']' -f1)
    local x2=$(echo $bounds | cut -d'[' -f3 | cut -d',' -f1)
    local y2=$(echo $bounds | cut -d',' -f3 | cut -d']' -f1)
    local cx=$(( (x1 + x2) / 2 ))
    local cy=$(( (y1 + y2) / 2 ))
    
    local px=$(( cx - 318 ))
    echo "Found '0' at ($cx, $cy). Clicking keypad confirm at ($px, $cy)..."
    $ADB shell input tap $px $cy
  else
    echo "Warning: Keypad '0' not found. Tapping fallback confirm at (222, 1643)..."
    $ADB shell input tap 222 1643
  fi
}

MODE=$1
if [ "$MODE" != "cold" ] && [ "$MODE" != "hot" ] && [ "$MODE" != "--cold" ] && [ "$MODE" != "--hot" ]; then
  echo "Usage: ./onboard_automation.sh [cold|hot]"
  exit 1
fi

echo "===================================================="
echo " Starting Bank-X ADB Automation"
echo " Target Device: emulator-5554"
echo " Mode: $MODE"
echo "===================================================="

if [ "$MODE" = "cold" ] || [ "$MODE" = "--cold" ]; then
  echo "[1/14] Clearing app data (Fresh Onboarding)..."
  $ADB shell pm clear com.banx.financial
  sleep 2
  echo "[2/14] Starting Bank-X App..."
  $ADB shell am start -n com.banx.financial/com.banx.app.MainActivity
  sleep 6

  echo "[3/14] Entering phone number (09123456789)..."
  $ADB shell input tap 540 315
  sleep 1
  $ADB shell input text "09123456789"
  sleep 1
  hide_keyboard_if_shown
  click_element_or_tap "تأیید و ادامه" 540 2200
  sleep 4

  echo "[4/14] Entering OTP verification code (12345)..."
  $ADB shell input text "12345"
  sleep 4

  echo "[5/14] Entering identity details (0011111111 / 1380/01/01)..."
  $ADB shell input tap 540 315
  sleep 1
  $ADB shell input text "0011111111"
  sleep 1
  hide_keyboard_if_shown
  $ADB shell input tap 540 483
  sleep 1
  $ADB shell input text "13800101"
  sleep 1
  hide_keyboard_if_shown
  click_element_or_tap "تأیید و ادامه" 540 2200
  sleep 4

  echo "[5.5/14] Entering second OTP verification code (12345)..."
  $ADB shell input text "12345"
  sleep 4

  echo "[6/14] Registering Passcode (1234)..."
  click_element "1"
  sleep 0.5
  click_element "2"
  sleep 0.5
  click_element "3"
  sleep 0.5
  click_element "4"
  sleep 1.5
  click_keypad_confirm
  sleep 4

  echo "[7/14] Confirming registered Passcode (1234)..."
  click_element "1"
  sleep 0.5
  click_element "2"
  sleep 0.5
  click_element "3"
  sleep 0.5
  click_element "4"
  sleep 1.5
  click_keypad_confirm
  sleep 4

  echo "[8/14] Skipping Biometrics prompt..."
  click_element_or_tap "تمایل ندارم" 800 2200
  sleep 4

else
  echo "[1/4] Restarting Bank-X App..."
  $ADB shell am force-stop com.banx.financial
  sleep 1
  $ADB shell am start -n com.banx.financial/com.banx.app.MainActivity
  sleep 6

  echo "[2/4] Logging in with Passcode (1234)..."
  click_element "1"
  sleep 0.5
  click_element "2"
  sleep 0.5
  click_element "3"
  sleep 0.5
  click_element "4"
  sleep 0.5
  click_keypad_confirm
  sleep 5
fi

echo "[KYC 1] Starting Video KYC flow..."
click_element_or_tap "شروع احراز هویت ویدیویی" 540 2200
sleep 3

echo "[KYC 2] Confirming Camera and Audio Permissions..."
$ADB shell pm grant com.banx.financial android.permission.CAMERA
$ADB shell pm grant com.banx.financial android.permission.RECORD_AUDIO
sleep 1

echo "[KYC 3] Recording verification video (3s)..."
$ADB shell input tap 540 2150
sleep 3.5
$ADB shell input tap 540 2150
sleep 8.5

echo "[Card 1] Selecting Free Metal Card..."
click_element_or_tap "سفارش رایگان کارت فلزی" 540 2200
sleep 8.5

echo "[Address 1] Submitting Postal Code (1411111111)..."
sleep 4.0
$ADB shell input text "1411111111"
sleep 1
hide_keyboard_if_shown
click_element_or_tap "بررسی کد پستی" 540 2200
sleep 4

echo "[Address 2] Confirming delivery address details..."
hide_keyboard_if_shown
click_element_or_tap "تأیید و ادامه" 540 2200
sleep 4

echo "[Schedule] Confirming card delivery time slot..."
click_element_or_tap "تأیید زمان و مکان دریافت کارت" 540 2200
sleep 4

echo "===================================================="
echo " Automation Finished Successfully!"
echo " Bank-X App should now be on the Dashboard (/main/0)"
echo "===================================================="

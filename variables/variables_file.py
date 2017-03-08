# -*- coding: utf-8 -*-
"""
作者: 欧光乾
日期: 3/1/17
"""
import os

APPIUM_URL = 'http://localhost:4723/wd/hub'
PLATFORM_NAME = 'Android'
DEVICE_NAME = 'DU2TAN1486023904'
APP_PATH = os.path.join(os.path.dirname(__file__), '../testApp/calc.apk')
APP_PACKAGE = 'com.android.calculator2'
APP_ACTIVITY = '.Calculator'

# 设置启动参数
if APP_ACTIVITY and APP_PACKAGE:
    APP_PATH = None
else:
    APP_PACKAGE = None
    APP_ACTIVITY = None


__all__ = ['APPIUM_URL', 'PLATFORM_NAME', 'DEVICE_NAME', 'APP_PATH', 'APP_ACTIVITY', 'APP_PACKAGE']

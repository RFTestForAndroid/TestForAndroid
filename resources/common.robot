# -*- coding: robot -*-
*** Settings ***
Documentation      封装公共的用户关键字
Library    AppiumLibrary
Variables    ../variables/variables_file.py

*** Keywords ***
打开应用
    [Documentation]    打开应用
    open application    ${APPIUM_URL}    platformName=${PLATFORM_NAME}
    ...    deviceName=${DEVICE_NAME}    app=${APP_PATH}
    ...    appPackage=${APP_PACKAGE}    appActivity=${APP_ACTIVITY}

延时
    [Documentation]    等待时间
    ...
    ...    参数信息:
    ...    time:    时间参数， 格式为：2 minutes 2 seconds, 42, 1.5, 10s
    [Arguments]    ${time}=5s
    sleep    ${time}

获取屏幕截图
    [Documentation]    获取界面截图
    ...
    ...    参数信息:
    ...    file_name:    截图保存文件名
    [Arguments]    ${file_name}=None
    capture page screenshot    ../screenshots${/}${file_name}

关闭应用
    close application


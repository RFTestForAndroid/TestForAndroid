# -*- coding: robot -*-
*** Settings ***
Documentation      封装公共的用户关键字
Library    AppiumLibrary
Variables    ../variables/variables_file.py


*** Keywords ***
打开应用
    [Documentation]    打开应用
    set global variable    ${DRIVER}    ${None}
    ${DRIVER}=    open application    ${APPIUM_URL}    platformName=${PLATFORM_NAME}
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
    ${png_name}=    get time    epoch
    capture page screenshot    ../reports${/}screenshots${/}${png_name}.png

关闭应用
    close application

用例后处理
    [Documentation]    判断用例状态是否失败，失败截图处理
    Log    ${TEST STATUS}
    run keyword if    '${TEST STATUS}'=='FAIL'    获取屏幕截图

验证存在文本
    [Documentation]  验证界面中包含指定的文本信息，不包含报错处理
    ...
    ...    参数信息：
    ...    text:    指定文本信息
    [Arguments]    ${text}
    page should contain text    ${text}

等待文本显示
    [Documentation]  等待界面中指定的文本展示
    ...
    ...    参数信息：
    ...    text:    指定文本信息
    [Arguments]    ${text}    ${timeout}=5000
    wait until page contains    ${text}    timeout=${timeout}

验证存在元素
    [Documentation]  验证界面中包含指定的元素信息，不包含报错处理
    ...
    ...    参数信息：
    ...    text:    指定元素信息
    [Arguments]    ${locator}
    page should contain element    ${locator}

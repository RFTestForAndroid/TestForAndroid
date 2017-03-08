# -*- coding:robot -*-
*** Settings ***
Documentation      测试而已
Resource    ../resources/all_resource.robot
Suite Setup    打开应用
Suite Teardown    关闭应用

*** Test Cases ***
测试RF和APPIUM的结合
    [Documentation]    测试是否能和移动设备交互
    延时    10s
    获取屏幕截图    main_page.png


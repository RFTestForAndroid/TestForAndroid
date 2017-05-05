# -*- coding:robot -*-
*** Settings ***
Documentation      测试应用Demo
Resource   ../resources/common.robot

Suite Setup    打开应用
Suite Teardown    关闭应用

Test Teardown    用例后处理

*** Test Cases ***
验证应用主界面元素-成功例子
    [Documentation]    验证应用主界面元素-成功例子
    等待文本显示   首页    timeout=15000
    验证存在文本    首页
    验证存在文本    分类
    验证存在文本    发现
    验证存在文本    购物袋
    验证存在文本    我的
    验证存在文本    德基在线
    验证存在元素   android=UiSelector().resourceId("com.dejionline.deji:id/btn_right")

验证应用主界面元素-失败例子
    [Documentation]    验证应用主界面元素-失败例子
    等待文本显示   首页
    验证存在文本    主页


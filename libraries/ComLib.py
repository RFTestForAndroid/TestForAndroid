# -*- coding: utf-8 -*-
"""
作者: 欧光乾
日期: 3/8/17
"""
from uiautomator import device as d

class ComLib:
    def convert_str_to_list(self, txt):
        """
        字符串转换为列表
        :param txt:
        :return:
        """
        var_list = list()
        for c in txt:
            var_list.append(c)

        return var_list



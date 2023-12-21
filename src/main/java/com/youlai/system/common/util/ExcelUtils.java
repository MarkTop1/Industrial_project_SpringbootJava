package com.youlai.system.common.util;

import com.alibaba.excel.EasyExcel;
import com.youlai.system.plugin.easyexcel.MyAnalysisEventListener;

import java.io.InputStream;

/**
 * Excel 工具类
 *
 * @author Rzm
 * @since 2023/12/12
 */
public class ExcelUtils {

    public static <T> String importExcel(InputStream is, Class clazz, MyAnalysisEventListener<T> listener) {
        EasyExcel.read(is, clazz, listener).sheet().doRead();
        return listener.getMsg();
    }
}

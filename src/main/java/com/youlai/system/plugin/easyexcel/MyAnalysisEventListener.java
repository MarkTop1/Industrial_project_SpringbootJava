package com.youlai.system.plugin.easyexcel;

import com.alibaba.excel.event.AnalysisEventListener;

/**
 * 自定义解析结果监听器
 *
 * @author Rzm
 * @since 2023/12/12
 */
public abstract class MyAnalysisEventListener<T> extends AnalysisEventListener<T> {

    private String msg;
    public abstract String getMsg();
}

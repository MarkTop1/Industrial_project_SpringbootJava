//package com.youlai.system.service.impl;
//
//import com.baomidou.mybatisplus.core.conditions.Wrapper;
//import com.baomidou.mybatisplus.core.conditions.query.LambdaQueryWrapper;
//import com.baomidou.mybatisplus.core.mapper.BaseMapper;
//import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
//import com.youlai.system.mapper.SysIndexMapper;
//import com.youlai.system.model.entity.SysIndex;
//import com.youlai.system.model.entity.SysUser;
//import com.youlai.system.model.form.DictForm;
//import com.youlai.system.model.form.UserForm;
//import com.youlai.system.service.*;
//import lombok.RequiredArgsConstructor;
//import org.springframework.stereotype.Service;
//
//import java.util.Collection;
//import java.util.Map;
//import java.util.Optional;
//import java.util.function.Function;
//
///**
// * 主页业务实现类
// *
// * @author Rzm
// * @since 2023/12/12
// */
//@Service
//@RequiredArgsConstructor
//public class SysIndexServiceImpl implements SysIndexService {
//
//    private final SysIndexService indexService;
//
//    @Override
//    public UserForm getIndexFormData(Long index_id) {
//        return null;
//    }
//
//    @Override
//    public DictForm entity2Form(SysIndex entity) {
//        return null;
//    }
//
//    /**
//     * 获取主页数据详情
//     *
//     * @param
//     * @return
//     */
//    @Override
//    public DictForm getDictForm(Long index_id) {
//        // 获取entity
//        SysIndex entity = this.getOne(new LambdaQueryWrapper<SysIndex>()
//                .eq(SysIndex::getIndex_id, index_id)
//                .select(
//                        SysIndex::getIndex_id,
//                        SysIndex::getIndex_xm,
//                        SysIndex::getIndex_wcl,
//                        SysIndex::getIndex_cgq,
//                        SysIndex::getIndex_bc
//                ));
//
//        // 实体转换
//        DictForm dictForm = indexService.entity2Form(entity);
//        return dictForm;
//    }
//
//    @Override
//    public boolean saveBatch(Collection<SysUser> entityList, int batchSize) {
//        return false;
//    }
//
//    @Override
//    public boolean saveOrUpdateBatch(Collection<SysUser> entityList, int batchSize) {
//        return false;
//    }
//
//    @Override
//    public boolean updateBatchById(Collection<SysUser> entityList, int batchSize) {
//        return false;
//    }
//
//    @Override
//    public boolean saveOrUpdate(SysUser entity) {
//        return false;
//    }
//
//    @Override
//    public SysUser getOne(Wrapper<SysUser> queryWrapper, boolean throwEx) {
//        return null;
//    }
//
//    @Override
//    public Optional<SysUser> getOneOpt(Wrapper<SysUser> queryWrapper, boolean throwEx) {
//        return Optional.empty();
//    }
//
//    @Override
//    public Map<String, Object> getMap(Wrapper<SysUser> queryWrapper) {
//        return null;
//    }
//
//    @Override
//    public <V> V getObj(Wrapper<SysUser> queryWrapper, Function<? super Object, V> mapper) {
//        return null;
//    }
//
//    @Override
//    public BaseMapper<SysUser> getBaseMapper() {
//        return null;
//    }
//
//    @Override
//    public Class<SysUser> getEntityClass() {
//        return null;
//    }
//}

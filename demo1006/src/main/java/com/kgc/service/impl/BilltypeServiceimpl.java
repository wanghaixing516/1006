package com.kgc.service.impl;

import com.kgc.mapper.Bill_typeMapper;
import com.kgc.pojo.Bill_type;
import com.kgc.service.BilltypeService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;
@Service("billtypeService")
public class BilltypeServiceimpl implements BilltypeService {
    @Resource
    Bill_typeMapper bill_typeMapper;

    @Override
    public List<Bill_type> selectAll() {
        List<Bill_type>types=bill_typeMapper.selectByExample(null);
        return types;
    }
}

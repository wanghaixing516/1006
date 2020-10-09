package com.kgc.service.impl;



import com.kgc.mapper.BillsMapper;
import com.kgc.pojo.Bills;
import com.kgc.pojo.BillsExample;
import com.kgc.service.billsService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.BitSet;
import java.util.List;

@Service("billsService")
public class billsServiceImpl implements billsService {
    @Resource
    BillsMapper billsMapper;


    @Override
    public int insert(Bills record) {
        return billsMapper.insert(record);
    }

    @Override
    public List<Bills> selectAll() {
        return billsMapper.selectByExample(null);
    }

    @Override
    public List<Bills> selectmohu(Integer typeId) {
        BillsExample example=new BillsExample();
        BillsExample.Criteria criteria = example.createCriteria();
        if(typeId==0){
            return billsMapper.selectByExample(null);
        }
        if(typeId!=0){
            criteria.andTypeIdEqualTo(typeId);
        }
        return billsMapper.selectByExample(example);
    }
}

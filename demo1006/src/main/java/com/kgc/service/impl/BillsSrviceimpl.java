package com.kgc.service.impl;

import com.kgc.mapper.Bill_typeMapper;
import com.kgc.mapper.BillsMapper;
import com.kgc.pojo.Bill_type;
import com.kgc.pojo.Bills;
import com.kgc.pojo.BillsExample;
import com.kgc.service.BillsSrvice;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;
@Service("billsSrvice")
public class BillsSrviceimpl implements BillsSrvice {
    @Resource
    BillsMapper billsMapper;
    @Resource
    Bill_typeMapper bill_typeMapper;
    @Override
    public List<Bills> selectBy(int typeId) {
        List<Bills> bills;
        BillsExample billsExample=new BillsExample();
        BillsExample.Criteria criteria=billsExample.createCriteria();
        if (typeId == 1) {
            bills = billsMapper.selectByExample(null);
        } else {
//            criteria.andTypeIdEqualTo(typeId);
            criteria.andTypeIdEqualTo(typeId);
            bills = billsMapper.selectByExample(billsExample);
        }
        /*   criteria.andBillTimeLessThanOrEqualTo(dbillTime);*/

        for (Bills bill : bills) {
            Bill_type billType = bill_typeMapper.selectByPrimaryKey(bill.getTypeId());
            bill.setTypeName(billType.getName());
        }

        return bills;
    }
}

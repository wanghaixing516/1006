package com.kgc.service;

import com.kgc.pojo.Bills;
import com.kgc.pojo.BillsExample;

import java.util.List;

public interface billsService {
    int insert(Bills record);

    List<Bills> selectAll();

    List<Bills> selectmohu(Integer typeId);
}

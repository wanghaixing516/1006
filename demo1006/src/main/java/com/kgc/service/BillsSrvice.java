package com.kgc.service;

import com.kgc.pojo.Bills;

import java.util.List;

public interface BillsSrvice {
    List<Bills> selectBy(int typeId);
}

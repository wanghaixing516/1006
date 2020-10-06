package com.kgc.controller;

import com.kgc.pojo.Bill_type;
import com.kgc.pojo.Bills;
import com.kgc.service.BillsSrvice;
import com.kgc.service.BilltypeService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.annotation.Resource;
import java.util.List;

@Controller
public class BillsController {
    @Resource
    BilltypeService billtypeService;

    @Resource
    BillsSrvice billsService;

    @RequestMapping
    public String toINdex(Model model,String typeId){
        if(typeId==""||typeId==null){
            typeId="1";
        }
        List<Bill_type> billtypes=billtypeService.selectAll();
        model.addAttribute("types",billtypes);

        List<Bills> bills=billsService.selectBy(Integer.valueOf(typeId));
        model.addAttribute("bills",bills);
        return "index";
    }
}

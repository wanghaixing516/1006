package com.kgc.controller;

import com.kgc.pojo.Bills;
import com.kgc.service.billsService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import javax.annotation.Resource;
import java.util.List;

@Controller
public class IndexController {

    @Resource
    billsService billsService;
    @RequestMapping("/")
    public String index(Model model){
        List<Bills> Blist=billsService.selectAll();
        model.addAttribute("bills",Blist);
        return "index2";
    }
    @RequestMapping("/mohu")
    public String mohu(Model model,
            @RequestParam(value = "typeId",required = false,defaultValue = "0")Integer typeId){
        List<Bills> blists=billsService.selectmohu(typeId);
        model.addAttribute("bills",blists);
        return "index2";
    }
    @RequestMapping("/add")
    public String add(){

        return "add";
    }
    @RequestMapping("/doadd")
    public String doadd(Bills bills){
        billsService.insert(bills);
        return "redirect:/";
    }
}

package com.mps.dashboardcharts.dashboardcharts.Controller.Web;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class WelcomeController {

    @RequestMapping("/")
    public ModelAndView showHomePage(){
        ModelAndView homePage = new ModelAndView("index");
        return homePage;
    }

    @RequestMapping("/agrodealer")
    public ModelAndView showAgroDealer(){
        ModelAndView showPage = new ModelAndView("agrodealer");
        return showPage;
    }

    @RequestMapping("/farmer")
    public ModelAndView showFarmer(){
        ModelAndView showPage = new ModelAndView("farmer");
        return showPage;
    }

    @RequestMapping("/finance")
    public ModelAndView showFinance(){
        ModelAndView showPage = new ModelAndView("finance");
        return showPage;
    }

    @RequestMapping("/transaction")
    public ModelAndView showTransaction(){
        ModelAndView showPage = new ModelAndView("transaction");
        return showPage;
    }

    @RequestMapping("/daz")
    public ModelAndView showDazCharts(){
        ModelAndView showPage = new ModelAndView("daz_home");
        return showPage;
    }

    @RequestMapping("mcc")
    public ModelAndView showMccCharts(){
        ModelAndView showPage = new ModelAndView("mcc");
        return showPage;
    }

    @RequestMapping("mp")
    public ModelAndView showMpCharts(){
        ModelAndView showPage = new ModelAndView("mp");
        return showPage;
    }

    @RequestMapping("daz_finance")
    public ModelAndView showDazFinanceCharts(){
        ModelAndView showPage = new ModelAndView("daz_finance");
        return showPage;
    }

    @RequestMapping("test")
    public ModelAndView showTestPage(){
        ModelAndView showPage = new ModelAndView("test");
        return showPage;
    }
}

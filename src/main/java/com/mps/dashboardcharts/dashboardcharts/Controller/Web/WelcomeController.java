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
}

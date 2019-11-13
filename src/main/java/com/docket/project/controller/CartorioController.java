package com.docket.project.controller;

import com.docket.project.dao.CartorioDAO;
import com.docket.project.model.Cartorio;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import java.util.ArrayList;
import java.util.List;

@Controller
public class CartorioController {

    @Autowired
    CartorioDAO dao;

    @RequestMapping("/")
    public ModelAndView home() {
        ModelAndView mv = new ModelAndView("home.jsp");
        List<Cartorio> cartorios = new ArrayList<>(dao.findAll());
        mv.addObject("list",cartorios);
        return mv;
    }

    @RequestMapping("/formCartorio")
    public String toForm() {
        return "formCartorio.jsp";
    }

    @RequestMapping("/procurarCartorio")
    public String toProcurarCartorio() { return "searchCartorio.jsp"; }

    @RequestMapping("/addCartorio")
    public String addCartorio(Cartorio cartorio) {
        dao.save(cartorio);
        return "/";
    }

    @RequestMapping("/deleteCartorio={id}")
    public String deleteCartorio(@PathVariable Integer id) {
        dao.deleteById(id);
        return "/";
    }

    @RequestMapping("/getCartorio")
    public ModelAndView getCartorio(@RequestParam String nome) {
        ModelAndView mv = new ModelAndView("showCartorio.jsp");
        List<Cartorio> cartorios = new ArrayList<>(dao.findByNomeContains(nome));
        System.out.println(cartorios);
        mv.addObject("list",cartorios);
        return mv;
    }
}

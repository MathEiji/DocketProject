package com.docket.project.controller;

import com.docket.project.dao.CartorioDAO;
import com.docket.project.model.Cartorio;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
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
        List<Cartorio> cartorios = new ArrayList<>();
        dao.findAll().forEach(cartorio -> {
            cartorios.add(cartorio);
        });
        mv.addObject("list",cartorios);
        return mv;
    }

    @RequestMapping("/formCartorio")
    public String toForm() {
        return "formCartorio.jsp";
    }

    @RequestMapping("/procurarCartorio")
    public String toProcurarCartorio() { return "searchCartorio.jsp"; }

    @RequestMapping("/deletarCartorio")
    public String toDeletarCartorio() { return "deletarCartorio.jsp"; }

    @RequestMapping("/addCartorio")
    public String addCartorio(Cartorio cartorio) {
        dao.save(cartorio);
        return "formCartorio.jsp";
    }

    @RequestMapping("/deleteCartorio")
    public String deleteCartorio(Cartorio cartorio) {
        dao.delete(cartorio);
        return "/";
    }

    @RequestMapping("/getCartorio")
    public ModelAndView getCartorio(@RequestParam Integer id) {
        ModelAndView mv = new ModelAndView("showCartorio.jsp");
        Cartorio cartorio = dao.findById(id).orElse(new Cartorio());
        mv.addObject(cartorio);
        return mv;
    }
}

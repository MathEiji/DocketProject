package com.docket.project.controller;

import com.docket.project.IDAO.IDAOCartorio;
import com.docket.project.model.Cartorio;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;

import java.util.ArrayList;
import java.util.List;

@RestController
public class CartorioController {

    @Autowired
    IDAOCartorio dao;

    @RequestMapping(value = "/cartorios", method = RequestMethod.GET)
    public List<Cartorio> getCartorios() {
        return new ArrayList<>(dao.findAll());
    }

    @RequestMapping("/")
    public ModelAndView home() {
        ModelAndView mv = new ModelAndView("home.jsp");
        List<Cartorio> cartorios = new ArrayList<>(dao.findAll());
        mv.addObject("list",cartorios);
        return mv;
    }

    @RequestMapping("/procurarCartorio")
    public ModelAndView toProcurarCartorio() { return new ModelAndView("searchCartorio.jsp"); }

    @RequestMapping("/addCartorio")
    public ModelAndView addCartorio(Cartorio cartorio) {
        dao.save(cartorio);
        return home();
    }

    @RequestMapping("/editCartorio={id}")
    public ModelAndView editCartorio(@PathVariable Integer id) {
        ModelAndView mv = new ModelAndView("formCartorio.jsp");
        Cartorio cartorio = new Cartorio();
        if (id != null) {
            cartorio = dao.findById(id).orElse(new Cartorio());
        }
        mv.addObject("ca", cartorio);
        return mv;
    }

    @RequestMapping("/deleteCartorio={id}")
    public ModelAndView deleteCartorio(@PathVariable Integer id) {
        dao.deleteById(id);
        return home();
    }

    @RequestMapping("/getCartorio")
    public ModelAndView getCartorio(@RequestParam String nome) {
        ModelAndView mv = new ModelAndView("showCartorio.jsp");
        List<Cartorio> cartorios = new ArrayList<>(dao.findByNomeContains(nome));
        mv.addObject("list",cartorios);
        return mv;
    }
}

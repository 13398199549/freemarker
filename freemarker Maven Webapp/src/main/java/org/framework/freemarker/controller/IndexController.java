package org.framework.freemarker.controller;

import java.util.ArrayList;
import java.util.List;

import org.framework.freemarker.beans.Animal;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping("/indexs")
public class IndexController {

	@RequestMapping("/hello")
	public ModelAndView hello(String name){
		ModelAndView mv = new ModelAndView();
		List<Animal> animals = new ArrayList<Animal>();
		try {
			Animal animal1 = new Animal("mouser", 12);
			Animal animal2 = (Animal) animal1.clone();
			animal2.setName("python");
			animals.add(animal1);
			animals.add(animal2);
		} catch (CloneNotSupportedException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		mv.addObject("animals", animals);
		mv.addObject("name", name+"&"+"abc");
		mv.addObject("age", 22);
		mv.setViewName("index");
		return mv;
	}
	
	
	
}

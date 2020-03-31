package hajar.shop.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
//import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;


@Controller

public class controller  {
	@RequestMapping(value= {"/","/home","/index"})
	public ModelAndView index() {
        ModelAndView mv = new ModelAndView("page");
        mv.addObject("greeting","welcome to spring mvc ");
	return mv;
}
	
	//Comprendre @RequestParam and @PathVariable annotations :
	/*@RequestMapping(value="test/")
	public ModelAndView  test (@RequestParam(value="greeting",required=false)String greeting){
        
		if(greeting==null) {
			greeting="HELLO THERE";
		}
		
		ModelAndView mv = new ModelAndView("page");
        mv.addObject("greeting","greetiong");
	return mv;
}*/

}

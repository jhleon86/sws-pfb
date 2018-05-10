package com.pfb.webservice.web;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import com.pfb.webservice.service.PostsService;

import lombok.AllArgsConstructor;

/**
 * Created by jojoldu@gmail.com on 2017. 12. 31.
 * Blog : http://jojoldu.tistory.com
 * Github : https://github.com/jojoldu
 */

@Controller
@AllArgsConstructor
public class WebController {
	
	private PostsService postsService;
	
	
    @GetMapping("/")
    public String main(Model model) { 
    	model.addAttribute("posts", postsService.findAllDesc());
        return "main";
    }
	
    /*
	@GetMapping("/")
    public ModelAndView main() { 
		ModelAndView mav = new ModelAndView("main") ;
		mav.addObject("posts", postsService.findAllDesc());
        return mav;
    }
    */
	
}

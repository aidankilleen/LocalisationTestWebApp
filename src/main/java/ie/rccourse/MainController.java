package ie.rccourse;

import java.util.Locale;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class MainController {
	
	@RequestMapping("/{lang}/home")
	public ModelAndView home(@PathVariable("lang")String lang) {
		
		Locale locale = new Locale(lang);
		
		LocalMessages lm = new LocalMessages(locale);
		ModelAndView mav = new ModelAndView("home", 
						"prompt", 
						lm.getMessage("prompt"));
		mav.addObject("lm", lm);
		
		return mav;
	}

}

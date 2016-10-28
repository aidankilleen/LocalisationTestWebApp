package ie.rccourse;

import java.util.Locale;
import java.util.ResourceBundle;

public class LocalMessages {
	//	properties
	ResourceBundle bundle;
	Locale locale = Locale.ENGLISH;
	
	// get & set methods
	
	//	constructor
	public LocalMessages(Locale locale) {
		this.locale = locale;
		
		
		//bundle = ResourceBundle.getBundle
		//		("resources.messages", locale);
		bundle = ResourceBundle.getBundle
				("resources.messages", locale, 
				new UTF8Control());
	}
	
	//	other methods
	public String getMessage(String message) {
		return bundle.getString(message);
	}
}

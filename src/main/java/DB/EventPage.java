package DB;

import java.util.regex.Pattern;

public class EventPage {

	

	    static public boolean isIntger(String number) {
	        try {
	            Integer.parseInt(number);
	        } catch (Exception e) {
	            return false;
	        }
	        return true;
	    }

	    static public boolean isonlyalphabets(String str) {
	        return str.matches("[a-zA-Z]+");
	    }



	    static public String RemoveSpece(String str) {
	        return str.replaceAll(" ", "");
	    }



	    
	    public boolean onlyDigits(String str)
	    {
	       // https://www.geeksforgeeks.org/how-to-check-if-string-contains-only-digits-in-java/
	        // Traverse the string from
	        // start to end
	        for (int i = 0; i < str.length(); i++) {
	  
	            // Check if character is
	            // digit from 0-9
	            // then return true
	            // else false
	            if (str.charAt(i) >= '0'
	                && str.charAt(i) <= '9') {
	                return true;
	            }
	            else {
	                return false;
	            }
	        }
	        return false;
	    }

	    //________________________________________________________________________________________

		 
		 
		 
		 
		 
	}



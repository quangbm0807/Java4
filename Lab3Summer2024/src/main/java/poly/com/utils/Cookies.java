package poly.com.utils;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class Cookies {

    public static Cookie add(String name, String value, int hours, HttpServletResponse resp) {
        Cookie cookie = new Cookie(name, value);
        cookie.setMaxAge(hours * 60 * 60); // Set cookie expiration time in seconds
        cookie.setPath("/"); // Make the cookie accessible to the whole application
        resp.addCookie(cookie); // Add cookie to the response
        return cookie;
    }

    public static String get(String name, HttpServletRequest req) {
        Cookie[] cookies = req.getCookies(); // Get all cookies from the request
        if (cookies != null) {
            for (Cookie cookie : cookies) {
                if (cookie.getName().equalsIgnoreCase(name)) { // Check if the cookie matches the given name
                    return cookie.getValue(); // Return the cookie value
                }
            }
        }
        return ""; // Return empty string if no matching cookie found
    }
}

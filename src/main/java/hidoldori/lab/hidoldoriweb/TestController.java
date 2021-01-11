package hidoldori.lab.hidoldoriweb;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("hidoldori/lab/hidoldori-web")
public class TestController {

//    @RequestMapping("/test")
//    public String test(HttpSession session){
//
//        String sessionKey = session.getId();
//        session.setAttribute("userId","hong");
//
//        System.out.println("sessionKey=:"+ sessionKey + ":");
//
//        return "#WEB Call Success";
//    }

    @RequestMapping("/test")
    public String test( ){

        return "#WEB Call Success";
    }
}

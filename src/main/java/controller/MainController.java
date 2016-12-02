package controller;

import model.User;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;

@Controller
public class MainController {
    @ResponseBody
    /*
    注意了，就是这儿。我之前是这么写的。修改之后记得重启服务器。
    @RequestMapping("/login")
     */
    @RequestMapping(value = "/login", produces = {"text/html;charset=UTF-8;"})
    public String hello(String code,User user, Model model) {
        JSONObject jsonObject1 = new JSONObject();
        try {
            System.out.println("=================================="+user.getUsername());
            System.out.println("-----------------"+code);
            if(user.getUsername().equals("123")){
                jsonObject1.put("msg","有种你继续中文乱码");
            }else{
                jsonObject1.put("msg","chinese");
            }

            jsonObject1.put("code",code);
        } catch (JSONException e) {
            e.printStackTrace();
        }
        return jsonObject1.toString();
//        return "success";
    }
}

/*
（1）@Controller注解：采用注解的方式，可以明确地定义该类为处理请求的Controller类；
（2）@RequestMapping()注解：用于定义一个请求映射，value为请求的url，值为 / 说明，该请求首页请求，method用以指定该请求类型，一般为get和post；
（3）return "index"：处理完该请求后返回的页面，此请求返回 index.jsp页面。
*/
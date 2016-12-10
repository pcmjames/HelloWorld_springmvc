package controller;

import model.User;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

import static org.springframework.data.jpa.domain.AbstractPersistable_.id;

/**
 * Created by PENG027 on 2016/11/21.
 */
@Controller
public class HelloController
{
    @RequestMapping("/hello/{id}")
    public String hello(@PathVariable String id ){
        System.out.println(id);
        System.out.println("githubs");
        return "success";
    }

    @RequestMapping("/hello1")
    public String hello1(@RequestParam(value="id") String number ){
        System.out.println(number);
        return "success";
    }

    @ResponseBody
    @RequestMapping("/hello2")
    public String hello2(@RequestBody String str){
        System.out.println(str);
        return str;
    }

}

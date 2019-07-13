package com.yjs.controller;

import com.yjs.model.UserInfo;
import com.yjs.service.UserInfoService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.annotation.Resource;


@Controller
@RequestMapping("/user")
public class UserInfoController {
    @Resource
    private UserInfoService userInfoService;

    /**
     * 用户登入
     * @param userInfo
     * @return
     */
    @RequestMapping("/login")
    public String login(UserInfo userInfo, Model model){
        String msg="";
        //根据登入账号判断该用户是否存在
        UserInfo user = userInfoService.selectUserByName(userInfo.getName());
        if(user==null){
            msg="该用户不存在！";
        }else{
            if(user.getPassword().equals(userInfo.getPassword())){
                //验证成功进入主界面
                model.addAttribute("userInfo",user);
                return "/index";
            }else{
                msg="密码错误！";
            }
        }
        model.addAttribute("msg",msg);
        return "/login";
    }
    @RequestMapping("/register")
    public String register(UserInfo userInfo, Model model){
        String msg2="";
        //根据登入账号判断该用户是否存在
        UserInfo user = userInfoService.selectUserByName(userInfo.getName());
        if(user!=null){
            msg2="该用户已存在！";
        }else{
            UserInfo users=new UserInfo();
            users.setName(userInfo.getName());
            users.setPassword(userInfo.getPassword());
            users.setNetname(userInfo.getNetname());
            users.setSex(userInfo.getSex());
            users.setBirthday(userInfo.getBirthday());
            userInfoService.insertUser(users);
            return "/index";
        }
        model.addAttribute("msg2",msg2);
        return "/login";
    }

}

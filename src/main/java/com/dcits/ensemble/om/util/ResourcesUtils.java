package com.dcits.ensemble.om.util;

import net.sf.json.JSONObject;

import javax.servlet.http.HttpServletRequest;
import java.net.Inet6Address;
import java.net.InetAddress;
import java.net.NetworkInterface;
import java.net.SocketException;
import java.net.UnknownHostException;
import java.text.SimpleDateFormat;
import java.util.*;

/**
 * Created by ligan on 2018/8/27.
 */
public class ResourcesUtils {

    public ResourcesUtils() {
    }


    public static String getCurrentDateStr(Date date) {
        SimpleDateFormat df = new SimpleDateFormat("yyyy年MM月dd日HH时mm分ss秒");
        String str = df.format(date);
        return str;
    }
    public static String getJsonString(Object object){

        JSONObject jsonObject=JSONObject.fromObject(object);
        return jsonObject.toString();
    }
    public static Map getMap(Object object){
        if(object==null){
            return null;
        }else{
            return (Map) object;
        }
    }
    public static String getSystemUser(HttpServletRequest request) {
        String operator = "system";
        if(request.getSession().getAttribute("UserName") != null) {
            operator = (String)request.getSession().getAttribute("UserName");
        }

        return operator;
    }

    public static String getRandomNumber(int length) {
        String base = "0123456789";
        byte rang = 10;
        Random rand = new Random();
        StringBuilder sb = new StringBuilder();

        for(int i = 0; i < length; ++i) {
            sb.append(base.charAt(rand.nextInt(rang)));
        }

        return sb.toString();
    }

    public static String getDateTimeUuId() {
        Date date = new Date();
        SimpleDateFormat format = new SimpleDateFormat("yyyyMMddHHmmssSSS");
        return format.format(date);
    }
}

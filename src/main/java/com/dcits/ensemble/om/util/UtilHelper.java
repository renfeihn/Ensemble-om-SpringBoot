package com.dcits.ensemble.om.util;

import org.apache.tomcat.util.codec.binary.Base64;

/**
 * Created by ligan on 2018/9/13.
 */
public class UtilHelper {
    //base64字符串转byte[]
    public static byte[] base64String2ByteFun(String base64Str){
        return Base64.decodeBase64(base64Str);
    }
    //byte[]转base64
    public static String byte2Base64StringFun(byte[] b){
        return Base64.encodeBase64String(b);
    }
}

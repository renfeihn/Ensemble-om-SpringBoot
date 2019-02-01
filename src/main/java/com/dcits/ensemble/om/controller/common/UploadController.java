package com.dcits.ensemble.om.controller.common;

import com.dcits.ensemble.om.controller.model.Result;
import com.dcits.ensemble.om.controller.model.ResultUtils;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

@Controller
public class UploadController {
    @RequestMapping("/upload")
    @ResponseBody
    public Result upload(@RequestParam("file") MultipartFile file)  {

        return  ResultUtils.success();
    }
}

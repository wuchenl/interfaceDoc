package com.wuchen.interfacedoc.exception;

import com.google.gson.stream.MalformedJsonException;
import com.wuchen.interfacedoc.entity.ResultCode;
import com.wuchen.interfacedoc.entity.ResultInFo;
import org.springframework.validation.ObjectError;
import org.springframework.web.bind.MethodArgumentNotValidException;
import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.List;

/**
 * @author vince
 * @version 0.1
 * @date 2018/1/24 15:10
 */
@ControllerAdvice
@ResponseBody
public class ExceptionHandlerAdvice {
    @ExceptionHandler(MethodArgumentNotValidException.class)
    public ResultInFo handleIllegalParamException(MethodArgumentNotValidException e) {
        List<ObjectError> errors = e.getBindingResult().getAllErrors();
        String tips = "参数不合法";
        if (errors.size() > 0) {
            tips = errors.get(0).getDefaultMessage();
        }
        ResultInFo result = new ResultInFo(ResultCode.PARAMETER_ERROR);
        result.setMsg(tips);
        return result;
    }


    @ExceptionHandler(MalformedJsonException.class)
    public ResultInFo handleMalformedJsonException(MalformedJsonException e){
        ResultInFo result = new ResultInFo(ResultCode.JSON_ERROR);
        result.setMsg(ResultCode.JSON_ERROR.getMsg());
        return result;
    }
}

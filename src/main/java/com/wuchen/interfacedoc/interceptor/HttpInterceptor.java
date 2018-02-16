package com.wuchen.interfacedoc.interceptor;

import com.wuchen.interfacedoc.utils.UtilsJson;
import lombok.extern.slf4j.Slf4j;
import org.aspectj.lang.ProceedingJoinPoint;
import org.aspectj.lang.annotation.Around;
import org.aspectj.lang.annotation.Aspect;
import org.aspectj.lang.annotation.Pointcut;
import org.aspectj.lang.reflect.MethodSignature;
import org.springframework.stereotype.Component;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.context.request.RequestAttributes;
import org.springframework.web.context.request.RequestContextHolder;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.lang.reflect.Method;
import java.util.LinkedHashSet;
import java.util.Map;
import java.util.Set;

/**
 * @author wuchen
 * @version 0.1
 * @date 2018/1/7 16:16
 * Http请求AOP处理类
 * Aspect注解：将该类定义为Aop类
 * Component注解：将该类交给Spring管理
 */
@Aspect
@Component
@Slf4j
public class HttpInterceptor {

    /**
     * 定义拦截规则：拦截com.wuchen.interfacedoc.controller包下面的所有类。
     */
    @Pointcut("execution(* com.wuchen.interfacedoc.controller..*(..))")
    public void controllerMethodPointcut() {
    }

    /**
     * 拦截器具体实现
     *
     * @param pjp
     * @return JsonResult（被拦截方法的执行结果，或需要登录的错误提示。）
     * //指定拦截器规则；也可以直接把"execution(* com.wuchen………)"写进这里 既拦截什么地方的
     */
    @Around("controllerMethodPointcut()")
    public Object
    Interceptor(ProceedingJoinPoint pjp) throws Throwable {
        //开始时间
        long beginTime = System.currentTimeMillis();
        MethodSignature signature = (MethodSignature) pjp.getSignature();
        //获取被拦截的方法
        Method method = signature.getMethod();
        //获取被拦截的方法名
        String methodName = method.getName();
        //获取RequestAttributes
        RequestAttributes requestAttributes = RequestContextHolder.getRequestAttributes();
        //从获取RequestAttributes中获取HttpServletRequest的信息
        HttpServletRequest request1

                = (HttpServletRequest) requestAttributes.resolveReference(RequestAttributes.REFERENCE_REQUEST);
        //如果要获取Session信息的话，可以这样写：
        HttpSession session = (HttpSession) requestAttributes.resolveReference(RequestAttributes.REFERENCE_SESSION);

        //保存所有请求参数，用于输出到日志中
        Set<Object> allParams = new LinkedHashSet<>();
        log.info("请求方法：{}", methodName);
        Object result = null;
        Object[] args = pjp.getArgs();
        for (Object arg : args) {
            if (arg instanceof Map<?, ?>) {
                //提取方法中的MAP参数，用于记录进日志中
                @SuppressWarnings("unchecked")
                Map<String, Object> map = (Map<String, Object>) arg;
                allParams.add(map);
            } else if (arg instanceof HttpServletRequest) {
                HttpServletRequest request = (HttpServletRequest) arg;
                //获取query string 或 posted form data参数
                Map<String, String[]> paramMap = request.getParameterMap();
                if (paramMap != null && paramMap.size() > 0) {
                    allParams.add(paramMap);
                }
            } else if (arg instanceof HttpServletResponse) {
                //do nothing…
            } else {
                //allParams.add(arg);
            }
        }
        if (result == null) {
            // 一切正常的情况下，继续执行被拦截的方法
            result = pjp.proceed();
        }

        long costMs = System.currentTimeMillis() - beginTime;
        log.info("{}请求结束，耗时：{}ms", methodName, costMs);
        return result;
    }
}

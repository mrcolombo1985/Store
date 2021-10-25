package application.aspects;

import org.aspectj.lang.ProceedingJoinPoint;
import org.aspectj.lang.annotation.Around;
import org.aspectj.lang.annotation.Aspect;
import org.aspectj.lang.annotation.Pointcut;
import org.springframework.http.HttpHeaders;
import org.springframework.stereotype.Component;

import javax.servlet.http.HttpServletRequest;
import java.lang.reflect.Field;

@Aspect
@Component
public class WebRequestAspect {

    private static final org.slf4j.Logger log = org.slf4j.LoggerFactory.getLogger("application.aspects");

    //https://habr.com/ru/post/428548/
    // папка "Железо дома" на облаке
    @Pointcut("within(application.controllers..*)")
    public void webPointCut() {
    }

    @Around("webPointCut() && args(httpHeaders, request,..)")
    public Object logExecutionTime(ProceedingJoinPoint joinPoint, HttpServletRequest request, HttpHeaders httpHeaders)
            throws Throwable {
        String targetClass = joinPoint.getTarget().getClass().getSimpleName();
        String targetMethod = joinPoint.getSignature().getName();

        try {
            //Optional<? extends Object> id =	Stream.of(joinPoint.getArgs()).filter(arg->arg.getClass().getName().equals("java.lang.Integer")).findFirst();
            //String idTrace = (id.isPresent() ?  "{" + id.get().toString() + "}": "");
            httpHeaders.forEach((key, value) -> {
                log.info(targetClass + " -> " + targetMethod +  /*idTrace*/ " -> headers -> "
                        + String.format("Header '%s' = %s", key, value));
            });
            Class<?> cls = request.getClass();
            Field[] fields = cls.getFields();
            for (Field field : fields) {
                Class<?> fld = field.getType();
                log.info(targetClass + " -> " + targetMethod +  /*idTrace*/ " -> Class name : " + field.getName());
                log.info(targetClass + " -> " + targetMethod +  /*idTrace*/ " -> Class type : " + fld.getName());
                String value = (String) field.get(request);
                log.info(targetClass + " -> " + targetMethod +  /*idTrace*/ " -> value : " + value);
            }
            log.info(targetClass + " -> " + targetMethod + " -> Remote IP -> " + request.getRemoteAddr());
            log.info(targetClass + " -> " + targetMethod + " -> Remote Cookies -> " + request.getCookies());
            log.info(targetClass + " -> " + targetMethod + " -> Remote Host -> " + request.getRemoteHost());
            log.info(targetClass + " -> " + targetMethod + " -> Local nameOption -> " + request.getLocalName());
            log.info(targetClass + " -> " + targetMethod + " -> Path info -> " + request.getPathInfo());
            log.info(targetClass + " -> " + targetMethod + " -> Protocol -> " + request.getProtocol());
            log.info(targetClass + " -> " + targetMethod + " -> Scheme -> " + request.getScheme());
            log.info(targetClass + " -> " + targetMethod + " -> Requested session id -> " + request.getRequestedSessionId());
            for (Object z : joinPoint.getArgs()
            ) {
                log.info(targetClass + " -> " + targetMethod + " -> argument -> " + z.toString());
            }

        } catch (NullPointerException e) {
            System.out.println("" + e.getLocalizedMessage());
        }
        Object proceed = joinPoint.proceed();
        return proceed;

    }


}

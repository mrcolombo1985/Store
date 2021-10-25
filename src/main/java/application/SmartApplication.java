package application;

import org.modelmapper.ModelMapper;
import org.modelmapper.convention.MatchingStrategies;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.annotation.Bean;

import java.util.Arrays;

import static org.modelmapper.config.Configuration.AccessLevel.PRIVATE;

@SpringBootApplication
public class SmartApplication {
    public static Integer selector;

    public static void main(String[] args) {
        Arrays.stream(args).forEach(arg -> {
            String[] argSplit = arg.split("=");
            if (argSplit[0].equals("selector")) {
                selector = Integer.valueOf(argSplit[1]);
            }
        });
        SpringApplication.run(SmartApplication.class, args);

    }

    @Bean
    public static ModelMapper modelMapper() {
        ModelMapper mapper = new ModelMapper();
        mapper.getConfiguration()
                .setMatchingStrategy(MatchingStrategies.STRICT)
                .setFieldMatchingEnabled(true)
                .setSkipNullEnabled(true)
                .setFieldAccessLevel(PRIVATE);
        return mapper;
    }
}
/*
https://code.google.com/archive/p/javafaces/

https://habr.com/ru/company/odnoklassniki/blog/350566/

https://api-2d3d-cad.com/face-recognition-webcam/

https://neurohive.io/ru/tutorial/raspoznavanie-lica-facenet/


* 1- создать растройки рекордера
* - максимальная продолжительность файла
* - формат имени файла
* 2- список событий по камерам и настройки реакции на их
* пример
* -------
* таблица
* -------
* камера
* событие
* устройство
* действие
* -------
* список событий
* *******
* движение
* появление человека из списка
* появление человека не из списка
* */
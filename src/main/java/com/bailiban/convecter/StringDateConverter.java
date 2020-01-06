package com.bailiban.convecter;

import org.springframework.core.convert.converter.Converter;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

public class StringDateConverter implements Converter<String,Date> {
    private SimpleDateFormat simpleDateFormat=
            new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");



    @Override
    public Date convert(String time) {
        Date date=null;
        try {
            date=simpleDateFormat.parse(time);
        } catch (ParseException e) {
            e.printStackTrace();
        }
        return date;
    }
}

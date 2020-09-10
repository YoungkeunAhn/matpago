package com.example.react.Dtos;

import lombok.Data;

@Data
public class reviewsDto {

    private int reply_id;
    private String reply_user;
    private String reply_content;
    private String reply_eval;
    private String reply_date_data;
    private String reply_tag;
    private int reply_images_yn;
    private int store_id;

}

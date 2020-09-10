package com.example.react.Dtos;

import lombok.Data;

@Data
public class MemberJoinDto {

    private String userName;
    private String kakaoEmail;
    private String naverEmail;
    private String join_data;
    private String withrawal_data;
    private String phoneNum;
    private int phoneAuth_yn;
    private String user_title;
    private String profileImg;
    private String user_type;

}

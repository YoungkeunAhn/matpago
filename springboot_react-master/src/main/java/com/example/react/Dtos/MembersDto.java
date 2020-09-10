package com.example.react.Dtos;


public class MembersDto {

    private String username;
    private String kakaoEmail;
    private String naverEmail;
    private String join_data;
    private String withrawal_data;
    private String phoneNum;
    private int phoneAuth_yn;
    private String user_title;
    private String profileImg;

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getKakaoEmail() {
        return kakaoEmail;
    }

    public void setKakaoEmail(String kakaoEmail) {
        this.kakaoEmail = kakaoEmail;
    }

    public String getNaverEmail() {
        return naverEmail;
    }

    public void setNaverEmail(String naverEmail) {
        this.naverEmail = naverEmail;
    }

    public String getJoin_data() {
        return join_data;
    }

    public void setJoin_data(String join_data) {
        this.join_data = join_data;
    }

    public String getWithrawal_data() {
        return withrawal_data;
    }

    public void setWithrawal_data(String withrawal_data) {
        this.withrawal_data = withrawal_data;
    }

    public String getPhoneNum() {
        return phoneNum;
    }

    public void setPhoneNum(String phoneNum) {
        this.phoneNum = phoneNum;
    }

    public int getPhoneAuth_yn() {
        return phoneAuth_yn;
    }

    public void setPhoneAuth_yn(int phoneAuth_yn) {
        this.phoneAuth_yn = phoneAuth_yn;
    }

    public String getUser_title() {
        return user_title;
    }

    public void setUser_title(String user_title) {
        this.user_title = user_title;
    }

    public String getProfileImg() {
        return profileImg;
    }

    public void setProfileImg(String profileImg) {
        this.profileImg = profileImg;
    }
}

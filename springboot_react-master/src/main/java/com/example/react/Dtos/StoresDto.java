package com.example.react.Dtos;

import lombok.Data;

@Data
public class StoresDto {

    private int store_id;
    private String store_name;
    private String store_location;
    private String store_zipcode;
    private String store_addr;
    private String store_restaddr;
    private String store_foodtype;
    private String store_images;
    private double store_eval;
    private String store_keywods;
    private String store_tel;

}

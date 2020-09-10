package com.example.react.controller;

import com.example.react.service.MemberService;
import org.springframework.beans.factory.annotation.Autowired;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;
import java.util.Map;


@RestController
public class MemberController {

    private MemberService memberService;

    @Autowired
    public MemberController(MemberService memberService) {
        this.memberService = memberService;
    }

    @GetMapping("/joinMember")
    public int joinMember() {
        return memberService.joinMember();
    }

    @GetMapping("/joinMember2")
    public List<Map<String, Object>> listMember() {
        return memberService.listMember();
    }





}


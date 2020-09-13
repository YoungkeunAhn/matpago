package com.example.react.service;

import com.example.react.Dtos.MembersDto;
import com.example.react.repository.MemberRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Map;

@Service
public class MemberServiceImpl implements MemberService {

    private MemberRepository memberRepository;

    @Autowired
    public MemberServiceImpl(MemberRepository memberRepository) {
        this.memberRepository = memberRepository;
    }

    MembersDto membersDto = new MembersDto();

    @Override
    public int joinMember() {
        membersDto.setUsername("테스트2");
        membersDto.setNaverEmail("bbb@naver.com");
        membersDto.setPhoneNum("010-2222-1111");
        return memberRepository.joinMember(membersDto);
    }

    @Override
    public List<Map<String, Object>> listMember() {
        membersDto.setPhoneAuth_yn(1);
        return memberRepository.listMember(membersDto);
    }
}

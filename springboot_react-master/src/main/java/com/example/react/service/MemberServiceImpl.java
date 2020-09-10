package com.example.react.service;

import com.example.react.Dtos.MembersDto;
import com.example.react.repository.MemberRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

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
        membersDto.setUsername("테스트6");
        membersDto.setNaverEmail("ccc@naver.com");
        membersDto.setPhoneNum("010-3333-3333");
        return memberRepository.joinMembers(membersDto);

    }
}

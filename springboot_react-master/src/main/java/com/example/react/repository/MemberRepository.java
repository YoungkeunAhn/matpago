package com.example.react.repository;

import com.example.react.Dtos.MembersDto;
import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;

@Mapper
@Repository
public interface MemberRepository {
    int joinMembers(MembersDto membersDto);
}

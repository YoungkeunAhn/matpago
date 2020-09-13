package com.example.react.repository;

import com.example.react.Dtos.MembersDto;
import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;

import java.util.List;
import java.util.Map;

@Mapper
@Repository
public interface MemberRepository {
    int joinMember(MembersDto membersDto);
    List<Map<String, Object>> listMember(MembersDto membersDto);
}

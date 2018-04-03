package com.zsq.cpws.dao;

import com.zsq.cpws.pojo.Admin;

public interface AdminMapper {
    int deleteByPrimaryKey(Integer pkid);

    int insert(Admin record);

    int insertSelective(Admin record);

    Admin selectByPrimaryKey(Integer pkid);

    int updateByPrimaryKeySelective(Admin record);

    int updateByPrimaryKey(Admin record);
}
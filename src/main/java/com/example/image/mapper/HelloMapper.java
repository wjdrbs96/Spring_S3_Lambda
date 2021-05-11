package com.example.image.mapper;

import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

/**
 * created by jg 2021/05/11
 */
@Mapper
public interface HelloMapper {

    @Insert("INSERT INTO Image(originUrl, resizeUrl) VALUES (#{originUrl}, #{resizeUrl})")
    void imageUrlInsert(@Param("originUrl") final String originUrl, @Param("resizeUrl") final String resizeUrl);
}

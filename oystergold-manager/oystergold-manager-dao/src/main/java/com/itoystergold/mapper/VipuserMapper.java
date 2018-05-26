package com.itoystergold.mapper;

import com.itoystergold.pojo.Vipuser;
import com.itoystergold.pojo.VipuserExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface VipuserMapper {
    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table vipuser
     *
     * @mbg.generated
     */
    long countByExample(VipuserExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table vipuser
     *
     * @mbg.generated
     */
    int deleteByExample(VipuserExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table vipuser
     *
     * @mbg.generated
     */
    int deleteByPrimaryKey(String vid);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table vipuser
     *
     * @mbg.generated
     */
    int insert(Vipuser record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table vipuser
     *
     * @mbg.generated
     */
    int insertSelective(Vipuser record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table vipuser
     *
     * @mbg.generated
     */
    List<Vipuser> selectByExample(VipuserExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table vipuser
     *
     * @mbg.generated
     */
    Vipuser selectByPrimaryKey(String vid);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table vipuser
     *
     * @mbg.generated
     */
    int updateByExampleSelective(@Param("record") Vipuser record, @Param("example") VipuserExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table vipuser
     *
     * @mbg.generated
     */
    int updateByExample(@Param("record") Vipuser record, @Param("example") VipuserExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table vipuser
     *
     * @mbg.generated
     */
    int updateByPrimaryKeySelective(Vipuser record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table vipuser
     *
     * @mbg.generated
     */
    int updateByPrimaryKey(Vipuser record);
}
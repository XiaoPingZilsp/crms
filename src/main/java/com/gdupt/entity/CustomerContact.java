package com.gdupt.entity;

import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.annotation.TableField;
import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableName;
import lombok.Data;
import lombok.EqualsAndHashCode;
import lombok.experimental.Accessors;

import java.io.Serializable;
import java.time.LocalDateTime;

/**
 * <p>
 * 
 * </p>
 *
 * @since 2018-11-21
 */
@Data
@EqualsAndHashCode(callSuper = false)
@Accessors(chain = true)
@TableName("customer_contact")
public class CustomerContact implements Serializable {

    private static final long serialVersionUID = 1L;

    @TableId(value = "id", type = IdType.AUTO)
    private Integer id;

    @TableField("name")
    private String name;

    @TableField("sex")
    private String sex;

    @TableField("job")
    private String job;

    @TableField("phone")
    private String phone;

    @TableField("tel")
    private String tel;

    @TableField("remark")
    private String remark;

    @TableField("customer_id")
    private Integer customerId;

    @TableField("founder")
    private String founder;

    @TableField("found_id")
    private Integer foundId;

    @TableField("creation_time")
    private LocalDateTime creationTime;


}

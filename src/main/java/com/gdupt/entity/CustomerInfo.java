package com.gdupt.entity;

import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.annotation.TableField;
import com.baomidou.mybatisplus.annotation.TableId;
import lombok.Data;
import lombok.EqualsAndHashCode;
import lombok.experimental.Accessors;

import java.io.Serializable;
import java.math.BigDecimal;
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
public class CustomerInfo implements Serializable {

    private static final long serialVersionUID = 1L;

    @TableId(value = "customer_id", type = IdType.AUTO)
    private Integer customerId;

    @TableField("customer_name")
    private String customerName;

    @TableField("city")
    private String city;

    @TableField("customer_mgr")
    private String customerMgr;

    @TableField("customer_mgr_id")
    private Integer customerMgrId;

    @TableField("customer_grade")
    private String customerGrade;

    @TableField("customer_satisfaction")
    private String customerSatisfaction;

    @TableField("customer_credit")
    private String customerCredit;

    @TableField("address")
    private String address;

    @TableField("postal_code")
    private Integer postalCode;

    @TableField("phone")
    private String phone;

    @TableField("fax")
    private String fax;

    @TableField("ulr")
    private String ulr;

    @TableField("business_license")
    private String businessLicense;

    @TableField("juridical_person")
    private String juridicalPerson;

    @TableField("registered_capital")
    private BigDecimal registeredCapital;

    @TableField("annual_sales")
    private BigDecimal annualSales;

    @TableField("deposit_bank")
    private String depositBank;

    @TableField("bank_account")
    private String bankAccount;

    @TableField("land_tax_code")
    private String landTaxCode;

    @TableField("central_tax")
    private String centralTax;

    @TableField("founder")
    private String founder;

    @TableField("found_id")
    private Integer foundId;

    @TableField("creation_time")
    private LocalDateTime creationTime;


}
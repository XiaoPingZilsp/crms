package com.gdupt.entity.vo;

import com.fasterxml.jackson.annotation.JsonFormat;
import com.fasterxml.jackson.annotation.JsonInclude;
import lombok.Data;
import lombok.EqualsAndHashCode;
import lombok.experimental.Accessors;

import java.time.LocalDateTime;

@Data
@JsonInclude(JsonInclude.Include.NON_NULL)
@EqualsAndHashCode(callSuper = false)
@Accessors(chain = true)
public class ServiceDeal {
    private Integer id;

    private Integer serviceNo;

    private String serviceType;

    private String outline;

    private String customerName;

    private Integer customerId;

    private String statuss;

    private String serviceReq;

    private Integer creationId;

    private String creationName;

    @JsonFormat(pattern = "yyyy-MM-dd HH:mm:ss")
    private LocalDateTime creationTime;
    private Integer serviceId;

    private Integer userId;

    @JsonFormat(pattern = "yyyy-MM-dd HH:mm:ss")
    private LocalDateTime cllotTime;

    private String serviceHandle;

    private Integer handleId;

    @JsonFormat(pattern = "yyyy-MM-dd HH:mm:ss")
    private String handleTime;

    private String handleResult;

    private String satisfaction;
    private String name;
}

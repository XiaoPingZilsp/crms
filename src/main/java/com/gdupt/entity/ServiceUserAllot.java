package com.gdupt.entity;

import com.fasterxml.jackson.annotation.JsonFormat;
import com.fasterxml.jackson.annotation.JsonInclude;
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
 * @since 2018-11-22
 */
@Data
@JsonInclude(JsonInclude.Include.NON_NULL)
@EqualsAndHashCode(callSuper = false)
@Accessors(chain = true)
public class ServiceUserAllot implements Serializable {

    private static final long serialVersionUID = 1L;

    private Integer serviceId;

    private Integer userId;

    private Integer creationId;

    @JsonFormat(pattern = "yyyy-MM-dd HH:mm:ss")
    private LocalDateTime cllotTime;

    private String serviceHandle;

    private Integer handleId;

    @JsonFormat(pattern = "yyyy-MM-dd HH:mm:ss")
    private String handleTime;

    private String handleResult;

    private String satisfaction;


}

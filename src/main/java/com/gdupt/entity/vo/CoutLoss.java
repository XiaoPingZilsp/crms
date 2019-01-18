package com.gdupt.entity.vo;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class CoutLoss {
    private Integer id;
    private String age;
    private String customerName;
    private String customerMgr;
    private String lossReason;
}

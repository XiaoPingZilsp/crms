package com.gdupt.entity.vo;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class CoutContribution {
    private Integer id;
    private String customerName;
    private Double totalMoney;
}

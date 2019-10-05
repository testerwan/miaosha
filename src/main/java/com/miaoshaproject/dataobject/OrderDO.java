package com.miaoshaproject.dataobject;

import lombok.Data;

@Data
public class OrderDO {
    private String id;

    private Integer userId;

    private Double itemPrice;

    private Integer itemId;

    private Integer promoId;

    private Integer amount;

    private Double orderPrice;


}
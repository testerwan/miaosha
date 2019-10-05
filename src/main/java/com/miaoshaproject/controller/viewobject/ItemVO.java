package com.miaoshaproject.controller.viewobject;


import lombok.Data;
import java.math.BigDecimal;

@Data
public class ItemVO {

    private Integer id;

    private String title;

    private BigDecimal price;

    private Integer stock;

    private String description;

    private String imgUrl;

    private Integer sales;

    //0无秒杀活动 1 秒杀活动待开始 2 表示秒杀活动进行中
    private Integer promoStatus;

    private BigDecimal promoPrice;

    private Integer promoId;

    private String startDate;


}

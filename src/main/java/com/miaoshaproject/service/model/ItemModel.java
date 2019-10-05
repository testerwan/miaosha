package com.miaoshaproject.service.model;

import lombok.Data;

import javax.validation.constraints.Min;
import javax.validation.constraints.NotBlank;
import java.math.BigDecimal;

@Data
public class ItemModel {
    private Integer id;
    @NotBlank(message = "商品名称不能为空")
    private String title;
    @Min(value = 0, message = "商品价格必须大于0")
    private BigDecimal price;
//    @NotBlank(message = "商品库存不能为空")
    private Integer stock;
    @NotBlank(message = "商品描述不能为空")
    private String description;
    private Integer sales;
    @NotBlank(message = "商品图片Url不能为空")
    private String imgUrl;

    //如果promoModel非空 表示拥有进行中的秒杀活动
    private PromoModel promoModel;


}

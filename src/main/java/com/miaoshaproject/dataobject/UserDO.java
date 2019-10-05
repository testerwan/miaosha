package com.miaoshaproject.dataobject;

import lombok.Data;

@Data
public class UserDO {

    private Integer id;

    private String name;

    private Byte gender;

    private Integer age;

    private String telephone;

    private String regisitMode;

    private Integer thirdPartyId;


}

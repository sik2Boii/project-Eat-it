package com.eatit.MaterialDomain;

import java.sql.Timestamp;
import lombok.Data;

@Data  // Lombok 어노테이션을 사용하여 getter, setter 등을 자동으로 생성
public class MaterialAddVO {
    // 원자재 추가에 필요한 필드들
    private String name;        // 원자재 이름
    private String type;        // 원자재 종류
    private int quantity;       // 수량
    // 필요한 추가 필드들을 여기에 선언할 수 있습니다.

    // 생성자, toString, equals, hashCode 등은 Lombok @Data 어노테이션에 의해 자동 생성됩니다.
}

package com.eatit.MaterialDomain;

import java.sql.Timestamp;
import lombok.Data;

@Data
public class MaterialVO {
    private Long id;           // 원자재 ID
    private String code;       // 원자재 코드
    private String name;       // 원자재 이름
    private String type;       // 원자재 종류
    private int quantity;      // 수량
    private int actualQuantity; // 실수량
    private String warehouseCode; // 창고 코드
    private String manager;    // 담당자
    private Timestamp checkDate; // 확인 날짜

    // Lombok @Data 어노테이션이 getter, setter, toString 등을 자동으로 생성합니다.
}

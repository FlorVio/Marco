package com.flor.shopping.dtos;

import lombok.Setter;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.AllArgsConstructor;
import lombok.Builder;

@Setter
@Getter
@NoArgsConstructor
@AllArgsConstructor
@Builder
public class AnimalCustodyDto {
    private int id;
    private String name;
    private String raze;
    private String type;
    private String owner;
    private String dni;
}

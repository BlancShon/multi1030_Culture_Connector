package com.multi.mvc.culture.model.vo;



import com.fasterxml.jackson.annotation.JsonIgnoreProperties;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
@JsonIgnoreProperties(ignoreUnknown = true)
public class TouristAttraction  extends CultureParent {
    
    private int contentid;
    private int contenttypeid;
    private String accomcount;
    private String chkbabycarriage;
    private String chkcreditcard;
    private String chkpet;
    private String expagerange;
    private String expguide;
    private String heritage1;
    private String heritage2;
    private String heritage3;
    private String infocenter;
    private String opendate;
    private String parking;
    private String restdate;
    private String useseason;
    private String usetime;
    
    
}

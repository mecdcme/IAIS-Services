package md.parstat.iais.dto;

import java.sql.Date;
import java.util.List;

import com.fasterxml.jackson.annotation.JsonInclude;
import com.fasterxml.jackson.annotation.JsonProperty;
import com.fasterxml.jackson.annotation.JsonView;


import lombok.Getter;
import lombok.Setter;
import md.parstat.iais.common.interfaces.Views;
import md.parstat.iais.dto.abstracts.BaseEntityDTO;

@Getter
@Setter
@JsonInclude(JsonInclude.Include.NON_NULL)
public class StatisticalProcessDTO extends BaseEntityDTO {

	private static final long serialVersionUID = 2864464354903875090L;

	 
	@JsonProperty
	@JsonView(Views.Basic.class)
	private String acronymEn;
	@JsonProperty
	@JsonView(Views.Basic.class)
	private String acronymRo;

	@JsonProperty
	@JsonView(Views.Basic.class)
	private String acronymRu;

	@JsonProperty
	@JsonView(Views.Basic.class)
	private String nameEn;

	@JsonProperty
	@JsonView(Views.Basic.class)
	private String nameRo;

	@JsonProperty
	@JsonView(Views.Basic.class)
	private String nameRu;

	@JsonProperty
	@JsonView(Views.Basic.class)
	private String respFullName;

	@JsonProperty
	@JsonView(Views.Basic.class)
	private String respMail;

	@JsonProperty
	@JsonView(Views.Basic.class)
	private String respPhone;

	@JsonProperty
	@JsonView(Views.Basic.class)
	private Date sysDate;
	
	@JsonProperty
	@JsonView(Views.Basic.class)
	private DivisionDTO division;
	
	@JsonProperty
	@JsonView(Views.Basic.class)
	private List<LawDTO> laws;
	
	public StatisticalProcessDTO(Long id) {
		super(id);
		 
	}

	public StatisticalProcessDTO() {

	}
}

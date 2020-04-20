package md.parstat.iais.dto;



import java.util.Date;

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
public class DivisionDTO extends BaseEntityDTO {

	private static final long serialVersionUID = 2814464354903875090L;
	
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
	private String descriptionEn;

	@JsonProperty
	@JsonView(Views.Basic.class)
	private String descriptionRo;

	@JsonProperty
	@JsonView(Views.Basic.class)
	private String descriptionRu;

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
	private Integer statusId;

	@JsonProperty
	@JsonView(Views.Basic.class)
	private Date creationDate;

	@JsonProperty
	@JsonView(Views.Basic.class)
	private Long contactUser;

	 
	@JsonProperty
	@JsonView(Views.Basic.class)
    private DivisionStatusDTO divisionStatus;

	public DivisionDTO(Long id) {
		super(id);
	}

	public DivisionDTO() {

	}
}

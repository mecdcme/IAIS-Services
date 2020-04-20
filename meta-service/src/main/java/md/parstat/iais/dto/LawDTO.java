package md.parstat.iais.dto;

import java.sql.Date;


import com.fasterxml.jackson.annotation.JsonProperty;
import com.fasterxml.jackson.annotation.JsonView;

import lombok.Getter;
import lombok.Setter;
import md.parstat.iais.common.interfaces.Views;
import md.parstat.iais.dto.abstracts.BaseEntityDTO;

@Getter
@Setter
public class LawDTO extends BaseEntityDTO {

	private static final long serialVersionUID = 2864643549023875090L;

	@JsonProperty
	@JsonView(Views.Basic.class)
	private String fileEn;

	@JsonProperty
	@JsonView(Views.Basic.class)
	private String fileNameEn;

	@JsonProperty
	@JsonView(Views.Basic.class)
	private String fileNameRo;

	@JsonProperty
	@JsonView(Views.Basic.class)
	private String fileNameRu;

	@JsonProperty
	@JsonView(Views.Basic.class)
	private String fileRo;

	@JsonProperty
	@JsonView(Views.Basic.class)
	private String fileRu;

	@JsonProperty
	@JsonView(Views.Basic.class)
	private Date lawDate;

	@JsonProperty
	@JsonView(Views.Basic.class)
	private String lawNumber;

	@JsonProperty
	@JsonView(Views.Basic.class)
	private String linkEn;

	@JsonProperty
	@JsonView(Views.Basic.class)
	private String linkRo;

	@JsonProperty
	@JsonView(Views.Basic.class)
	private String linkRu;

	@JsonProperty
	@JsonView(Views.Basic.class)
	private String titleEn;

	@JsonProperty
	@JsonView(Views.Basic.class)
	private String titleRo;

	@JsonProperty
	@JsonView(Views.Basic.class)
	private String titleRu;

	@JsonProperty
	@JsonView(Views.Basic.class)
	private LawTypeDTO lawType;

	public LawDTO(Long id) {
		super(id);
		 
	}

	public LawDTO() {

	}
}

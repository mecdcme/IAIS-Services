package md.parstat.iais.dto;

import com.fasterxml.jackson.annotation.JsonProperty;
import com.fasterxml.jackson.annotation.JsonView;

import lombok.Getter;
import lombok.Setter;
import md.parstat.iais.common.interfaces.Views;
import md.parstat.iais.dto.abstracts.BaseEntityDTO;

@Getter
@Setter
public class LawTypeDTO extends BaseEntityDTO {

	private static final long serialVersionUID = 2864693549023875090L;

	@JsonProperty
	@JsonView(Views.Basic.class)
	private String typeEn;

	@JsonProperty
	@JsonView(Views.Basic.class)
	private String typeRo;

	@JsonProperty
	@JsonView(Views.Basic.class)
	private String typeRu;

	public LawTypeDTO(Long id) {
		super(id);
		 
	}

	public LawTypeDTO() {

	}
}

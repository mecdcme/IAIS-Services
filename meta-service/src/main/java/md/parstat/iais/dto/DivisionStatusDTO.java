package md.parstat.iais.dto;

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
public class DivisionStatusDTO extends BaseEntityDTO {

	private static final long serialVersionUID = 2814234354903875090L;
	
	@JsonProperty
	@JsonView(Views.Basic.class)
	private String name;

	public DivisionStatusDTO(Long id) {
		super(id);
	}

	public DivisionStatusDTO() {

	}
}

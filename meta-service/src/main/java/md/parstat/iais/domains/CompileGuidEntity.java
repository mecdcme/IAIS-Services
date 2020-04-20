package md.parstat.iais.domains;


import javax.persistence.*;



import lombok.Data;
import lombok.EqualsAndHashCode;
import md.parstat.iais.domains.abstracts.AbstractDomainObject;
import md.parstat.iais.domains.interfaces.CompileGuid;

@Data
@EqualsAndHashCode(callSuper=true)
@Entity(name="CompileGuid")
@Table(name="compile_guid")
public class CompileGuidEntity extends AbstractDomainObject implements CompileGuid {


	@Column(name="example_en")
	private String exampleEn;

	@Column(name="example_ro")
	private String exampleRo;

	@Column(name="example_ru")
	private String exampleRu;

	@Column(name="guide_en")
	private String guideEn;

	@Column(name="guide_ro")
	private String guideRo;

	@Column(name="guide_ru")
	private String guideRu;

	@Column(name="name_en")
	private String nameEn;

	@Column(name="name_ro")
	private String nameRo;

	@Column(name="name_ru")
	private String nameRu;

}
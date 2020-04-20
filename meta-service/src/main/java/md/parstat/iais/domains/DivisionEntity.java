package md.parstat.iais.domains;

import javax.persistence.*;

import md.parstat.iais.domains.abstracts.AbstractDomainObject;
import md.parstat.iais.domains.interfaces.Division;

import lombok.Data;
import lombok.EqualsAndHashCode;

import java.util.Date;
import java.util.List;

@Data
@EqualsAndHashCode(callSuper = true)
@Entity(name = "Division")
@Table(name = "division", schema = "iais_meta")
public class DivisionEntity extends AbstractDomainObject implements Division {

	@Column(name = "acronym_en")
	private String acronymEn;

	@Column(name = "acronym_ro")
	private String acronymRo;

	@Column(name = "acronym_ru")
	private String acronymRu;

	@Column(name = "description_en")
	private String descriptionEn;

	@Column(name = "description_ro")
	private String descriptionRo;

	@Column(name = "description_ru")
	private String descriptionRu;

	@Column(name = "name_en")
	private String nameEn;

	@Column(name = "name_ro")
	private String nameRo;

	@Column(name = "name_ru")
	private String nameRu;

	@Column(name = "status_id")
	private Integer statusId;

	@Column(name = "creation_date")
	private Date creationDate;

	@Column(name = "contact_user")
	private Long contactUser;

	// bi-directional one-to-one association to DivisionStatus
	@OneToOne
	@JoinColumn(name = "id")
	private DivisionStatusEntity divisionStatus;

	// bi-directional many-to-one association to StatisticalProcess
	@OneToMany(mappedBy = "division")
	private List<StatisticalProcessEntity> statisticalProcesses;

}
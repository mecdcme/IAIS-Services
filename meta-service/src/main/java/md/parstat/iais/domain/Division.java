package md.parstat.iais.domain;

import java.io.Serializable;
import javax.persistence.*;

import lombok.Data;

import java.math.BigDecimal;
import java.util.Date;
import java.util.List;


@Data
@Entity
@NamedQuery(name="Division.findAll", query="SELECT d FROM Division d")
public class Division implements Serializable {
	private static final long serialVersionUID = 1L;

	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	@Column(name="division_id")
	private Long divisionId;

	@Column(name="acronym_en")
	private String acronymEn;

	@Column(name="acronym_ro")
	private String acronymRo;

	@Column(name="acronym_ru")
	private String acronymRu;

	@Column(name="description_en")
	private String descriptionEn;

	@Column(name="description_ro")
	private String descriptionRo;

	@Column(name="description_ru")
	private String descriptionRu;

	@Column(name="name_en")
	private String nameEn;

	@Column(name="name_ro")
	private String nameRo;

	@Column(name="name_ru")
	private String nameRu;

	@Column(name="status_id")
	private BigDecimal statusId;

	@Temporal(TemporalType.DATE)
	@Column(name="sys_date")
	private Date sysDate;

	@Column(name="sys_user")
	private String sysUser;

	//bi-directional one-to-one association to DivisionStatus
	@OneToOne
	@JoinColumn(name="division_id")
	private DivisionStatus divisionStatus;

	//bi-directional many-to-one association to StatisticalProcess
	@OneToMany(mappedBy="division")
	private List<StatisticalProcess> statisticalProcesses;

	
}
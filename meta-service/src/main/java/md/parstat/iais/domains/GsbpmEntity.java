package md.parstat.iais.domains;

import java.util.List;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.OneToMany;
import javax.persistence.Table;

import lombok.Data;
import lombok.EqualsAndHashCode;

import md.parstat.iais.domains.abstracts.AbstractDomainObject;
import md.parstat.iais.domains.interfaces.Gsbpm;

@Data
@EqualsAndHashCode(callSuper = true)
@Entity(name = "Gsbpm")
@Table(name = "gsbpm", schema = "iais_meta")
public class GsbpmEntity extends AbstractDomainObject implements Gsbpm {

	@Column(name = "id_phase")
	private Long idPhase;

	@Column(name = "id_phase_vers")
	private String idPhaseVers;

	@Column(name = "name_en")
	private String nameEn;

	@Column(name = "name_ro")
	private String nameRo;

	@Column(name = "name_ru")
	private String nameRu;

	@Column(name = "number_phase")
	private String numberPhase;

	@Column(name = "parent_phase")
	private Integer parentPhase;

	// bi-directional many-to-one association to GsbpmStatProc
	@OneToMany(mappedBy = "gsbpm")
	private List<GsbpmStatProcEntity> gsbpmStatProcs;

}
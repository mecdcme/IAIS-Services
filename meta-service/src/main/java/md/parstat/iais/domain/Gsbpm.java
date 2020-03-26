package md.parstat.iais.domain;

import java.io.Serializable;
import javax.persistence.*;

import lombok.Data;

import java.util.List;


@Data
@Entity
@Table(name = "gsbpm",schema = "iais_meta")
@NamedQuery(name="Gsbpm.findAll", query="SELECT g FROM Gsbpm g")
public class Gsbpm implements Serializable {
	private static final long serialVersionUID = 1L;

	@Id
	@Column(name="id_gsbpm")
	private Long idGsbpm;

	@Column(name="id_phase")
	private Long idPhase;

	@Column(name="id_phase_vers")
	private String idPhaseVers;
	
	@Column(name="name_en")
	private String nameEn;

	@Column(name="name_ro")
	private String nameRo;

	@Column(name="name_ru")
	private String nameRu;

	@Column(name="number_phase")
	private String numberPhase;

	@Column(name="parent_phase")
	private Integer parentPhase;

	//bi-directional many-to-one association to GsbpmStatProc
	@OneToMany(mappedBy="gsbpm")
	private List<GsbpmStatProc> gsbpmStatProcs;


}
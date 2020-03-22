package md.parstat.iais.domain;

import java.io.Serializable;
import javax.persistence.*;

import lombok.Data;

import java.math.BigDecimal;
import java.util.List;


@Data
@Entity
@NamedQuery(name="Gsbpm.findAll", query="SELECT g FROM Gsbpm g")
public class Gsbpm implements Serializable {
	private static final long serialVersionUID = 1L;

	@EmbeddedId
	private GsbpmPK id;

	@Column(name="name_en")
	private String nameEn;

	@Column(name="name_ro")
	private String nameRo;

	@Column(name="name_ru")
	private String nameRu;

	@Column(name="number_phase")
	private String numberPhase;

	@Column(name="parent_phase")
	private BigDecimal parentPhase;

	//bi-directional many-to-one association to GsbpmStatProc
	@OneToMany(mappedBy="gsbpm")
	private List<GsbpmStatProc> gsbpmStatProcs;


}
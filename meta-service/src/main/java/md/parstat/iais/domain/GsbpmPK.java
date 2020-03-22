package md.parstat.iais.domain;

import java.io.Serializable;
import javax.persistence.*;

import lombok.Data;

@Data
@Embeddable
public class GsbpmPK implements Serializable {
	//default serial version id, required for serializable classes.
	private static final long serialVersionUID = 1L;

	@Column(name="id_phase")
	private long idPhase;

	@Column(name="id_phase_vers")
	private String idPhaseVers;

}
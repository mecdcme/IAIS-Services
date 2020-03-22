package md.parstat.iais.domain;

import java.io.Serializable;
import java.util.List;

import javax.persistence.*;

import lombok.Data;

@Data
@Entity
@NamedQuery(name="Software.findAll", query="SELECT s FROM Software s")
public class Software implements Serializable {
	private static final long serialVersionUID = 1L;

	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	@Column(name="id_soft")
	private long idSoft;

	@Column(name="name_en")
	private String nameEn;

	@Column(name="name_ro")
	private String nameRo;

	@Column(name="name_ru")
	private String nameRu;

	//bi-directional many-to-one association to StatProcSoftware
	@OneToMany(mappedBy="software")
	private List<StatProcSoftware> statProcSoftwares;

	
}
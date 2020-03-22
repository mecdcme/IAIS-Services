package md.parstat.iais.domain;

import java.io.Serializable;
import java.util.List;

import javax.persistence.*;

import lombok.Data;

@Data
@Entity
@Table(name="law_type")
@NamedQuery(name="LawType.findAll", query="SELECT l FROM LawType l")
public class LawType implements Serializable {
	private static final long serialVersionUID = 1L;

	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	@Column(name="id_law_type")
	private long idLawType;

	@Column(name="type_en")
	private String typeEn;

	@Column(name="type_ro")
	private String typeRo;

	@Column(name="type_ru")
	private String typeRu;

	//bi-directional many-to-one association to Law
	@OneToMany(mappedBy="lawType")
	private List<Law> laws;

	 
}
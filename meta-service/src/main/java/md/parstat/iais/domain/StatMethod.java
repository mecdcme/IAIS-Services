package md.parstat.iais.domain;

import java.io.Serializable;
import java.util.List;

import javax.persistence.*;

import lombok.Data;

@Data
@Entity
@Table(name="stat_methods")
@NamedQuery(name="StatMethod.findAll", query="SELECT s FROM StatMethod s")
public class StatMethod implements Serializable {
	private static final long serialVersionUID = 1L;

	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	@Column(name="id_methods")
	private Long idMethods;

	@Column(name="name_en")
	private String nameEn;

	@Column(name="name_ro")
	private String nameRo;

	@Column(name="name_ru")
	private String nameRu;

	//bi-directional many-to-one association to StatProcStatMeth
	@OneToMany(mappedBy="statMethod")
	private List<StatProcStatMeth> statProcStatMeths;

	public StatMethod() {
	}



}
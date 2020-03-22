package md.parstat.iais.domain;

import java.io.Serializable;
import javax.persistence.*;

import lombok.Data;


@Data
@Entity
@Table(name="division_status")
@NamedQuery(name="DivisionStatus.findAll", query="SELECT d FROM DivisionStatus d")
public class DivisionStatus implements Serializable {
	private static final long serialVersionUID = 1L;

	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private Long id;

	private String name;

	//bi-directional one-to-one association to Division
	@OneToOne(mappedBy="divisionStatus")
	private Division division;


}
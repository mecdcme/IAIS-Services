package md.parstat.iais.domains;

import javax.persistence.*;

import lombok.Data;
import lombok.EqualsAndHashCode;

import md.parstat.iais.domains.abstracts.AbstractDomainObject;
import md.parstat.iais.domains.interfaces.DivisionStatus;


@Data
@EqualsAndHashCode(callSuper=true)
@Entity(name="DivisionStatus")
@Table(name="division_status")
public class DivisionStatusEntity extends AbstractDomainObject implements DivisionStatus {


	private String name;

	//bi-directional one-to-one association to Division
	@OneToOne(mappedBy="divisionStatus")
	private DivisionEntity division;


}
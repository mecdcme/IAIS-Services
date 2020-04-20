package md.parstat.iais.domains;

import java.sql.Date;

import javax.persistence.*;

import lombok.Data;
import lombok.EqualsAndHashCode;

import md.parstat.iais.domains.abstracts.AbstractDomainObject;
import md.parstat.iais.domains.interfaces.StatProcStandard;

@Data
@EqualsAndHashCode(callSuper = true)
@Entity(name = "StatProcStandard")
@Table(name = "stat_proc_standard")
public class StatProcStandardEntity extends AbstractDomainObject implements StatProcStandard {

	@Column(name = "end_date")
	private Date endDate;

	@Column(name = "order_code")
	private Short orderCode;

	@Column(name = "start_date")
	private Date startDate;

	// bi-directional many-to-one association to GsbpmStatProc
	@ManyToOne
	@JoinColumn(name = "id_gsbpm_stat_proc")
	private GsbpmStatProcEntity gsbpmStatProc;

	// bi-directional many-to-one association to Standard
	@ManyToOne
	@JoinColumn(name = "id_standard")
	private StandardEntity standard;

}
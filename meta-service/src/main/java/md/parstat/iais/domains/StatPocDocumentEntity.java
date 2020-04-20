package md.parstat.iais.domains;

import java.sql.Date;

import javax.persistence.*;

import lombok.Data;
import lombok.EqualsAndHashCode;

import md.parstat.iais.domains.abstracts.AbstractDomainObject;
import md.parstat.iais.domains.interfaces.StatPocDocument;

@Data
@EqualsAndHashCode(callSuper = true)
@Entity(name = "StatPocDocument")
@Table(name = "stat_rpoc_document")
public class StatPocDocumentEntity extends AbstractDomainObject implements StatPocDocument {

	@Column(name = "end_date")
	private Date endDate;

	@Column(name = "order_code")
	private Short orderCode;

	@Column(name = "start_date")
	private Date startDate;

	// bi-directional many-to-one association to ProcDocument
	@ManyToOne
	@JoinColumn(name = "id_document")
	private ProcDocumentEntity document;

	// bi-directional many-to-one association to GsbpmStatProc
	@ManyToOne
	@JoinColumn(name = "id_gsbpm_stat_proc")
	private GsbpmStatProcEntity gsbpmStatProc;

}
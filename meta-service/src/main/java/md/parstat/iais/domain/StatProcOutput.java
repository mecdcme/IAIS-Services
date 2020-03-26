package md.parstat.iais.domain;

import java.io.Serializable;
import java.sql.Date;

import javax.persistence.*;

import lombok.Data;

@Data
@Entity
@Table(name="stat_proc_output")
@NamedQuery(name="StatProcOutput.findAll", query="SELECT s FROM StatProcOutput s")
public class StatProcOutput implements Serializable {
	private static final long serialVersionUID = 1L;

	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private Long id;
 
	@Column(name="end_date")
	private Date endDate;

	@Column(name="order_code")
	private Short orderCode;
 
	@Column(name="start_date")
	private Date startDate;

	//bi-directional many-to-one association to GsbpmStatProc
	@ManyToOne
	@JoinColumn(name="id_gsbpm_stat_proc")
	private GsbpmStatProc gsbpmStatProc;

	//bi-directional many-to-one association to ProcOutput
	@ManyToOne
	@JoinColumn(name="id_output")
	private ProcOutput output;


}
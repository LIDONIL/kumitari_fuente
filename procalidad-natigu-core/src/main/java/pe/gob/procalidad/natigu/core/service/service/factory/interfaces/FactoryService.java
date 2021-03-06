package pe.gob.procalidad.natigu.core.service.service.factory.interfaces;

import pe.gob.procalidad.natigu.core.bean.bean.configuracion.MensajesBean;
import pe.gob.procalidad.natigu.core.bean.bean.generico.CrucigramaDetBean;
import pe.gob.procalidad.natigu.core.service.service.implementacion.configuracion.MensajesServiceImp;
import pe.gob.procalidad.natigu.core.service.service.interfaces.academico.AlumnoBonoService;
import pe.gob.procalidad.natigu.core.service.service.interfaces.academico.AlumnoInstitucionService;
import pe.gob.procalidad.natigu.core.service.service.interfaces.academico.AlumnoMedallaService;
import pe.gob.procalidad.natigu.core.service.service.interfaces.academico.AlumnoMonedaGService;
import pe.gob.procalidad.natigu.core.service.service.interfaces.academico.AlumnoService;
import pe.gob.procalidad.natigu.core.service.service.interfaces.academico.DocenteInstitucionService;
import pe.gob.procalidad.natigu.core.service.service.interfaces.academico.DocenteService;
import pe.gob.procalidad.natigu.core.service.service.interfaces.academico.EspecialidadService;
import pe.gob.procalidad.natigu.core.service.service.interfaces.academico.EvaluacionDetalleService;
import pe.gob.procalidad.natigu.core.service.service.interfaces.academico.EvaluacionService;
import pe.gob.procalidad.natigu.core.service.service.interfaces.academico.InscripcionDocenteService;
import pe.gob.procalidad.natigu.core.service.service.interfaces.academico.InscripcionLenguaService;
import pe.gob.procalidad.natigu.core.service.service.interfaces.academico.InscripcionService;
import pe.gob.procalidad.natigu.core.service.service.interfaces.academico.MatriculaAlumnoService;
import pe.gob.procalidad.natigu.core.service.service.interfaces.academico.MatriculaDocenteService;
import pe.gob.procalidad.natigu.core.service.service.interfaces.academico.MatriculaService;
import pe.gob.procalidad.natigu.core.service.service.interfaces.academico.SeguimientoAlumIntentoService;
import pe.gob.procalidad.natigu.core.service.service.interfaces.academico.SeguimientoAlumnoEjerDetService;
import pe.gob.procalidad.natigu.core.service.service.interfaces.academico.SeguimientoAlumnoEjercicioService;
import pe.gob.procalidad.natigu.core.service.service.interfaces.academico.SeguimientoAlumnoLenguaService;
import pe.gob.procalidad.natigu.core.service.service.interfaces.academico.UsuarioMatriculaService;
import pe.gob.procalidad.natigu.core.service.service.interfaces.configuracion.AdquisicionUsuarioService;
import pe.gob.procalidad.natigu.core.service.service.interfaces.configuracion.BonoService;
import pe.gob.procalidad.natigu.core.service.service.interfaces.configuracion.ComboCabService;
import pe.gob.procalidad.natigu.core.service.service.interfaces.configuracion.ExamenConfiguracionService;
import pe.gob.procalidad.natigu.core.service.service.interfaces.configuracion.FondoService;
import pe.gob.procalidad.natigu.core.service.service.interfaces.configuracion.GlosarioService;
import pe.gob.procalidad.natigu.core.service.service.interfaces.configuracion.IntentoConfiguracionService;
import pe.gob.procalidad.natigu.core.service.service.interfaces.configuracion.MascotaService;
import pe.gob.procalidad.natigu.core.service.service.interfaces.configuracion.MensajesService;
import pe.gob.procalidad.natigu.core.service.service.interfaces.configuracion.ModalService;
import pe.gob.procalidad.natigu.core.service.service.interfaces.configuracion.PremioConfiguracionService;
import pe.gob.procalidad.natigu.core.service.service.interfaces.configuracion.PremioService;
import pe.gob.procalidad.natigu.core.service.service.interfaces.configuracion.SliderDetalleService;
import pe.gob.procalidad.natigu.core.service.service.interfaces.configuracion.SliderService;
import pe.gob.procalidad.natigu.core.service.service.interfaces.configuracion.TraduccionService;
import pe.gob.procalidad.natigu.core.service.service.interfaces.general.AlterTextoPalabraCorrectaService;
import pe.gob.procalidad.natigu.core.service.service.interfaces.general.AlterTextoPalabraEncerradaService;
import pe.gob.procalidad.natigu.core.service.service.interfaces.general.AlternativaService;
import pe.gob.procalidad.natigu.core.service.service.interfaces.general.ArmarDocumentoCabService;
import pe.gob.procalidad.natigu.core.service.service.interfaces.general.ArmarDocumentoService;
import pe.gob.procalidad.natigu.core.service.service.interfaces.general.ArrastraOraDetService;
import pe.gob.procalidad.natigu.core.service.service.interfaces.general.CrucigramaDetService;
import pe.gob.procalidad.natigu.core.service.service.interfaces.general.CrucigramaService;
import pe.gob.procalidad.natigu.core.service.service.interfaces.general.InstitucionDirectorService;
import pe.gob.procalidad.natigu.core.service.service.interfaces.general.InstitucionLenguaService;
import pe.gob.procalidad.natigu.core.service.service.interfaces.general.InstitucionOperadorService;
import pe.gob.procalidad.natigu.core.service.service.interfaces.general.InstitucionSedeService;
import pe.gob.procalidad.natigu.core.service.service.interfaces.general.InstitucionService;
import pe.gob.procalidad.natigu.core.service.service.interfaces.general.LeccionMaterialService;
import pe.gob.procalidad.natigu.core.service.service.interfaces.general.LenguaEstructuraService;
import pe.gob.procalidad.natigu.core.service.service.interfaces.general.LenguaService;
import pe.gob.procalidad.natigu.core.service.service.interfaces.general.Maestra1Service;
import pe.gob.procalidad.natigu.core.service.service.interfaces.general.Maestra2Service;
import pe.gob.procalidad.natigu.core.service.service.interfaces.general.MaterialEjercicioService;
import pe.gob.procalidad.natigu.core.service.service.interfaces.general.MaterialTipoEjercicioService;
import pe.gob.procalidad.natigu.core.service.service.interfaces.general.OracionAlterService;
import pe.gob.procalidad.natigu.core.service.service.interfaces.general.OracionCompletarService;
import pe.gob.procalidad.natigu.core.service.service.interfaces.general.OrdenarParrafoCabeceraService;
import pe.gob.procalidad.natigu.core.service.service.interfaces.general.OrdenarParrafoService;
import pe.gob.procalidad.natigu.core.service.service.interfaces.general.PersonaLenguaService;
import pe.gob.procalidad.natigu.core.service.service.interfaces.general.PersonaNacionalidadService;
import pe.gob.procalidad.natigu.core.service.service.interfaces.general.PersonaService;
import pe.gob.procalidad.natigu.core.service.service.interfaces.general.PersonalService;
import pe.gob.procalidad.natigu.core.service.service.interfaces.general.PreguntaService;
import pe.gob.procalidad.natigu.core.service.service.interfaces.general.RelacionService;
import pe.gob.procalidad.natigu.core.service.service.interfaces.general.RelacionVariadaService;
import pe.gob.procalidad.natigu.core.service.service.interfaces.general.RelacionCabeceraService;
import pe.gob.procalidad.natigu.core.service.service.interfaces.general.UbigeoService;
import pe.gob.procalidad.natigu.core.service.service.interfaces.general.UnidadLeccionService;
import pe.gob.procalidad.natigu.core.service.service.interfaces.general.UnidadService;
import pe.gob.procalidad.natigu.core.service.service.interfaces.seguridad.AccesoService;
import pe.gob.procalidad.natigu.core.service.service.interfaces.seguridad.AuditoriaService;
import pe.gob.procalidad.natigu.core.service.service.interfaces.seguridad.PerfilService;
import pe.gob.procalidad.natigu.core.service.service.interfaces.seguridad.UsuarioPerfilService;
import pe.gob.procalidad.natigu.core.service.service.interfaces.seguridad.UsuarioService;

public interface FactoryService {
	
	/** ACADEMICO **/
	public AlumnoService getAlumnoService();
	public DocenteService getDocenteService();
	public EspecialidadService getEspecialidadService();
	public InscripcionDocenteService getInscripcionDocenteService();
	public InscripcionLenguaService getInscripcionLenguaService();
	public InscripcionService getInscripcionService();
	public MatriculaAlumnoService getMatriculaAlumnoService();
	public MatriculaDocenteService getMatriculaDocenteService();
	public MatriculaService getMatriculaService();
	public SeguimientoAlumnoEjerDetService getSeguimientoAlumnoEjerDetService();
	public SeguimientoAlumnoEjercicioService getSeguimientoAlumnoEjercicioService(); 
	public UsuarioMatriculaService getUsuarioMatriculaService(); 
	public AlumnoMonedaGService getAlumnoMonedaGService(); 
	public AlumnoBonoService getAlumnoBonoService(); 
	public SeguimientoAlumnoLenguaService getSeguimientoAlumnoLenguaService();
	public EvaluacionService getEvaluacionService();
	public EvaluacionDetalleService getEvaluacionDetalleService();
	public AlumnoInstitucionService getAlumnoInstitucionService();
	public DocenteInstitucionService getDocenteInstitucionService();
	/** CONFIGURACION **/
	public ExamenConfiguracionService getExamenConfiguracionService();
	public FondoService getFondoService();
	public ComboCabService getComboService();
	public MascotaService getMascotaService();
	public PremioConfiguracionService getPremioConfiguracionService();
	public PremioService getPremioService();
	public SliderService getSliderService();
	public SliderDetalleService getSliderDetalleService();
	public AdquisicionUsuarioService getAdquisicionUsuarioService();
	public ModalService getModalService();
	public IntentoConfiguracionService getIntentoConfiguracionService();
	public TraduccionService getTraduccionService();
	public BonoService  getBonoService();

	/** GENERAL **/
	public AlternativaService getAlternativaService();
	public CrucigramaService getCrucigramaService();
	public AlterTextoPalabraCorrectaService getalterTextoPalabraCorrectaService();
	public AlterTextoPalabraEncerradaService getAlterTextoPalabraEncerradaService();
	public InstitucionDirectorService getInstitucionDirectorService();
	public InstitucionLenguaService getInstitucionLenguaService();
	public InstitucionOperadorService getInstitucionOperadorService();
	public InstitucionSedeService getInstitucionSedeService();
	public InstitucionService getInstitucionService();
	public LeccionMaterialService getLeccionMaterialService();
	public LenguaEstructuraService getLenguaEstructuraService();
	public LenguaService getLenguaService();
	public Maestra1Service getMaestra1Service();
	public Maestra2Service getMaestra2Service();
	public MaterialEjercicioService getMaterialEjercicioService();
	public MaterialTipoEjercicioService getMaterialTipoEjercicioService();
	public OracionAlterService getOracionAlterService();
	public OracionCompletarService getOracionCompletarService();
	public OrdenarParrafoCabeceraService getOrdenarParrafoCabeceraService();
	public OrdenarParrafoService getOrdenarParrafoService();
	public PersonaLenguaService getPersonaLenguaService();
	public PersonalService getPersonalService();
	public PersonaNacionalidadService getPersonaNacionalidadService();
	public PersonaService getPersonaService();
	public PreguntaService getPreguntaService();
	public RelacionService getRelacionService();
	public CrucigramaDetService getCrucigramaDetService();
	public RelacionCabeceraService getRelacionCabeceraService();
	public UbigeoService getUbigeoService();
	public UnidadLeccionService getUnidadLeccionService();
	public UnidadService getUnidadService();
	public ArrastraOraDetService getArrastraOraDetService();
	public SeguimientoAlumIntentoService getSeguimientoAlumIntentoService();
	public RelacionVariadaService getRelacionVariadaService();
	public ArmarDocumentoCabService getArmarDocumentoCabService();
	public ArmarDocumentoService getArmarDocumentoService();
	

	/** SEGURIDAD **/
	public AccesoService getAccesoService();
	public PerfilService getPerfilService();
	public UsuarioPerfilService getUsuarioPerfilService();
	public UsuarioService getUsuarioService();
	public AuditoriaService getAuditoriaService();
	
	public AlumnoMedallaService getAlumnoMedallaService();
	
	public MensajesService getMensajeService();
	
	public GlosarioService getGlosarioService(); 

}
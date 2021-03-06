<%@ page contentType="text/html; charset=UTF-8" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="f"%>

<style type="text/css">

	.selec-invalid-opt{
        color:#fe3938!important;
        border:2px solid #fe3938!important;
    }
    .selec-valid-opt{
        color:#3ba458!important;
        border:2px solid #3ba458!important;
    }
</style>

<!-- completar-oracion -->
	<div class="row row-bottom-padded-md">
		<div class="col-md-12 to-animate fondo-lectura fadeInUp animated">
			<!-- Titulo de morado -->
			<div class="row main-nav-pag">
				<div class="col-md-12">
					<c:if test="${not empty materialTipoEjercicioBean.comprension}">
						<span class="material-style">${materialTipoEjercicioBean.comprension}</span>
					</c:if>
				</div>
			</div>
			
			<!-- pre id="itdPrueba"></pre-->

			<div class="row main-nav-pag">
				<div class="col-md-12">
					<nav id="pagination-leccion">
					<ul class="control-box pager">
						<li><a id="glosario-link" onclick="mostrarGlosario()" href="#">Glosario <i class="fa fa-sort-alpha-desc"></i></a></li>
						<c:choose>
							<c:when test="${usuarioEstudiante.codPerfilUsuSelec == 4}">
								<c:if test="${(empty evaluacionDetalle.codigo) or (evaluacionDetalle.codigo==0)}">
									<li><a data-slide="prev" onclick="anterior_ejercicio()" href="#" class="opt-before-exercise"><i class="fa fa-mail-reply"></i></a></li>
									<li><a data-slide="next" onclick="siguiente_ejercicio()" href="#" class="opt-next-exercise"><i class="fa fa-mail-forward"></i></a></li>
								</c:if>	
							</c:when>
							<c:otherwise>
									<li><a data-slide="prev" onclick="anterior_ejercicio()" href="#" class="opt-before-exercise"><i class="fa fa-mail-reply"></i></a></li>
									<li><a data-slide="next" onclick="siguiente_ejercicio()" href="#" class="opt-next-exercise"><i class="fa fa-mail-forward"></i></a></li>
							</c:otherwise>
						</c:choose>
					</ul>
					</nav>
				</div>
			</div>

			<div class="row">
				<div class="col-md-12">
			   		<div id="content-text-glosario" style="display: none;">
			   			<span id="content-icon-m">
			   				<i class="icon-notebook"></i>
			   			</span>
						<div id="textoGlosario"></div>
						<span class="close-conten" onclick="ocultarDivGlosario()"></span>
			   		</div>
				</div>
			</div>
	
			<!-- pre>codEvaluacionDet: ${evaluacionDetalle.codigo}</pre -->
			<div class="row">
			<input id="codEvaluacionDet" type="hidden"  value="${evaluacionDetalle.codigo}">
			<input id="intent1" type="hidden" value="${intentoConfiguracionBean.intento1}">
			<input id="intent2" type="hidden" value="${intentoConfiguracionBean.intento2}">
			<input id="intent3" type="hidden" value="${intentoConfiguracionBean.intento3}">
			<input id="codigoMTE" type="hidden" value="${materialTipoEjercicioBean.codigo}">
			<input id="codLeccion" type="hidden" value="${materialTipoEjercicioBean.leccionMaterialBean.codigo}">
			<input id="codTipoEjer" type="hidden" value="${materialTipoEjercicioBean.tipoEjercicio.codigoRegistro}">
			<div class="row">
				<div class="col-md-12" id="titulos">
				</div>
			</div>
			</div>
			<div class="row">
			   <div class="col-md-12" id="cambiotitu" style="text-align: center;font-weight: bolder;"></div>
			  <div class="col-md-12" id="cambio">
			  <!-- Pregunta para completar -->
			  <!--
				<p class="font-text" >
					<select name="" class="select-app">
					 	<option value="">Posoqoy</option>
					 	<option value="">Posoqoy</option>
					 </select> llaqtaqa qu??i pacham. Tayta
					 <select name="" class="select-app">
					 	<option value="">entipas</option>
					 	<option value="">entipas</option>
					 </select> allintam kankan. Chaymantam
					 <select name="" class="select-app">
					 	<option value="">ronakunapas</option>
					 	<option value="">ronakunapas</option>
					 </select>,
					 <select name="" class="select-app">
					 	<option value="">oywakunapas</option>
					 	<option value="">oywakunapas</option>
					 </select>,
					 <select name="" class="select-app">
					 	<option value="">kurakunapas</option>
					 	<option value="">kurakunapas</option>
					 </select>
					 , qu??i kasqanmanta kawsarikunku.
					Pusuquy llaqtapiqa kay kawsaykunan wi??an: sapallu, hawinka, purutukuna, trigo, sara. Miski ruruq
					hatun sachakunapas kallantaq: chirimuya, durazno, peras, pakay. Huchuy qurakunapas qillu uchu,
					pipinillu, tumati ima wi??an. Chaynataq tunaspas kallanpuni.
					Hinallataq, lima quwi, luru, kawra uywakunapas kawsanku. Sachakunapas, tara, mulli, hinallataq
					wira chillka, muqu muqu, chamana ima wi??an.
					Chaynam Pusuquy llaqtaqa. Qampapas, ??uqapapas, paypapas llaqtanchikqa sutiyuqmi.
				</p> -->
			  </div>
			</div>
			
			<!--pre>${not empty materialTipoEjercicioBean.expresionGramatical}</pre-->
			<!--pre>${lenguaBean}</pre-->
			<!--pre>${lenguaBean.codigo}</pre-->
			<!--pre>${lenguaBean.codigo==24}</pre-->
			<!--pre>${materialTipoEjercicioBean.expresionGramatical}</pre-->

			<c:if test="${ materialTipoEjercicioBean.expresionGramatical.trim()  != '' }">
				<div class="row">
				<c:choose>
					<c:when test="${lenguaBean.codigo==24}">
						<div class="col-md-12" style="margin-top: 15px;">
					   		<div id="content-text-castellano">
								${materialTipoEjercicioBean.expresionGramatical}
					   		</div>
						</div>
					</c:when>
					<c:otherwise>
					    <div class="col-md-12" style="margin-top: 15px;">
							<span onclick="mostrarDivNew()" id="idShowIndGram">
					   				<i class="icon-notebook"></i>
					   		</span>
						</div>
						<div class="col-md-12" style="margin-top: 15px;">
					   		<div id="content-text-info">
					   			<span id="content-icon-m">
					   				<i class="icon-notebook"></i>
					   			</span>
								${materialTipoEjercicioBean.expresionGramatical}
								<span class="close-conten" onclick="ocultarDivNew()"></span>
					   		</div>
						</div>
					</c:otherwise>
				</c:choose>
				</div>
			</c:if>

			<div class="row">
				<div class="col-md-12">
					<div class="form-group text-center" id="divEvaluarEjercicio">
						<br>

					<c:choose>
						<c:when test="${evaluacionDetalle.codigo>0}">
							<button type='button' id='btn_validar_ejercicio'
								onclick='valor()'
								class='btn btn-primary icon-arrow btn-lg btn-min-width'>
								<i class="icon-arrow-right2"></i>
							</button>
						</c:when>
						<c:otherwise>
						<input id="direccion" type="hidden" value="${material.codigo}">
						<a id="btnevaluar"
						   class="btn btn-primary icon-arrow btn-lg ${usuarioEstudiante.codPerfilUsuSelec == 4 ? 'disabled' : ''}"
						   onclick="${usuarioEstudiante.codPerfilUsuSelec == 4 ? 'valor()' : 'siguiente_ejercicio()'}" >
						   <i class="icon-arrow-right2"></i></a>
						</c:otherwise>
					</c:choose>

					</div>
				</div>
			</div>
		</div>
	</div>


<script src="${pageContext.request.contextPath}/assets/js/page/relacionar-img.js" type="text/javascript"></script>
<script src="${pageContext.request.contextPath}/assets/js/actividad/completarEspacios.js" type="text/javascript"></script>
<c:choose>
	<c:when test="${evaluacionDetalle.codigo>0}">
	<script
	src="${pageContext.request.contextPath}/assets/js/actividad/evaluacion/completarEspaciosEvaluacion.js"
	type="text/javascript"></script>
	</c:when>
	<c:otherwise>
	<script src="${pageContext.request.contextPath}/assets/js/actividad/completarEspacios.js" type="text/javascript"></script>

	</c:otherwise>
</c:choose>


<script type="text/javascript">
		//window.onload = function() {
		if($('#codEvaluacionDet').val()==''||$('#codEvaluacionDet').val()==0){
			
			
			monedaGemaObtenidas();
			BuscarIntentosRealizados();
			//	BuscarIntentosRealizados();
		}
	traducirSub();
	ListarEjercicio();
	//ListarEjercicioTemporal();
	
/*
	 function ListarEjercicioTemporal(){
		    //var codmte =  $('#codigoMTE').val();
		    var codmte =  $('#codigoMTE').val();
		    // var codmte =  codigo;
		    var url =  contextPath+"/lengua/ListTodoxTE";
		    console.log('codmte oraciones',codmte);
		   // console.log('idmatipej1 ####',idmatipej1);
		    var html = "";
		     $.ajax({
		      async: true,
		      type : 'GET',
		      data :{p_codmatpej : codmte },
		      url  : url,
		       success : function(data) {
		    	 
		    	 tamanoPReg=[];
		         var oracorregida = '';
		         var listDetalle = '';
		         var combo='';
		         var final='';
		         console.log('data pregunta a mostrar: ',data);
		         if(data != null && data.length > 0){

			         oracorregida = data != null ? data[0].oracionCompletarBean.oracion : '';

		//
//				          for(var i=0;i<data.length ;i++)
//				          {
//				        		  hora = data[i].palabraEncerrada;
		//
//				        		  oracorregida = oracorregida.replace(hora+"%" , '<strong style="border: aqua;border-style: double;border-radius: 50%;padding: 3px;background: aqua;">'+hora+'</strong>' );
////				        		  listDetalle=data[i].palabraEncerrada;
////			        			  console.log('listDetalle :: '+listDetalle);
		//
//				        	         if (data[i].textoPalabraEncerradaBean.comentario!='' || data[i].textoPalabraEncerradaBean.comentario!=null) {
//				 		            	$(".comentariotPC").html('<span class="pull-left" style="margin-right: 6px;">'
//				 		            						+	'<img src="'+contextPath+'/assets/images/icono-ejercicio/LIBRO-1.png" width="25px">'
//				 		            						+ '</span>' + data[i].textoPalabraEncerradaBean.comentario);
//				 					}else {
//				 						var htmlattri="display: none;";
//				 						$('#coment').attr('style', htmlattri);
//				 						console.log('no trajo comentario::: ');
//				 					}
//				          }
			          for(var e=0;e<50;e++)
			          {
			              var hora='';

			              for(var i=0;i<data.length ;i++)
			              {
				              if(data[i].nroOrden==e)
				              {
				                hora = data[i].oracionCompletarBean;
				              }		        
			              }
			              oracorregida = oracorregida.replace("%"+e+"%" , '<strong style="border: aqua solid;border-radius: 50%;padding: 0px 7px;vertical-align: sub;">'+hora+'</strong>' );
			              console.log('oracorregida',oracorregida);
			            }
						


//				           for(var i=0;i<data.length ;i++)
//				           {
//				        	   if (data[i].palabraEncerrada!=null) {
//				        		   html=
//		  			  					'<li style="color: #020202;font-weight: 500;">'+
//		  			  						data[i].palabraEncerrada
//		     							'</li>';
		//
//				        	 //  $('#list-Alter').html(html);
//				        	   final =final+ html;
//							}else {
//								final ='';
//							}
		//
//				           }
//				           $('#list-Alter').html('<ul style="list-style-type:decimal;">'+final+'</ul>');
//				           final =final+ html;
//				             }


//			          console.log("cnt:" + data[0].textoPalabraEncerradaBean.comentario);
		              if (data[0].oracionCompletarBean.descripcion=="" || data[0].oracionCompletarBean.descripcion==null) {
		            	  //var htmlattri="display: none;";
							//$('#coment').attr('style', htmlattri);
		            	  //$('#coment').hide();
		            	  $("#comtpc1").css("display","none");
		            	  $("#comtpc2").css("display","none");
		            	//console.log('no trajo comentario::: ');
						}else {
							
								 $(".comentariotPC").html(data[0].oracionCompletarBean.descripcion);
								 $("#comtpc1").css("display","none");
				            	  $("#comtpc2").css("display","none");	
							
				            	//console.log('trajo comentario::: ');
						}
			          
				           if (data != null) {
			                $('#cambio').html('<p class="font-text" style="text-align: center;font-weight: bold;">  '+ data[0].oracionCompletarBean.titulo +' </p><p class="font-text" style="text-align: justify;">  '+ oracorregida + ' </p>');
			                // $('#titulos').html('<h4 class="sub-title-app">' + data[0].oracionCompletarBean.materialTipoEjercicioBean.titulo + '</h4><p class="title-minendu ttpregunta" id="title-preg">'+ data[0].oracionCompletarBean.titulo + '</p>' );
			                $('#titulos').html(icono_titulo
			  						+'<h4 class="sub-title-app" style="opacity: 1;">'+ data[0].oracionCompletarBean.materialTipoEjercicioBean.titulo + '</h4>' );
		
				            }else{
				                 return false;
				            }
		         	}

		          },
		        error : function(data) {
		        	//console.log("error ");
		    }
		  });
		}*/
		//};
</script>
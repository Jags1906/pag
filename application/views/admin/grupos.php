<main>
	<nav class="breadcrumb-nav col s12 truncate" style="margin-bottom:10px">
		<div class="nav-wrapper grey lighten-1">
			<div class="col s12">
				<a href="<?php echo base_url() ?>tablas/disciplinas" class="breadcrumb">{{ disciplinaDesc }}</a>
				<a href="" class="breadcrumb">Grupos</a>
			</div>
		</div>
    </nav>
 				<!-- <h4 class="center">{{ disciplinaDesc }}. Grupos </h4> -->
				<button data-target="modal2" class="btn modal-trigger">Agregar</button>
				
				<table class="bordered">
					<tr>
						<th>ID</th>
						<th>Codigo</th>
						<th>Descripcion</th>
						<th></th>
						<th></th>
						<th></th>
					</tr>
					<tr v-for="(grupo,index) in grupos" v-show="(pag - 1) * NUM_RESULTS <= index  && pag * NUM_RESULTS > index">
						<td>{{ grupo.idGrupo }}</td>
						<td>{{ grupo.grupoCodigo }}</td>
						<td>{{ grupo.grupoDescripcion }}</td>
						<td>
							<button class="btn-floating red" @click="eliminar(grupo)">
								<i class="material-icons">delete</i> 
							</button>
						</td> 
						<td>
							<button class="btn-floating blue" @click="cargaModal(grupo)">
								<i class="material-icons">edit</i> 
							</button>
						<td>
						<td>
							<a class="btn-floating blue" v-bind:href="'http://localhost/inventario/tablas/subgrupos/grupo/'+ grupo.idGrupo"><i class="material-icons">arrow_forward</i></a>
						<td>
					</tr>
				</table>
				<div style="margin-top:10px">
					<ul class="pagination text-center">
						<li class="waves-effect blue">
							<a href="#" aria-label="Previous" v-show="pag != 1" @click.prevent="pag -= 1">
								<span aria-hidden="true" class="white-text">Anterior</span>
							</a>
						</li>
						<li class="waves-effect blue text-white">
							<a href="#" aria-label="Next" v-show="pag * NUM_RESULTS / grupos.length < 1" @click.prevent="pag += 1">
								<span aria-hidden="true" class="white-text">Siguiente</span>
							</a>
						</li>
					</ul>
				</div>			
			</div>
		  </div>	

		    
		<!-- Modal Structure -->
		<div id="modal1" class="modal modal-fixed-footer">
			<div class="modal-content">
			<h4>Editar Grupo</h4>
			<p>
				<input type="hidden" id="idGrupo" v-model="grupoModal.idGrupo">
				<input type="hidden" id="disciplina" v-model="grupoModal.disciplina">
				<div class="input-field">
					<input id="grupoCodigo" type="text" v-model="grupoModal.grupoCodigo" placeholder="grupoModal.grupoCodigo">
					<label for="grupoCodigo">Codigo</label>
				</div>
				<div class="input-field">
					<input id="grupoDescripcion" type="text" v-model="grupoModal.grupoDescripcion" placeholder="grupoModal.grupoDescripcion">
					<label for="grupoDescripcion">Descripcion</label>
				</div>
			</p>
			</div>
			<div class="modal-footer">
				<button class="btn" @click="actualizar">Actualizar</button>
			<a class="modal-close waves-effect waves-green btn-flat">Cerrar</a>
			</div>
		</div>  

		<div id="modal2" class="modal modal-fixed-footer">
			<div class="modal-content">
				<h4>Agregar grupo</h4>
					<p>
						<div class="input-field">
							<input id="grupoCodigo" type="text" v-model="grupoCodigo">
							<label for="grupoCodigo">Codigo</label>
						</div>	
						<div class="input-field">
							<input id="grupoDescripcion" type="text" v-model="grupoDescripcion">
							<label for="grupoDescripcion">Descripcion</label>
						</div>
							  
			        </p>
			</div>
			<div class="modal-footer">
				<button class="btn" @click="insertar">Guardar</button>
				<a class="modal-close waves-effect waves-green btn-flat">Cerrar</a>
			</div>
		</div>
 </main>	
      <!--JavaScript at end of body for optimized loading-->
	 <script src="https://unpkg.com/vue/dist/vue.js"></script>
 	 <script src="https://cdn.jsdelivr.net/npm/vue@2/dist/vue.js"></script>
 	 <script src="https://unpkg.com/axios/dist/axios.min.js"></script>
	 <script src="<?php echo base_url() ?>assets/js/grupos.js"></script>
	  
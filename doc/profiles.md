mi proyecto  (studiantes)
	create_proyects (boton crear) POST ! 
	get_proyects GET
	edit_project (boton editar) PUT DELETE
	get_users

Mis tutorias
	get_proyects
	edit_tutor_requests !

Mis solicitudes 
	get_projects
	(edit_projects || edit_tutor_requests) si sos estudiand o tutor sea caso ! 

Requerimientos
	(get_project) !
	edit_requirements (post, delete, put)

Ideas
	get_project ! (no puede realizar acciones, solo ver informacion) 
				// nombre descripcion, participantes (tutor y estudiantes) aceptados 


Contacto || Proyecto
	free !!!! 

Proyecto en curso (CC)
	approve_projets  !

Usuarios (Admin)
	edit_users ! (post, put, delete)
	get_users

Perfiles (Admin)
	get_profiles
	edit_profiles ! (post, put, delete)

/*
Tutores
	lista de tutores - proyectos tomados/ terminados/ carrera/ temas de interes
*/


Usuarios: 
	Studiante: 
		get_project
		create_proyects
		edit_project
		get_users
	Tutor: 
		get_project
		edit_tutor_request
	CC: 
		get_project
		approve_projets
	Admin
		get_projects
		create_proyects
		edit_projects
		get_users
		get_projects
		edit_tutor_request
		edit_users
		get_users
		get_profiles
		edit_profiles

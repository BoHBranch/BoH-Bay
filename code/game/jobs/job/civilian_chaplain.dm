//Due to how large this one is it gets its own file
/datum/job/chaplain
	title = "Capellan"
	department = "Civil"
	department_flag = CIV

	total_positions = 1
	spawn_positions = 1
	supervisors = "el jefe de personal"
	access = list(access_morgue, access_chapel_office, access_crematorium, access_maint_tunnels)
	minimal_access = list(access_morgue, access_chapel_office, access_crematorium)
	outfit_type = /decl/hierarchy/outfit/job/chaplain

	equip(var/mob/living/carbon/human/H, var/alt_title, var/ask_questions = TRUE)
		. = ..()
		if(!.)
			return
		if(!ask_questions)
			return

		var/obj/item/weapon/storage/bible/B = locate(/obj/item/weapon/storage/bible) in H
		if(!B)
			return

		spawn(0)
			var/religion_name = "Cristianismo"
			var/new_religion = sanitize(input(H, "Eres el oficial de servicios de la tripulacion. Te gustaria cambiar tu religion? La default es el cristianismo, en el ESPACIO.", "Name change", religion_name), MAX_NAME_LEN)

			if (!new_religion)
				new_religion = religion_name
			switch(lowertext(new_religion))
				if("christianity")
					B.SetName(pick("La Santa Biblia","Los Pergaminos Del Mar Muerto"))
				if("satanism")
					B.SetName("La Biblia Maldita")
				if("cthulu")
					B.SetName("El Necronomicon")
				if("islam")
					B.SetName("El Coran")
				if("scientology")
					B.SetName(pick("La Biografia de L. Ron Hubbard","Dianetica"))
				if("chaos")
					B.SetName("El Libro de Lorgar")
				if("imperium")
					B.SetName("Uplifting Primer")
				if("toolboxia")
					B.SetName("Manifiesto de la Toolbox")
				if("homosexuality")
					B.SetName("Guys Gone Wild")
				if("science")
					B.SetName(pick("Principios de Relatividad", "Enigma Cuantico: Fisicas Encuentran la Conciencia", "Programando el Universo", "Fisica Cuantica y Teologia", "Teoria de Cuerdas Para Bobos", "Como Construir Tu Propio Motor de Salto", "Los Misterios del Bluespace", "Jugando a Ser Dios: Edicion de Coleccionista"))
				else
					B.SetName("El Sagrado Libro de [new_religion]")
			SSstatistics.set_field_details("religion_name","[new_religion]")

		spawn(1)
			var/deity_name = "Jesus Espacial"
			var/new_deity = sanitize(input(H, "Te gustaria cambiar a tu deidad? La default es Jesus Espacial.", "Name change", deity_name), MAX_NAME_LEN)

			if ((length(new_deity) == 0) || (new_deity == "Space Jesus") )
				new_deity = deity_name
			B.deity_name = new_deity

			var/accepted = 0
			var/outoftime = 0
			spawn(200) // 20 seconds to choose
				outoftime = 1
			var/new_book_style = "Bible"

			while(!accepted)
				if(!B) break // prevents possible runtime errors
				new_book_style = input(H,"Que estilo de biblia prefieres?") in list("Bible", "Koran", "Scrapbook", "Creeper", "White Bible", "Holy Light", "Athiest", "Tome", "The King in Yellow", "Ithaqua", "Scientology", "the bible melts", "Necronomicon")
				switch(new_book_style)
					if("Koran")
						B.icon_state = "koran"
						B.item_state = "koran"
					if("Scrapbook")
						B.icon_state = "scrapbook"
						B.item_state = "scrapbook"
					if("Creeper")
						B.icon_state = "creeper"
						B.item_state = "syringe_kit"
					if("White Bible")
						B.icon_state = "white"
						B.item_state = "syringe_kit"
					if("Holy Light")
						B.icon_state = "holylight"
						B.item_state = "syringe_kit"
					if("Athiest")
						B.icon_state = "athiest"
						B.item_state = "syringe_kit"
					if("Tome")
						B.icon_state = "tome"
						B.item_state = "syringe_kit"
					if("The King in Yellow")
						B.icon_state = "kingyellow"
						B.item_state = "kingyellow"
					if("Ithaqua")
						B.icon_state = "ithaqua"
						B.item_state = "ithaqua"
					if("Scientology")
						B.icon_state = "scientology"
						B.item_state = "scientology"
					if("the bible melts")
						B.icon_state = "melted"
						B.item_state = "melted"
					if("Necronomicon")
						B.icon_state = "necronomicon"
						B.item_state = "necronomicon"
					else
						B.icon_state = "bible"
						B.item_state = "bible"

				H.update_inv_l_hand() // so that it updates the bible's item_state in his hand

				switch(input(H,"Mira a tu biblia - es esta la que quieres?") in list("Yes","No"))
					if("Yes")
						accepted = 1
					if("No")
						if(outoftime)
							to_chat(H, "Welp, se acabo el tiempo, amiguito. Estas atascado. Escoge mas rapido la proxima vez.")
							accepted = 1

			SSstatistics.set_field_details("religion_deity","[new_deity]")
			SSstatistics.set_field_details("religion_book","[new_book_style]")
		return 1

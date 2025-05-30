if GetLocale() ~= "esES" and GetLocale() ~= "esMX" then return end

if not DBM_CORE_L then DBM_CORE_L = {} end

local L = DBM_CORE_L

L.HOW_TO_USE_MOD			= "Bienvenido a DBM. Escribe '/dbm help' para ver la lista de comandos. Para acceder a la configuración no tienes más que escribir '/dbm'."
L.SILENT_REMINDER			= "Recordatorio: DBM sigue en modo silencioso."

L.LOAD_MOD_ERROR			= "Error al cargar el módulo de %s: %s"
L.LOAD_MOD_SUCCESS			= "Módulo de '%s' cargado. Para más opciones, como alertas de sonido o notas de aviso personalizadas, escribe '/dbm'."
L.LOAD_MOD_COMBAT			= "Carga del módulo de '%s' aplazada hasta salir de combate."
L.LOAD_GUI_ERROR			= "No se ha podido cargar la interfaz: %s"
L.LOAD_GUI_COMBAT			= "La interfaz no se puede cargar en combate. Se cargará la interfaz al salir de combate. Una vez cargada, podrás iniciar la interfaz en combate."
L.BAD_LOAD					= "DBM ha detectado que no se ha podido cargar el módulo de esta estancia porque estás en combate. Por favor, escribe '/console reloadui' nada más salir de combate."
L.LOAD_MOD_VER_MISMATCH		= "No se ha podido cargar el módulo de %s porque tu módulo de DBM-Core no cumple los requisitos necesarios. Se necesita una versión más reciente."
L.LOAD_MOD_EXP_MISMATCH		= "No se ha podido cargar el módulo de %s porque está diseñado para una expansión que aún no se encuentra disponible. Este módulo se habilitará automáticamente cuando salga la nueva expansión."
L.LOAD_MOD_TOC_MISMATCH		= "No se ha podido cargar el módulo de %s porque está diseñado para un parche de WoW que aún no se encuentra disponible. Este módulo se habilitará automáticamente cuando salga dicho parche."
L.LOAD_MOD_DISABLED			= "%s está instalado pero se encuentra desactivado. Este módulo no se cargará hasta que lo actives."
L.LOAD_MOD_DISABLED_PLURAL	= "%s están instalados pero se encuentran desactivados. Estos módulos no se cargarán hasta que los actives."

L.COPY_URL_DIALOG			= "Copiar vínculo"

--Post Patch 7.1
L.NO_RANGE					= "No se puede usar el radar de distancia en estancias. Se procederá a usar el marco de distancia por texto."
L.NO_ARROW					= "No se puede usar la flecha en estancias."
L.NO_HUD					= "No se puede usar el indicador en pantalla en estancias."

L.DYNAMIC_DIFFICULTY_CLUMP	= "DBM ha desactivado el marco de distancia dinámico para este combate debido a la falta de información sobre las diferencias según el número de jugadores."
L.DYNAMIC_ADD_COUNT			= "DBM ha desactivado los avisos de esbirros para este combate debido a la falta de información sobre las diferencias según el número de jugadores."
L.DYNAMIC_MULTIPLE			= "DBM ha desactivado varias funciones para este combate debido a la falta de información sobre las diferencias según el número de jugadores."

L.LOOT_SPEC_REMINDER		= "Tu especialización es %s. Tu especialización de botín es %s."

L.BIGWIGS_ICON_CONFLICT		= "DBM ha detectado que tienes habilitados los iconos de banda en BigWigs y DBM. Por favor, desactívalos en uno de los dos addons para evitar conflictos con la configuración de tu líder de banda."

L.MOD_AVAILABLE				= "El módulo de %s está disponible para este contenido. Puedes descargarlo a través de Curse, WoWInterface o deadlybossmods.com."

L.COMBAT_STARTED				= "Encuentro de %s iniciado. ¡Buena suerte!"
L.COMBAT_STARTED_IN_PROGRESS	= "Te has unido al encuentro de %s mientras estaba en curso. ¡Buena suerte!"
L.GUILD_COMBAT_STARTED			= "Tu hermandad ha iniciado el encuentro de %s."
L.BOSS_DOWN						= "¡%s ha sido derrotado en %s!"
L.BOSS_DOWN_I					= "¡%s ha sido derrotado! Tienes %d victorias en total."
L.BOSS_DOWN_L					= "¡%s ha sido derrotado en %s! Tu última victoria fue en %s, y tu récord actual es %s. Tienes %d victorias en total."
L.BOSS_DOWN_NR					= "¡%s ha sido derrotado en %s! ¡Es un nuevo récord! (El anterior era %s). Tienes %d victorias en total."
L.RAID_DOWN						= "¡%s limpiado en %s!"
L.RAID_DOWN_L					= "¡%s limpiado en %s! Tu limpieza más rápida llevó %s."
L.RAID_DOWN_NR					= "¡%s limpiado en %s! ¡Es un nuevo récord! (El anterior era %s)"
L.GUILD_BOSS_DOWN				= "¡%s ha sido derrotado por tu hermandad en %s!"
L.COMBAT_ENDED_AT				= "El encuentro de %s (%s) ha terminado en %s."
L.COMBAT_ENDED_AT_LONG			= "El encuentro de %s (%s) ha terminado en %s. Tienes %d derrotas en total en esta dificultad."
L.GUILD_COMBAT_ENDED_AT			= "Tu hermandad ha sido derrotada en el encuentro de %s (%s) en %s."
L.COMBAT_STATE_RECOVERED		= "El encuentro de %s comenzó hace %s. Recalibrando temporizadores..."
L.TRANSCRIPTOR_LOG_START		= "Registro de Transcriptor iniciado."
L.TRANSCRIPTOR_LOG_END			= "Registro de Transcriptor finalizado."

L.MOVIE_SKIPPED				= "Cinemática saltada automáticamente."

L.AFK_WARNING				= "Estás ausente y en combate (%d por cierto de salud restante); se procederá a reproducir un sonido de alerta. Sino estás ausente, quítate el estado o desactiva esta opción en 'Funciones adicionales'."

L.COMBAT_STARTED_AI_TIMER	= "Mi unidad central es un procesador de red neuronal: una máquina capaz de aprender. (Este encuentro usará la nueva IA de temporizadores  para generar temporizadores aproximados.)"

L.PROFILE_NOT_FOUND				= "<DBM> Tu perfil actual está corrupto. DBM cargará el perfil 'Default'."
L.PROFILE_CREATED				= "Se ha creado el perfil '%s'."
L.PROFILE_CREATE_ERROR			= "No se ha podido crear el perfil. El nombre del perfil no es válido."
L.PROFILE_CREATE_ERROR_D		= "No se ha podido crear el perfil. Ya existe un perfil llamado '%s'."
L.PROFILE_APPLIED				= "Se ha cambiado el perfil actual a '%s'."
L.PROFILE_APPLY_ERROR			= "No se ha podido cambiar de perfil. El perfil '%s' no existe."
L.PROFILE_COPIED				= "Se ha copiado el perfil '%s'."
L.PROFILE_COPY_ERROR			= "No se ha podido copiar el perfil. El perfil '%s' no existe."
L.PROFILE_COPY_ERROR_SELF		= "No se puede copiar un perfil a sí mismo."
L.PROFILE_DELETED				= "Se ha borrado el perfil '%s'. DBM cambiará ahora al perfil 'Default'."
L.PROFILE_DELETE_ERROR			= "No se ha podido borrar el perfil. El perfil '%s' no existe."
L.PROFILE_CANNOT_DELETE			= "No se puede borrar el perfil 'Default'."
L.MPROFILE_COPY_SUCCESS			= "Se ha copiado la configuración de módulo de %s (especialización %d)."
L.MPROFILE_COPY_SELF_ERROR		= "No se puede copiar una configuración de personaje a sí misma."
L.MPROFILE_COPY_S_ERROR			= "La configuración de origen está corrupta. Es posible que la configuración se haya copiado a medias o haya fallado por completo."
L.MPROFILE_COPYS_SUCCESS		= "Se ha copiado la configuración de notas o sonido de módulo de %s (especialización %d)."
L.MPROFILE_COPYS_SELF_ERROR		= "No se puede copiar una configuración de notas o sonido a sí misma."
L.MPROFILE_COPYS_S_ERROR		= "La configuración de origen está corrupta. Es posible que la configuración de notas o sonido se haya copiado a medias o haya fallado por completo."
L.MPROFILE_DELETE_SUCCESS		= "Se ha borrado la configuración de módulo de %s (especialización %d)."
L.MPROFILE_DELETE_SELF_ERROR	= "No se puede borrar una configuración que está actualmente en uso."
L.MPROFILE_DELETE_S_ERROR		= "La configuración de origen está corrupta. Es posible que la configuración se haya borrado a medias o haya fallado por completo."

L.NOTE_SHARE_SUCCESS		= "%s está compartiendo tu nota para %s."
L.NOTE_SHARE_LINK			= "Haz clic aquí para abrir la nota"
L.NOTE_SHARE_FAIL			= "%s está intentando compartir tu nota para %s. Sin embargo, el módulo asociado con esta facultad no está instalado o cargado. Si necesitas esta nota, asegúrate de que tienes el módulo asociado cargado y pídele que vuelva a compartirla."

L.NOTEHEADER				= "Introduce tu nota para %s. Los nombres de jugador entre '>' y '<' se mostrarán con el color de tu clase. Para alertas con varias notas, sepáralas con '/'."
L.NOTEFOOTER				= "Haz clic en 'Aceptar' para guardar la nota o en 'Cancelar' para rechazarla."
L.NOTESHAREDHEADER			= "%s está compartiendo esta nota para %s. Si la aceptas, sobrescribirá tu nota actual."
L.NOTESHARED				= "Se ha enviado tu nota al grupo."
L.NOTESHAREERRORSOLO		= "¿Te sientes solo? Compartir notas contigo mismo no tiene sentido alguno."
L.NOTESHAREERRORBLANK		= "No se puede compartir notas en blanco."
L.NOTESHAREERRORGROUPFINDER	= "No se puede compartir notas en campos de batalla, buscador de bandas y buscador de grupo."
L.NOTESHAREERRORALREADYOPEN	= "No se puede abrir notas compartidas con el editor de notas ya abierto."

L.WORLDBOSS_ENGAGED			= "%s posiblemente fue atacado en tu reino con %s por ciento de salud. (Enviado por %s)"
L.WORLDBOSS_DEFEATED		= "%s posiblemente fue derrotado en tu reino (Enviado por %s)."
L.WORLDBUFF_STARTED			= "%s ha empezado en tu reino para la facción %s (Enviado por %s)."

L.ALLMOD_DEFAULT_LOADED		= "Se han cargado las opciones por defecto de todos los módulos de esta estancia."
L.ALLMOD_STATS_RESETED		= "Se han restaurado todas las estadísticas de este módulo."
L.MOD_DEFAULT_LOADED		= "Se han cargado las opciones por defecto de este encuentro."
L.SOUNDKIT_MIGRATION		= "Uno o más de sus sonidos de advertencia/advertencia especiales se restablecieron a los valores predeterminados debido a incompatibilidad con el parche 8.2 y posterior (el sonido debe residir en la carpeta de la interfaz para reproducir por ruta, o usar SoundKit ID)"

L.TIMER_FORMAT_SECS			= "%.2f |4segundo:segundos;"
L.TIMER_FORMAT_MINS			= "%d |4minuto:minutos;"
L.TIMER_FORMAT				= "%d |4minuto:minutos; y %.2f |4segundo:segundos;"

L.MIN						= "min"
L.MIN_FMT					= "%d min"
L.SEC						= "s"
L.SEC_FMT					= "%s s"

L.GENERIC_WARNING_OTHERS	= "y otro"
L.GENERIC_WARNING_OTHERS2	= "y otros %d"
L.GENERIC_WARNING_BERSERK	= "Rabia en %s %s"
L.GENERIC_TIMER_BERSERK		= "Rabia"
L.OPTION_TIMER_BERSERK		= "Mostrar tiempo restante para $spell:26662"
L.GENERIC_TIMER_COMBAT		= "Comienza el encuentro"
L.OPTION_TIMER_COMBAT		= "Mostrar temporizador para el inicio del encuentro"
L.BAD						= "Daño"

L.OPTION_CATEGORY_TIMERS			= "Barras"
--Sub cats for "announce" object
L.OPTION_CATEGORY_WARNINGS			= "Anuncios generales"
L.OPTION_CATEGORY_WARNINGS_YOU		= "Anuncios personales"
L.OPTION_CATEGORY_WARNINGS_OTHER	= "Anuncios de objetivos"
L.OPTION_CATEGORY_WARNINGS_ROLE		= "Anuncios de rol"

L.OPTION_CATEGORY_SOUNDS		= "Sonidos"
--Misc object broken down into sub cats
L.OPTION_CATEGORY_DROPDOWNS		= "Menús desplegables"
L.OPTION_CATEGORY_YELLS			= "Gritos"
L.OPTION_CATEGORY_NAMEPLATES	= "Placas de nombres"
L.OPTION_CATEGORY_ICONS			= "Iconos"

L.AUTO_RESPONDED				= "Respondido automáticamente."
L.STATUS_WHISPER				= "%s: %s, %d/%d jugadores vivos."
--Bosses
L.AUTO_RESPOND_WHISPER				= "%s está ocupado con el encuentro de %s (%s, %d/%d jugadores vivos)."
L.WHISPER_COMBAT_END_KILL			= "¡%s ha derrotado a %s!"
L.WHISPER_COMBAT_END_KILL_STATS		= "¡%s ha derrotado a %s! Tiene %d victorias en total."
L.WHISPER_COMBAT_END_WIPE_AT		= "%s ha sido derrotado en el encuentro de %s (%s)."
L.WHISPER_COMBAT_END_WIPE_STATS_AT	= "%s ha sido derrotado en el encuentro de %s (%s). Tiene %d derrotas en total en esta dificultad."

L.VERSIONCHECK_HEADER			= "Deadly Boss Mods - Versiones"
L.VERSIONCHECK_ENTRY			= "%s: %s (r%d)"--One Boss mod
L.VERSIONCHECK_ENTRY_TWO		= "%s: %s (r%d) y %s (r%d)"--Two Boss mods
L.VERSIONCHECK_ENTRY_NO_DBM		= "%s: Sin instalar"
L.VERSIONCHECK_FOOTER			= "Se ha encontrado %d jugador(es) con DBM y %d jugador(es) con BigWigs."
L.VERSIONCHECK_OUTDATED			= "Los siguientes %d jugadores tienen una versión desfasada de DBM: %s"
L.YOUR_VERSION_OUTDATED      	= "Tu versión de " .. L.DEADLY_BOSS_MODS .. " está desfasada. Por favor, visita Curse, WoWI, o la página de Github para descargar la última versión."
L.VOICE_PACK_OUTDATED			= "A este paquete de voces le faltan sonidos compatibles con esta versión de DBM. No se sustituirán los sonidos de avisos especiales que no tengan sustituto. Por favor, descarga una versión más reciente del paquete de voces o contacta con el autor para informarle de los archivos de sonido que faltan."
L.VOICE_MISSING					= "Tenías seleccionado un paquete de voces que no se ha podido encontrar. Se ha restaurado tu selección a 'Ninguno'. Si crees que se trata de un error, asegúrate de que el paquete de voces se haya instalado correctamente y esté habilitado en la lista de Addons."
L.VOICE_DISABLED				= "Tienes al menos un paquete de voces de DBM instalado, pero ninguno está activado. Si quieres usar un paquete de voces, asegúrate de que lo has asignado en 'Alertas de voz'. Desinstala los paquetes de voces que tengas sin usar para ocultar este mensaje."
L.VOICE_COUNT_MISSING			= "La voz de cuenta atrás %d está asignada a un paquete de voces que no se ha podido encontrar. Se ha restaurado a la configuración por defecto."
L.BIG_WIGS						= "BigWigs"

L.UPDATEREMINDER_HEADER			= "Tu versión de " .. L.DBM .. " está desfasada.\nPuedes descargar la versión %s (%s) a través de Curse, WoWInterface o la página de Github."
L.UPDATEREMINDER_FOOTER			= "Pulsa " .. (IsMacClient() and "Cmd-C" or "Ctrl-C")  ..  " para copiar el enlace de descarga en tu portapapeles."
L.UPDATEREMINDER_FOOTER_GENERIC	= "Pulsa " .. (IsMacClient() and "Cmd-C" or "Ctrl-C")  ..  " para copiar el enlace en tu portapapeles."
L.UPDATEREMINDER_DISABLE		= "AVISO: Se ha desactivado Deadly Boss Mods porque tu versión está demasiado desfasada. Con tal de prevenir conflictos con las versiones de otros jugadores, no se podrá volver a activar DBM hasta que lo actualices."
L.UPDATEREMINDER_HOTFIX			= "Tu versión de DBM actual tiene errores conocidos en este encuentro. Por favor, actualiza a la última versión."
L.UPDATEREMINDER_HOTFIX_ALPHA	= "Tu versión de DBM actual tiene errores conocidos en este encuentro. Estos errores serán corregidos en la próxima versión (o ya están corregidos en la última versión alfa)."
L.UPDATEREMINDER_MAJORPATCH		= "AVISO: Se ha desactivado Deadly Boss Mods porque tu versión está demasiado desfasada. Como se trata de un parche de contenido importante, y con tal de prevenir conflictos con las versiones de otros jugadores, no se podrá volver a activar DBM hasta que lo actualices."
L.VEM							= "AVISO: Estás ejecutando Deadly Boss Mods y Voice Encounter Mods a la vez. DBM no funciona correctamente con esta configuración, y por tanto no se ejecutará."
L.OUTDATEDPROFILES				= "AVISO: DBM-Profiles no es compatible con esta versión de DBM. Con tal de evitar conflictos, DBM no se ejecutará hasta que borres tu DBM-Profiles actual."
L.VICTORYSOUND					= "AVISO: DBM-VictorySound no es compatible con esta versión de DBM. Debe quitarse antes de que DBM pueda continuar, para evitar conflictos."
L.DPMCORE						= "AVISO: Deadly PvP Mods ya no está en desarrollo y no es compatible con esta versión de DBM. Con tal de evitar conflictos, DBM no se ejecutará hasta que borres Deadly PvP Mods."
L.DBMLDB						= "AVISO: DBM-LDB está ahora incluido en DBM-Core. Es recomendable que borres la carpeta 'DBM-LDB' de tu carpeta de addons."
L.UPDATE_REQUIRES_RELAUNCH		= "AVISO: Esta actualización de DBM no funcionará correctamente hasta que reinicies el juego. Esta versión contiene nuevos archivos o cambios a los archivos .toc que no pueden recargarse mediante /reload. Es muy probable que DBM no funcione correctamente hasta que reinicies el juego."
L.OUT_OF_DATE_NAG				= "Tu versión de " .. L.DBM .. " está desfasada y este módulo específico tiene características más nuevas o correcciones de errores. Se recomienda actualizar para esta pelea para mejorar tu experiencia."
L.CLASSIC_ONLY					= "AVISO: Esta versión de DBM solo debe usarse con World of Warcraft: Classic. Desinstale esta versión e instale la versión correcta de DBM para Retail WoW."

L.MOVABLE_BAR				= "¡Muéveme!"

--L.PIZZA_SYNC_INFO					= "|Hplayer:%1$s|h[%1$s]|h ha compartido un temporizador de DBM: '%2$s'\n|Hgarrmission:DBM:cancel:%2$s:nil|h|cff3588ff[Cancelar este temporizador]|r|h  |Hgarrmission:DBM:ignore:%2$s:%1$s|h|cff3588ff[Ignorar temporizadores de %1$s]|r|h"
L.PIZZA_SYNC_INFO			= "|Hplayer:%1$s|h[%1$s]|h ha compartido un temporizador de DBM: '%2$s'\n|Hgarrmission:DBM:cancel:%2$s:nil|h|cff3588ff[Cancelar este temporizador]|r|h  |Hgarrmission:DBM:ignore:%2$s:%1$s|h|cff3588ff[Ignorar temporizadores de %1$s]|r|h"
L.PIZZA_CONFIRM_IGNORE		= "¿Seguro que quieres ignorar los temporizadores de %s para esta sesión?"
L.PIZZA_ERROR_USAGE			= "Uso: /dbm [broadcast] timer <seg> <texto>. <seg> debe ser mayor que 1."

L.MINIMAP_TOOLTIP_HEADER	= "Deadly Boss Mods"
L.MINIMAP_TOOLTIP_FOOTER	= "MAYÚS-Clic izquierdo o Clic derecho para mover este botón.\nAlt-MAYÚS-Clic izquierdo para moverlo libremente."

L.RANGECHECK_HEADER				= "Comprobación de distancia (%d m)"
L.RANGECHECK_HEADERT			= "Comprobación de distancia (%dm-%dP)"
L.RANGECHECK_RHEADER			= "Comprobación inversa de distancia (%dm)"
L.RANGECHECK_RHEADERT			= "Comprobación inversa de distancia (%dm-%dP)"
L.RANGECHECK_SETRANGE			= "Ajustar distancia"
L.RANGECHECK_SETTHRESHOLD		= "Ajustar límite de jugadores"
L.RANGECHECK_SOUNDS				= "Sonidos"
L.RANGECHECK_SOUND_OPTION_1		= "Sonido si un jugador está a distancia"
L.RANGECHECK_SOUND_OPTION_2		= "Sonido si más de un jugador está a distancia"
L.RANGECHECK_SOUND_0			= "Sin sonido"
L.RANGECHECK_SOUND_1			= "Sonido por defecto"
L.RANGECHECK_SOUND_2			= "Pitido"
L.RANGECHECK_SETRANGE_TO		= "%d m"
L.RANGECHECK_OPTION_FRAMES		= "Marcos"
L.RANGECHECK_OPTION_RADAR		= "Mostrar marco de radar"
L.RANGECHECK_OPTION_TEXT		= "Mostrar marco de texto"
L.RANGECHECK_OPTION_BOTH		= "Mostrar ambos"
L.RANGERADAR_HEADER				= "Distancia: %d / Jugadores: %d"
L.RANGERADAR_RHEADER			= "Distancia inversa: %d / Jugadores: %d"
L.RANGERADAR_IN_RANGE_TEXT		= "%d a distancia (%0.1fm)"--Multi
L.RANGECHECK_IN_RANGE_TEXT		= "%d a distancia"--Text based doesn't need (%dyd), especially since it's not very accurate to the specific yard anyways
L.RANGERADAR_IN_RANGE_TEXTONE	= "%s (%0.1fm)"--One target

L.INFOFRAME_SHOW_SELF		= "Mostrar siempre tu información"		-- Always show your own power value even if you are below the threshold
L.INFOFRAME_SETLINES		= "Líneas máximas"
L.INFOFRAME_SETCOLS			= "Columnas máximas"
L.INFOFRAME_LINESDEFAULT	= "Por defecto"
L.INFOFRAME_LINES_TO		= "%d líneas"
L.INFOFRAME_COLS_TO			= "%d columnas"
L.INFOFRAME_POWER			= "Recurso"
L.INFOFRAME_AGGRO			= "Amenaza"
L.INFOFRAME_MAIN			= "Principal:"--Main power
L.INFOFRAME_ALT				= "Secundario:"--Alternate Power

L.LFG_INVITE						= "Invitación del buscador"

L.SLASHCMD_HELP				= {
	"Comandos disponibles:",
	"-----------------",
	"/dbm unlock: Muestra un temporizador de ejemplo desplazable (alias: move).",
	"/range <número> o /distance <número>: Muestra el marco de distancia. /rrange y /rdistance invierten el color.",
	"/hudar <número>: Muestra el indicador de distancia en pantalla.",
	"/dbm timer: Inicia un temporizador personalizado de DBM. Consulta '/dbm timer' para más detalles.",
	"/dbm arrow: Muestra la flecha de DBM. Consulta '/dbm arrow help' para más detalles.",
	"/dbm hud: Muestra el indicador en pantalla de DBM. Escribe '/dbm hud' para más detalles.",
	"/dbm help2: Lista los comandos de banda de DBM."
}
L.SLASHCMD_HELP2				= {
	"Comandos disponibles:",
	"-----------------",
	"/dbm pull <seg>: Inicia un temporizador de inicio de encuentro para toda la banda (requiere líder o ayudante) (alias: pull).",
	"/dbm break <min>: Inicia un temporizador de descanso para toda la banda (requiere líder o ayudante) (alias: break).",
	"/dbm version: Realiza una comprobación de versión de DBM a toda la banda (alias: ver).",
	"/dbm version2: Realiza una comprobación de versión de DBM que también susurra a los jugadores con versiones desfasadas (alias: ver2).",
	"/dbm lag: Realiza una comprobación de latencia a toda la banda.",
	"/dbm durability: Realiza una comprobación de durabilidad a toda la banda."
}
L.TIMER_USAGE	= {
	"DBM timer commands:",
	"-----------------",
	"/dbm timer <seg> <texto>: Inicia un temporizador con texto.",
	"/dbm ltimer <seg> <texto>: Inicia un temporizador que se repite hasta que se cancela.",
	"(Si escribes 'broadcast' delante de un temporizador, lo compartirás con tu grupo de banda si eres líder o ayudante)",
	"/dbm timer endloop: Cancela todos los ltimer que se estén repitiendo."
}

L.ERROR_NO_PERMISSION				= "No tienes permiso para hacer eso."

--Common Locals
L.NEXT						= "Siguiente %s"
L.COOLDOWN					= "%s TdR"
L.UNKNOWN					= "Desconocido"--UNKNOWN which is "Unknown" (does u vs U matter?)
L.LEFT						= "Izquierda"
L.RIGHT						= "Derecha"
L.BOTH						= "Ambos"
L.BACK						= "Detrás"--BACK
L.SIDE						= "Lado"
L.TOP						= "Arriba"
L.BOTTOM					= "Abajo"
L.MIDDLE					= "Medio"
L.FRONT						= "Delante"
L.EAST						= "Este"
L.WEST						= "Oeste"
L.NORTH						= "Norte"
L.SOUTH						= "Sur"
L.INTERMISSION				= "Interfase"--No blizz global for this, and will probably be used in most end tier fights with intermission phases
L.ORB						= "Orbe"
L.CHEST						= "Cofre"--As in Treasure 'Chest'. Not Chest as in body part.
L.NO_DEBUFF					= "Sin %s"--For use in places like info frame where you put "Not Spellname"
L.ALLY						= "un aliado"--Such as "Move to Ally"
L.ADD						= "Esbirro"--A fight Add as in "boss spawned extra adds" - must check
L.ADDS						= "Esbirros"
L.BIG_ADD					= "Esbirro grande"
L.BOSS						= "Jefe"
L.ROOM_EDGE					= "los bordes de la sala"
L.FAR_AWAY					= "alejarte"
L.BREAK_LOS					= "romper la línea de mira" --must check
L.SAFE						= "una zona segura"
L.SHIELD					= "Escudo"
L.INCOMING					= "%s en breve"
--Common Locals end

L.BREAK_USAGE				= "El temporizador de descanso no puede durar más de 60 minutos. Asegúrate de que has escrito el tiempo en minutos y no en segundos."
L.BREAK_START				= "El descanso comienza ahora. ¡Tienes %s! (Enviado por %s)"
L.BREAK_MIN					= "¡El descanso termina en %s minuto(s)!"
L.BREAK_SEC					= "¡El descanso termina en %s segundo(s)!"
L.TIMER_BREAK				= "¡Toca descanso!"
L.ANNOUNCE_BREAK_OVER		= "El descanso ha terminado."

L.TIMER_PULL				= "Iniciando en"
L.ANNOUNCE_PULL				= "Iniciando en %d s (iniciado por %s)"
L.ANNOUNCE_PULL_NOW			= "¡Iniciad ahora!"
L.ANNOUNCE_PULL_TARGET		= "Jalando a %s en %d s (iniciado por %s)"
L.ANNOUNCE_PULL_NOW_TARGET	= "¡Jalando a %s!"
L.GEAR_WARNING				= "Aviso: Comprobación de equipo. Tu nivel de objeto equipado es %d menor que tu nivel de objeto de inventario."
L.GEAR_WARNING_WEAPON		= "Aviso: Comprueba que tu arma esté equipada."
L.GEAR_FISHING_POLE			= "Caña de pescar"

L.ACHIEVEMENT_TIMER_SPEED_KILL = "Logro"

-- Auto-generated Warning Localizations
L.AUTO_ANNOUNCE_TEXTS.you			= "%s en ti"
L.AUTO_ANNOUNCE_TEXTS.target		= "%s en >%%s<"
L.AUTO_ANNOUNCE_TEXTS.targetsource	= "%s de >%%s< en >%%s<"
L.AUTO_ANNOUNCE_TEXTS.targetcount	= "%s (%%s) en >%%s<"
L.AUTO_ANNOUNCE_TEXTS.spell			= "%s"
L.AUTO_ANNOUNCE_TEXTS.ends 			= "%s ha terminado"
L.AUTO_ANNOUNCE_TEXTS.endtarget		= "%s ha terminado en >%%s<"
L.AUTO_ANNOUNCE_TEXTS.fades			= "%s ha terminado"
L.AUTO_ANNOUNCE_TEXTS.adds			= "%s restantes: %%d"
L.AUTO_ANNOUNCE_TEXTS.cast			= "Lanzando %s en %.1f s"
L.AUTO_ANNOUNCE_TEXTS.soon			= "%s en breve"
L.AUTO_ANNOUNCE_TEXTS.sooncount		= "%s (%%s) en breve"
L.AUTO_ANNOUNCE_TEXTS.prewarn		= "%s en %s"
L.AUTO_ANNOUNCE_TEXTS.bait			= "%s en breve - ¡posiciónalo!"
L.AUTO_ANNOUNCE_TEXTS.stage			= "Fase %s"
L.AUTO_ANNOUNCE_TEXTS.prestage		= "Fase %s en breve"
L.AUTO_ANNOUNCE_TEXTS.count			= "%s (%%s)"
L.AUTO_ANNOUNCE_TEXTS.stack			= "%s en >%%s< (%%d)"

local prewarnOption 					= "Mostrar aviso previo para $spell:%s"
L.AUTO_ANNOUNCE_OPTIONS.you				= "Anunciar que te afecta $spell:%s"
L.AUTO_ANNOUNCE_OPTIONS.target			= "Anunciar objetivos de $spell:%s"
L.AUTO_ANNOUNCE_OPTIONS.targetNF		= "Anunciar objetivos de $spell:%s (ignora filtro de objetivo global)"
L.AUTO_ANNOUNCE_OPTIONS.targetsource	= "Anunciar objetivos de $spell:%s (y quién lo lanza)"
L.AUTO_ANNOUNCE_OPTIONS.targetcount		= "Anunciar objetivos de $spell:%s (con contador)"
L.AUTO_ANNOUNCE_OPTIONS.spell			= "Mostrar aviso para $spell:%s"
L.AUTO_ANNOUNCE_OPTIONS.ends			= "Mostrar aviso cuando termine $spell:%s"
L.AUTO_ANNOUNCE_OPTIONS.endtarget		= "Mostrar aviso cuando termine $spell:%s"
L.AUTO_ANNOUNCE_OPTIONS.fades			= "Mostrar aviso cuando expire $spell:%s"
L.AUTO_ANNOUNCE_OPTIONS.adds			= "Anunciar el número de $spell:%s restantes"
L.AUTO_ANNOUNCE_OPTIONS.cast			= "Mostrar aviso cuando se esté lanzando $spell:%s"
L.AUTO_ANNOUNCE_OPTIONS.soon			= prewarnOption
L.AUTO_ANNOUNCE_OPTIONS.sooncount		= prewarnOption
L.AUTO_ANNOUNCE_OPTIONS.countdown		= "Mostrar contador de aviso previso para $spell:%s"
L.AUTO_ANNOUNCE_OPTIONS.prewarn 		= prewarnOption
L.AUTO_ANNOUNCE_OPTIONS.bait			= "Mostrar aviso previso para posicionar $spell:%s"
L.AUTO_ANNOUNCE_OPTIONS.stage			= "Anunciar cambio a Fase %s"
L.AUTO_ANNOUNCE_OPTIONS.stagechange		= "Anunciar cambios de fase"
L.AUTO_ANNOUNCE_OPTIONS.prestage		= "Mostrar aviso previo para Fase %s"
L.AUTO_ANNOUNCE_OPTIONS.count			= "Mostrar aviso (con contador) para $spell:%s"
L.AUTO_ANNOUNCE_OPTIONS.stack			= "Anunciar acumulaciones de $spell:%s"

L.AUTO_SPEC_WARN_TEXTS.spell			= "¡%s!"
L.AUTO_SPEC_WARN_TEXTS.ends				= "%s ha terminado"
L.AUTO_SPEC_WARN_TEXTS.fades			= "%s ha terminado"
L.AUTO_SPEC_WARN_TEXTS.soon				= "%s en breve"
L.AUTO_SPEC_WARN_TEXTS.sooncount		= "%s (%%s) en breve"
L.AUTO_SPEC_WARN_TEXTS.bait				= "%s en breve - ¡posiciónalo!"
L.AUTO_SPEC_WARN_TEXTS.prewarn			= "%s en %s"
L.AUTO_SPEC_WARN_TEXTS.dispel			= "%s en >%%s< - ¡disipa ahora!"
L.AUTO_SPEC_WARN_TEXTS.interrupt		= "%s - ¡interrumpe a >%%s<!"
L.AUTO_SPEC_WARN_TEXTS.interruptcount	= "%s - ¡interrumpe a >%%s<! (%%d)"
L.AUTO_SPEC_WARN_TEXTS.you				= "%s en ti"
L.AUTO_SPEC_WARN_TEXTS.youcount			= "%s (%%s) en ti"
L.AUTO_SPEC_WARN_TEXTS.youpos			= "%s (posición: %%s) en ti"
L.AUTO_SPEC_WARN_TEXTS.soakpos			= "%s (posición: %%s)"
L.AUTO_SPEC_WARN_TEXTS.target			= "%s en >%%s<"
L.AUTO_SPEC_WARN_TEXTS.targetcount		= "%s (%%s) en >%%s< "
L.AUTO_SPEC_WARN_TEXTS.defensive		= "%s - ¡facultad defensiva ahora!"
L.AUTO_SPEC_WARN_TEXTS.taunt			= "%s en >%%s< - ¡provoca ahora!"
L.AUTO_SPEC_WARN_TEXTS.close			= "%s en >%%s< cerca de ti"
L.AUTO_SPEC_WARN_TEXTS.move				= "%s - ¡sal de ahí!"
L.AUTO_SPEC_WARN_TEXTS.keepmove			= "%s - ¡no dejes de moverte!"
L.AUTO_SPEC_WARN_TEXTS.stopmove			= "%s - ¡deja de moverte!"
L.AUTO_SPEC_WARN_TEXTS.dodge			= "%s - ¡esquiva!"
L.AUTO_SPEC_WARN_TEXTS.dodgecount		= "%s (%%s) - ¡esquiva!"
L.AUTO_SPEC_WARN_TEXTS.dodgeloc			= "%s - ¡esquiva por %%s!"
L.AUTO_SPEC_WARN_TEXTS.moveaway			= "%s - ¡aléjate de los demás!"
L.AUTO_SPEC_WARN_TEXTS.moveawaycount	= "%s (%%s) - ¡aléjate de los demás"
L.AUTO_SPEC_WARN_TEXTS.soak				= "%s - ¡intercepta!"
L.AUTO_SPEC_WARN_TEXTS.moveto			= "%s - ¡ve a >%%s<!"
L.AUTO_SPEC_WARN_TEXTS.jump				= "%s - ¡salta!"
L.AUTO_SPEC_WARN_TEXTS.run				= "%s - ¡huye!"
L.AUTO_SPEC_WARN_TEXTS.cast				= "%s - ¡deja de canalizar!"
L.AUTO_SPEC_WARN_TEXTS.lookaway			= "%s en %%s - ¡date la vuelta!"
L.AUTO_SPEC_WARN_TEXTS.reflect			= "%s en >%%s< - ¡no ataques!"
L.AUTO_SPEC_WARN_TEXTS.count			= "¡%s! (%%s)"
L.AUTO_SPEC_WARN_TEXTS.stack			= "%%d acumulaciones de %s en ti"
L.AUTO_SPEC_WARN_TEXTS.switch			= "%s - ¡cambia de objetivo!"
L.AUTO_SPEC_WARN_TEXTS.switchcount		= "%s - ¡cambia de objetivo! (%%s)"
L.AUTO_SPEC_WARN_TEXTS.gtfo				= "%%s a tus pies - ¡apártate!"
L.AUTO_SPEC_WARN_TEXTS.adds				= "Esbirros en breve - ¡cambia de objetivo!"
L.AUTO_SPEC_WARN_TEXTS.addscustom		= "Esbirros en breve - %%s"
L.AUTO_SPEC_WARN_TEXTS.targetchange		= "¡cambia de objetivo a %%s!"

-- Auto-generated Special Warning Localizations
L.AUTO_SPEC_WARN_OPTIONS.spell 			= "Mostrar aviso especial para $spell:%s"
L.AUTO_SPEC_WARN_OPTIONS.ends 			= "Mostrar aviso especial cuando termine $spell:%s"
L.AUTO_SPEC_WARN_OPTIONS.fades 			= "Mostrar aviso especial cuando expire $spell:%s"
L.AUTO_SPEC_WARN_OPTIONS.soon 			= "Mostrar aviso previo especial para $spell:%s"
L.AUTO_SPEC_WARN_OPTIONS.sooncount		= "Mostrar aviso previo especial (con contador) para $spell:%s"
L.AUTO_SPEC_WARN_OPTIONS.bait			= "Mostrar aviso previo especial para posicionar $spell:%s"
L.AUTO_SPEC_WARN_OPTIONS.prewarn 		= "Mostrar aviso previo especial %s s antes de $spell:%s"
L.AUTO_SPEC_WARN_OPTIONS.dispel 		= "Mostrar aviso especial para disipar $spell:%s"
L.AUTO_SPEC_WARN_OPTIONS.interrupt		= "Mostrar aviso especial para interrumpir $spell:%s"
L.AUTO_SPEC_WARN_OPTIONS.interruptcount	= "Mostrar aviso especial (con contador) para interrumpir $spell:%s"
L.AUTO_SPEC_WARN_OPTIONS.you 			= "Mostrar aviso especial cuando te afecte $spell:%s"
L.AUTO_SPEC_WARN_OPTIONS.youcount		= "Mostrar aviso especial (con contador) cuando te afecte $spell:%s"
L.AUTO_SPEC_WARN_OPTIONS.youpos			= "Mostrar aviso especial (con posición) cuando te afecte $spell:%s"
L.AUTO_SPEC_WARN_OPTIONS.soakpos		= "Mostrar aviso especial (con posición) para acompañar a los jugadores afectados por $spell:%s"
L.AUTO_SPEC_WARN_OPTIONS.target 		= "Mostrar aviso especial cuando $spell:%s afecte a un jugador"
L.AUTO_SPEC_WARN_OPTIONS.targetcount 	= "Mostrar aviso especial (con contador) cuando $spell:%s afecte a un jugador"
L.AUTO_SPEC_WARN_OPTIONS.defensive 		= "Mostrar aviso especial para usar mitigaciones para $spell:%s"
L.AUTO_SPEC_WARN_OPTIONS.taunt 			= "Mostrar aviso especial para provocar cuando $spell:%s afecte al otro tanque"
L.AUTO_SPEC_WARN_OPTIONS.close 			= "Mostrar aviso especial cuando $spell:%s afecte a un jugador cercano"
L.AUTO_SPEC_WARN_OPTIONS.move 			= "Mostrar aviso especial para salir de $spell:%s"
L.AUTO_SPEC_WARN_OPTIONS.keepmove 		= "Mostrar aviso especial para no dejar de moverte durante $spell:%s"
L.AUTO_SPEC_WARN_OPTIONS.stopmove 		= "Mostrar aviso especial para dejar de moverte durante $spell:%s"
L.AUTO_SPEC_WARN_OPTIONS.dodge 			= "Mostrar aviso especial para esquivar $spell:%s"
L.AUTO_SPEC_WARN_OPTIONS.dodgecount		= "Mostrar aviso especial (con contador) para esquivar $spell:%s"
L.AUTO_SPEC_WARN_OPTIONS.dodgeloc		= "Mostrar aviso especial (con ubicación) para esquivar $spell:%s"
L.AUTO_SPEC_WARN_OPTIONS.moveaway		= "Mostrar aviso especial para alejarse de los demás jugadores durante $spell:%s"
L.AUTO_SPEC_WARN_OPTIONS.moveawaycount	= "Mostrar aviso especial (con contador) para alejarse de los demás jugadores durante $spell:%s"
L.AUTO_SPEC_WARN_OPTIONS.moveto			= "Mostrar aviso especial para juntarse con alguien o ir a algún sitio para $spell:%s"
L.AUTO_SPEC_WARN_OPTIONS.soak			= "Mostrar aviso especial para interceptar $spell:%s"
L.AUTO_SPEC_WARN_OPTIONS.jump			= "Mostrar aviso especial para saltar para $spell:%s"
L.AUTO_SPEC_WARN_OPTIONS.run 			= "Mostrar aviso especial para huir de $spell:%s"
L.AUTO_SPEC_WARN_OPTIONS.cast 			= "Mostrar aviso especial para dejar de canalizar durante $spell:%s"--Spell Interrupt
L.AUTO_SPEC_WARN_OPTIONS.lookaway		= "Mostrar aviso especial para darte la vuelta para $spell:%s"
L.AUTO_SPEC_WARN_OPTIONS.reflect 		= "Mostrar aviso especial para dejar de atacar durante $spell:%s"--Spell Reflect
L.AUTO_SPEC_WARN_OPTIONS.count 			= "Mostrar aviso especial (con contador) para $spell:%s"
L.AUTO_SPEC_WARN_OPTIONS.stack 			= "Mostrar aviso especial cuando tengas %d ó más acumulaciones de $spell:%s"
L.AUTO_SPEC_WARN_OPTIONS.switch			= "Mostrar aviso especial para cambiar de objetivo a $spell:%s"
L.AUTO_SPEC_WARN_OPTIONS.switchcount	= "Mostrar aviso especial (con contador) para cambiar de objetivo a $spell:%s"
L.AUTO_SPEC_WARN_OPTIONS.gtfo 			= "Mostrar aviso especial para apartarte de áreas de daño en el suelo"
L.AUTO_SPEC_WARN_OPTIONS.adds			= "Mostrar aviso especial para cambiar de objetivo cuando falte poco para que aparezcan esbirros"
L.AUTO_SPEC_WARN_OPTIONS.addscustom		= "Mostrar aviso especial cuando falte poco para que aparezcan esbirros"
L.AUTO_SPEC_WARN_OPTIONS.targetchange	= "Mostrar aviso especial para cambiar a objetivos prioritarios"

-- Auto-generated Timer Localizations
L.AUTO_TIMER_TEXTS.target			= "%s: %%s"
L.AUTO_TIMER_TEXTS.cast				= "%s"
L.AUTO_TIMER_TEXTS.castcount		= "%s (%%s)"
L.AUTO_TIMER_TEXTS.castsource		= "%s: %%s"
L.AUTO_TIMER_TEXTS.active			= "%s termina"--Buff/Debuff/event on boss
L.AUTO_TIMER_TEXTS.fades			= "%s expira"--Buff/Debuff on players
L.AUTO_TIMER_TEXTS.ai				= "IA de %s"
L.AUTO_TIMER_TEXTS.cd				= "%s TdR"
L.AUTO_TIMER_TEXTS.cdcount			= "%s TdR (%%s)"
L.AUTO_TIMER_TEXTS.cdsource			= "%s TdR: >%%s<<"
L.AUTO_TIMER_TEXTS.cdspecial		= "Facultad especial TdR"
L.AUTO_TIMER_TEXTS.next				= "Siguiente %s"
L.AUTO_TIMER_TEXTS.nextcount		= "Siguiente %s (%%s)"
L.AUTO_TIMER_TEXTS.nextsource		= "Siguiente %s: %%s"
L.AUTO_TIMER_TEXTS.nextspecial		= "Siguiente facultad especial"
L.AUTO_TIMER_TEXTS.nextspecialshort	= "Facultad especial"
L.AUTO_TIMER_TEXTS.achievement		= "Logro: %s"
L.AUTO_TIMER_TEXTS.stage			= "Siguiente fase"
L.AUTO_TIMER_TEXTS.stageshort		= "Fase"
L.AUTO_TIMER_TEXTS.adds				= "Esbirros"
L.AUTO_TIMER_TEXTS.addscustom		= "Esbirros (%%s)"
L.AUTO_TIMER_TEXTS.roleplay			= "Diálogo"

L.AUTO_TIMER_OPTIONS.target		= "Mostrar temporizador para la duración del perjuicio de $spell:%s"
L.AUTO_TIMER_OPTIONS.cast			= "Mostrar temporizador para el lanzamiento de $spell:%s"
L.AUTO_TIMER_OPTIONS.castcount		= "Mostrar temporizador (con contador) para el lanzamiento de $spell:%s"
L.AUTO_TIMER_OPTIONS.castsource		= "Mostrar temporizador (y quién lo lanza) para el lanzamiento de $spell:%s"
L.AUTO_TIMER_OPTIONS.active			= "Mostrar temporizador para la duración de $spell:%s"
L.AUTO_TIMER_OPTIONS.fades			= "Mostrar temporizador para el tiempo restante del perjuicio de $spell:%s en los jugadores"
L.AUTO_TIMER_OPTIONS.ai				= "Mostrar temporizador inteligente para el tiempo de reutilización de $spell:%s"
L.AUTO_TIMER_OPTIONS.cd				= "Mostrar temporizador para el tiempo de reutilización de $spell:%s"
L.AUTO_TIMER_OPTIONS.cdcount		= "Mostrar temporizador (con contador) para el tiempo de reutilización de $spell:%s"
L.AUTO_TIMER_OPTIONS.cdsource		= "Mostrar temporizador (y quién lo lanza) para el tiempo de reutilización de $spell:%s"
L.AUTO_TIMER_OPTIONS.cdspecial		= "Mostrar temporizador para el tiempo de reutilización de 'Facultad especial'."
L.AUTO_TIMER_OPTIONS.next			= "Mostrar temporizador para el siguiente $spell:%s"
L.AUTO_TIMER_OPTIONS.nextcount		= "Mostrar temporizador (con contador) para el siguiente $spell:%s"
L.AUTO_TIMER_OPTIONS.nextsource		= "Mostrar temporizador (y quién lo lanza) para el siguiente $spell:%s"
L.AUTO_TIMER_OPTIONS.nextspecial 	= "Mostrar temporizador para la siguiente 'Facultad especial'."
L.AUTO_TIMER_OPTIONS.achievement 	= "Mostrar temporizador para el logro %s"
L.AUTO_TIMER_OPTIONS.stage			= "Mostrar temporizador para la siguiente fase"
L.AUTO_TIMER_OPTIONS.adds			= "Mostrar temporizador para la siguiente aparición de esbirros"
L.AUTO_TIMER_OPTIONS.addscustom		= "Mostrar temporizador para la siguiente aparición de esbirros"
L.AUTO_TIMER_OPTIONS.roleplay		= "Mostrar temporizador para la duración del diálogo"

L.AUTO_ICONS_OPTION_TEXT			= "Poner iconos en los objetivos de $spell:%s"
L.AUTO_ICONS_OPTION_TEXT2			= "Poner iconos en $spell:%s"
L.AUTO_ARROW_OPTION_TEXT			= "Mostrar flecha indicadora para juntarse con los objetivos afectados por $spell:%s"
L.AUTO_ARROW_OPTION_TEXT2			= "Mostrar flecha indicadora para alejarse de los objetivos afectados por $spell:%s"
L.AUTO_ARROW_OPTION_TEXT3			= "Mostrar flecha indicadora para ir a una ubicación específica para $spell:%s"
L.AUTO_VOICE_OPTION_TEXT			= "Reproducir alertas de voz para $spell:%s"
L.AUTO_VOICE2_OPTION_TEXT			= "Reproducir alertas de voz para los cambios de fase"
L.AUTO_VOICE3_OPTION_TEXT			= "Reproducir alertas de voz cuando falte poco para que aparezcan esbirros"
L.AUTO_VOICE4_OPTION_TEXT			= "Reproducir alertas de voz para apartarte de áreas de daño en el suelo"
L.AUTO_COUNTDOWN_OPTION_TEXT		= "Reproducir sonido de cuenta atrás para el tiempo de reutilización de $spell:%s"
L.AUTO_COUNTDOWN_OPTION_TEXT2		= "Reproducir sonido de cuenta atrás para la duración restante de $spell:%s"
L.AUTO_COUNTOUT_OPTION_TEXT			= "Reproducir sonido de contador para la duración de $spell:%s"
L.AUTO_YELL_OPTION_TEXT.shortyell	= "Gritar cuando te afecte $spell:%s"
L.AUTO_YELL_OPTION_TEXT.yell		= "Gritar (con tu nombre) cuando te afecte $spell:%s"
L.AUTO_YELL_OPTION_TEXT.count		= "Gritar (con contador) cuando te afecte $spell:%s"
L.AUTO_YELL_OPTION_TEXT.fade		= "Gritar (con duración restante y tu nombre) cuando $spell:%s esté a punto de expirar"
L.AUTO_YELL_OPTION_TEXT.shortfade	= "Gritar (con duración restante) cuando $spell:%s esté a punto de expirar"
L.AUTO_YELL_OPTION_TEXT.iconfade	= "Gritar (con duración restante e icono) cuando $spell:%s esté a punto de expirar"
L.AUTO_YELL_OPTION_TEXT.position	= "Gritar (con posición) cuando te afecte $spell:%s"
L.AUTO_YELL_OPTION_TEXT.combo		= "Gritar (con texto personalizado) cuando te afecten $spell:%s y otro(s) hechizo(s) a la vez"
L.AUTO_YELL_ANNOUNCE_TEXT.shortyell	= "%s"
L.AUTO_YELL_ANNOUNCE_TEXT.yell		= "¡%s en " .. UnitName("player") .. "!"
L.AUTO_YELL_ANNOUNCE_TEXT.count		= "¡%s en " .. UnitName("player") .. "! (%%d)"
L.AUTO_YELL_ANNOUNCE_TEXT.fade		= "%s expirando en %%d"
L.AUTO_YELL_ANNOUNCE_TEXT.shortfade	= "%%d"
L.AUTO_YELL_ANNOUNCE_TEXT.iconfade	= "{rt%%2$d}%%1$d"
L.AUTO_YELL_ANNOUNCE_TEXT.position 	= "%s %%s en {rt%%d}"..UnitName("player").."{rt%%d}"
L.AUTO_YELL_ANNOUNCE_TEXT.combo		= "%s y %%s"--Spell name (from option, plus spellname given in arg)
L.AUTO_YELL_CUSTOM_FADE				= "%s ha expirado"
L.AUTO_HUD_OPTION_TEXT				= "Mostrar indicador en pantalla para $spell:%s"
L.AUTO_HUD_OPTION_TEXT_MULTI		= "Mostrar indicadores en pantalla para varias mecánicas"
L.AUTO_NAMEPLATE_OPTION_TEXT		= "Mostrar auras en placas de nombres para $spell:%s"
L.AUTO_RANGE_OPTION_TEXT			= "Mostrar marco de distancia (%s m) para $spell:%s"--string used for range so we can use things like "5/2" as a value for that field
L.AUTO_RANGE_OPTION_TEXT_SHORT		= "Mostrar marco de distancia (%s m)"--For when a range frame is just used for more than one thing
L.AUTO_RRANGE_OPTION_TEXT			= "Mostrar marco de distancia inverso (%s m) para $spell:%s"--Reverse range frame (green when players in range, red when not)
L.AUTO_RRANGE_OPTION_TEXT_SHORT		= "Mostrar marco de distancia inverso (%s m)"
L.AUTO_INFO_FRAME_OPTION_TEXT		= "Mostrar marco de información para $spell:%s"
L.AUTO_INFO_FRAME_OPTION_TEXT2		= "Mostrar marco de información con una vista general del encuentro"
L.AUTO_READY_CHECK_OPTION_TEXT		= "Reproducir sonido de comprobación de banda cuando se inicie el encuentro (aunque no lo tengas como objetivo)"
L.AUTO_SPEEDCLEAR_OPTION_TEXT		= "Mostrar temporizador para la limpieza más rápida de %s"


-- New special warnings
L.MOVE_WARNING_BAR			= "Anuncio desplazable"
L.MOVE_WARNING_MESSAGE		= "Gracias por usar Deadly Boss Mods"
L.MOVE_SPECIAL_WARNING_BAR	= "Aviso especial desplazable"
L.MOVE_SPECIAL_WARNING_TEXT	= "Aviso especial"

L.HUD_INVALID_TYPE			= "No se ha proporcionado un tipo de indicador en pantalla válido."
L.HUD_INVALID_TARGET		= "No se ha proporcionado un objetivo válido."
L.HUD_INVALID_SELF			= "No puedes usarte a ti mismo como objetivo."
L.HUD_INVALID_ICON			= "No se puede usar el tipo icono en un objetivo sin icono."
L.HUD_SUCCESS				= "Indicador en pantalla realizado con éxito. Expirará en %s o al escribir '/dbm hud hide'."
L.HUD_USAGE	= {
	"Uso de DBM-HudMap:",
	"-----------------",
	"/dbm hud <tipo> <objetivo> <seg>: Crea un indicador en pantalla que apunta al jugador objetivo durante el tiempo designado.",
	"Tipos válidos: arrow, dot, red, blue, green, yellow, icon (requiere un objetivo con icono de banda)",
	"Objetivos válidos: target, focus, <jugador>",
	"Duraciones válidas: cualquier número (en segundos). Si se deja en blanco, durará 20 minutos.",
	"/dbm hud hide: cancela y oculta el indicador en pantalla."
}

L.ARROW_MOVABLE					= "Flecha desplazable"
L.ARROW_WAY_USAGE				= "/dway <x> <y>: Crea una flecha que apunta a una ubicación designada mediante coordenadas locales."
L.ARROW_WAY_SUCCESS				= "Para ocultar la flecha, escribe '/dbm arrow hide' o alcanza la ubicación designada."
L.ARROW_ERROR_USAGE	= {
	"Uso de DBM-Arrow:",
	"-----------------",
	"/dbm arrow <x> <y>: Crea una flecha que apunta a una ubicación específica (merdiante coordenadas de mundo).",
	"/dbm arrow map <x> <y>: Crea una flecha que apunta a una ubicación específica (mediante coordenadas de zona).",
	"/dbm arrow <jugador>: Crea una flecha que apunta al jugador específico de tu grupo o banda.",
	"/dbm arrow hide: Oculta la flecha.",
	"/dbm arrow move: Permite mover la flecha."
}

L.SPEED_KILL_TIMER_TEXT	= "Superar récord"
L.SPEED_CLEAR_TIMER_TEXT	= "Récord actual"
L.COMBAT_RES_TIMER_TEXT	= "Siguiente resurrección"
L.TIMER_RESPAWN		= "%s reaparece"

L.LAG_CHECKING				= "Comprobando latencia de la banda..."
L.LAG_HEADER				= "Deadly Boss Mods - Resultados de latencia"
L.LAG_ENTRY					= "%s: Latencia de mundo [%d ms] / Latencia de hogar [%d ms]"
L.LAG_FOOTER				= "Sin respuesta: %s"

L.DUR_CHECKING				= "Comprobando durabilidad de la banda..."
L.DUR_HEADER				= "Deadly Boss Mods - Resultados de durabilidad"
L.DUR_ENTRY					= "%s: Durabilidad [%d%%] / Piezas rotas [%s]"
L.LAG_FOOTER				= "Sin respuesta: %s"

--LDB
L.LDB_TOOLTIP_HELP1		= "Clic izquierdo para abrir DBM"
L.LDB_TOOLTIP_HELP2		= "Clic derecho para el menú de configuración"

L.LDB_LOAD_MODS			= "Cargar módulo"

L.LDB_ENABLE_BOSS_MOD	= "Habilitar módulo"

L.WORLD_BUFFS.hordeOny			= "Miembros de la Horda, ciudadanos de Orgrimmar, vengan y reúnanse para homenajear un hecho heroico"
L.WORLD_BUFFS.allianceOny		= "Ciudadanos y aliados de Ventormenta, en el día de hoy, hemos hecho historia."
L.WORLD_BUFFS.hordeNef			= "¡NEFARIAN HA SIDO ASESINADO! Ciudadanos de Orgrimmar"
L.WORLD_BUFFS.allianceNef		= "¡Ciudadanos de la Alianza, el Señor de Roca Negra está muerto!"
L.WORLD_BUFFS.zgHeart			= "Ahora, solo un paso más para poder librarnos de la amenaza del Cazador de Almas"
L.WORLD_BUFFS.zgHeartBooty		= "¡El Dios de la Sangre, el Cazador de Almas, ha sido derrotado! ¡Ya no corremos peligro!"
L.WORLD_BUFFS.zgHeartYojamba	= "Comiencen el ritual, sirvientes. ¡Debemos desterrar el corazón de Hakkar al vacío!"
L.WORLD_BUFFS.rendHead			= "¡El falso Jefe de Guerra Rend Puño Negro ha caído!"

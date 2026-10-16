

class Equipo {
    const nombre
    const energia
    const entrenador
    const tecnologias = []

    method nombre() = nombre
    method energiaBase() = energia
    method entrenador() = entrenador
    method tecnologias() = tecnologias

    method energiaTotal() = self.energiaBase() + self.energiasDeTecnologiasActivas()
    method energiasDeTecnologiasActivas() {
        return tecnologias.sum({t=>t.energia()})
    }
}

class Luminico inherits Equipo {
    const radiacion
    const cristales = []

    method radiacion() = radiacion
    method cristales() = cristales 
    override method energiaTotal() {
        return 
        if (radiacion < 5000) super() + super() * 0.1
        else super()
    }
}

class Sintetico inherits Equipo {
    const procesamiento
    const modulos
    const certificado

    method procesamiento() = procesamiento
    method cantModulosActivos() = modulos
    method estanCertificados() = certificado
    override method energiaTotal() {
        return 
        if (self.cantModulosActivos() > 5) super() - super() * 0.2
        else super()
    }
}

class Eterico inherits Equipo {
    const fluctuacion
    const portales

    method fluctuacion() = fluctuacion
    method cantPortales() = portales
}

class Entrenador {
    const ciclos
    const sintonizado
    const precision
    const rol

    method ciclosDeExperiencia() = ciclos
    method enSintonia() = sintonizado
    method precision() = precision
    method rolActual() {
        return 
        if (rol == "estrategaCuantico") "estrategaCuantico"
        else if (rol == "arquitectoDeEnegia") "arquitectoDeEnegia"
        else if (rol == "guiaMental") "guiaMental"
        else self.error("Rol no homologado por la FOZ")
    }
}

class Tecnologia {
    const nombre
    const energia
    const activa

    method nombre() = nombre
    method energia() = energia
    method activa() = activa
}
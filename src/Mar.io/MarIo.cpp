#include "MarIo.h"

#include "Structure/FactoryManager.h"
#include "SceneManager.h"
#include "Structure/ComponentBuilder.h"
#include "EjemploComponentFactory.h"
#include <Structure/BasicBuilder.h>
#include "Components/PlayerMovementController.h"

void init(Tapioca::FactoryManager* factMngr, Tapioca::SceneManager* sceneMngr) {
    name();
    addComponentFactories(factMngr);
    sceneMngr->loadScene("MarIo.lua");
}

void name() {
#ifdef _DEBUG
    std::cout << "Mar.io\n";
#endif
}

void addComponentFactories(Tapioca::FactoryManager* factMngr) {
#ifdef _DEBUG
    std::cout << "Anadiendo las factorias del juego\n";
#endif
    factMngr->addFactory("EjemploComponent", new MarIo::EjemploComponentFactory());
    factMngr->addFactory("PlayerMovementController", new Tapioca::BasicBuilder<PlayerMovementController>());
}

#include "MarIo.h"

#include "Structure/FactoryManager.h"
#include "WindowManager.h"
#include "Structure/ComponentBuilder.h"
#include "Structure/BasicBuilder.h"

#include "Components/GameManager.h"
#include "Components/PlayerMovementController.h"
#include "Components/Coin.h"
#include "Components/Chest.h"
#include "Components/PlayerSetting.h"
#include "Components/Fist.h"
#include "Components/CameraFollow.h"
#include "Components/Health.h"
#include "Components/ContactDamage.h"
#include "Components/MorenaMovement.h"
#include "components/FallDamage.h"
#include "Components/SideMovement.h"

void init() {
    addComponentFactories();
}

void addComponentFactories() {
#ifdef _DEBUG
    std::cout << "Anadiendo las factorias del juego\n";
#endif
    Tapioca::FactoryManager* factMngr = Tapioca::FactoryManager::instance();
    factMngr->addBuilder(new MarIo::GameManagerBuilder());
    factMngr->addBuilder(new Tapioca::BasicBuilder<MarIo::PlayerMovementController>());
    factMngr->addBuilder(new Tapioca::BasicBuilder<MarIo::PlayerSetting>());
    factMngr->addBuilder(new Tapioca::BasicBuilder<MarIo::Fist>());
    factMngr->addBuilder(new Tapioca::BasicBuilder<CameraFollow>());

    factMngr->addBuilder(new Tapioca::BasicBuilder<MarIo::Coin>());
    factMngr->addBuilder(new Tapioca::BasicBuilder<MarIo::Chest>());

    factMngr->addBuilder(new Tapioca::BasicBuilder<Health>());
    factMngr->addBuilder(new Tapioca::BasicBuilder<ContactDamage>());
    factMngr->addBuilder(new Tapioca::BasicBuilder<MarIo::MorenaMovement>());
    factMngr->addBuilder(new Tapioca::BasicBuilder<MarIo::FallDamage>());
    factMngr->addBuilder(new Tapioca::BasicBuilder<SideMovement>());
}

std::string getWindowName() { return "Mar.io"; }

std::string getInitScene() { return "Nivel1.lua"; }

int getFunctions(Function* gameFunctions, int maxFunctions) {
    if (!gameFunctions) return 0;

    int numFunctions = 0;

    // Comprobar que no supere el numero maximo de funciones
    if ((numFunctions + 1) <= maxFunctions)
        gameFunctions[numFunctions++] = {"Ejemplo1", []() { Tapioca::logInfo("Funcion 1 creada desde Mar.io"); }};
    if ((numFunctions + 1) <= maxFunctions)
        gameFunctions[numFunctions++] = {"Ejemplo2", []() { Tapioca::logInfo("Funcion 2 creada desde Mar.io"); }};
    // ...

    return numFunctions;
}
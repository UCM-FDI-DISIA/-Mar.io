#include "Coin.h"
#include "Structure/GameObject.h"
#include "Components/RigidBody.h"
#include "Structure/BasicBuilder.h"
#include "Score.h"

template class JUEGO_API Tapioca::BasicBuilder<Coin>;

Coin::Coin() : points(1) { }

bool Coin::initComponent(const CompMap& variables) {
    if (!setValueFromMap(points, "score", variables)) {
        Tapioca::logInfo(("Coin: No se ha establecido la puntuacion que otorgan las monedas. Se establece a " +
                          std::to_string(points) + " por defecto.")
                             .c_str());
    }

    return true;
}

void Coin::start() {
    Tapioca::RigidBody* rb = object->getComponent<Tapioca::RigidBody>();
}

void Coin::handleEvent(std::string const& id, void* info) {
    if (id == "onCollisionEnter") {
        Tapioca::GameObject* player = (Tapioca::GameObject*)info;
        if (player->getHandler() == "Player") {
            Score* score = player->getComponent<Score>();
            if (score != nullptr) {
                score->increaseScore(points);
            }
            pushEvent("ev_Coin", nullptr);
            object->die();
        }
    }
}

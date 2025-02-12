#include "InvincibilityPowerUp.h"
#include "Structure/GameObject.h"
#include "Components/RigidBody.h"
#include "Structure/BasicBuilder.h"
#include "Health.h"
#include "Components/SoundObjectDie.h"

InvincibilityPowerUp::InvincibilityPowerUp() : time(5.0) { }

bool InvincibilityPowerUp::initComponent(const CompMap& variables) {
    if (!setValueFromMap(time, "invincibilityTime", variables)) {
        Tapioca::logInfo(("InvincibilityPowerUp: No se ha establecido el periodo de invencibilidad. Se establece a " +
                          std::to_string(time) + " segundos por defecto.")
                             .c_str());
    }
    time *= 1000.0f;

    return true;
}

void InvincibilityPowerUp::start() { Tapioca::RigidBody* rb = object->getComponent<Tapioca::RigidBody>(); }

void InvincibilityPowerUp::handleEvent(std::string const& id, void* info) {
    if (id == "onCollisionEnter") {
        Tapioca::GameObject* player = (Tapioca::GameObject*)info;
        if (player->getHandler() == "Player") {
            Health* health = player->getComponent<Health>();
            if (health != nullptr) {
                health->setInvencibility(time);
            }
            SoundObjectDie* soundOD = object->getComponent<SoundObjectDie>();
            if (soundOD != nullptr) {
                soundOD->createSound();
            }
            object->die();
        }
    }
}
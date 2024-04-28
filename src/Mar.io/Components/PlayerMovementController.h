#pragma once
#include "Structure/Component.h"
#include "gameDefs.h"
#include "Utilities/Vector3.h"

namespace Tapioca {
class Transform;
class RigidBody;
class Animator;
}


class JUEGO_API PlayerMovementController : public Tapioca::Component {
private:
    bool grounded = true;
    int jumps = 0;
    bool jump = false;
    bool bounce = false;
    bool run = false;
    bool runEnd = false;
    Tapioca::Transform* trans;
    Tapioca::RigidBody* rigidBody;
    Tapioca::Animator* anim;
    int moveX, moveZ;
    float speed;
    float jumpForce = 100;     // Newtons
    float impulseForce = 50;   // Newtons
    float runSpeed = 200;
    float nSpeed = 30;

    Tapioca::Vector3 respawnpos = Tapioca::Vector3(0, 0, 0);

public:
    COMPONENT_ID("PlayerMovementController");

    PlayerMovementController();

    ~PlayerMovementController();

    bool initComponent(const CompMap& variables) override;
    void start() override;
    void update(const uint64_t deltaTime) override;
    void fixedUpdate() override;
    void handleEvent(std::string const& id, void* info) override;

    void reset();
    bool getGrounded();

    void setRespawnPos(Tapioca::Vector3 pos);
};

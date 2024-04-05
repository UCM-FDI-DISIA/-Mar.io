scene = {
	coral1 = {
		components = {
			Transform = {
				positionX = 10.0,
				positionY = 3.0,
				positionZ = 10.0,
				scaleX = 1.0,
				scaleY = 1.0,
				scaleZ = 1.0,
				rotationX = 0.0,
				rotationY = 0.0,
				rotationZ = 0.0
			},
			MeshRenderer = {
				meshName = "models/corals/Coral1.mesh"
			},
			RigidBody = {  
				colShape = 0, --0 BOX, 1 SPHERE, 2 PLANE, 3 CAPSULE
				colliderScaleX = 1.5,
				colliderScaleY = 2.0,
				colliderScaleZ = 2.0,
				isTrigger = false,
				movementType = 1, --0 DYNAMIC , 1 STATIC, 2 KINEMATIC
				mass = 10.0,
				friction = 0.0,
				damping = 0.4,
				bounciness = 2.0
			},
			DoDamageComponent = {
				damage = 1
			}
		}
	},
	{
		components = {
			Transform = {
				positionX = 0.0,
				positionY = 0.0,
				positionZ = 0.0,
				scaleX = 1.0,
				scaleY = 1.0,
				scaleZ = 1.0,
				rotationX = 0.0,
				rotationY = 0.0,
				rotationZ = 0.0
			},
			CameraComponent = {
				zOrder = 0,
				bgColorR = 0.925,
				bgColorG = 0.698,
				bgColorB = 0.941,
			},
			CameraFollowComponent = {
				target = "Player",
				offsetX = 0.0,
				offsetY = 8.0,
				offsetZ = 40.0,
				smoothSpeed = 0.125,
				rotationSpeed = 0.1
			}
		}
	},
	{
		components = {
			Transform = {
				positionX = 10.0,
				positionY = 10.0,
				positionZ = 1.0,
				scaleX = 1.0,
				scaleY = 1.0,
				scaleZ = 1.0,
				rotationX = 0.0,
				rotationY = 0.0,
				rotationZ = 0.0
			},
			MeshRenderer = {  
				meshName = "models/chest/chest1.mesh",
			},
			RigidBody = {  
				colShape = 0, --0 BOX, 1 SPHERE, 2 PLANE, 3 CAPSULE
				colliderScaleX = 2.0,
				colliderScaleY = 4.0,
				colliderScaleZ = 4.0,
				isTrigger = false,
				movementType = 0, --0 DYNAMIC , 1 STATIC, 2 KINEMATIC
				mass = 1.0,
				friction = 0.0,
				damping = 0.0,
				bounciness = 0.01
			}
			,
			ChestComponent = {

			}
  	 	}
	},
	Player = {
		components = {
			Transform = {
				positionX = 0.0,
				positionY = 3.0,
				positionZ = 0.0,
				scaleX = 2.0,
				scaleY = 2.0,
				scaleZ = 2.0,
				rotationX = 0.0,
				rotationY = 180.0,
				rotationZ = 0.0
			},
			MeshRenderer = {
				meshName = "models/pirateRaccoon/PirateRacoon.mesh",
				initRotationY = 0.0
			},
			RigidBody = {  
				colShape = 3, --0 BOX, 1 SPHERE, 2 PLANE, 3 CAPSULE
				colliderScaleX = 2.0,
				colliderScaleY = 5.0,
				colliderScaleZ = 2.0,
				isTrigger = false,
				movementType = 0, --0 DYNAMIC , 1 STATIC, 2 KINEMATIC
				mass = 3.0,
				friction = 0.6,
				damping = 0.4,
				bounciness = 2.0
			},
			PlayerMovementController = {
			
			},
			PlayerSetting = {},
			HealthComponent = {
				maxHealth = 2,
				currHealth = 1,
				gracePeriod = 1.0
			},
			FallDamageComponent = { }
		},
		children = {
			{
				components = {
					Transform = {
						positionX = 0.0,
						positionY = 0.0,
						positionZ = 5.0,
						scaleX = 1.0,
						scaleY = 1.0,
						scaleZ = 1.2,
						rotationX = 0.0,
						rotationY = 0.0,
						rotationZ = 0.0
					},
					RigidBody = {
						colliderScaleX = 2.0,
						colliderScaleY = 2.0,
						colliderScaleZ = 2.0,
						isTrigger = true,
						mass = 0.0,
						friction = 1.0,
						damping = 0.4,
						bounciness = 0.0,
						colShape = 0,
						movementType = 2
					}
					-- ,
					-- MeshRenderer = {
					-- 	meshName  = "models/cube2.mesh",
					-- }
					,
					FistComponent = {
						coolDown = 1000.0,
						duration = 100.0
					}
				}
			}
		}
	},
	{
		components = {
			Transform = {
				positionX = 0.0,
				positionY = 0.0,
				positionZ = 0.0,
				scaleX = 30.0,
				scaleY = 1.0,
				scaleZ = 30.0,
				rotationX = 0.0,
				rotationY = 0.0,
				rotationZ = 0.0
			},
			RigidBody = {
				colliderScaleX = 30.0,
				colliderScaleY = 1.0,
				colliderScaleZ = 30.0,
				isTrigger = false,
				mass = 1.0,
				friction = 0.0,
				damping = 0.4,
				bounciness = 0.0,
				colShape = 0,
				movementType = 1
			},
			MeshRenderer = {
				meshName  = "models/cube2.mesh",
				materialName = "white"
			}
		}
	},
	{
		components = {
			Transform = {
				positionX = 0.0,
				positionY = 14.89,
				positionZ = -33.52,
				scaleX = 20.0,
				scaleY = 1.0,
				scaleZ = 15.0,
				rotationX = 0.0,
				rotationY = 0.0,
				rotationZ = 0.0
			},
			RigidBody = {
				colliderScaleX = 20.0,
				colliderScaleY = 1.0,
				colliderScaleZ = 15.0,
				isTrigger = false,
				mass = 1.0,
				friction = 0.0,
				damping = 0.4,
				bounciness = 0.0,
				colShape = 0,
				movementType = 1
			},
			MeshRenderer = {
				meshName  = "models/cube2.mesh",
				materialName = "white"
			}
		}
	},
	{
		components = {
			Transform = {
				positionX = 7.2,
				positionY = 2.34,
				positionZ = -10.4,
				scaleX = 4.0,
				scaleY = 1.0,
				scaleZ = 2.0,
				rotationX = 0.0,
				rotationY = 0.0,
				rotationZ = 0.0
			},
			RigidBody = {
				colliderScaleX = 4.0,
				colliderScaleY = 1.0,
				colliderScaleZ = 2.0,
				isTrigger = false,
				mass = 1.0,
				friction = 0.0,
				damping = 0.4,
				bounciness = 0.0,
				colShape = 0,
				movementType = 1
			},
			MeshRenderer = {
				meshName  = "models/cube2.mesh",
				materialName = "white"
			}
		}
	},
	{
		components = {
			Transform = {
				positionX = -3.23,
				positionY = 7.9,
				positionZ = -10.4,
				scaleX = 4.0,
				scaleY = 1.0,
				scaleZ = 2.0,
				rotationX = 0.0,
				rotationY = 0.0,
				rotationZ = 0.0
			},
			RigidBody = {
				colliderScaleX = 4.0,
				colliderScaleY = 1.0,
				colliderScaleZ = 2.0,
				isTrigger = false,
				mass = 1.0,
				friction = 0.0,
				damping = 0.4,
				bounciness = 0.0,
				colShape = 0,
				movementType = 1
			},
			MeshRenderer = {
				meshName  = "models/cube2.mesh",
				materialName = "white"
			}
		}
	},
	{
		components = {
			Transform = {
				positionX = 7.2,
				positionY = 11.3,
				positionZ = -16.28,
				scaleX = 4.0,
				scaleY = 1.0,
				scaleZ = 2.0,
				rotationX = 0.0,
				rotationY = 0.0,
				rotationZ = 0.0
			},
			RigidBody = {
				colliderScaleX = 4.0,
				colliderScaleY = 1.0,
				colliderScaleZ = 2.0,
				isTrigger = false,
				mass = 1.0,
				friction = 0.0,
				damping = 0.4,
				bounciness = 0.0,
				colShape = 0,
				movementType = 1
			},
			MeshRenderer = {
				meshName  = "models/cube2.mesh",
				materialName = "white"
			}
		}
	},
	{
		components = {
			Transform = {
				positionX = 15.2,
				positionY = 11.3,
				positionZ = 20.00,
				scaleX = 4.0,
				scaleY = 1.0,
				scaleZ = 2.0,
				rotationX = 0.0,
				rotationY = 0.0,
				rotationZ = 90.0
			},
			RigidBody = {
				colliderScaleX = 4.0,
				colliderScaleY = 1.0,
				colliderScaleZ = 2.0,
				isTrigger = false,
				mass = 1.0,
				friction = 0.0,
				damping = 0.4,
				bounciness = 0.0,
				colShape = 0,
				movementType = 2
			},
			MeshRenderer = {
				meshName  = "models/cube2.mesh",
				materialName = "white"
			},
			MorenaMovementComponent = {

			}
  	 	}
	}
}

scene = {
	{
		components = {
			SoundManager = {}
		}
	}, 
	CoinSound = {
		components = {
			AudioSourceComponent = {
				sourcepath = "coin.mp3"
			}
		}
	}, 
	WalkSound = {
		components = {
			AudioSourceComponent = {
				sourcepath = "footstep.mp3"
			}
		}
	}, 
	JumpSound = {
		components = {
		  AudioSourceComponent = {
			sourcepath = "jump.mp3"
		  }
		}
	}, 
	FistSound = {
		components = {
			AudioSourceComponent = {
				islooping = true,
				ispaused = true,
				sourcepath = "fist.mp3"
			}
		}
    }, 
    LifeUpSound = {
		components = {
			AudioSourceComponent = {
				sourcepath = "heal.mp3"
			}
		}
    }, 
    InvincibilitySound = {
		components = {
			AudioSourceComponent = {
				sourcepath = "invincibility.mp3"
			}
		}
	},
	HurtSound = {
		components = {
			AudioSourceComponent = {
				sourcepath = "hurt.mp3"
			},
		}
	}
}
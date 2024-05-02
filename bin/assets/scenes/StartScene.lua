scene = {
    {
        components = {
            CameraComponent = {
                bgColorR = 0.0,
                bgColorG = 0.659,
                bgColorB = 0.929
            },
            SplashScreenComponent = {
                changeTime = 2000,
                splashScene = "StartScene",
                mainScene = "GameManager"
            }
        }
    },
    madeWithText = {
        components = {
            Transform = {
                positionX = WINDOW_WIDTH / 2,
                positionY = WINDOW_HEIGHT / 2 - 20
            },
            Text = {
                text = "made with",
                textFontName = "AGENCYB.TTF"
            }
        }
    },
    TapiocaText = {
        components = {
            Transform = {
                positionX = WINDOW_WIDTH / 2,
                positionY = WINDOW_HEIGHT / 2
            },
            Text = {
                text = "Tapioca Engine",
                textSize = 36.0,
                textFontName = "AGENCYB.TTF"
            }
        }
    }
}
  
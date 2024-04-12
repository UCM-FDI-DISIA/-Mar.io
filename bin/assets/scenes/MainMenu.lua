scene = {
    {
        components = {
            Transform = {
                positionX = 0.0,
                positionY = 30.0,
                positionZ = 0.0,
                scaleX = 1.0,
                scaleY = 1.0,
                scaleZ = 1.0,
                rotationX = 0.0,
                rotationY = 0.0,
                rotationZ = 90.0
            },
            CameraComponent = {
                zOrder = -1, -- Cuando se arregle lo de cargar las escenas después de haber recorrido todas las entidades, se podrá cambiar a 0
                bgColorR = 0.0,
                bgColorG = 0.0,
                bgColorB = 0.0,
                targetToLookX = 0.0,
                targetToLookY = 0.0,
                targetToLookZ = 0.0
            }
        }
    },
    MainMenuText={
        components = {
            Transform = {
                positionX = WINDOW_WIDTH / 2,
                positionY = WINDOW_HEIGHT / 2,
                positionZ = 0.0, -- No importa
                scaleX = 0.0, -- No importa
                scaleY = 0.0, -- No importa
                scaleZ = 0.0, -- No importa
                rotationX = 0.0, -- No importa
                rotationY = 0.0, -- No importa
                rotationZ = 0.0 -- No importa
            },
            Text = {
                name = "MainText",
                text = "Main Menu",
                textSize = 36.0,
                textFontName = "AGENCYB.TTF",
                -- textColorR = 1.0,
                -- textColorG = 0.0,
                -- textColorB = 1.0,
                -- textColorA = 1.0,
                -- windowFlags = ImGuiWindowFlags_NoDecoration | ImGuiWindowFlags_NoMove | ImGuiWindowFlags_NoBackground | ImGuiWindowFlags_NoSavedSettings
            }
        }
    }
    -- StartButton={
    --     components = {
    --         Transform = {
    --             positionX = WINDOW_WIDTH / 2,
    --             positionY = WINDOW_HEIGHT / 2,
    --             positionZ = 0.0, -- No importa
    --             scaleX = 130.0,
    --             scaleY = 40.0,
    --             scaleZ = 0.0, -- No importa
    --             rotationX = 0.0, -- No importa
    --             rotationY = 0.0, -- No importa
    --             rotationZ = 0.0 -- No importa
    --         },
    --         Button = {
    --             name = "StartButton",
    --             text = "Play",
    --             onClickId = "Debug",
    --             textFontName = "impact.ttf",
    --             -- windowFlags = ImGuiWindowFlags_NoDecoration | ImGuiWindowFlags_NoMove | ImGuiWindowFlags_NoBackground | ImGuiWindowFlags_NoSavedSettings
    --         }
    --     }
    -- },
    -- StartImageButton={
    --     components = {
    --         Transform = {
    --             positionX = WINDOW_WIDTH / 2,
    --             positionY = WINDOW_HEIGHT / 2,
    --             positionZ = 0.0, -- No importa
    --             scaleX = 100.0,
    --             scaleY = 100.0,
    --             scaleZ = 0.0, -- No importa
    --             rotationX = 0.0, -- No importa
    --             rotationY = 0.0, -- No importa
    --             rotationZ = 0.0 -- No importa
    --         },
    --         ImageButton = {
    --             name = "StartImageButton",
    --             onClickId = 0, -- Identificador de la funcion del boton, esta un poco feo
    --             imagePath = "imagetest.PNG",
    --             -- uv0X = 0.0,
    --             -- uv0Y = 0.0,
    --             -- uv1X = 1.0,
    --             -- uv1Y = 1.0,
    --             imageBgColorR = 1.0,
    --             imageBgColorG = 0.0,
    --             imageBgColorB = 1.0,
    --             imageBgColorA = 1.0,
    --             imageTintR = 1.0,
    --             imageTintG = 1.0,
    --             imageTintB = 0.0,
    --             imageTintA = 1.0,
    --             normalColorR = 0.0,
    --             normalColorG = 1.0,
    --             normalColorB = 0.0,
    --             normalColorA = 1.0,
    --             hoverColorR = 0.0,
    --             hoverColorG = 0.0,
    --             hoverColorB = 1.0,
    --             hoverColorA = 1.0,
    --             activeColorR = 1.0,
    --             activeColorG = 1.0,
    --             activeColorB = 0.0,
    --             activeColorA = 1.0,
    --             -- windowFlags = ImGuiWindowFlags_NoDecoration | ImGuiWindowFlags_NoMove | ImGuiWindowFlags_NoBackground | ImGuiWindowFlags_NoSavedSettings
    --         }
    --     }
    -- }
}
  
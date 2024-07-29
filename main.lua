local rl = require'raylib'
local b = require'ball'

rl.InitWindow(640, 480, "Hello from Lua")
rl.SetTargetFPS(60)

math.randomseed(os.time())

for _ = 1, 8 do
    b.create_ball(
        math.random(640),
        math.random(480),
        math.random(16, 64),
        {
            math.random(255),
            math.random(255),
            math.random(255),
            255,
        }
    )
end

local awesome_text = "well that was easy"
local time = 0

local colors = {
    {255, 0, 127, 255},
    {255, 0, 255, 255},
    {127, 0, 255, 255},
    {0, 0, 255, 255},
    {0, 127, 255, 255},
    {0, 255, 255, 255},
    {0, 255, 127, 255},
    {0, 255, 0, 255},
    {127, 255, 0, 255},
    {255, 255, 0, 255},
    {255, 127, 0, 255},
    {255, 0, 0, 255},
}

while not rl.WindowShouldClose() do
    rl.BeginDrawing()

    time = time + 1
    local col = {20, 25, 55, 255}
    rl.ClearBackground(col)


    for i = 1, #b.balls do
        local ball = b.balls[i]
        rl.DrawCircle(ball.x, ball.y, ball.radius + 4, {0,0,0,255})
        rl.DrawCircle(ball.x, ball.y, ball.radius + 2, {255,255,255,255})
        rl.DrawCircle(ball.x, ball.y, ball.radius, ball.color)
        b.update_ball(ball)
        ball.color[2] = ball.y / 480 * 255
    end

    for i = 1, #colors do
        rl.DrawText(awesome_text, 25, 50 + math.sin(math.pi / #colors * i + time / 15) * 24, 64, colors[i])
    end
    -- rl.DrawText("Meow :3", 20, 20, 64, textcol)

    rl.EndDrawing()
end

rl.CloseWindow()

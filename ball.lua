local balls = {}

local function create_ball(x, y, radius, color)
    balls[#balls + 1] = {
        x = x,
        y = y,
        radius = radius,
        color = color,
        dx = 1,
        dy = 1,
    }
end

local function update_ball(ball)
    ball.x = ball.x + ball.dx * 4
    ball.y = ball.y + ball.dy * 4

    if ball.x < ball.radius       then ball.dx =  1 end
    if ball.x > 640 - ball.radius then ball.dx = -1 end
    if ball.y < ball.radius       then ball.dy =  1 end
    if ball.y > 480 - ball.radius then ball.dy = -1 end
end

return {
    balls = balls,
    create_ball = create_ball,
    update_ball = update_ball,
}

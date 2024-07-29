local ffi = require'ffi'

local rl = ffi.load'raylib'

ffi.cdef[[
    typedef struct Color {
        unsigned char r;        // Color red value
        unsigned char g;        // Color green value
        unsigned char b;        // Color blue value
        unsigned char a;        // Color alpha value
    } Color;

    void InitWindow(int width, int height, const char *title);
    bool WindowShouldClose(void);
    void CloseWindow(void);
    void ClearBackground(Color color);
    void SetTargetFPS(int fps);
    void BeginDrawing(void);
    void EndDrawing(void);
    void DrawText(const char *text, int posX, int posY, int fontSize, Color color);
    void DrawCircle(int centerX, int centerY, float radius, Color color);
]]

return rl

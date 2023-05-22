const std = @import("std");

pub const c = @cImport({
    @cInclude("SDL.h");
    @cInclude("SDL_syswm.h");
});

pub fn main() !void {
    _ = c.SDL_Init(0);
    defer c.SDL_Quit();
}

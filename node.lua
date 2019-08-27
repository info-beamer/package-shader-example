gl.setup(640, 480)

util.resource_loader{
    "lua.png",
    "shader.frag",
}

function node.render()
    gl.clear(1,1,1,1)
    shader:use{
        -- This uses local time (seconds since info-beamer started on this Pi)
        -- Effect = math.cos(sys.now()*2)*3

        -- This uses os.time(), the real time. As a side effect, all Pis with
        -- proper synced time will have the effect synced.
        Effect = math.cos(os.time()*2)*3
    }
    lua:draw(120, 40, 520, 440)
end

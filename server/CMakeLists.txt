
add_executable( websocket-server
                websocket-server.cpp
     )

target_link_libraries( websocket-server PocoNet PocoUtil PocoJSON PocoXML PocoFoundation )

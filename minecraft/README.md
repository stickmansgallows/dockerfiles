# General Use Minecraft Server

This image merely provides the environment and executes a command. It 
is up to the user to download the minecraft server and mount it. It
is useful for modpacks. Don't forget to set the EULA.

	docker run -d \
		--name minecraft \
		-p 25565:25565 \
		-e STARTUP_CMD=/minecraft/LaunchServer.sh \
		-v /your/minecraft:/minecraft \
		stickmansgallows/minecraft


node "default" {

	include capuz_vermelho

}

node /(devops|automation).salas4linux.com.br/{

	include base
}

node docker.salas4linux.com.br {

	include docker
	include mr_miracle
}

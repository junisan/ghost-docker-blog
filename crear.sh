docker network create redghost

docker run -d --name some-ghost -e url=http://localhost:8080 -p 3001:2368  -v /home/juan/pruebas/database:/var/lib/ghost/content/data/ -v /home/juan/pruebas/images:/var/lib/ghost/content/images/ --network redghost ghost:alpine

docker run -d --name some-nginx -p 8080:80 -v /home/juan/pruebas/nginx/configuracion.conf:/etc/nginx/conf.d/default.conf -v /home/juan/pruebas/images:/app/images --network redghost nginx:1.17.9-alpine

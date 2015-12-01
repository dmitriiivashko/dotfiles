function mysql.start; mysql.server start; end;
function mysql.stop; mysql.server stop; end;
function redis.start; redis-server /usr/local/etc/redis.conf; end;
function redis.stop; redis-cli shutdown; end;

set PATH /usr/local/opt/php56/bin $PATH

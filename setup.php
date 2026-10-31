<?php
// Run locally from a terminal: php setup.php admin@example.test YOUR_PASSWORD
if(PHP_SAPI!=='cli'){http_response_code(403);exit('Run setup from a local terminal.');}
if(count($argv)!==3||!filter_var($argv[1],FILTER_VALIDATE_EMAIL)||strlen($argv[2])<8)exit("Usage: php setup.php admin@example.test PASSWORD_AT_LEAST_8_CHARS\n");
$c=require __DIR__.'/config.php';$db=new PDO($c['dsn'],$c['user'],$c['password'],[PDO::ATTR_ERRMODE=>PDO::ERRMODE_EXCEPTION]);
if($db->query("SELECT COUNT(*) FROM users WHERE role='admin'")->fetchColumn())exit("An administrator already exists.\n");
$s=$db->prepare('INSERT INTO users(name,email,password_hash,role) VALUES(?,?,?,?)');$s->execute(['Campus Admin',$argv[1],password_hash($argv[2],PASSWORD_DEFAULT),'admin']);echo "Administrator created. Open index.html through localhost and sign in as Admin.\n";

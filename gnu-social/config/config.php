<?php
if (!defined('GNUSOCIAL')) { exit(1); }

$config['site']['name'] = 'docker';

$config['site']['server'] = 'localhost:80';
$config['site']['path'] = false;

$config['site']['ssl'] = 'never';

$config['site']['fancy'] = true;

$config['db']['database'] = 'mysqli://social:gnusocial@mysql/social';

$config['db']['type'] = 'mysql';

// Uncomment below for better performance. Just remember you must run
// php scripts/checkschema.php whenever your enabled plugins change!
//$config['db']['schemacheck'] = 'script';

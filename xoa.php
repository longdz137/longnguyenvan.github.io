<?php
$di = new RecursiveDirectoryIterator('../');
foreach (new RecursiveIteratorIterator($di) as $filename => $file) {
if(preg_match("/error_log/i",$filename))
{
$size = $file->getSize()+$size;
unlink($filename);
}}
?>
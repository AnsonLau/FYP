<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Company Register Form</title>
<link rel="stylesheet" type="text/css" href="css/formcss.css">
</head>

<body>
<h1 align="center">Register Form</h1>
      <form action="" method="" onsubmit="" onload="LoadDateTime()" class="regform">
         <h3>User Information</h3>
            <p>
			<label for="username">Username:
			  <input type="text" name="uname" size="12" placeholder="e.g. taiman1234"/>
			</label>
			<label for="passwd">Password:</label>
            <input type="password" name="passwd" size="12" /><br/>
			
				Company Name:
               <input type="text" name="surname" placeholder="e.g. Chan" maxlength="30"/><br />
              
               Telephone Number: <input type="text" name="tel" placeholder="e.g. 91234567" maxlength="8" />
               <br />
            </p>
        <h3>Company Address</h3>
        <p>
               Flat/Room, Floor, Block
                 <input type="text" name="add_room" placeholder="e.g. Flat 401, 4/F, Block 2" size="20"/>
               <br />
               Garden/Mansion/Estate, Road/Street/Avenue<input type="text" name="" size="20" placeholder="e.g. Hong Kong Estate, 1 Central Street"/>
               <br />
               District<input type="text" name="" size="10" placeholder="e.g. Central"/>
               <br />
               <label for="location">Location</label><br/>
               <select name="location">
                  <option selected="selected">(Please select a location)</option>
                  <option>Hong Kong Island</option>
                  <option>Kowloon</option>
                  <option>New Territories and Islands District</option>
               </select><br/>
        </p>
<input type="submit" value="Submit" /> 
<input type="reset" value="Clear Information" />
      </form>
</body>
</html>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
 <%@ page errorPage="errorPage.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
  <meta charset="UTF-8">
  <title>Change pass form</title>
  <link href='http://fonts.googleapis.com/css?family=Titillium+Web:400,300,600' rel='stylesheet' type='text/css'>
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/normalize/5.0.0/normalize.min.css">

  
      <link rel="stylesheet" href="css/style.css">

  
</head>


<body>


<% 
	if(session.getAttribute("logged") == null || (Boolean) session.getAttribute("logged") == false){		
			
		 session.invalidate();
		response.sendRedirect("index.jsp");
		return;
	}
%>
  <div class="form">
       <a style="float:right" href="profile.jsp">Back to Profile</a> <br><br>
      <ul class="tab-group">
        <li class="tab active"><a href="#profilesettings">Profile Settings</a></li>
        <li class="tab"><a href="#changepass">Change Password</a></li>
      </ul>
      
      <div class="tab-content">
        <div id="profilesettings">   
          <h1></h1>
          
          <!-- imeto na servlet-a -->
          <form action="setProfile" method="post" >
          <h1> <%out.print(session.getAttribute("settingsChange")); %> </h1>
          <div class="field-wrap">
              <label>
                First Name<span class="req"></span>
              </label>
              <input type="text"  autocomplete="off"  name="firstName"/>
            </div>
        
            <div class="field-wrap">
              <label>
                Last Name<span class="req"></span>
              </label>
              <input type="text" autocomplete="off" name="lastName"/>
            </div>
            
             <div class="field-wrap">
              <label>
                Mini biography<span class="req"></span>
              </label>
              <input type="text" autocomplete="off" name="miniBio"/>
            </div>
            
            
            <div class="field-wrap">
            
          <select  name="yearOfBirth"  >
          <option value="" selected="selected">Year of birth</option>
          <option value="1999">1999</option><option value="1998">1998</option>
          <option value="1997">1997</option><option value="1996">1996</option>
          <option value="1995">1995</option><option value="1994">1994</option>
          <option value="1993">1993</option><option value="1992">1992</option>
          <option value="1991">1991</option><option value="1990">1990</option>
          <option value="1989">1989</option><option value="1988">1988</option>
          <option value="1987">1987</option><option value="1986">1986</option>
          <option value="1985">1985</option><option value="1984">1984</option>
          <option value="1983">1983</option><option value="1982">1982</option>
          <option value="1981">1981</option><option value="1980">1980</option>
          <option value="1979">1979</option><option value="1978">1978</option>
          <option value="1977">1977</option><option value="1976">1976</option>
          <option value="1975">1975</option><option value="1974">1974</option>
          <option value="1973">1973</option><option value="1972">1972</option>
          <option value="1971">1971</option><option value="1970">1970</option>
          <option value="1969">1969</option><option value="1968">1968</option>
          <option value="1967">1967</option><option value="1966">1966</option>
          <option value="1965">1965</option><option value="1964">1964</option>
          <option value="1963">1963</option><option value="1962">1962</option>
          <option value="1961">1961</option><option value="1960">1960</option>
          <option value="1959">1959</option><option value="1958">1958</option>
          <option value="1957">1957</option><option value="1956">1956</option>
          <option value="1955">1955</option><option value="1954">1954</option>
          <option value="1953">1953</option><option value="1952">1952</option>
          <option value="1951">1951</option><option value="1950">1950</option>
          <option value="1949">1949</option><option value="1948">1948</option>
          <option value="1947">1947</option><option value="1946">1946</option>
          <option value="1945">1945</option><option value="1944">1944</option>
          <option value="1943">1943</option><option value="1942">1942</option>
          <option value="1941">1941</option><option value="1940">1940</option>
          <option value="1939">1939</option><option value="1938">1938</option>
          <option value="1937">1937</option><option value="1936">1936</option>
          <option value="1935">1935</option><option value="1934">1934</option>
          <option value="1933">1933</option><option value="1932">1932</option>
          <option value="1931">1931</option><option value="1930">1930</option>
          <option value="1929">1929</option><option value="1928">1928</option>
          <option value="1927">1927</option><option value="1926">1926</option>
          <option value="1925">1925</option><option value="1924">1924</option>
          <option value="1923">1923</option><option value="1922">1922</option>
          <option value="1921">1921</option><option value="1920">1920</option>
          <option value="1919">1919</option><option value="1918">1918</option>
          <option value="1917">1917</option></select>
          </div>

          
          <div class="field-wrap">
            <label>
              Enter password to save changes<span class="req">*</span>
            </label>
            <input type="password"required autocomplete="off" name="password"/>
          </div>
          
          <button type="submit" class="button button-block"/>Save Changes</button>
          
          </form>

        </div>
        
        <div id="changepass">   
          <h1></h1>
          
          <form action="changePass" method="post">
          <h1> <%out.print(session.getAttribute("passChange")); %> </h1>
            <div class="field-wrap">
            <label>
              Password<span class="req">*</span>
            </label>
            <input type="password"required autocomplete="off" name="oldPassword"/>
          </div>
          
          <div class="field-wrap">
            <label>
             New Password<span class="req">*</span>
            </label>
            <input type="password"required autocomplete="off" name="password"/>
          </div>
          
          <div class="field-wrap">
            <label>
             Confirm new Password<span class="req">*</span>
            </label>
            <input type="password"required autocomplete="off" name="passConfirm"/>
          </div>
               
       <!--    <p class="forgot"><a href="#">Forgot Password?</a></p> -->
          
          <button class="button button-block"/>Save Changes</button>
          
          </form>

        </div>
        
      </div><!-- tab-content -->
      
</div> <!-- /form -->
  <script src='http://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js'></script>

    <script src="js/index.js"></script>

</body>
</html>

<!--  
<body>


<div class="form">
 <form action="changePass" method="post" >
<form class="top-row">
<fieldset>

<!-- Form Name -- >
<legend> </legend>
 
<% 
	if(session.getAttribute("logged") == null || (Boolean) session.getAttribute("logged") == false){		
			
		 session.invalidate();
		response.sendRedirect("index.jsp");
		return;
	}
%>


 <h1>Password settings</h1>
 <h3> <%out.print(session.getAttribute("passChange")); %> </h3>


<!-- Text input-- >
 <div class="field-wrap">
            <label>
              Old password<span class="req">*</span>
            </label>
            <input type="password"required autocomplete="off" name="oldPassword"/>
          </div>
 <div class="field-wrap">
            <label>
              New password<span class="req">*</span>
            </label>
            <input type="password"required autocomplete="off" name="password"/>
          </div>
          
          <div class="field-wrap">
            <label>
              Confirm new password<span class="req">*</span>
            </label>
            <input type="password"required autocomplete="off" name="passConfirm"/>
          </div>
          
          <button type="submit" class="button button-block"/>Submit changes</button>
          
          </form>
          </form>
          


</div>

 <script src='http://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js'></script>

    <script src="js/index.js"></script>

</body> 
</html> -->

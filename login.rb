require "sinatra"

get "/" do
	actual_username="chaitanya"
	actual_password="pass1234"
	username=params['username'].to_s
	password=params['password'].to_s
	submit=params["submit"]
	if(username==actual_username)
		if(password==actual_password)
			redirect '/my_files.html'	
		else
			"Incorrect password!!!"
		end
	else
		"invalid Username!!!"
	end
end



get "/Login.html" do
"
<!DOCTYPE html>
<html>
<head>
	<meta charset='uref-8'>
	<title>Login!!!</title>
	<style type='text/css'>
		body{
			background-color: rgb(170,126,126);
		}
	</style>
</head>
<body>
	<h1 align='center'>The Login Page</h1>
	<table align='center'>
		<form action='/'' method='get' align='center'>
			<tr>
				<td>Username:</td>
				<td><input type='text' maxlength='10' name='username'></td>
			</tr>
			<tr>
				<td>Password:</td>
				<td><input type='password' maxlenght='10' name='password'></td>
			</tr>
			<tr>
				<td><input type='submit' value='Login' style='margin-top:20px' name='submit'></td>
				<td><input type='reset' value='Reset' style='margin-top:20px' ></td>
			</tr>
		</form>
	</table>
</body>
</html>
"
end

get	"/my_files.html" do
"
<!DOCTYPE html>
<html>
	<head>
		<meta charset='uref-8'>
		<title>My files</title>
		<link rel='stylesheet' type='text/css' href='myfiles.css'>
		<style type='text/css'>
			#top_bar{
					background-color: rgb(170,126,126); 
					margin-right: 10px;
					border: 2px solid black ;
				}
			#top_bar ul{
				list-style: none;
			}
			li{
				display: inline;
			}
			body{
					background-color: #e3e3e3;
					font-family: sans-serif;
					margin: default;
				}
			ul a {
					text-decoration: blink;
					color: black;
					padding-right: 15px;
				}
			ul a:hover{
					text-decoration: none;
					font-size: 20px;
					font-family: sans-serif;
					font-weight: bold;
					text-transform: uppercase;
					color: red;
					cursor: pointer;

				};
		</style>
	</head>
	<body>
		<aside id='top_bar'>
			<ul>
				<li style='font-family:sans-serif;font-size:17px;padding-right:20px;letter-spacing:3px;text-shadow:4px 4px 4px red'>CHAITU COMPUTER</li>
				<li><a href='my_files.html'><img src='' width='20px'></a></li>
				<li><a href='Desktop.html'>Desktop</a></li>
				<li><a href='Documents.html'>Documents</a></li>
				<li><a href='Music.html'>Music</a></li>
				<li><a href='Pictures.html'>Pictures</a></li>
				<li><a href='Videos.html'>Videos</a></li>
			</ul>
		</aside>
		<h1>The page is for the content in my laptop.</h1>
		<h2>You can navagate any where from here using the side bar.</h2>
	</body>
</html>
"
end

get "/Desktop.html" do
	

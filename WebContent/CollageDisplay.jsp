<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import = "java.util.List" %>
    <%@ page import = "java.util.Random" %>
    <%@ page import = "java.util.ArrayList" %>
    <%@ page import = "java.awt.Image" %>
    <%@ page import = "java.awt.image.BufferedImage" %>
    
    <%@ page import = "googleTesting.Searching" %>
        <%@ page import = "collage.Picture" %>
        <%@ page import = "collage.Collage" %>
        
        <%@ page import = "googleTesting.Searching" %>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<link rel="stylesheet" href="collageDisplayStyle.css">
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<title></title>
		
		<script>
			function changeTitle(element) {
				document.getElementById('topic').innerHTML = element.value;
			}
		</script>
	</head>
	<body>
		<div id="title">
			Collage for topic <span id="topic"></span>
		</div>
		
		<div id="collageSpace">
		<%
			//Searching test = new Searching();
			//List<String> nameList = test.searchQuery("dog");
								
			List<String> nameList = new ArrayList<String>();
			for (int i = 0; i < 30; i++) {
				nameList.add("https://res.cloudinary.com/demo/image/upload/sample.jpg");
			}
			
			List<Integer> angleList = new ArrayList<Integer>();
			for (int i = 0; i < 30; i++) {
				Random rand = new Random();
				int input = rand.nextInt(91) - 45;
				angleList.add(input);
			}
		
			 int width = 800;
			 int height = 600;
			 Picture newPict = Collage.make30Collage(width, height, nameList, angleList);
			 //BufferedImage img3 = newPict.getImage(width, height);
			 newPict.writeImage("saved.png", "png");
		%>
		<img src = "saved.png">
		</div>
	
		<form>
			<div id="inputStuff">
				<br />
				<input type="text" id="inputBox" name="input" placeholder="Enter another topic">
				<button type="button" id="inputButton" onclick="changeTitle(input)">Build Another Collage</button>
				<button type="button" id="exportButton">Export Collage</button>
			</div>
		</form>
		
		<div id="previousCollages">
		
		</div>
	</body>
</html>
<!--
  Number Guess Game
  Written by Jason Hunter <jasonh@kasoftware.com>, CTO, K&A Software
  Copyright 1999, K&A Software, distributed by Sun with permission
-->

<%@ page %>

<jsp:useBean id="numguess" class="num.NumberGuessBeanOld" scope="session"/>
<jsp:setProperty name="numguess" property="*"/>

<html>
<head><title>Number Guess</title></head>
<body bgcolor="white">
<font size=4>

<% if (numguess.getSuccess()) { %>

  Congratulations!  You got it.
  And after just <%= numguess.getNumGuesses() %> tries.<p>

  <% numguess.reset(); %>

  Care to <a href="./">try again</a>?

<% } else if (numguess.getNumGuesses() == 0) { %>

  Welcome to the Number Guess game.<p>

  I'm thinking of a number between 1 and 100.<p>

  <form method=get>
  What's your guess? <input type=text name=guess>
  <input type=submit value="Submit">
  </form>

<% } else { %>

  Good guess, but nope.  Try <b><%= numguess.getHint() %></b>.

  You have made <%= numguess.getNumGuesses() %> guesses.<p>

  I'm thinking of a number between 1 and 100.<p>

  <form method=get>
  What's your guess? <input type=text name=guess>
  <input type=submit value="Submit">
  </form>

<% } %>

</font>
</body>
</html>

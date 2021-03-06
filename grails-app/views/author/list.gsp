<%@ page import="org.grails.example.Author" %>
<html>
<head>
  <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
  <meta name="layout" content="main"/>
  <r:require module="scriptaculous"/>
  <title>Author List</title>
</head>

<body>
<div class="nav">
  <span class="menuButton"><a class="home" href="${resource(dir: '')}">Home</a></span>
  <span class="menuButton"><g:link class="create" action="create">New Author</g:link></span>
</div>

<div class="body">
  <h1>Author List</h1>
  <g:if test="${flash.message}">
    <div class="message">${flash.message}</div>
  </g:if>
  <div class="list">
    <table>
      <thead>
      <tr>

        <g:sortableColumn property="id" title="Id"/>

        <g:sortableColumn property="firstName" title="First Name"/>

        <g:sortableColumn property="lastName" title="Last Name"/>

      </tr>
      </thead>
      <tbody>
      <g:each in="${authorList}" status="i" var="author">
        <tr class="${(i % 2) == 0 ? 'odd' : 'even'}">

          <td><g:link action="show" id="${author.id}">${author.id?.encodeAsHTML()}</g:link></td>

          <td>${author.firstName?.encodeAsHTML()}</td>

          <td>${author.lastName?.encodeAsHTML()}</td>

        </tr>
      </g:each>
      </tbody>
    </table>
  </div>

  <div class="paginateButtons">
    <g:paginate total="${Author.count()}"/>
  </div>
</div>
</body>
</html>

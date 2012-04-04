<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="f"  uri="http://java.sun.com/jsf/core"%>
<%@ taglib prefix="h"  uri="http://java.sun.com/jsf/html"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Login</title>
</head>
<body>
<f:view>
	<h:form>
		<h:inputText value="#{member.username}"></h:inputText>
		<h:inputSecret value="#{member.password}"></h:inputSecret>
		<h:commandButton action="#{member.update}" value="Login"></h:commandButton>
	</h:form>
</f:view>
</body>
</html>
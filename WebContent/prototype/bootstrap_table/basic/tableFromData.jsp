<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<%@ include file="/common/common.jsp"  %>
<title>Table from data</title>
	<script type="text/javascript">
		var data = [
            {
                "name": "bootstrap-table",
                "stargazers_count": "526",
                "forks_count": "122",
                "description": "An extended Bootstrap table with radio, checkbox, sort, pagination, and other added features. (supports twitter bootstrap v2 and v3) "
            },
            {
                "name": "multiple-select",
                "stargazers_count": "288",
                "forks_count": "150",
                "description": "A jQuery plugin to select multiple elements with checkboxes :)"
            },
            {
                "name": "bootstrap-show-password",
                "stargazers_count": "32",
                "forks_count": "11",
                "description": "Show/hide password plugin for twitter bootstrap."
            },
            {
                "name": "blog",
                "stargazers_count": "13",
                "forks_count": "4",
                "description": "my blog"
            },
            {
                "name": "scutech-redmine",
                "stargazers_count": "6",
                "forks_count": "3",
                "description": "Redmine notification tools for chrome extension."
            }
        ];

        $(function () {
            $('#table').bootstrapTable({
                data: data
            });
        });
	</script>
</head>
<body>
	<table id="table">
    	<thead>
		    <tr>
		        <th data-field="name">Name</th>
		        <th data-field="stargazers_count">Stars</th>
		        <th data-field="forks_count">Forks</th>
		        <th data-field="description">Description</th>
		    </tr>
	    </thead>
	</table>
</body>
</html>
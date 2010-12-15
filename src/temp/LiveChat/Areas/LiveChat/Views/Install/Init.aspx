﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Areas/LiveChat/Views/Shared/Admin.Master"
	Inherits="System.Web.Mvc.ViewPage<Operator>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
	Installing LiveChat Starter Kit
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
	<script type="text/javascript">
		$(document).ready(function () {
			$("#tabs").tabs();
		});
	</script>
	<div id="tabs">
		<ul>
			<li><a href="#tabs-1">Creating an operator</a></li>
		</ul>
		<div id="tabs-1">
			<h3>Installing LiveChat Starter Kit by Focus Centric inc.</h3>

			<p>Create the system administrator</p>

			<% using (Html.BeginForm())
	  { %>
			<%= Html.ValidationSummary("Please fix the following error(s)") %>

			<fieldset>
				<legend>New admin operator</legend>

				<p>
					<%= Html.LabelFor(x => x.Username) %>
					<%= Html.TextBoxFor(x => x.Username) %><%= Html.ValidationMessageFor(x => x.Username) %>
				</p>

				<p>
					<%= Html.LabelFor(x => x.Password) %>
					<%= Html.PasswordFor(x => x.Password) %><%= Html.ValidationMessageFor(x => x.Password) %>
				</p>

				<p>
					<%= Html.LabelFor(x => x.DisplayName) %>
					<%= Html.TextBoxFor(x => x.DisplayName) %><%= Html.ValidationMessageFor(x => x.DisplayName) %>
				</p>

				<p>
					<%= Html.LabelFor(x => x.Email) %>
					<%= Html.TextBoxFor(x => x.Email) %><%= Html.ValidationMessageFor(x => x.Email) %>
				</p>

				<p>
					<input type="submit" value="Create and Finish" />
				</p>
			</fieldset>


	<% } %>

		</div>
	</div>
</asp:Content>
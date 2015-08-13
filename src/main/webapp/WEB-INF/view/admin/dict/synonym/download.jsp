<%@page pageEncoding="UTF-8" contentType="text/html; charset=UTF-8"%><tiles:insert template="/WEB-INF/view/common/admin/layout.jsp"
	flush="true">
	<tiles:put name="title">
		<la:message key="labels.dict_synonym_configuration" />
	</tiles:put>
	<tiles:put name="header" value="/WEB-INF/view/common/admin/header.jsp" />
	<tiles:put name="footer" value="/WEB-INF/view/common/admin/footer.jsp" />
	<tiles:put name="menu" value="/WEB-INF/view/common/admin/menu.jsp" />
	<tiles:put name="menuType" value="dict" />
	<tiles:put name="headerScript" type="string"></tiles:put>
	<tiles:put name="body" type="string">

		<h3>
			<la:message key="labels.dict_synonym_title" />
		</h3>

		<%-- Message: BEGIN --%>
		<div>
			<html:messages id="msg" message="true">
				<div class="alert-message info"><bean:write name="msg" ignore="true" /></div>
			</html:messages>
			<html:errors />
		</div>
		<%-- Message: END --%>

			<div>
				<ul class="pills">
					<li><la:link href="../index">
							<la:message key="labels.dict_list_link" />
						</la:link></li>
					<li><la:link href="index?dictId=${f:u(dictId)}">
							<la:message key="labels.dict_synonym_list_link" />
						</la:link></li>
					<li><la:link href="createpage?dictId=${f:u(dictId)}">
							<la:message key="labels.dict_synonym_link_create" />
						</la:link></li>
					<li class="active"><a href="#">
							<la:message key="labels.dict_synonym_link_download" />
						</a></li>
					<li><la:link href="uploadpage?dictId=${f:u(dictId)}">
							<la:message key="labels.dict_synonym_link_upload" />
						</la:link></li>
				</ul>
			</div>

		<%-- Edit Form: BEGIN --%>
		<s:form>
			<div>
				<html:hidden property="dictId" />
				<table class="bordered-table zebra-striped" style="width: 500px;">
					<tbody>
						<tr>
							<th style="vertical-align: middle;">${f:h(filename)}</th>
							<td style="width: 150px;text-align: center;"><input type="submit"
								class="btn small" name="download"
								value="<la:message key="labels.dict_synonym_button_download"/>" />
							</td>
						</tr>
					</tbody>
				</table>
			</div>
		</s:form>
		<%-- Edit Form: BEGIN --%>

	</tiles:put>
</tiles:insert>

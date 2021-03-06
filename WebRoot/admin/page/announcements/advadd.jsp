<%@ page language="java" pageEncoding="UTF-8"%>
<jsp:directive.include file="../cp_header.jsp" />
<table width="100%" border="0" cellpadding="0" cellspacing="0" class="guide">
	<tr><td><a href="#" onclick="parent.menu.location='admincp.jsp?action=menu'; parent.main.location='admincp.jsp?action=home';return false;"><bean:message key="header_system"/></a>&nbsp;&raquo;&nbsp;<bean:message key="menu_other_advertisement"/></td></tr>
</table>
<br />
<table width="100%" border="0" cellpadding="0" cellspacing="0" class="tableborder">
	<tr class="header"><td><div style="float:left; margin-left:0px; padding-top:8px"><a href="###" onclick="collapse_change('tip')"><bean:message key="tips"/></a></div><div style="float:right; margin-right:4px; padding-bottom:9px"><a href="###" onclick="collapse_change('tip')"><img id="menuimg_tip" src="images/admincp/menu_${collapsed ? 'add' : 'reduce'}.gif" border="0"/></a></div></td></tr>
	<tbody id="menu_tip" style="display: ${collapsed ? 'none' : ''}">
		<tr><td><c:if test="${valueObject.explain != ''}"><bean:message key="${valueObject.explain}" /></c:if></td></tr>
	</tbody>
</table>
<br />
<script type="text/javascript">
lang['calendar_Sun'] = '<bean:message key="calendar_Sun"/>';
lang['calendar_Mon'] = '<bean:message key="calendar_Mon"/>';
lang['calendar_Tue'] = '<bean:message key="calendar_Tue"/>';
lang['calendar_Wed'] = '<bean:message key="calendar_Wed"/>';
lang['calendar_Thu'] = '<bean:message key="calendar_Thu"/>';
lang['calendar_Fri'] = '<bean:message key="calendar_Fri"/>';
lang['calendar_Sat'] = '<bean:message key="calendar_Sat"/>';
lang['old_month'] = '<bean:message key="old_month"/>';
lang['select_year'] = '<bean:message key="select_year"/>';
lang['select_month'] = '<bean:message key="select_month"/>';
lang['next_month'] = '<bean:message key="next_month"/>';
lang['calendar_hr'] = '<bean:message key="calendar_hr"/>';
lang['calendar_min'] = '<bean:message key="calendar_min"/>';
lang['calendar_month'] = '<bean:message key="calendar_month"/>';
lang['calendar_today'] = '<bean:message key="calendar_today"/>';
</script>
<script type="text/javascript" src="include/javascript/calendar.js"></script>
<form method="post" name="settings" action="admincp.jsp?action=adv">
	<input type="hidden" name="step" value="2">
	<input type="hidden" name="type" value="${valueObject.type }">
	<input type="hidden" name="formHash" value="${jrun:formHash(pageContext.request)}" />
	<a name="bc5622ad24e46e83"></a>
	<table width="100%" border="0" cellpadding="0" cellspacing="0" class="tableborder">
		<tr class="header"><td colspan="2"><bean:message key="a_other_adv_add"/> - 
		<c:choose>
			<c:when test="${valueObject.type=='headerbanner'}"><bean:message key="a_other_adv_type_headerbanner"/></c:when>
			<c:when test="${valueObject.type=='footerbanner'}"><bean:message key="a_other_adv_type_footerbanner"/></c:when>
			<c:when test="${valueObject.type=='text'}"><bean:message key="a_other_adv_type_text"/></c:when>
			<c:when test="${valueObject.type=='thread'}"><bean:message key="a_other_adv_type_thread"/></c:when>
			<c:when test="${valueObject.type=='interthread'}"><bean:message key="a_other_adv_type_interthread"/></c:when>
			<c:when test="${valueObject.type=='float'}"><bean:message key="a_other_adv_type_float"/></c:when>
			<c:when test="${valueObject.type=='couplebanner'}"><bean:message key="a_other_adv_type_couplebanner"/></c:when>
			<c:when test="${valueObject.type=='intercat'}"><bean:message key="a_other_adv_type_intercat"/></c:when>
			<c:otherwise><bean:message key="all"/></c:otherwise>
		</c:choose>
		<a href="###" onclick="collapse_change('bc5622ad24e46e83')"><img id="menuimg_bc5622ad24e46e83" src="images/admincp/menu_reduce.gif" border="0" style="float: right; *margin-top: -12px; margin-right: 8px;" /></a></td></tr>
		<tbody id="menu_bc5622ad24e46e83" style="display: yes">
			<tr>
				<td width="45%" class="altbg1">
					<b><bean:message key="a_other_adv_edit_style"/></b>
					<br />
					<span class="smalltxt"><bean:message key="a_other_adv_edit_style_comment"/></span>
				</td>
				<td class="altbg2">
					<select name="style" onchange="var styles, key;styles=new Array('code','text','image','flash'); for(key in styles) {var obj=$('style_'+styles[key]); obj.style.display=styles[key]==this.options[this.selectedIndex].value?'':'none';}">
						<option value="code" ${valueObject.style == 'code'?"selected":""}><bean:message key="a_other_adv_style_code"/></option>
						<option value="text" ${valueObject.style == 'text'?"selected":""}><bean:message key="a_other_adv_style_text"/></option>
						<option value="image" ${valueObject.style == 'image'?"selected":""}><bean:message key="a_post_smilies_edit_image"/></option>
						<option value="flash" ${valueObject.style == 'flash'?"selected":""}><bean:message key="a_other_adv_style_flash"/></option>
					</select>
				</td>
			</tr>
								<tr>
									<td width="45%" class="altbg1">
										<b><bean:message key="a_other_adv_title"/></b>
										<br />
										<span class="smalltxt"><bean:message key="a_other_adv_edit_title_comment"/></span>
									</td>
									<td class="altbg2">
										<input type="text" size="50" name="title" value="${valueObject.title }" maxlength="50">
									</td>
								</tr>
								
								<c:choose>
									<c:when test="${valueObject.type eq 'headerbanner'}">
										<tr>
											<td width="45%" class="altbg1">
												<b><bean:message key="a_other_adv_edit_targets"/></b>
												<br />
												<span class="smalltxt"><bean:message key="a_other_adv_edit_targets_comment"/></span> [ <bean:message key="a_other_adv_type_headerbanner"/> ]
											</td>
											<td class="altbg2">
												<select name="targets" size="10" multiple="multiple">
													<option value="all" selected="selected">&nbsp;&nbsp;> <bean:message key="all"/></option>
													<option value="">&nbsp;</option>
													<option value="0">&nbsp;&nbsp;> <bean:message key="home"/></option>
													<option value="register">&nbsp;&nbsp;> <bean:message key="a_other_adv_register"/></option>
													<option value="redirect">&nbsp;&nbsp;> <bean:message key="a_other_adv_jump"/></option>
													<option value="archiver">&nbsp;&nbsp;> Archiver</option>
													${valueObject.selectContent }
												</select>
											</td>
										</tr>
									</c:when>
									<c:when test="${valueObject.type eq 'footerbanner'}">
										<tr>
											<td width="45%" class="altbg1">
												<b><bean:message key="a_other_adv_edit_targets"/></b>
												<br />
												<span class="smalltxt"><bean:message key="a_other_adv_edit_targets_comment"/></span> [ <bean:message key="a_other_adv_type_footerbanner"/> ]
											</td>
											<td class="altbg2">
												<select name="targets" size="10" multiple="multiple">
													<option value="all" selected="selected">&nbsp;&nbsp;> <bean:message key="all"/></option>
													<option value="">&nbsp;</option>
													<option value="0">&nbsp;&nbsp;> <bean:message key="home"/></option>
													<option value="register">&nbsp;&nbsp;> <bean:message key="a_other_adv_register"/></option>
													<option value="redirect">&nbsp;&nbsp;> <bean:message key="a_other_adv_jump"/></option>
													<option value="archiver">&nbsp;&nbsp;> Archiver</option>
													${valueObject.selectContent }
												</select>
											</td>
										</tr>
										<tr>
											<td width="45%" class="altbg1">
												<b><bean:message key="a_other_adv_edit_position_thread"/></b>
												<br />
												<span class="smalltxt"><bean:message key="a_other_adv_edit_position_footerbanner_comment"/></span>
											</td>
											<td class="altbg2">
												<input type="radio" name="position" class="radio" value="1" checked><bean:message key="a_other_adv_up"/> &nbsp;
												<input type="radio" name="position" class="radio" value="2"><bean:message key="middle"/> &nbsp;
												<input type="radio" name="position" class="radio" value="3"><bean:message key="a_other_adv_down"/>
											</td>
										</tr>
									</c:when>
									<c:when test="${valueObject.type eq 'text'}">
										<tr>
											<td width="45%" class="altbg1">
												<b><bean:message key="a_other_adv_edit_targets"/></b>
												<br />
												<span class="smalltxt"><bean:message key="a_other_adv_edit_targets_comment"/></span> [ <bean:message key="a_other_adv_type_text"/> ]
											</td>
											<td class="altbg2">
												<select name="targets" size="10" multiple="multiple">
													<option value="all" selected="selected">&nbsp;&nbsp;> <bean:message key="all"/></option>
													<option value="">&nbsp;</option>
													<option value="0">&nbsp;&nbsp;> <bean:message key="home"/></option>
													${valueObject.selectContent }
												</select>
											</td>
										</tr>
									</c:when>
									<c:when test="${valueObject.type eq 'thread'}">
										<tr>
											<td width="45%" class="altbg1">
												<b><bean:message key="a_other_adv_edit_targets"/></b>
												<br />
												<span class="smalltxt"><bean:message key="a_other_adv_edit_targets_comment"/></span> [ <bean:message key="a_other_adv_type_thread"/> ]
											</td>
											<td class="altbg2">
												<select name="targets" size="10" multiple="multiple">
													<option value="all" selected="selected">&nbsp;&nbsp;> <bean:message key="all"/></option>
													<option value="">&nbsp;</option>
													${valueObject.selectContent }
												</select>
											</td>
										</tr>
										<tr>
											<td width="45%" class="altbg1">
												<b><bean:message key="a_other_adv_edit_position_thread"/></b>
												<br />
												<span class="smalltxt"><bean:message key="a_other_adv_edit_position_thread_comment"/></span>
											</td>
											<td class="altbg2">
												<input type="radio" name="position" class="radio" value="1" checked><bean:message key="a_other_adv_thread_down"/> &nbsp;
												<input type="radio" name="position" class="radio" value="2"><bean:message key="a_other_adv_thread_up"/> &nbsp;
												<input type="radio" name="position" class="radio" value="3"><bean:message key="a_other_adv_thread_right"/>
											</td>
										</tr>
										<tr>
											<td width="45%" class="altbg1">
												<b><bean:message key="a_other_adv_edit_display_position"/></b>
												<br />
												<span class="smalltxt"><bean:message key="a_other_adv_edit_display_position_comment"/></span>
											</td>
											<td class="altbg2">
												<select name="displayorder" size="10" multiple="multiple">
													<option value="0" selected="selected">&nbsp;&nbsp;> <bean:message key="all"/></option>
													<option value="0">&nbsp;</option>
													<c:forEach begin="1" end="${valueObject.postperpage}" var="tempNumber">
													<option value="${tempNumber }">&nbsp;&nbsp;> #${tempNumber }</option>
													</c:forEach>
												</select>
											</td>
										</tr>
									</c:when>
									<c:when test="${valueObject.type eq 'interthread'}">
										<tr>
											<td width="45%" class="altbg1">
												<b><bean:message key="a_other_adv_edit_targets"/></b>
												<br />
												<span class="smalltxt"><bean:message key="a_other_adv_edit_targets_comment"/></span> [ <bean:message key="a_other_adv_type_interthread"/> ]
											</td>
											<td class="altbg2">
												<select name="targets" size="10" multiple="multiple">
													<option value="all" selected="selected">&nbsp;&nbsp;> <bean:message key="all"/></option>
													<option value="">&nbsp;</option>
													${valueObject.selectContent }
												</select>
											</td>
										</tr>
									</c:when>
									<c:when test="${valueObject.type eq 'float'}">
										<tr>
											<td width="45%" class="altbg1">
												<b><bean:message key="a_other_adv_edit_targets"/></b>
												<br />
												<span class="smalltxt"><bean:message key="a_other_adv_edit_targets_comment"/></span> [ <bean:message key="a_other_adv_type_float"/> ]
											</td>
											<td class="altbg2">
												<select name="targets" size="10" multiple="multiple">
													<option value="all" selected="selected">&nbsp;&nbsp;> <bean:message key="all"/></option>
													<option value="">&nbsp;</option>
													<option value="0">&nbsp;&nbsp;> <bean:message key="home"/></option>
													${valueObject.selectContent }
												</select>
											</td>
										</tr>
										<tr>
											<td width="45%" class="altbg1">
												<b><bean:message key="a_other_adv_edit_floath"/></b>
												<br />
												<span class="smalltxt"><bean:message key="a_other_adv_edit_floath_comment"/></span>
											</td>
											<td class="altbg2">
												<input type="text" size="50" name="floath" value="200">
											</td>
										</tr>
									</c:when>
									<c:when test="${valueObject.type eq 'couplebanner'}">
										<tr>
											<td width="45%" class="altbg1">
												<b><bean:message key="a_other_adv_edit_targets"/></b>
												<br />
												<span class="smalltxt"><bean:message key="a_other_adv_edit_targets_comment"/></span> [ <bean:message key="a_other_adv_type_couplebanner"/> ]
											</td>
											<td class="altbg2">
												<select name="targets" size="10" multiple="multiple">
													<option value="all" selected="selected">&nbsp;&nbsp;> <bean:message key="all"/></option>
													<option value="">&nbsp;</option>
													<option value="0">&nbsp;&nbsp;> <bean:message key="home"/></option>
													${valueObject.selectContent }
												</select>
											</td>
										</tr>
									</c:when>
									<c:when test="${valueObject.type eq 'intercat'}">
										<tr>
											<td width="45%" class="altbg1">
												<b><bean:message key="a_other_adv_edit_targets"/></b>
												<br />
												<span class="smalltxt"><bean:message key="a_other_adv_edit_targets_comment"/></span> [ <bean:message key="a_other_adv_type_intercat"/> ]
											</td>
											<td class="altbg2">
												<select name="targets" selected="selected">
													<option value="0">&nbsp;&nbsp;> <bean:message key="home"/></option>
												</select>
											</td>
										</tr>
										<tr>
											<td width="45%" class="altbg1">
												<b><bean:message key="a_other_adv_edit_position_thread"/></b>
												<br />
												<span class="smalltxt"><bean:message key="a_other_adv_edit_position_intercat_comment"/></span>
											</td>
											<td class="altbg2">
												<select name="position" size="10" multiple="multiple">
													<option value="0" selected="selected">&nbsp;&nbsp;> <bean:message key="all"/></option>
													<option value="">&nbsp;</option>
													${valueObject.selectContent }
												</select>
											</td>
										</tr>
									</c:when>
								</c:choose>
								<tr>
									<td width="45%" class="altbg1">
										<b><bean:message key="a_other_adv_edit_starttime"/></b>
										<br />
										<span class="smalltxt"><bean:message key="a_other_adv_edit_starttime_comment"/></span>
									</td>
									<td class="altbg2">

										<input type="text" size="50" name="starttime"
											value="${valueObject.starttime}" onclick="showcalendar(event, this)">
									</td>
								</tr>
								<tr>
									<td width="45%" class="altbg1">
										<b><bean:message key="a_other_adv_edit_endtime"/></b>
										<br />
										<span class="smalltxt"><bean:message key="a_other_adv_edit_endtime_comment"/></span>
									</td>
									<td class="altbg2">
										<input type="text" size="50" name="endtime" value="" onclick="showcalendar(event, this)">
									</td>
								</tr>
						</table>
						<br />

						
						<div id="style_code" style="<c:if test="${!(valueObject.style eq 'code')}">display:none</c:if>" class="maintablediv">
							<table width="100%" border="0" cellpadding="0" cellspacing="0"
								class="tableborder">
								<tr class="header">
									<td colspan="2"></td>
								</tr>
								<tr>
									<td width="45%" class="altbg1" valign="top">
										<b><bean:message key="a_other_adv_edit_style_code_html"/></b>
										<br />
										<span class="smalltxt"><bean:message key="a_other_adv_edit_style_code_html_comment"/></span>
									</td>
									<td class="altbg2">
										<img src="images/admincp/zoomin.gif"
											onmouseover="this.style.cursor='pointer'"
											onclick="zoomtextarea('htmlcode', 1)">
										<img src="images/admincp/zoomout.gif"
											onmouseover="this.style.cursor='pointer'"
											onclick="zoomtextarea('htmlcode', 0)">
										<br />
										<textarea rows="6" name="htmlcode" id="htmlcode" cols="50"></textarea>
									</td>
								</tr>
							</table>
							<br />
						</div>
						
						<div id="style_text" style="<c:if test="${!(valueObject.style eq 'text')}">display:none</c:if>" class="maintablediv">
							<table width="100%" border="0" cellpadding="0" cellspacing="0"
								class="tableborder">
								<tr class="header">
									<td colspan="2">
										<bean:message key="a_other_adv_edit_style_text"/>
									</td>
								</tr>
								<tr>
									<td width="45%" class="altbg1">
										<b><bean:message key="a_other_adv_edit_style_text_title"/></b>
										<br />
										<span class="smalltxt"><bean:message key="a_other_adv_edit_style_text_title_comment"/></span>
									</td>
									<td class="altbg2">
										<input type="text" size="50" name="texttitle" value="">
									</td>
								</tr>
								<tr>
									<td width="45%" class="altbg1">
										<b><bean:message key="a_other_adv_edit_style_text_link"/></b>
										<br />
										<span class="smalltxt"><bean:message key="a_other_adv_edit_style_text_link_comment"/></span>
									</td>
									<td class="altbg2">
										<input type="text" size="50" name="textlink" value="">
									</td>
								</tr>
								<tr>
									<td width="45%" class="altbg1">
										<b><bean:message key="a_other_adv_edit_style_text_size"/></b>
										<br />
										<span class="smalltxt"><bean:message key="a_other_adv_edit_style_text_size_comment"/></span>
									</td>
									<td class="altbg2">
										<input type="text" size="50" name="textsize" value="">
									</td>
								</tr>
							</table>
							<br />
						</div>

						<div id="style_image" style="<c:if test="${!(valueObject.style eq 'image')}">display:none</c:if>" class="maintablediv">
							<table width="100%" border="0" cellpadding="0" cellspacing="0"
								class="tableborder">
								<tr class="header">
									<td colspan="2">
										<bean:message key="a_other_adv_edit_style_image"/>
									</td>
								</tr>
								<tr>
									<td width="45%" class="altbg1">
										<b><bean:message key="a_other_adv_edit_style_image_url"/></b>
										<br />
										<span class="smalltxt"><bean:message key="a_other_adv_edit_style_image_url_comment"/></span>
									</td>
									<td class="altbg2">
										<input type="text" size="50" name="imageurl" value="">
									</td>
								</tr>
								<tr>
									<td width="45%" class="altbg1">
										<b><bean:message key="a_other_adv_edit_style_image_link"/></b>
										<br />
										<span class="smalltxt"><bean:message key="a_other_adv_edit_style_image_link_comment"/></span>
									</td>
									<td class="altbg2">
										<input type="text" size="50" name="imagelink" value="">
									</td>
								</tr>
								<tr>
									<td width="45%" class="altbg1">
										<b><bean:message key="a_other_adv_edit_style_image_width"/></b>
										<br />
										<span class="smalltxt"><bean:message key="a_other_adv_edit_style_image_width_comment"/></span>
									</td>
									<td class="altbg2">
										<input type="text" size="50" name="imagewidth" value="">
									</td>
								</tr>
								<tr>
									<td width="45%" class="altbg1">
										<b><bean:message key="a_other_adv_edit_style_image_height"/></b>
										<br />
										<span class="smalltxt"><bean:message key="a_other_adv_edit_style_image_height_comment"/></span>
									</td>
									<td class="altbg2">
										<input type="text" size="50" name="imageheight" value="">
									</td>
								</tr>
								<tr>
									<td width="45%" class="altbg1">
										<b><bean:message key="a_other_adv_edit_style_image_alt"/></b>
										<br />
										<span class="smalltxt"><bean:message key="a_other_adv_edit_style_image_alt_comment"/></span>
									</td>
									<td class="altbg2">
										<input type="text" size="50" name="imagealt" value="">
									</td>
								</tr>
							</table>
							<br />
						</div>

						<div id="style_flash" style="<c:if test="${!(valueObject.style eq 'flash')}">display:none</c:if>" class="maintablediv">
							<table width="100%" border="0" cellpadding="0" cellspacing="0" class="tableborder">
								<tr class="header">
									<td colspan="2">
										<bean:message key="a_other_adv_edit_style_flash"/>
									</td>
								</tr>
								<tr>
									<td width="45%" class="altbg1">
										<b><bean:message key="a_other_adv_edit_style_flash_url"/></b>
										<br />
										<span class="smalltxt"><bean:message key="a_other_adv_edit_style_flash_url_comment"/></span>
									</td>
									<td class="altbg2">
										<input type="text" size="50" name="flashurl" value="">
									</td>
								</tr>
								<tr>
									<td width="45%" class="altbg1">
										<b><bean:message key="a_other_adv_edit_style_flash_width"/></b>
										<br />
										<span class="smalltxt"><bean:message key="a_other_adv_edit_style_flash_width_comment"/></span>
									</td>
									<td class="altbg2">
										<input type="text" size="50" name="flashwidth" value="">
									</td>
								</tr>
								<tr>
									<td width="45%" class="altbg1">
										<b><bean:message key="a_other_adv_edit_style_flash_height"/></b>
										<br />
										<span class="smalltxt"><bean:message key="a_other_adv_edit_style_flash_height_comment"/></span>
									</td>
									<td class="altbg2">
										<input type="text" size="50" name="flashheight" value="">
									</td>
								</tr>
								<tr>
									<td width="45%" class="altbg1">
										<b><bean:message key="a_other_adv_edit_style_flash_link"/></b>
										<br />
										<span class="smalltxt"><bean:message key="a_other_adv_edit_style_flash_link_comment"/></span>
									</td>
									<td class="altbg2">
										<input type="text" size="50" name="flashlink" value="">
									</td>
								</tr>
							</table>
						</div>
	<center><input class="button" type="submit" name="advsubmit" value="<bean:message key="submit"/>"></center>
</form>
<jsp:directive.include file="../cp_footer.jsp" />
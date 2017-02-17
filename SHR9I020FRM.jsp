<%@ page contentType="text/html; charset=UTF-8" language="java" import="cdgs.framework.standard.*,cdgs.framework.utils.*"%>
<%@ taglib uri="/tags/struts-html" prefix="html"%>
<%@ taglib uri="/framework" prefix="framework"%>
<%@ taglib uri="/aczept/webui" prefix="webui"%>
<%@ include file="/alertMessage.jsp"%>
<html:form action="led/shr/report/SHR9I020Action">
	<html:hidden property="button1" value="" />
	<html:hidden property="programID" value="SHR9I020" />
	<html:hidden property="index" />
	<html:hidden property="_CUSTOM_WHERE" value="1=1" />
	<html:hidden property="customWhere" value="1=1" />
	<html:hidden property="pccCaseGenSendMethod" />
	<html:hidden property="deptCode" />
	<html:hidden property="officeDeptCode" />
	<html:hidden property="centDeptGen" />
	<html:hidden property="deptCodeGenNum" />
	
	<html:hidden property="deliverFlag" />
	<html:hidden property="sendIndex" />
	<html:hidden property="cancelDeliverFlag" />
	<html:hidden property="depositInstituteFlag" />
	<html:hidden property="officeCentDeptGen"/>
	
	<html:hidden property="countSendMethod3"/>
	<html:hidden property="parentDeptCodeTarget" />

	<div id="openDg"><html:hidden property="openDgCondition" /></div>
	<%@ include file="/led/gen/GenNumCaller.jsp"%>

	<table width="100%" border="0" align="center" cellpadding="0" cellspacing="0">
		<tr height="28">
			<td>&nbsp;</td>
		</tr>
		<tr>
			<td>
			<fieldset title="เงื่อนไขการสืบค้นข้อมูล"><legend>เงื่อนไขการสืบค้นข้อมูล</legend>
			<table cellpadding="0" cellspacing="0" align="center">
				<tr height="28">
					<td width="100">เลขที่เก็บ</td>
					<td width="250"><%@include file="/led/shr/share/lovShrRecvCase.jsp"%></td>
					<td width="100">คดีหมายเลขดำที่</td>
					<td width="250"><%@include file="/led/shr/share/lovShrBCase.jsp" %></td>
				</tr>
				<tr height="28">
					<td>เลขบัญชี</td>
					<td><html:text property="accCode" size="10" maxlength="10" /></td>
					<td>คดีหมายเลขแดงที่</td>
					<td><%@include file="/led/shr/share/lovShrRCase.jsp" %></td>
				</tr>
				<tr height="28">
					<td>ศาล</td>
					<td colspan="3"><%@ include file="/led/lovCommonCourtCase.jsp"%></td>
				</tr>
				<tr height="28" style="display:none">
					<td>โจทก์</td>
					<td colspan="3"><html:text property="plaintiff" size="50" maxlength="100" /></td>
				</tr>
				<tr height="28" style="display:none">
					<td>จำเลย</td>
					<td colspan="3"><html:text property="defendant" size="50" maxlength="100" /></td>
				</tr>
				<tr height="28">
					<td>เลขที่หนังสือ</td>
					<td>
					<table cellpadding="0" cellspacing="0">
						<tr>
							<td><html:text property="sendwritBookNo" size="10" maxlength="20" /></td>
							<!--<td><html:text property="documentNo" size="5" maxlength="5" /></td>-->
							<!--<td>&nbsp;/&nbsp;</td>-->
							<!--<td><html:text property="documentYy" size="4" maxlength="4" /></td>-->
						</tr>
					</table>
					</td>
					<td>วันที่</td>
					<td>
					<table cellpadding="0" cellspacing="0">
						<tr>
							<td><webui:date property="sendwritBookDateBegin" size="8" maxlength="10" /></td>
							<td>&nbsp;ถึง&nbsp;</td>
							<td><webui:date property="sendwritBookDateEnd" size="8" maxlength="10" /></td>
						</tr>
					</table>
					</td>
				</tr>
				
				<tr height="28">
					<td>วิธีการส่ง</td>
					<td><webui:select property="selectSendMethodShr" size="20" /></td>
					<td colspan="2">
					<table>
						<tr>
							<td><html:radio property="sentFlag" value="0">ยังไม่ได้ส่ง</html:radio></td>
							<td width="50">&nbsp;</td>
							<td><html:radio property="sentFlag" value="1">ส่งแล้ว</html:radio></td>
							<td width="50">&nbsp;</td>
							<td><html:radio property="sentFlag" value="2">ทั้งหมด</html:radio></td>
						</tr>
					</table>
				</tr>
				
				
				<tr height="28">
					<td>ระบบงาน</td>
					
					<td colspan="3">
					<table>
						<tr>
							<td><html:radio property="instituteFlag" value="0">หน่วยงานที่สังกัด</html:radio></td>
							<td width="">&nbsp;</td>
							<td><html:radio property="instituteFlag" value="2">ยึด</html:radio></td>
							<td width="">&nbsp;</td>
							<td><html:radio property="instituteFlag" value="4">อายัด</html:radio></td>
							<td width="">&nbsp;</td>
							<td><html:radio property="instituteFlag" value="3">จำหน่าย</html:radio></td>			
							<td width="">&nbsp;</td>
							<td><html:radio property="instituteFlag" value="5">คำนวณ</html:radio></td>													
						</tr>
					</table>
				</tr>				
				
				<tr height="28">
					<td>&nbsp;</td>
				</tr>
				<tr height="28">
					<td colspan="4">
					<table cellpadding="0" cellspacing="0" align="center">
						<tr>
							<td><webui:wrapFwButton type="query" property="queryButton" /></td>
							<td><webui:wrapFwButton type="cancel" property="cancelButton" /></td>
						</tr>
					</table>
					</td>
				</tr>
			</table>
			</fieldset>
			</td>
		</tr>
		<tr>
			<td width="100%">
			<table cellpadding="0" cellspacing="0" width="100%">
				<tr>
					<td width="100%"><webui:table property="spsSendwritBeanTable" onBeforeSubmit="beforeSpsSendwritBeanTableSubmit" method="executeSpsSendwritBeanTable"/></td>
				</tr>
			</table>
			</td>
		<tr>
		<tr>
			<td colspan="10">
			<table cellpadding="0" cellspacing="0">
				<tr>
					<td align="left"><webui:wrapFwButton type="save" property="saveButton" label="ส่ง" onclick="clickSave()" /></td>
					<td align="left"><webui:wrapFwButton type="cancelSend" property="cancelSendButton" label="ยกเลิกส่ง" onclick="clickCancelSend()" /></td>
					<td width="100%">&nbsp;</td>
					<td align="right"><webui:wrapFwButton type="printWordSPS1R110" property="printWordSPS1R110Button" label="พิมพ์ใบรับ" onclick="clickPrintWordSPS1R110()" /></td>
					<td align="right"><webui:wrapFwButton type="preparePrintDoc" property="preparePrintDocButton" label="พิมพ์เอกสาร" onclick="clickPreparePrintDoc()" /></td>
					<td align="right"><webui:wrapFwButton type="saveChargePost" property="saveChargePostButton" label="บันทึกค่าใช้จ่าย ส่งปณ" onclick="clickSaveChargePost()" /></td>
					<td align="right"><webui:wrapFwButton type="printControlDoc" property="printControlDocButton" label="พิมพ์หนังสือนำ (เดินหมายแทน)" onclick="clickPrintControlDoc();" /></td>
				</tr>
			</table>
			</td>
		</tr>
	</table>
</html:form>
<script type="text/javascript" src="led/shr/share/lovShrParaCust.js"></script>
<script type="text/javascript" language="javascript" src="led/gen/GenNum.js"></script>
<script type="text/javascript" language="javascript">


	var form = document.forms[0];
	var deliverFlag = form.deliverFlag.value;
	var countSendMethod3 = parseInt('0');
	
	if (deliverFlag == 'N') {
		disableWrapFwButton('saveButton');
	}else  if (deliverFlag == 'Y') {
		enableWrapFwButton('saveButton');
	}
	
	var cancelDeliverFlag = form.cancelDeliverFlag.value;
	
	if (cancelDeliverFlag == 'N') {
		disableWrapFwButton('cancelSendButton');
	} else if (cancelDeliverFlag == 'Y') {
		enableWrapFwButton('cancelSendButton');
	}

	function validateForm() {
		var form = document.forms[0];
		var blackCase = form.blackCase.value;
		var blackYy = form.blackYy.value;
		var redCase = form.redCase.value;
		var redYy = form.redYy.value;

		if (!GenericValidator.isBlankOrNull(blackCase)
				|| !GenericValidator.isBlankOrNull(blackYy)) {
			validateFormField(form.blackCase, "คดีหมายเลขดำที่", "required");
			validateFormField(form.blackYy, "ปี คดีหมายเลขดำที่", "required");
		}
		if (!GenericValidator.isBlankOrNull(redCase)
				|| !GenericValidator.isBlankOrNull(redYy)) {
			validateFormField(form.redCase, "คดีหมายเลขแดงที่", "required");
			validateFormField(form.redYy, "ปี คดีหมายเลขแดงที่", "required");
		}
		if (GenericValidator.isBlankOrNull(blackCase)
				&& GenericValidator.isBlankOrNull(blackYy)
				&& GenericValidator.isBlankOrNull(redCase)
				&& GenericValidator.isBlankOrNull(redYy)) {
			alert('กรุณาระบุ คดีหมายเลขดำที่ หรือ คดีหมายเลขแดงที่');
			return false;
		}
		return alertMsg();
	}

	function beforeSpsSendwritBeanTableSubmit(form, property, mode, index) {
		document.forms[0].sendIndex.value = index;
		

		if (mode == 'addRow') {
			return false;
		} else if (mode == 'clickRow') {

			var colIndexSendMethodDesc = 5;

			// ทำการดึง value ภายใน column ที่ต้องการออกมา
			var valSendMethodDesc = getWebUIColumnValue('spsSendwritBeanTable',index, colIndexSendMethodDesc);

			//alert('valSendMethodDesc  -->' + valSendMethodDesc );		

			if (!GenericValidator.isBlankOrNull(valSendMethodDesc)) {
				//if ( (valSendMethodDesc != 'ส่งเดินหมาย') && (valSendMethodDesc != 'ให้สนง.อื่นส่งเดินหมาย')   ) {
				if ( (valSendMethodDesc != 'ส่งเดินหมาย') && (valSendMethodDesc.substring(0,7) != 'ให้สนง.')   ) {
					openDGDialog("led/shr/report/SHR9I020_1Action.do?index="+ index, 650, 550);
							
				} else {
					//alert("ข้อมูลเดินหมาย ไม่สามารถเข้าไปแก้ไขรายละเอียดข้อมูลได้");

					submitForm('openWebflowSPS1Q020', false);
					
				}
			}
			return false;
		} else if (mode == 'removeRow') {
			var result = countTableCheckBox('spsSendwritBeanTable');
			if (result == null) {
				return false;
			}
			if (result.count == 0) {
				alert(ThW008);
				return false;
			}
			if (!confirm(ThW004)) {
				return false;
			}
		}
		return true;
	}

	// ใ้ช้เช็ค selectSendMethod ถ้าเป็น "ให้ สนง.อื่นส่งเดินหมาย" (sendMethodCode='3') return true
	function checkSelectSendMethod() {

		var sendMethodSelect = getWebUISelectSelectedOption("selectSendMethodShr");

		if (sendMethodSelect != null && !GenericValidator.isUndefined(sendMethodSelect)) {

			var sendMethodCode = sendMethodSelect.key;
			if (sendMethodCode != null && sendMethodCode == "3") {
				return true;
			}
		}
		return false;
	}

	function disableButton(disable) {
		if (disable) {
			//disableWrapFwButton('saveChargePostButton');
			//disableWrapFwButton('printControlDocButton');
		} else {
			//enableWrapFwButton('saveChargePostButton');
			//enableWrapFwButton('printControlDocButton');
		}
	}

	function check() {
		/*var prefixBlackCaseSendMethod = $('prefixBlackCaseSendMethod').value;
		var blackCaseSendMethod = $('blackCaseSendMethod').value;
		var blackYySendMethod = $('blackYySendMethod').value;
		var prefixRedCaseSendMethod = $('prefixRedCaseSendMethod').value;
		var redCaseSendMethod = $('redCaseSendMethod').value;
		var redYySendMethod = $('redYySendMethod').value;

		if(!GenericValidator.isBlankOrNull(prefixBlackCaseSendMethod) || !GenericValidator.isBlankOrNull(blackCaseSendMethod)
			|| !GenericValidator.isBlankOrNull(blackYySendMethod) || !GenericValidator.isBlankOrNull(prefixRedCaseSendMethod)
			|| !GenericValidator.isBlankOrNull(redCaseSendMethod) || !GenericValidator.isBlankOrNull(redYySendMethod)){
			disableButton(false);    
		}else{
			disableButton(true);
		}  */
		var pccCaseGenSendMethod = $('pccCaseGenSendMethod').value;

		if (!GenericValidator.isBlankOrNull(pccCaseGenSendMethod)) {
			disableButton(false);
		} else {
			disableButton(true);
		}
	}

	function postLov(lovID) {
		if (lovID == 'lovBlackCaseSendMethodSTD') {
			var prefixBlackCaseSendMethod = $('prefixBlackCaseSendMethod').value;
			if (!GenericValidator.isBlankOrNull(prefixBlackCaseSendMethod)) {
				disableButton(false);
			} else {
				disableButton(true);
			}

		}
		if (lovID == 'lovRedCaseSendMethodSTD') {
			var prefixRedCaseSendMethod = $('prefixRedCaseSendMethod').value;
			if (!GenericValidator.isBlankOrNull(prefixRedCaseSendMethod)) {
				disableButton(false);
			} else {
				disableButton(true);
			}
		}
	}

	function doQueryrecvYyHideOnBlur() {
	}
	function doQueryblackYyHideOnBlur() {
	}
	function doQueryredYyHideOnBlur() {
	}

	function ledInit() {

		if (checkSelectSendMethod()) {
			var result = countTableCheckBox('spsSendwritBeanTable');
			if (result != null) {
				disableButton(false);
			} else {
				disableButton(true);
			}
		} else {
			disableButton(true);
		}
	}

	///// Query
	function clickButtonQuery() {

		if (checkSelectSendMethod()) {
			return validateForm();
		}
		return true;
	}

	///// Save
	function clickSave() {

		if (checkCheckedInTable()) {

			if (checkValueBeforeSave(document.forms[0])) {

				$('countSendMethod3').value = countSendMethod3;
//alert('countSendMethod3 = ' + countSendMethod3); 
				if(countSendMethod3 > 0){
					var currDate = new Date(getCurrentTimeMillis());
					var currYear = currDate.getFullYear();
					var currYearTh = currYear + 543;
					preGenNum({
						caseSystem: '1',
						genYear: currYearTh + '', 
						genNumType: 'R', 
						callByModule: 'ReceiveBook',
						programID: $('programID').value,
						bookLang: 'T',
						extendCondition: '',
						registerName: '',
						requireDate: null,
						requireNum: countSendMethod3,
						deptCode: $('parentDeptCodeTarget').value,
						action: 'genNumSave',
						validateForm: false});
					genNum();
				}else{
					submitForm('save', false);
				}
			}
		}
	}

	function checkValueBeforeSave(form) {

		// ตรวจสอบว่าในเทเบิ้ลมีค่า และมีการ checked ค่ามาด้วย
		if (!checkCheckedInTable()) {
			return false;
		}

		// ชื่อ property ที่กำหนดของ WebUI Table
		var checkValues = getWebUITableCheckObject(form, 'spsSendwritBeanTable');

		// ทำการตรวจสอบว่า Check Box มีมากกว่า 1 ตัวหรือไม่โดยดูจาก length ถ้ามี property length
		// แสดงว่า Check Box นั้นๆ มีมากกว่า 1 ตัว คือเป็น Array		
		if (checkValues.length) {

			// ทำการวนลูปเข้าไปใน Check Box นั้นๆ
			for ( var i = 0; i < checkValues.length; i++) {

				// ทำการตรวจสอบว่า Check Box ช่องที่ i นี้มีการ check อยู่หรือไม่
				if (checkValues[i].checked) {

					// ภายใน Check Box นี้จะมี value อยู่ซึ่งเป็นลำดับที่แถวภายในตาราง
					var rowIndex = checkValues[i].value;

					if(!checkValue(rowIndex)){
						return false;
					}
				}
			}
		} else {
			// ในกรณีที่ Check Box มีแค่รายการเดียว  (มีข้อมูล แค่  แถว เดียว จะไม่เป็น  Array)
			// ทำการตรวจสอบว่าได้มีการ check มาหรือไม่
			if (checkValues.checked) {

				// ภายใน Check Box นี้จะมี value อยู่ซึ่งเป็นลำดับที่แถวภายในตาราง
				var rowIndex = checkValues.value;

				return checkValue(rowIndex);
			}
		}
		return true;
	}

	function checkValue(rowIndex) {

		var tableName = 'spsSendwritBeanTable';
		var colIndexSendwritBookNo = 1;
		var colIndexSendMethodDesc = 5;
		var colIndexSendMethodDate = 6;
		var colIndexSendwritAmount = 8;
		var colIndexNewspaperCharge = 9;
		var colIndexPostServiceCharge = 10;
		var colIndexPostCharge = 11;

		// get ค่า sendMethodDate ออกมาเพื่อใช้ตรวจสอบ
		var valSendMethodDate = getWebUIColumnValue(tableName, rowIndex,
				colIndexSendMethodDate);

		// ตรวจสอบว่ามีค่า sendMethodDate หรือไม่ ถ้าไม่มีค่า ให้ทำการส่งได้
		// ถ้ามีค่าแล้ว แปลว่ารายการนั้นถูกส่งแล้ว จะให้ส่งซ้ำไม่ได้
		if (GenericValidator.isBlankOrNull(valSendMethodDate)) {

			// ทำการดึง value ภายใน column ที่ต้องการออกมา
			var valSendMethodDesc = getWebUIColumnValue(tableName, rowIndex,
					colIndexSendMethodDesc);

			//if (valSendMethodDesc == 'ส่งเดินหมาย'|| valSendMethodDesc == 'ให้สนง.อื่นส่งเดินหมาย') {
			if (valSendMethodDesc == 'ส่งเดินหมาย'|| valSendMethodDesc.substring(0,7) == 'ให้สนง.') {

				var valSendwritBookNo = getWebUIColumnValue(tableName, rowIndex, colIndexSendwritBookNo);
				var valSendwritBookDate = getWebUIColumnHiddenValue(tableName,'sendwritBookDate', rowIndex);
				var valSendwritRecvName = getWebUIColumnHiddenValue(tableName,'sendwritRecvName', rowIndex);
				var valCentLocGen = getWebUIColumnHiddenValue(tableName,'centLocGen', rowIndex);
				var valSendwritAmount = getWebUIColumnValue(tableName,rowIndex, colIndexSendwritAmount);
				var valDocTypeCode = getWebUIColumnHiddenValue(tableName,'docTypeCode', rowIndex);

				/*alert('SendwritBookNo = ' +  valSendwritBookNo + 
						'\nSendwritBookDate = ' + valSendwritBookDate + 
						'\nSendwritRecvName = ' + valSendwritRecvName +
						'\nCentLocGen = ' + valCentLocGen + 
						'\nSendwritAmount = ' + valSendwritAmount +
						'\nDocTypeCode = ' + valDocTypeCode);*/

				if (valDocTypeCode != '4') { //หมายประกาศ
					if (GenericValidator.isBlankOrNull(valSendwritRecvName)) {
						alert('ไม่สามารถส่งได้ เนื่องจากรายการที่ ส่งเดินหมาย ข้อมูลไม่ครบถ้วน');
						return false;
					}
				}

				// 7/3/54  เอาเงื่อนไขการตรวจสอบ sendwritBookNo sendwritBookDate ออก 
				// ใช้วิธีตรวจสอบถ้าไม่มีค่าใน spsSendwrit ให้เอาค่าจาก cfcReport มาใส่แทน  ถ้ายังไม่มีค่าอีก ไม่อนุญาตให้บันทึกการส่ง		
				if (/*GenericValidator.isBlankOrNull(valSendwritBookNo)  
						|| GenericValidator.isBlankOrNull(valSendwritBookDate)
						|| */GenericValidator.isBlankOrNull(valCentLocGen)
						|| GenericValidator.isBlankOrNull(valSendwritAmount)) {
					alert('ไม่สามารถส่งได้ เนื่องจากรายการที่ ส่งเดินหมาย ข้อมูลไม่ครบถ้วน');
					return false;
				}

				//if(valSendMethodDesc == 'ให้สนง.อื่นส่งเดินหมาย'){
				if(valSendMethodDesc.substring(0,7) == 'ให้สนง.'){
					countSendMethod3++;
//alert('countSendMethod3 = ' + countSendMethod3);
				}
				
			} else if (valSendMethodDesc == 'ส่งไปรษณีย์') {

				var valPostServiceCharge = getWebUIColumnValue(tableName,
						rowIndex, colIndexPostServiceCharge);
				var valPostCharge = getWebUIColumnValue(tableName, rowIndex,
						colIndexPostCharge);

				if (GenericValidator.isBlankOrNull(valPostServiceCharge)
						|| GenericValidator.isBlankOrNull(valPostCharge)) {
					alert('ไม่สามารถส่งได้ เนื่องจากรายการที่ ส่งเดินหมาย ข้อมูลไม่ครบถ้วน');
					return false;
				}

			} else if (valSendMethodDesc == 'ส่งประกาศทางหนังสือพิมพ์') {

				var valNewspaperCharge = getWebUIColumnValue(tableName,
						rowIndex, colIndexNewspaperCharge);

				if (GenericValidator.isBlankOrNull(valNewspaperCharge)) {
					alert('ไม่สามารถส่งได้ เนื่องจากรายการที่ ส่งเดินหมาย ข้อมูลไม่ครบถ้วน');
					return false;
				}
			}
		} else {
			alert('ไม่สามารถส่งได้ เนื่องจากรายการที่เลือก ดำเนินการส่งไปแล้ว');
			return false;
		}

		return true;
	}

	///// CancelSend
	function clickCancelSend() {

		if (checkCheckedInTable()) {
			submitForm('cancelSend', false);
		}
	}

	///// PrintWordSPS1R110
	function clickPrintWordSPS1R110() {

		if (checkCheckedInTable()) {
			submitForm('printWordSPS1R110', false);
		}
	}

	///// PreparePrintDoc
	function clickPreparePrintDoc() {

		if (checkCheckedInTable()) {
			var result = countTableCheckBox('spsSendwritBeanTable');
			var index = result.rowsChecked;
			$('index').value = index;
			submitForm('preparePrintDoc', false);
		}
	}

	///// SaveChargePost
	function clickSaveChargePost() {

		if (checkCheckedInTable()) {
			openDGDialog("led/shr/report/SHR9I020_1Action.do", 650, 550);
		}
	}

	///// PreparePrintControlDoc
	function onGenNum(button) {
		// ถ้าเป็นการเพิ่มข้อมูล ให้ขึ้นเลือกเลขที่รับหนังสือด้วย
		var currDate = new Date(getCurrentTimeMillis());
		var currYear = currDate.getFullYear();
		var currYearTh = currYear + 543;
		preGenNum({
			caseSystem: '1',
			genYear: currYearTh + '', 
			genNumType: 'B', 
			callByModule: 'sendNotify',
			programID: $('programID').value,
			bookLang: 'T',
			extendCondition: '',
			registerName: '',
			requireDate: null,
			requireNum: '1',
			deptCode: $('deptCodeGenNum').value,
			action: button,
			validateForm: false});
		genNum();
	}
	
	function clickPrintControlDoc() {

		if (checkCheckedInTable()) {

			// ชื่อ property ที่กำหนดของ WebUI Table
			var checkValues = getWebUITableCheckObject(form, 'spsSendwritBeanTable');
			var rowIndex = '';

			// ทำการตรวจสอบว่า Check Box มีมากกว่า 1 ตัวหรือไม่โดยดูจาก length ถ้ามี property length
			// แสดงว่า Check Box นั้นๆ มีมากกว่า 1 ตัว คือเป็น Array	
			if (checkValues.length) {

				// ทำการวนลูปเข้าไปใน Check Box นั้นๆ
				for ( var i = 0; i < checkValues.length; i++) {

					// ทำการตรวจสอบว่า Check Box ช่องที่ i นี้มีการ check อยู่หรือไม่
					if (checkValues[i].checked) {

						// ภายใน Check Box นี้จะมี value อยู่ซึ่งเป็นลำดับที่แถวภายในตาราง
						rowIndex = checkValues[i].value;
						break;
					}
				}
			} else {
				// ในกรณีที่ Check Box มีแค่รายการเดียว  (มีข้อมูล แค่  แถว เดียว จะไม่เป็น  Array)
				// ทำการตรวจสอบว่าได้มีการ check มาหรือไม่
				if (checkValues.checked) {

					// ภายใน Check Box นี้จะมี value อยู่ซึ่งเป็นลำดับที่แถวภายในตาราง
					rowIndex = checkValues.value;
				}
			}
			
			var valSendMethodDesc = getWebUIColumnValue('spsSendwritBeanTable', rowIndex, 5);

			//if (valSendMethodDesc == 'ให้สนง.อื่นส่งเดินหมาย') {
			if(valSendMethodDesc.substring(0,7) == 'ให้สนง.'){
				onGenNum('preparePrintControlDoc');
				//submitForm('preparePrintControlDoc', false);
			} else {
				alert('เฉพาะข้อมูลเดินหมายแทน');
				return false;
			}
		}
	}

	// ใช้เช็คว่าในเทเบิ้ลมีค่าหรือไม่ และค่าในเทเบิ้ลถูก checked อยู่หรือป่าว
	function checkCheckedInTable() {

		var result = countTableCheckBox('spsSendwritBeanTable');
		if (result == null) {
			return false;
		}
		if (result.count == 0) {
			alert('กรุณาเลือกรายการ');
			return false;
		}
		return true;
	}

	/**
	 * function รูปแบบของ JQUERY 
	 * ถ้ามีการเรียกใช้ TextBoxหรือปุ่มของ lovBlackSTD,lovRedSTD จะมีการ Validate ให้ไปเลือกศาลก่อน
	 * warning ในหน้าแสดงผลควรจะมีตัวแปรให้ครบ
	 */
	$j(document).ready(
			function() {
				$j('input:text[name=blackYy]').add(
						$j('input:text[name=blackCase]')).add(
						$j('input:text[name=prefixBlackCase]')).add(
						$j('input:button[name=lovBlackCaseSTDButton]')).add(
						$j('input:text[name=redYy]')).add(
						$j('input:text[name=redCase]')).add(
						$j('input:text[name=prefixRedCase]')).add(
						$j('input:button[name=lovRedCaseSTDButton]')).bind(
						'focus',
						function() {
							if (GenericValidator
									.isBlankOrNull($("courtCode").value)) {
								$("courtCode").focus();
								alert('กรุณาเลือกศาลก่อน');
							}
						});
			});
</script>
<script type="text/javascript" src="led/shr/share/paraCustLovShrRecvCase.js"></script>
<script type="text/javascript" src="led/shr/share/paraCustLovShrBRCase.js"></script>
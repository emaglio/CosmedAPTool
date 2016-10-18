<?xml version='1.0' encoding='UTF-8'?>
<Project Type="Project" LVVersion="15008000">
	<Item Name="My Computer" Type="My Computer">
		<Property Name="server.app.propertiesEnabled" Type="Bool">true</Property>
		<Property Name="server.control.propertiesEnabled" Type="Bool">true</Property>
		<Property Name="server.tcp.enabled" Type="Bool">false</Property>
		<Property Name="server.tcp.port" Type="Int">0</Property>
		<Property Name="server.tcp.serviceName" Type="Str">My Computer/VI Server</Property>
		<Property Name="server.tcp.serviceName.default" Type="Str">My Computer/VI Server</Property>
		<Property Name="server.vi.callsEnabled" Type="Bool">true</Property>
		<Property Name="server.vi.propertiesEnabled" Type="Bool">true</Property>
		<Property Name="specify.custom.address" Type="Bool">false</Property>
		<Item Name="APP" Type="Folder">
			<Item Name="bb-pft.lvclass" Type="LVClass" URL="../APP/bb-pft_class/bb-pft.lvclass"/>
			<Item Name="bodpod.lvclass" Type="LVClass" URL="../APP/bodpod_class/bodpod.lvclass"/>
			<Item Name="checkIN.lvclass" Type="LVClass" URL="../APP/checkIN_class/checkIN.lvclass"/>
			<Item Name="checkOUT.lvclass" Type="LVClass" URL="../APP/checkOUT_class/checkOUT.lvclass"/>
			<Item Name="cpet.lvclass" Type="LVClass" URL="../APP/cpet_class/cpet.lvclass"/>
			<Item Name="excelFile.lvclass" Type="LVClass" URL="../APP/excelFile_class/excelFile.lvclass"/>
			<Item Name="fitmate.lvclass" Type="LVClass" URL="../APP/fitmate_class/fitmate.lvclass"/>
			<Item Name="item.lvclass" Type="LVClass" URL="../APP/item_class/item.lvclass"/>
			<Item Name="itemsNotification.lvclass" Type="LVClass" URL="../APP/itemsNotification_class/itemsNotification.lvclass"/>
			<Item Name="k4b2.lvclass" Type="LVClass" URL="../APP/k4b2_class/k4b2.lvclass"/>
			<Item Name="k5.lvclass" Type="LVClass" URL="../APP/k5_class/k5.lvclass"/>
			<Item Name="partsTracking.lvclass" Type="LVClass" URL="../APP/partsTracking_class/partsTracking.lvclass"/>
			<Item Name="peapod.lvclass" Type="LVClass" URL="../APP/peapod_class/peapod.lvclass"/>
			<Item Name="python.lvclass" Type="LVClass" URL="../APP/python_class/python.lvclass"/>
			<Item Name="rmr.lvclass" Type="LVClass" URL="../APP/rmr_class/rmr.lvclass"/>
			<Item Name="trackingNotification.lvclass" Type="LVClass" URL="../APP/trackingNotification_class/trackingNotification.lvclass"/>
		</Item>
		<Item Name="ConfigFiles" Type="Folder">
			<Item Name="config.ini" Type="Document" URL="../ConfigFiles/config.ini"/>
			<Item Name="tsr_agreement.xlsx" Type="Document" URL="../ConfigFiles/tsr_agreement.xlsx"/>
			<Item Name="tsr_repair.xlsx" Type="Document" URL="../ConfigFiles/tsr_repair.xlsx"/>
			<Item Name="tsr_warranty.xlsx" Type="Document" URL="../ConfigFiles/tsr_warranty.xlsx"/>
		</Item>
		<Item Name="GUI" Type="Folder">
			<Item Name="GUI Controller.lvclass" Type="LVClass" URL="../GUI/GUI Controller_llb/GUI Controller.lvclass"/>
			<Item Name="Project Panels.lvclass" Type="LVClass" URL="../GUI/Project Panels_class/Project Panels.lvclass"/>
		</Item>
		<Item Name="Python Script" Type="Folder">
			<Item Name="utility" Type="Folder">
				<Item Name="__pycache__" Type="Folder">
					<Item Name="__init__.cpython-34.pyc" Type="Document" URL="../Python Script/utility/__pycache__/__init__.cpython-34.pyc"/>
					<Item Name="getINVInfo.cpython-34.pyc" Type="Document" URL="../Python Script/utility/__pycache__/getINVInfo.cpython-34.pyc"/>
					<Item Name="writeResults.cpython-34.pyc" Type="Document" URL="../Python Script/utility/__pycache__/writeResults.cpython-34.pyc"/>
				</Item>
				<Item Name="__init__.py" Type="Document" URL="../Python Script/utility/__init__.py"/>
				<Item Name="getINVInfo.py" Type="Document" URL="../Python Script/utility/getINVInfo.py"/>
				<Item Name="test.py" Type="Document" URL="../Python Script/utility/test.py"/>
				<Item Name="writeResults.py" Type="Document" URL="../Python Script/utility/writeResults.py"/>
			</Item>
			<Item Name="exeVersion.py" Type="Document" URL="../Python Script/exeVersion.py"/>
			<Item Name="getCosmedINV.py" Type="Document" URL="../Python Script/getCosmedINV.py"/>
			<Item Name="print.py" Type="Document" URL="../Python Script/print.py"/>
			<Item Name="read.py" Type="Document" URL="../Python Script/read.py"/>
		</Item>
		<Item Name="SYS" Type="Folder">
			<Item Name="Devices Controller.lvclass" Type="LVClass" URL="../SYS/Devices Controller_llb/Devices Controller.lvclass"/>
			<Item Name="File Controller.lvclass" Type="LVClass" URL="../SYS/File Controller_llb/File Controller.lvclass"/>
			<Item Name="Items Controller.lvclass" Type="LVClass" URL="../SYS/Items Controller_llb/Items Controller.lvclass"/>
			<Item Name="Master Controller.lvclass" Type="LVClass" URL="../SYS/Master Controller_llb/Master Controller.lvclass"/>
			<Item Name="Notification Controller.lvclass" Type="LVClass" URL="../SYS/Notification Controller_class/Notification Controller.lvclass"/>
			<Item Name="PartsTracking Controller.lvclass" Type="LVClass" URL="../SYS/PartsTracking Controller_class/PartsTracking Controller.lvclass"/>
		</Item>
		<Item Name="main.vi" Type="VI" URL="../main.vi"/>
		<Item Name="test.vi" Type="VI" URL="../test.vi"/>
		<Item Name="test2.vi" Type="VI" URL="../test2.vi"/>
		<Item Name="TEST3.vi" Type="VI" URL="../TEST3.vi"/>
		<Item Name="Dependencies" Type="Dependencies">
			<Item Name="user.lib" Type="Folder">
				<Item Name="CloseXL_App.vi" Type="VI" URL="/&lt;userlib&gt;/Read_Excel_Values.llb/CloseXL_App.vi"/>
				<Item Name="CloseXL_Workbook.vi" Type="VI" URL="/&lt;userlib&gt;/Read_Excel_Values.llb/CloseXL_Workbook.vi"/>
				<Item Name="CloseXL_Worksheet.vi" Type="VI" URL="/&lt;userlib&gt;/Read_Excel_Values.llb/CloseXL_Worksheet.vi"/>
				<Item Name="GetXL_CellValue_Dbl.vi" Type="VI" URL="/&lt;userlib&gt;/Read_Excel_Values.llb/GetXL_CellValue_Dbl.vi"/>
				<Item Name="GetXL_CellValue_String.vi" Type="VI" URL="/&lt;userlib&gt;/Read_Excel_Values.llb/GetXL_CellValue_String.vi"/>
				<Item Name="GetXL_CellValues.vi" Type="VI" URL="/&lt;userlib&gt;/Read_Excel_Values.llb/GetXL_CellValues.vi"/>
				<Item Name="GetXL_CellValues_2D_Dbl.vi" Type="VI" URL="/&lt;userlib&gt;/Read_Excel_Values.llb/GetXL_CellValues_2D_Dbl.vi"/>
				<Item Name="GetXL_CellValues_2D_String.vi" Type="VI" URL="/&lt;userlib&gt;/Read_Excel_Values.llb/GetXL_CellValues_2D_String.vi"/>
				<Item Name="OpenXL_App.vi" Type="VI" URL="/&lt;userlib&gt;/Read_Excel_Values.llb/OpenXL_App.vi"/>
				<Item Name="OpenXL_Workbook.vi" Type="VI" URL="/&lt;userlib&gt;/Read_Excel_Values.llb/OpenXL_Workbook.vi"/>
				<Item Name="OpenXL_WorkSheet.vi" Type="VI" URL="/&lt;userlib&gt;/Read_Excel_Values.llb/OpenXL_WorkSheet.vi"/>
				<Item Name="Row Col To Range Format.vi" Type="VI" URL="/&lt;userlib&gt;/Read_Excel_Values.llb/Row Col To Range Format.vi"/>
			</Item>
			<Item Name="vi.lib" Type="Folder">
				<Item Name="8.6CompatibleGlobalVar.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/config.llb/8.6CompatibleGlobalVar.vi"/>
				<Item Name="Application Directory.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/file.llb/Application Directory.vi"/>
				<Item Name="BuildHelpPath.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/BuildHelpPath.vi"/>
				<Item Name="Check if File or Folder Exists.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/libraryn.llb/Check if File or Folder Exists.vi"/>
				<Item Name="Check Special Tags.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Check Special Tags.vi"/>
				<Item Name="Clear Errors.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Clear Errors.vi"/>
				<Item Name="Convert property node font to graphics font.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Convert property node font to graphics font.vi"/>
				<Item Name="Details Display Dialog.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Details Display Dialog.vi"/>
				<Item Name="DialogType.ctl" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/DialogType.ctl"/>
				<Item Name="DialogTypeEnum.ctl" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/DialogTypeEnum.ctl"/>
				<Item Name="Error Cluster From Error Code.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Error Cluster From Error Code.vi"/>
				<Item Name="Error Code Database.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Error Code Database.vi"/>
				<Item Name="ErrWarn.ctl" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/ErrWarn.ctl"/>
				<Item Name="eventvkey.ctl" Type="VI" URL="/&lt;vilib&gt;/event_ctls.llb/eventvkey.ctl"/>
				<Item Name="ex_CorrectErrorChain.vi" Type="VI" URL="/&lt;vilib&gt;/express/express shared/ex_CorrectErrorChain.vi"/>
				<Item Name="Find Tag.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Find Tag.vi"/>
				<Item Name="Format Message String.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Format Message String.vi"/>
				<Item Name="G#Object.lvclass" Type="LVClass" URL="/&lt;vilib&gt;/addons/_AddQ/G#Object/G#Object.lvclass"/>
				<Item Name="General Error Handler Core CORE.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/General Error Handler Core CORE.vi"/>
				<Item Name="General Error Handler.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/General Error Handler.vi"/>
				<Item Name="Get LV Class Default Value.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/LVClass/Get LV Class Default Value.vi"/>
				<Item Name="Get LV Class Path.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/LVClass/Get LV Class Path.vi"/>
				<Item Name="Get String Text Bounds.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Get String Text Bounds.vi"/>
				<Item Name="Get Text Rect.vi" Type="VI" URL="/&lt;vilib&gt;/picture/picture.llb/Get Text Rect.vi"/>
				<Item Name="GetHelpDir.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/GetHelpDir.vi"/>
				<Item Name="GetRTHostConnectedProp.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/GetRTHostConnectedProp.vi"/>
				<Item Name="Longest Line Length in Pixels.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Longest Line Length in Pixels.vi"/>
				<Item Name="LV70DateRecToTimeStamp.vi" Type="VI" URL="/&lt;vilib&gt;/_oldvers/_oldvers.llb/LV70DateRecToTimeStamp.vi"/>
				<Item Name="LVBoundsTypeDef.ctl" Type="VI" URL="/&lt;vilib&gt;/Utility/miscctls.llb/LVBoundsTypeDef.ctl"/>
				<Item Name="LVDateTimeRec.ctl" Type="VI" URL="/&lt;vilib&gt;/Utility/miscctls.llb/LVDateTimeRec.ctl"/>
				<Item Name="LVRectTypeDef.ctl" Type="VI" URL="/&lt;vilib&gt;/Utility/miscctls.llb/LVRectTypeDef.ctl"/>
				<Item Name="LVRowAndColumnTypeDef.ctl" Type="VI" URL="/&lt;vilib&gt;/Utility/miscctls.llb/LVRowAndColumnTypeDef.ctl"/>
				<Item Name="LVRowAndColumnUnsignedTypeDef.ctl" Type="VI" URL="/&lt;vilib&gt;/Utility/miscctls.llb/LVRowAndColumnUnsignedTypeDef.ctl"/>
				<Item Name="NI_FileType.lvlib" Type="Library" URL="/&lt;vilib&gt;/Utility/lvfile.llb/NI_FileType.lvlib"/>
				<Item Name="NI_LVConfig.lvlib" Type="Library" URL="/&lt;vilib&gt;/Utility/config.llb/NI_LVConfig.lvlib"/>
				<Item Name="NI_PackedLibraryUtility.lvlib" Type="Library" URL="/&lt;vilib&gt;/Utility/LVLibp/NI_PackedLibraryUtility.lvlib"/>
				<Item Name="Not Found Dialog.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Not Found Dialog.vi"/>
				<Item Name="Qualified Name Array To Single String.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/LVClass/Qualified Name Array To Single String.vi"/>
				<Item Name="RGB to Color.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/colorconv.llb/RGB to Color.vi"/>
				<Item Name="Search and Replace Pattern.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Search and Replace Pattern.vi"/>
				<Item Name="Set Bold Text.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Set Bold Text.vi"/>
				<Item Name="Set String Value.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Set String Value.vi"/>
				<Item Name="Simple Error Handler.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Simple Error Handler.vi"/>
				<Item Name="Space Constant.vi" Type="VI" URL="/&lt;vilib&gt;/dlg_ctls.llb/Space Constant.vi"/>
				<Item Name="subDisplayMessage.vi" Type="VI" URL="/&lt;vilib&gt;/express/express output/DisplayMessageBlock.llb/subDisplayMessage.vi"/>
				<Item Name="subFile Dialog.vi" Type="VI" URL="/&lt;vilib&gt;/express/express input/FileDialogBlock.llb/subFile Dialog.vi"/>
				<Item Name="System Exec.vi" Type="VI" URL="/&lt;vilib&gt;/Platform/system.llb/System Exec.vi"/>
				<Item Name="TagReturnType.ctl" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/TagReturnType.ctl"/>
				<Item Name="Three Button Dialog CORE.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Three Button Dialog CORE.vi"/>
				<Item Name="Three Button Dialog.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Three Button Dialog.vi"/>
				<Item Name="Trim Whitespace.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Trim Whitespace.vi"/>
				<Item Name="whitespace.ctl" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/whitespace.ctl"/>
			</Item>
			<Item Name="USER32.DLL" Type="Document" URL="USER32.DLL">
				<Property Name="NI.PreserveRelativePath" Type="Bool">true</Property>
			</Item>
		</Item>
		<Item Name="Build Specifications" Type="Build">
			<Item Name="CosmedAPTools" Type="EXE">
				<Property Name="App_copyErrors" Type="Bool">true</Property>
				<Property Name="App_INI_aliasGUID" Type="Str">{476D9C74-8593-4B8C-8353-A4038D29CE8F}</Property>
				<Property Name="App_INI_GUID" Type="Str">{A4B5B6CB-2621-41CB-AFD4-F24FAEF896EC}</Property>
				<Property Name="App_serverConfig.httpPort" Type="Int">8002</Property>
				<Property Name="Bld_autoIncrement" Type="Bool">true</Property>
				<Property Name="Bld_buildCacheID" Type="Str">{3AD4E0D0-B2EE-49D8-B807-3B0B001D0D5A}</Property>
				<Property Name="Bld_buildSpecName" Type="Str">CosmedAPTools</Property>
				<Property Name="Bld_excludeInlineSubVIs" Type="Bool">true</Property>
				<Property Name="Bld_excludeLibraryItems" Type="Bool">true</Property>
				<Property Name="Bld_excludePolymorphicVIs" Type="Bool">true</Property>
				<Property Name="Bld_localDestDir" Type="Path">../LabView builds</Property>
				<Property Name="Bld_localDestDirType" Type="Str">relativeToCommon</Property>
				<Property Name="Bld_modifyLibraryFile" Type="Bool">true</Property>
				<Property Name="Bld_previewCacheID" Type="Str">{77584390-5D3C-4E10-931E-77222B3CBD65}</Property>
				<Property Name="Bld_version.build" Type="Int">8</Property>
				<Property Name="Bld_version.major" Type="Int">7</Property>
				<Property Name="Bld_version.minor" Type="Int">1</Property>
				<Property Name="Destination[0].destName" Type="Str">CosmedAPTools.exe</Property>
				<Property Name="Destination[0].path" Type="Path">../LabView builds/NI_AB_PROJECTNAME.exe</Property>
				<Property Name="Destination[0].preserveHierarchy" Type="Bool">true</Property>
				<Property Name="Destination[0].type" Type="Str">App</Property>
				<Property Name="Destination[1].destName" Type="Str">Support Directory</Property>
				<Property Name="Destination[1].path" Type="Path">../LabView builds/ConfigFiles</Property>
				<Property Name="Destination[2].destName" Type="Str">Python Script</Property>
				<Property Name="Destination[2].path" Type="Path">../LabView builds/Python Script</Property>
				<Property Name="Destination[2].preserveHierarchy" Type="Bool">true</Property>
				<Property Name="Destination[3].destName" Type="Str">ConfigFiles</Property>
				<Property Name="Destination[3].path" Type="Path">../LabView builds/ConfigFiles</Property>
				<Property Name="Destination[4].destName" Type="Str">utility</Property>
				<Property Name="Destination[4].path" Type="Path">../LabView builds/Python Script/utility</Property>
				<Property Name="DestinationCount" Type="Int">5</Property>
				<Property Name="Source[0].itemID" Type="Str">{99A66D32-A6BC-480B-8FE8-B8AEA7B742AD}</Property>
				<Property Name="Source[0].type" Type="Str">Container</Property>
				<Property Name="Source[1].destinationIndex" Type="Int">0</Property>
				<Property Name="Source[1].itemID" Type="Ref">/My Computer/main.vi</Property>
				<Property Name="Source[1].sourceInclusion" Type="Str">TopLevel</Property>
				<Property Name="Source[1].type" Type="Str">VI</Property>
				<Property Name="Source[2].Container.applyInclusion" Type="Bool">true</Property>
				<Property Name="Source[2].Container.applyPassword" Type="Bool">true</Property>
				<Property Name="Source[2].Container.depDestIndex" Type="Int">0</Property>
				<Property Name="Source[2].destinationIndex" Type="Int">3</Property>
				<Property Name="Source[2].itemID" Type="Ref">/My Computer/ConfigFiles</Property>
				<Property Name="Source[2].sourceInclusion" Type="Str">Include</Property>
				<Property Name="Source[2].type" Type="Str">Container</Property>
				<Property Name="Source[3].Container.applyDestination" Type="Bool">true</Property>
				<Property Name="Source[3].Container.applyInclusion" Type="Bool">true</Property>
				<Property Name="Source[3].Container.depDestIndex" Type="Int">0</Property>
				<Property Name="Source[3].destinationIndex" Type="Int">2</Property>
				<Property Name="Source[3].itemID" Type="Ref">/My Computer/Python Script</Property>
				<Property Name="Source[3].sourceInclusion" Type="Str">Include</Property>
				<Property Name="Source[3].type" Type="Str">Container</Property>
				<Property Name="Source[4].Container.applyDestination" Type="Bool">true</Property>
				<Property Name="Source[4].Container.depDestIndex" Type="Int">0</Property>
				<Property Name="Source[4].destinationIndex" Type="Int">0</Property>
				<Property Name="Source[4].itemID" Type="Ref">/My Computer/Python Script/utility</Property>
				<Property Name="Source[4].type" Type="Str">Container</Property>
				<Property Name="SourceCount" Type="Int">5</Property>
				<Property Name="TgtF_companyName" Type="Str">Cosmed AP</Property>
				<Property Name="TgtF_fileDescription" Type="Str">CosmedAPTools (TSR feature)
- Cosmed INVOICE in PDF reading function added
- Updated the script in order to read the new COSMED bills
- Changed the flow for the inventory in order to have all the data updated in any state of the IN-OUT process
- Added right click feature in AddCheckIN e AddCheckOUT // upload from file pressing a button in the Item panel
- The new product added will be positioned in the right place in base on the Serial Number
- Save data using Range and 2D array (quicker)
- Added TSR feature</Property>
				<Property Name="TgtF_internalName" Type="Str">CosmedAPTools</Property>
				<Property Name="TgtF_legalCopyright" Type="Str">Copyright © 2014 Cosmed</Property>
				<Property Name="TgtF_productName" Type="Str">CosmedAPTools</Property>
				<Property Name="TgtF_targetfileGUID" Type="Str">{721C0813-6C61-475B-A7A9-263EEBECD87C}</Property>
				<Property Name="TgtF_targetfileName" Type="Str">CosmedAPTools.exe</Property>
			</Item>
			<Item Name="InstallCosmedAPTools" Type="Installer">
				<Property Name="Destination[0].name" Type="Str">CosmedAPTools</Property>
				<Property Name="Destination[0].parent" Type="Str">{3912416A-D2E5-411B-AFEE-B63654D690C0}</Property>
				<Property Name="Destination[0].tag" Type="Str">{12162222-D71B-499B-A90F-75F463DF6B50}</Property>
				<Property Name="Destination[0].type" Type="Str">userFolder</Property>
				<Property Name="DestinationCount" Type="Int">1</Property>
				<Property Name="DistPart[0].flavorID" Type="Str">DefaultFull</Property>
				<Property Name="DistPart[0].productID" Type="Str">{E0F9FCA8-6328-406D-A403-4681859CBF74}</Property>
				<Property Name="DistPart[0].productName" Type="Str">NI LabVIEW Runtime 2015 SP1 f1</Property>
				<Property Name="DistPart[0].SoftDep[0].exclude" Type="Bool">false</Property>
				<Property Name="DistPart[0].SoftDep[0].productName" Type="Str">NI LabVIEW Runtime 2015 SP1 Non-English Support.</Property>
				<Property Name="DistPart[0].SoftDep[0].upgradeCode" Type="Str">{128ABF1E-5F69-40D1-8A81-33DCF8229F08}</Property>
				<Property Name="DistPart[0].SoftDep[1].exclude" Type="Bool">false</Property>
				<Property Name="DistPart[0].SoftDep[1].productName" Type="Str">NI ActiveX Container</Property>
				<Property Name="DistPart[0].SoftDep[1].upgradeCode" Type="Str">{1038A887-23E1-4289-B0BD-0C4B83C6BA21}</Property>
				<Property Name="DistPart[0].SoftDep[10].exclude" Type="Bool">false</Property>
				<Property Name="DistPart[0].SoftDep[10].productName" Type="Str">NI mDNS Responder 14.0</Property>
				<Property Name="DistPart[0].SoftDep[10].upgradeCode" Type="Str">{9607874B-4BB3-42CB-B450-A2F5EF60BA3B}</Property>
				<Property Name="DistPart[0].SoftDep[11].exclude" Type="Bool">false</Property>
				<Property Name="DistPart[0].SoftDep[11].productName" Type="Str">NI Deployment Framework 2015</Property>
				<Property Name="DistPart[0].SoftDep[11].upgradeCode" Type="Str">{838942E4-B73C-492E-81A3-AA1E291FD0DC}</Property>
				<Property Name="DistPart[0].SoftDep[12].exclude" Type="Bool">false</Property>
				<Property Name="DistPart[0].SoftDep[12].productName" Type="Str">NI Error Reporting 2015</Property>
				<Property Name="DistPart[0].SoftDep[12].upgradeCode" Type="Str">{42E818C6-2B08-4DE7-BD91-B0FD704C119A}</Property>
				<Property Name="DistPart[0].SoftDep[2].exclude" Type="Bool">false</Property>
				<Property Name="DistPart[0].SoftDep[2].productName" Type="Str">NI System Web Server 15.5</Property>
				<Property Name="DistPart[0].SoftDep[2].upgradeCode" Type="Str">{FCF64B73-B7D4-4971-8F11-24BAF7CC3E6C}</Property>
				<Property Name="DistPart[0].SoftDep[3].exclude" Type="Bool">false</Property>
				<Property Name="DistPart[0].SoftDep[3].productName" Type="Str">Math Kernel Libraries</Property>
				<Property Name="DistPart[0].SoftDep[3].upgradeCode" Type="Str">{4C0854AD-9BFC-4494-A4E0-D96C0C07F1F2}</Property>
				<Property Name="DistPart[0].SoftDep[4].exclude" Type="Bool">false</Property>
				<Property Name="DistPart[0].SoftDep[4].productName" Type="Str">NI Logos 5.7</Property>
				<Property Name="DistPart[0].SoftDep[4].upgradeCode" Type="Str">{5E4A4CE3-4D06-11D4-8B22-006008C16337}</Property>
				<Property Name="DistPart[0].SoftDep[5].exclude" Type="Bool">false</Property>
				<Property Name="DistPart[0].SoftDep[5].productName" Type="Str">NI TDM Streaming 15.2</Property>
				<Property Name="DistPart[0].SoftDep[5].upgradeCode" Type="Str">{4CD11BE6-6BB7-4082-8A27-C13771BC309B}</Property>
				<Property Name="DistPart[0].SoftDep[6].exclude" Type="Bool">false</Property>
				<Property Name="DistPart[0].SoftDep[6].productName" Type="Str">NI LabVIEW Web Server 2015</Property>
				<Property Name="DistPart[0].SoftDep[6].upgradeCode" Type="Str">{78AAB900-C712-11E3-9C1A-0800200C9A66}</Property>
				<Property Name="DistPart[0].SoftDep[7].exclude" Type="Bool">false</Property>
				<Property Name="DistPart[0].SoftDep[7].productName" Type="Str">NI LabVIEW Real-Time NBFifo 2015</Property>
				<Property Name="DistPart[0].SoftDep[7].upgradeCode" Type="Str">{25643B9A-90E8-4100-B30C-10EC4DE2EE68}</Property>
				<Property Name="DistPart[0].SoftDep[8].exclude" Type="Bool">false</Property>
				<Property Name="DistPart[0].SoftDep[8].productName" Type="Str">NI VC2008MSMs</Property>
				<Property Name="DistPart[0].SoftDep[8].upgradeCode" Type="Str">{FDA3F8BB-BAA9-45D7-8DC7-22E1F5C76315}</Property>
				<Property Name="DistPart[0].SoftDep[9].exclude" Type="Bool">false</Property>
				<Property Name="DistPart[0].SoftDep[9].productName" Type="Str">NI VC2010MSMs</Property>
				<Property Name="DistPart[0].SoftDep[9].upgradeCode" Type="Str">{EFBA6F9E-F934-4BD7-AC51-60CCA480489C}</Property>
				<Property Name="DistPart[0].SoftDepCount" Type="Int">13</Property>
				<Property Name="DistPart[0].upgradeCode" Type="Str">{CA8FF739-2EDA-4134-9A70-0F5DD933FDED}</Property>
				<Property Name="DistPartCount" Type="Int">1</Property>
				<Property Name="INST_author" Type="Str">Cosmed</Property>
				<Property Name="INST_autoIncrement" Type="Bool">true</Property>
				<Property Name="INST_buildLocation" Type="Path">../LabView builds</Property>
				<Property Name="INST_buildLocation.type" Type="Str">relativeToCommon</Property>
				<Property Name="INST_buildSpecName" Type="Str">InstallCosmedAPTools</Property>
				<Property Name="INST_defaultDir" Type="Str">{12162222-D71B-499B-A90F-75F463DF6B50}</Property>
				<Property Name="INST_productName" Type="Str">CosmedAPTools</Property>
				<Property Name="INST_productVersion" Type="Str">2.1.29</Property>
				<Property Name="InstSpecBitness" Type="Str">32-bit</Property>
				<Property Name="InstSpecVersion" Type="Str">15018007</Property>
				<Property Name="MSI_arpCompany" Type="Str">Cosmed</Property>
				<Property Name="MSI_arpURL" Type="Str">http://www.cosmed.com/</Property>
				<Property Name="MSI_distID" Type="Str">{B5E73361-8784-424B-B837-1F83EEA3FBBD}</Property>
				<Property Name="MSI_osCheck" Type="Int">0</Property>
				<Property Name="MSI_upgradeCode" Type="Str">{A43A5485-02CF-4F12-8C1F-B7EE6CFC0265}</Property>
				<Property Name="RegDest[0].dirName" Type="Str">Software</Property>
				<Property Name="RegDest[0].dirTag" Type="Str">{DDFAFC8B-E728-4AC8-96DE-B920EBB97A86}</Property>
				<Property Name="RegDest[0].parentTag" Type="Str">2</Property>
				<Property Name="RegDestCount" Type="Int">1</Property>
				<Property Name="Source[0].dest" Type="Str">{12162222-D71B-499B-A90F-75F463DF6B50}</Property>
				<Property Name="Source[0].File[0].dest" Type="Str">{12162222-D71B-499B-A90F-75F463DF6B50}</Property>
				<Property Name="Source[0].File[0].name" Type="Str">CosmedAPTools.exe</Property>
				<Property Name="Source[0].File[0].Shortcut[0].destIndex" Type="Int">1</Property>
				<Property Name="Source[0].File[0].Shortcut[0].name" Type="Str">CosmedAPTools</Property>
				<Property Name="Source[0].File[0].Shortcut[0].subDir" Type="Str"></Property>
				<Property Name="Source[0].File[0].ShortcutCount" Type="Int">1</Property>
				<Property Name="Source[0].File[0].tag" Type="Str">{721C0813-6C61-475B-A7A9-263EEBECD87C}</Property>
				<Property Name="Source[0].File[1].attributes" Type="Int">513</Property>
				<Property Name="Source[0].File[1].dest" Type="Str">{12162222-D71B-499B-A90F-75F463DF6B50}</Property>
				<Property Name="Source[0].File[1].name" Type="Str">config.ini</Property>
				<Property Name="Source[0].File[1].tag" Type="Ref">/My Computer/ConfigFiles/config.ini</Property>
				<Property Name="Source[0].File[2].attributes" Type="Int">3</Property>
				<Property Name="Source[0].File[2].dest" Type="Str">{12162222-D71B-499B-A90F-75F463DF6B50}</Property>
				<Property Name="Source[0].File[2].name" Type="Str">tsr_agreement.xlsx</Property>
				<Property Name="Source[0].File[2].tag" Type="Ref">/My Computer/ConfigFiles/tsr_agreement.xlsx</Property>
				<Property Name="Source[0].File[3].attributes" Type="Int">3</Property>
				<Property Name="Source[0].File[3].dest" Type="Str">{12162222-D71B-499B-A90F-75F463DF6B50}</Property>
				<Property Name="Source[0].File[3].name" Type="Str">tsr_repair.xlsx</Property>
				<Property Name="Source[0].File[3].tag" Type="Ref">/My Computer/ConfigFiles/tsr_repair.xlsx</Property>
				<Property Name="Source[0].File[4].attributes" Type="Int">3</Property>
				<Property Name="Source[0].File[4].dest" Type="Str">{12162222-D71B-499B-A90F-75F463DF6B50}</Property>
				<Property Name="Source[0].File[4].name" Type="Str">tsr_warranty.xlsx</Property>
				<Property Name="Source[0].File[4].tag" Type="Ref">/My Computer/ConfigFiles/tsr_warranty.xlsx</Property>
				<Property Name="Source[0].FileCount" Type="Int">5</Property>
				<Property Name="Source[0].name" Type="Str">CosmedAPTools</Property>
				<Property Name="Source[0].tag" Type="Ref">/My Computer/Build Specifications/CosmedAPTools</Property>
				<Property Name="Source[0].type" Type="Str">EXE</Property>
				<Property Name="SourceCount" Type="Int">1</Property>
			</Item>
		</Item>
	</Item>
</Project>

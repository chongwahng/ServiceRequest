{
	"contents": {
		"2eb574f5-313f-4a8d-89c2-6a723d0a9fd0": {
			"classDefinition": "com.sap.bpm.wfs.Model",
			"id": "cng.com.approvalprocess",
			"subject": "approvalprocess",
			"customAttributes": [],
			"name": "approvalprocess",
			"documentation": "",
			"lastIds": "62d7f4ed-4063-4c44-af8b-39050bd44926",
			"events": {
				"11a9b5ee-17c0-4159-9bbf-454dcfdcd5c3": {
					"name": "Start"
				},
				"2798f4e7-bc42-4fad-a248-159095a2f40a": {
					"name": "End"
				},
				"8c0acd5c-efef-4d83-a713-4f8988a78a0f": {
					"name": "End"
				},
				"f282915a-6c5e-4f05-a4e5-e714170b138e": {
					"name": "End"
				},
				"90574c89-fae1-4214-8c85-0c6b2864d1bb": {
					"name": "End"
				}
			},
			"activities": {
				"3924d861-5352-43de-9dc7-91fd268c9da5": {
					"name": "Approval Step"
				},
				"51cb630f-5290-4b30-955f-1bc94c0cd45b": {
					"name": "Approve Incident (RAP)"
				},
				"373a7432-18b9-4dd7-8aab-c1664956a415": {
					"name": "Is Approved?"
				},
				"cb64e0b9-978f-469e-865a-f1f2e06cdf66": {
					"name": "Set Decision in Context"
				},
				"72cb93c5-f875-479f-b06f-f5e7790bf4d8": {
					"name": "Reject Incident (RAP)"
				},
				"6992fe55-5398-4b2c-b658-fa5ee660c988": {
					"name": "From RAP?"
				},
				"1d111422-033b-48e1-a2bf-7763156d8bc4": {
					"name": "Reject Incident (CAP)"
				},
				"b6094f5f-1769-4825-8a8a-bbe8c5e92450": {
					"name": "Approve Incident (CAP)"
				},
				"143906a1-6c74-42b7-838d-944372e69c5a": {
					"name": "Is Approved?"
				}
			},
			"sequenceFlows": {
				"5585f673-7183-4d88-b46e-fe937b7cee8f": {
					"name": "SequenceFlow4"
				},
				"143583a7-4e48-4193-9efa-d43128cc168e": {
					"name": "SequenceFlow5"
				},
				"dd96bb5e-5b8a-46fd-82cd-76c52e0fe104": {
					"name": "SequenceFlow8"
				},
				"9cf5f75f-c6a2-4c89-9d51-603e11b363c5": {
					"name": "Yes"
				},
				"2cad7615-d648-4963-89ac-9c43cd2388aa": {
					"name": "No"
				},
				"dd553e3d-d85f-49dd-9b61-f58055ad0232": {
					"name": "SequenceFlow18"
				},
				"7416673b-cf5d-491b-8022-cec7906c026e": {
					"name": "SequenceFlow20"
				},
				"b84bf717-49e5-45d3-91b5-ab4a4ef6e78b": {
					"name": "Yes"
				},
				"5b8c4630-7422-429b-b58e-b74e949cd203": {
					"name": "No"
				},
				"7a86a79e-9799-4e35-9071-9ec78a5dc34e": {
					"name": "No"
				},
				"20822d7d-e833-4bf5-8db8-b7839b33b027": {
					"name": "Yes"
				},
				"8fe5ca36-41b4-42cd-950e-6385567d0b9f": {
					"name": "SequenceFlow28"
				},
				"2a85f1c7-9383-4920-8377-a472c82c33f9": {
					"name": "SequenceFlow29"
				}
			},
			"diagrams": {
				"42fa7a2d-c526-4a02-b3ba-49b5168ba644": {}
			}
		},
		"11a9b5ee-17c0-4159-9bbf-454dcfdcd5c3": {
			"classDefinition": "com.sap.bpm.wfs.StartEvent",
			"id": "startevent1",
			"name": "Start"
		},
		"2798f4e7-bc42-4fad-a248-159095a2f40a": {
			"classDefinition": "com.sap.bpm.wfs.EndEvent",
			"id": "endevent1",
			"name": "End"
		},
		"8c0acd5c-efef-4d83-a713-4f8988a78a0f": {
			"classDefinition": "com.sap.bpm.wfs.EndEvent",
			"id": "endevent4",
			"name": "End"
		},
		"3924d861-5352-43de-9dc7-91fd268c9da5": {
			"classDefinition": "com.sap.bpm.wfs.UserTask",
			"subject": "Approve Request",
			"priority": "MEDIUM",
			"isHiddenInLogForParticipant": false,
			"supportsForward": false,
			"userInterface": "sapui5://comsapbpmworkflow.comsapbpmwusformplayer/com.sap.bpm.wus.form.player",
			"recipientUsers": "",
			"recipientGroups": "WorkflowManagementBusinessExpert",
			"formReference": "/forms/approvalprocess/RequestDecision.form",
			"userInterfaceParams": [{
				"key": "formId",
				"value": "requestdecision"
			}, {
				"key": "formRevision",
				"value": "1.0"
			}],
			"id": "usertask1",
			"name": "Approval Step"
		},
		"51cb630f-5290-4b30-955f-1bc94c0cd45b": {
			"classDefinition": "com.sap.bpm.wfs.ServiceTask",
			"destination": "abap-cloud-default_abap-trial",
			"path": "/sap/opu/odata/sap/ZUI_CNG_INCIDENTN_O2;v=0001/approve_incident?sap-client=100&IncidentUUID=guid'${context.IncidentUUID}'",
			"httpMethod": "POST",
			"xsrfPath": "/sap/opu/odata/sap/ZUI_CNG_INCIDENTN_O2;v=0001/",
			"responseVariable": "${context.response}",
			"headers": [],
			"id": "servicetask1",
			"name": "Approve Incident (RAP)",
			"principalPropagationRef": "3924d861-5352-43de-9dc7-91fd268c9da5"
		},
		"373a7432-18b9-4dd7-8aab-c1664956a415": {
			"classDefinition": "com.sap.bpm.wfs.ExclusiveGateway",
			"id": "exclusivegateway3",
			"name": "Is Approved?",
			"default": "2cad7615-d648-4963-89ac-9c43cd2388aa"
		},
		"cb64e0b9-978f-469e-865a-f1f2e06cdf66": {
			"classDefinition": "com.sap.bpm.wfs.ScriptTask",
			"reference": "/scripts/approvalprocess/set_context.js",
			"id": "scripttask3",
			"name": "Set Decision in Context"
		},
		"72cb93c5-f875-479f-b06f-f5e7790bf4d8": {
			"classDefinition": "com.sap.bpm.wfs.ServiceTask",
			"destination": "abap-cloud-default_abap-trial",
			"path": "/sap/opu/odata/sap/ZUI_CNG_INCIDENTN_O2;v=0001/reject_incident?sap-client=100&IncidentUUID=guid'${context.IncidentUUID}'",
			"httpMethod": "POST",
			"xsrfPath": "/sap/opu/odata/sap/ZUI_CNG_INCIDENTN_O2;v=0001/",
			"responseVariable": "${context.response}",
			"id": "servicetask2",
			"name": "Reject Incident (RAP)",
			"principalPropagationRef": "3924d861-5352-43de-9dc7-91fd268c9da5"
		},
		"6992fe55-5398-4b2c-b658-fa5ee660c988": {
			"classDefinition": "com.sap.bpm.wfs.ExclusiveGateway",
			"id": "exclusivegateway4",
			"name": "From RAP?",
			"default": "5b8c4630-7422-429b-b58e-b74e949cd203"
		},
		"5585f673-7183-4d88-b46e-fe937b7cee8f": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow4",
			"name": "SequenceFlow4",
			"sourceRef": "51cb630f-5290-4b30-955f-1bc94c0cd45b",
			"targetRef": "2798f4e7-bc42-4fad-a248-159095a2f40a"
		},
		"143583a7-4e48-4193-9efa-d43128cc168e": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow5",
			"name": "SequenceFlow5",
			"sourceRef": "11a9b5ee-17c0-4159-9bbf-454dcfdcd5c3",
			"targetRef": "3924d861-5352-43de-9dc7-91fd268c9da5"
		},
		"dd96bb5e-5b8a-46fd-82cd-76c52e0fe104": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow8",
			"name": "SequenceFlow8",
			"sourceRef": "3924d861-5352-43de-9dc7-91fd268c9da5",
			"targetRef": "cb64e0b9-978f-469e-865a-f1f2e06cdf66"
		},
		"9cf5f75f-c6a2-4c89-9d51-603e11b363c5": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"condition": "${usertasks.usertask1.last.decision==\"approve\"}",
			"id": "sequenceflow12",
			"name": "Yes",
			"sourceRef": "373a7432-18b9-4dd7-8aab-c1664956a415",
			"targetRef": "51cb630f-5290-4b30-955f-1bc94c0cd45b"
		},
		"2cad7615-d648-4963-89ac-9c43cd2388aa": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow17",
			"name": "No",
			"sourceRef": "373a7432-18b9-4dd7-8aab-c1664956a415",
			"targetRef": "72cb93c5-f875-479f-b06f-f5e7790bf4d8"
		},
		"dd553e3d-d85f-49dd-9b61-f58055ad0232": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow18",
			"name": "SequenceFlow18",
			"sourceRef": "72cb93c5-f875-479f-b06f-f5e7790bf4d8",
			"targetRef": "8c0acd5c-efef-4d83-a713-4f8988a78a0f"
		},
		"7416673b-cf5d-491b-8022-cec7906c026e": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow20",
			"name": "SequenceFlow20",
			"sourceRef": "cb64e0b9-978f-469e-865a-f1f2e06cdf66",
			"targetRef": "6992fe55-5398-4b2c-b658-fa5ee660c988"
		},
		"42fa7a2d-c526-4a02-b3ba-49b5168ba644": {
			"classDefinition": "com.sap.bpm.wfs.ui.Diagram",
			"symbols": {
				"df898b52-91e1-4778-baad-2ad9a261d30e": {},
				"53e54950-7757-4161-82c9-afa7e86cff2c": {},
				"c340cf2c-631d-4a25-9120-8ba496dc0f19": {},
				"2029430d-337e-420a-a05d-ba5ca656a8c6": {},
				"fb6bbfc9-acf9-4279-8425-0af33c066491": {},
				"bbdd563c-82ce-4784-a35f-27d251805007": {},
				"84bd8640-7aaf-42c0-bb9a-c2c50739a3e5": {},
				"ddc7ecd5-6d45-40f9-abe6-166727e00426": {},
				"d33cc4f1-47f4-434d-b648-fad5e88a1405": {},
				"4c49aa09-7e66-4622-81a9-c37678d69b67": {},
				"7848b04e-38d4-4b48-906c-1cf8948c75f0": {},
				"27e20e6c-2f1e-48ee-99c5-6d8b7fcb08ff": {},
				"8e3da84b-d7ae-42a3-8b22-d72bbf505a7e": {},
				"aac44cb5-0d69-4f0a-9cc3-8b30b090d23a": {},
				"f509232d-51a3-455c-ae42-10e73ea1b961": {},
				"d0d144c4-2a43-4568-8746-93ac4d74eb0a": {},
				"de541a0f-a587-481c-b45a-864a7b34cb94": {},
				"7b7ebd62-7fe4-45c9-8442-f25cf56faa12": {},
				"3fd3f0f1-7bdd-41ec-8ba9-b1d1b0075dc4": {},
				"b406ab0d-cc47-4a13-a6b3-8c9f3e074b33": {},
				"c0811071-f212-4bbc-a087-d31717233a64": {},
				"0e0f1481-072b-4ff1-a397-263550985d71": {},
				"bcbf1a7c-d962-4879-b751-3c1e54a3dabd": {},
				"74407a46-aeb9-46d0-ad15-175ae37e10ca": {},
				"b3f9a06f-de74-4f33-8b17-3dc4386a59d1": {},
				"0d273c0f-4e14-4e00-a4fe-55e6a7fe639e": {},
				"739ad6e7-e116-4a8d-bf93-b9666d0580bc": {}
			}
		},
		"df898b52-91e1-4778-baad-2ad9a261d30e": {
			"classDefinition": "com.sap.bpm.wfs.ui.StartEventSymbol",
			"x": 12,
			"y": 81,
			"width": 32,
			"height": 32,
			"object": "11a9b5ee-17c0-4159-9bbf-454dcfdcd5c3"
		},
		"53e54950-7757-4161-82c9-afa7e86cff2c": {
			"classDefinition": "com.sap.bpm.wfs.ui.EndEventSymbol",
			"x": 817.9999976158142,
			"y": 24,
			"width": 35,
			"height": 35,
			"object": "2798f4e7-bc42-4fad-a248-159095a2f40a"
		},
		"c340cf2c-631d-4a25-9120-8ba496dc0f19": {
			"classDefinition": "com.sap.bpm.wfs.ui.UserTaskSymbol",
			"x": 94,
			"y": 67,
			"width": 100,
			"height": 60,
			"object": "3924d861-5352-43de-9dc7-91fd268c9da5"
		},
		"2029430d-337e-420a-a05d-ba5ca656a8c6": {
			"classDefinition": "com.sap.bpm.wfs.ui.ServiceTaskSymbol",
			"x": 625.9999988079071,
			"y": 12,
			"width": 142,
			"height": 60,
			"object": "51cb630f-5290-4b30-955f-1bc94c0cd45b"
		},
		"fb6bbfc9-acf9-4279-8425-0af33c066491": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "768,41.75 817.9999976158142,41.75",
			"sourceSymbol": "2029430d-337e-420a-a05d-ba5ca656a8c6",
			"targetSymbol": "53e54950-7757-4161-82c9-afa7e86cff2c",
			"object": "5585f673-7183-4d88-b46e-fe937b7cee8f"
		},
		"bbdd563c-82ce-4784-a35f-27d251805007": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "44,97 94,97",
			"sourceSymbol": "df898b52-91e1-4778-baad-2ad9a261d30e",
			"targetSymbol": "c340cf2c-631d-4a25-9120-8ba496dc0f19",
			"object": "143583a7-4e48-4193-9efa-d43128cc168e"
		},
		"84bd8640-7aaf-42c0-bb9a-c2c50739a3e5": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "194,97 244,97",
			"sourceSymbol": "c340cf2c-631d-4a25-9120-8ba496dc0f19",
			"targetSymbol": "4c49aa09-7e66-4622-81a9-c37678d69b67",
			"object": "dd96bb5e-5b8a-46fd-82cd-76c52e0fe104"
		},
		"ddc7ecd5-6d45-40f9-abe6-166727e00426": {
			"classDefinition": "com.sap.bpm.wfs.ui.ExclusiveGatewaySymbol",
			"x": 437,
			"y": 72,
			"object": "373a7432-18b9-4dd7-8aab-c1664956a415"
		},
		"d33cc4f1-47f4-434d-b648-fad5e88a1405": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "479,93 552.5,93 552.5,42 626,42",
			"sourceSymbol": "ddc7ecd5-6d45-40f9-abe6-166727e00426",
			"targetSymbol": "2029430d-337e-420a-a05d-ba5ca656a8c6",
			"object": "9cf5f75f-c6a2-4c89-9d51-603e11b363c5"
		},
		"4c49aa09-7e66-4622-81a9-c37678d69b67": {
			"classDefinition": "com.sap.bpm.wfs.ui.ScriptTaskSymbol",
			"x": 244,
			"y": 67,
			"width": 100,
			"height": 60,
			"object": "cb64e0b9-978f-469e-865a-f1f2e06cdf66"
		},
		"7848b04e-38d4-4b48-906c-1cf8948c75f0": {
			"classDefinition": "com.sap.bpm.wfs.ui.ServiceTaskSymbol",
			"x": 626.4999988079071,
			"y": 122,
			"width": 142,
			"height": 60,
			"object": "72cb93c5-f875-479f-b06f-f5e7790bf4d8"
		},
		"27e20e6c-2f1e-48ee-99c5-6d8b7fcb08ff": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "479,93 552.75,93 552.75,152 626.5,152",
			"sourceSymbol": "ddc7ecd5-6d45-40f9-abe6-166727e00426",
			"targetSymbol": "7848b04e-38d4-4b48-906c-1cf8948c75f0",
			"object": "2cad7615-d648-4963-89ac-9c43cd2388aa"
		},
		"8e3da84b-d7ae-42a3-8b22-d72bbf505a7e": {
			"classDefinition": "com.sap.bpm.wfs.ui.EndEventSymbol",
			"x": 817.9999976158142,
			"y": 134,
			"width": 35,
			"height": 35,
			"object": "8c0acd5c-efef-4d83-a713-4f8988a78a0f"
		},
		"aac44cb5-0d69-4f0a-9cc3-8b30b090d23a": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "768.5,151.75 817.9999976158142,151.75",
			"sourceSymbol": "7848b04e-38d4-4b48-906c-1cf8948c75f0",
			"targetSymbol": "8e3da84b-d7ae-42a3-8b22-d72bbf505a7e",
			"object": "dd553e3d-d85f-49dd-9b61-f58055ad0232"
		},
		"f509232d-51a3-455c-ae42-10e73ea1b961": {
			"classDefinition": "com.sap.bpm.wfs.ui.ExclusiveGatewaySymbol",
			"x": 371.5,
			"y": 203,
			"object": "6992fe55-5398-4b2c-b658-fa5ee660c988"
		},
		"d0d144c4-2a43-4568-8746-93ac4d74eb0a": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "294,97 294,224 392.5,224",
			"sourceSymbol": "4c49aa09-7e66-4622-81a9-c37678d69b67",
			"targetSymbol": "f509232d-51a3-455c-ae42-10e73ea1b961",
			"object": "7416673b-cf5d-491b-8022-cec7906c026e"
		},
		"62d7f4ed-4063-4c44-af8b-39050bd44926": {
			"classDefinition": "com.sap.bpm.wfs.LastIDs",
			"terminateeventdefinition": 1,
			"sequenceflow": 29,
			"startevent": 1,
			"endevent": 8,
			"usertask": 2,
			"servicetask": 4,
			"scripttask": 3,
			"exclusivegateway": 5,
			"parallelgateway": 1
		},
		"b84bf717-49e5-45d3-91b5-ab4a4ef6e78b": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"condition": "${context.caller==\"RAP\"}",
			"id": "sequenceflow23",
			"name": "Yes",
			"sourceRef": "6992fe55-5398-4b2c-b658-fa5ee660c988",
			"targetRef": "373a7432-18b9-4dd7-8aab-c1664956a415"
		},
		"de541a0f-a587-481c-b45a-864a7b34cb94": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "392.5,224 392.5,93 437.5,93",
			"sourceSymbol": "f509232d-51a3-455c-ae42-10e73ea1b961",
			"targetSymbol": "ddc7ecd5-6d45-40f9-abe6-166727e00426",
			"object": "b84bf717-49e5-45d3-91b5-ab4a4ef6e78b"
		},
		"5b8c4630-7422-429b-b58e-b74e949cd203": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow24",
			"name": "No",
			"sourceRef": "6992fe55-5398-4b2c-b658-fa5ee660c988",
			"targetRef": "143906a1-6c74-42b7-838d-944372e69c5a"
		},
		"7b7ebd62-7fe4-45c9-8442-f25cf56faa12": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "392.5,224 392.5,359 464,359",
			"sourceSymbol": "f509232d-51a3-455c-ae42-10e73ea1b961",
			"targetSymbol": "c0811071-f212-4bbc-a087-d31717233a64",
			"object": "5b8c4630-7422-429b-b58e-b74e949cd203"
		},
		"1d111422-033b-48e1-a2bf-7763156d8bc4": {
			"classDefinition": "com.sap.bpm.wfs.ServiceTask",
			"destination": "servicereqcapdest",
			"path": "/ticket/reject",
			"httpMethod": "POST",
			"requestVariable": "${context.request}",
			"responseVariable": "${context.response}",
			"headers": [{
				"name": "Content-Type",
				"value": "application/json"
			}],
			"id": "servicetask3",
			"name": "Reject Incident (CAP)"
		},
		"3fd3f0f1-7bdd-41ec-8ba9-b1d1b0075dc4": {
			"classDefinition": "com.sap.bpm.wfs.ui.ServiceTaskSymbol",
			"x": 626,
			"y": 400,
			"width": 142,
			"height": 60,
			"object": "1d111422-033b-48e1-a2bf-7763156d8bc4"
		},
		"b6094f5f-1769-4825-8a8a-bbe8c5e92450": {
			"classDefinition": "com.sap.bpm.wfs.ServiceTask",
			"destination": "servicereqcapdest",
			"path": "/ticket/approve",
			"httpMethod": "POST",
			"requestVariable": "${context.request}",
			"id": "servicetask4",
			"name": "Approve Incident (CAP)"
		},
		"b406ab0d-cc47-4a13-a6b3-8c9f3e074b33": {
			"classDefinition": "com.sap.bpm.wfs.ui.ServiceTaskSymbol",
			"x": 626,
			"y": 280,
			"width": 142,
			"height": 60,
			"object": "b6094f5f-1769-4825-8a8a-bbe8c5e92450"
		},
		"143906a1-6c74-42b7-838d-944372e69c5a": {
			"classDefinition": "com.sap.bpm.wfs.ExclusiveGateway",
			"id": "exclusivegateway5",
			"name": "Is Approved?",
			"default": "7a86a79e-9799-4e35-9071-9ec78a5dc34e"
		},
		"c0811071-f212-4bbc-a087-d31717233a64": {
			"classDefinition": "com.sap.bpm.wfs.ui.ExclusiveGatewaySymbol",
			"x": 443,
			"y": 340,
			"object": "143906a1-6c74-42b7-838d-944372e69c5a"
		},
		"7a86a79e-9799-4e35-9071-9ec78a5dc34e": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow26",
			"name": "No",
			"sourceRef": "143906a1-6c74-42b7-838d-944372e69c5a",
			"targetRef": "1d111422-033b-48e1-a2bf-7763156d8bc4"
		},
		"0e0f1481-072b-4ff1-a397-263550985d71": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "464,361 555.5,361 555.5,430 697,430",
			"sourceSymbol": "c0811071-f212-4bbc-a087-d31717233a64",
			"targetSymbol": "3fd3f0f1-7bdd-41ec-8ba9-b1d1b0075dc4",
			"object": "7a86a79e-9799-4e35-9071-9ec78a5dc34e"
		},
		"20822d7d-e833-4bf5-8db8-b7839b33b027": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"condition": "${usertasks.usertask1.last.decision==\"approve\"}",
			"id": "sequenceflow27",
			"name": "Yes",
			"sourceRef": "143906a1-6c74-42b7-838d-944372e69c5a",
			"targetRef": "b6094f5f-1769-4825-8a8a-bbe8c5e92450"
		},
		"bcbf1a7c-d962-4879-b751-3c1e54a3dabd": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "464,361 555.5,361 555.5,300 632,300",
			"sourceSymbol": "c0811071-f212-4bbc-a087-d31717233a64",
			"targetSymbol": "b406ab0d-cc47-4a13-a6b3-8c9f3e074b33",
			"object": "20822d7d-e833-4bf5-8db8-b7839b33b027"
		},
		"f282915a-6c5e-4f05-a4e5-e714170b138e": {
			"classDefinition": "com.sap.bpm.wfs.EndEvent",
			"id": "endevent7",
			"name": "End"
		},
		"74407a46-aeb9-46d0-ad15-175ae37e10ca": {
			"classDefinition": "com.sap.bpm.wfs.ui.EndEventSymbol",
			"x": 818,
			"y": 285.5,
			"width": 35,
			"height": 35,
			"object": "f282915a-6c5e-4f05-a4e5-e714170b138e"
		},
		"8fe5ca36-41b4-42cd-950e-6385567d0b9f": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow28",
			"name": "SequenceFlow28",
			"sourceRef": "b6094f5f-1769-4825-8a8a-bbe8c5e92450",
			"targetRef": "f282915a-6c5e-4f05-a4e5-e714170b138e"
		},
		"b3f9a06f-de74-4f33-8b17-3dc4386a59d1": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "697,306.5 835.5,306.5",
			"sourceSymbol": "b406ab0d-cc47-4a13-a6b3-8c9f3e074b33",
			"targetSymbol": "74407a46-aeb9-46d0-ad15-175ae37e10ca",
			"object": "8fe5ca36-41b4-42cd-950e-6385567d0b9f"
		},
		"90574c89-fae1-4214-8c85-0c6b2864d1bb": {
			"classDefinition": "com.sap.bpm.wfs.EndEvent",
			"id": "endevent8",
			"name": "End"
		},
		"0d273c0f-4e14-4e00-a4fe-55e6a7fe639e": {
			"classDefinition": "com.sap.bpm.wfs.ui.EndEventSymbol",
			"x": 818,
			"y": 412.5,
			"width": 35,
			"height": 35,
			"object": "90574c89-fae1-4214-8c85-0c6b2864d1bb"
		},
		"2a85f1c7-9383-4920-8377-a472c82c33f9": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow29",
			"name": "SequenceFlow29",
			"sourceRef": "1d111422-033b-48e1-a2bf-7763156d8bc4",
			"targetRef": "90574c89-fae1-4214-8c85-0c6b2864d1bb"
		},
		"739ad6e7-e116-4a8d-bf93-b9666d0580bc": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "697,430 835.5,430",
			"sourceSymbol": "3fd3f0f1-7bdd-41ec-8ba9-b1d1b0075dc4",
			"targetSymbol": "0d273c0f-4e14-4e00-a4fe-55e6a7fe639e",
			"object": "2a85f1c7-9383-4920-8377-a472c82c33f9"
		}
	}
}
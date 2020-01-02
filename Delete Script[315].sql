USe ClinicPro
GO
Delete from WaitingList;
DBCC CHECKIDENT(WaitingList, RESEED, 0) ;
delete from [Transactions];
DBCC CHECKIDENT([Transactions], RESEED, 0) ;
Delete from SMSLog
DBCC CHECKIDENT(SMSLog, RESEED, 0) ;
Delete from [DoctorNonWorkingTime]
DBCC CHECKIDENT([DoctorNonWorkingTime], RESEED, 0) ;

delete from PatientCPTAuthObservation
DBCC CHECKIDENT(PatientCPTAuthObservation, RESEED, 0) ;
delete from PatientCPTAuthRemitance
DBCC CHECKIDENT(PatientCPTAuthRemitance, RESEED, 0) ;
delete from PatientCPTCashRequestsObservation
DBCC CHECKIDENT(PatientCPTCashRequestsObservation, RESEED, 0) ;
delete from PatientDentalHistory
DBCC CHECKIDENT(PatientDentalHistory, RESEED, 0) ;
delete from PatientDrugs_Template
delete from PatientFamilyHistory
DBCC CHECKIDENT(PatientFamilyHistory, RESEED, 0) ;
delete from PatientLabRequests
DBCC CHECKIDENT(PatientLabRequests, RESEED, 0) ;
delete from dbo.PatientLabRequests_Template
delete from dbo.PatientMedicalHistory
DBCC CHECKIDENT(PatientMedicalHistory, RESEED, 0) ;
delete from dbo.PatientMedicalHistoryDrugs
DBCC CHECKIDENT(PatientMedicalHistoryDrugs, RESEED, 0) ;
delete from dbo.PatientRadiologyRequests
DBCC CHECKIDENT(PatientRadiologyRequests, RESEED, 0) ;
delete from dbo.PatientRadiologyRequests_Template
delete from dbo.PatientRadiologyRequests_Template
delete from dbo.PatientsHistory
delete from dbo.PatientConfidentiality
delete from DoctorGPPatientEducation
DBCC CHECKIDENT(DoctorGPPatientEducation, RESEED, 0) ;
delete from PatientCliamFormDentalCompleteServices
DBCC CHECKIDENT(PatientCliamFormDentalCompleteServices, RESEED, 0) ;
delete from PatientClaimFormDetail
DBCC CHECKIDENT(PatientClaimFormDetail, RESEED, 0) ;
delete from dbo.PatientClaimFormDentalComplete
delete from PatientClaimForm
DBCC CHECKIDENT(PatientClaimForm, RESEED, 0) ;
delete from PatientAuthRequestsAttachment
DBCC CHECKIDENT(PatientAuthRequestsAttachment, RESEED, 0) ;
delete from PatientAuthRequests
DBCC CHECKIDENT(PatientAuthRequests, RESEED, 0) ;
delete from Observation
DBCC CHECKIDENT(Observation, RESEED, 0) ;
delete from Nurse
DBCC CHECKIDENT(Nurse, RESEED, 0) ;

delete from PatientAuth
DBCC CHECKIDENT(PatientAuth, RESEED, 0) ;

delete from dbo.InvoiceDetail

delete from InvoiceInsuranceCollection
DBCC CHECKIDENT(InvoiceInsuranceCollection, RESEED, 0) ;

delete from dbo.EclaimInvoice

delete from DrugsFavoriteInstruction
DBCC CHECKIDENT(DrugsFavoriteInstruction, RESEED, 0) ;

delete from DrugsFavorite
delete from DoctorGPDecisionMacking_Template
delete from DoctorTemplates
DBCC CHECKIDENT(DoctorTemplates, RESEED, 0) ;

delete from DoctorSurgeonOperation
DBCC CHECKIDENT(DoctorSurgeonOperation, RESEED, 0) ;

delete from dbo.DoctorSurgeonObesity

delete from dbo.DoctorSurgeonHistory

delete from dbo.DoctorSurgeonGastrocopy

delete from dbo.DoctorSurgeonExamination

delete from dbo.DoctorSurgeonAssessmentSheet
delete from dbo.DoctorSurgeon
delete from dbo.DoctorPhysiotherapy
delete from dbo.DoctorOrthoTreatmentInfo

delete from dbo.DoctorOrthoHistory
delete from dbo.DoctorOrthoExamination

delete from dbo.DoctorOrthoDailyTreatment
delete from dbo.DoctorObgPastMedicalSimple
delete from dbo.DoctorObgObsGyn
delete from dbo.DoctorObgExaminationTwo
delete from dbo.DoctorObgExaminationSimple
delete from dbo.DoctorGPAddendum
DBCC CHECKIDENT(DoctorGPAddendum, RESEED, 0) ;
delete from dbo.DoctorDentalHistory
DBCC CHECKIDENT(DoctorDentalHistory, RESEED, 0) ;

delete from dbo.DoctorCalenderHistory
delete from DoctorDermaLaser
delete from  DoctorDermaBotox
delete from  DoctorDermaCarbtek
delete from  DoctorDermaEmatrix
delete from  DoctorDermaExilis
delete from  DoctorDermaFiller
delete from  DoctorDermaIlipo
delete from  DoctorDermaLPG
delete from  DoctorDermaHydrafacial
delete from  DoctorDermaLPG
delete from  DoctorDermaMesojet

delete from DoctorDermaMesotherapy
delete from DoctorDermaMiradry
delete from DoctorDermaScarlet
delete from DoctorDermaSilhouette
delete from DoctorDermaSkinPeeling
delete from  DoctorDermaUltherapy




delete from dbo.DoctorCalender
DBCC CHECKIDENT(DoctorCalender, RESEED, 0) ;

delete from dbo.DoctorAttachment



delete from Fav
delete from dbo.FavComplains
delete from PatientClaimForm;
delete from PatientClaimFormDetailDental;
delete from dbo.PatientCliamFormDentalServices;
delete from PatientClaimFormDental;
delete from dbo.AppointmentReasons;
DBCC CHECKIDENT(AppointmentReasons, RESEED, 0) ;
delete from IPAnaesthesiaConsent;
DBCC CHECKIDENT(IPAnaesthesiaConsent, RESEED, 0) ;

delete from IPAnesthesiaPeriBloodGasesID
DBCC CHECKIDENT(IPAnesthesiaPeriBloodGasesID, RESEED, 0) ;

delete from IPPatientAnesthesiaDrugs
DBCC CHECKIDENT(IPPatientAnesthesiaDrugs, RESEED, 0) ;

delete from DoctorGPNutritionAssessment;
delete from DoctorGPPhysiotherapyAssessment;

delete from .DoctorDentalExamination;


delete from dbo.DentalSharingPatient;
DBCC CHECKIDENT(DentalSharingPatient, RESEED, 0) ;

delete from dbo.DiagnosisFavorite;
DBCC CHECKIDENT(DiagnosisFavorite, RESEED, 0) ;

delete from dbo.DoctorAttachment;

delete from dbo.DoctorCalender;
DBCC CHECKIDENT(DoctorCalender, RESEED, 0) ;

delete from dbo.DoctorCalenderNumbering;
DBCC CHECKIDENT(DoctorCalenderNumbering, RESEED, 0) ;

delete from dbo.DoctorCalenderNumbering;
DBCC CHECKIDENT(DoctorCalenderNumbering, RESEED, 0) ;
delete from DoctorDerma;
delete from DoctorDermaHairPattern;
delete from DoctorENT;
delete from DoctorEntHistory;
delete from DoctorGeneralAttachment;
delete from DoctorGP;
delete from DoctorGPDecisionMacking;
delete from DoctorGPExamination;
delete from DoctorGPHistory; 

delete from DoctorOBG;
delete from DoctorObgAssociatedSymptoms;
delete from DoctorObgDeliveryhx;
DBCC CHECKIDENT(DoctorObgDeliveryhx, RESEED, 0) 

delete from DoctorObgLMP;
delete from DoctorObgMedicalDecisionMaking;
delete from DoctorOBGObstric;
delete from DoctorOBGObstricUltrasound;
delete from DoctorObgPastMedical;
delete from DoctorOBGPelvicUltrasound;
delete from DoctorObgPhysicalExamination;
delete from DoctorObgPregHistory;
delete from DoctorProgressNotes;
delete from FeeSubCategory where CategoryID = 12;
delete from FeeCategory where CategoryID = 12;
delete from FeeCategoryFilter;


delete from GeneralInvoiceDetail;
delete from GeneralInvoice;
DBCC CHECKIDENT(GeneralInvoiceDetail, RESEED, 0) ;
delete from HTransactions;
DBCC CHECKIDENT(HTransactions, RESEED, 0) ;
delete from HTransactionsHistory;
DBCC CHECKIDENT(HTransactionsHistory, RESEED, 0) ;

delete from InvoiceDetail;

delete from InvoiceDetailBadDebit
delete from Invoice;
DBCC CHECKIDENT(InvoiceDetail, RESEED, 0) ;
DBCC CHECKIDENT(Invoice, RESEED, 0) ;
DBCC CHECKIDENT(InvoiceDetailObservation, RESEED, 0) ;
delete from InvoiceHistory;
delete from InvoiceRemitance;
delete from InvoiceRemitanceDetail;
delete from PatientAttachment;
delete from PatientDrugs
delete from DoctorOrthoTreatmentSheet
delete from PatientCPTRequests;
delete from PatientCPTCashRequests;
delete from PatientSickLeave;
delete from PhInvoice;
delete from PatientReports;
delete from PatientAuth;
delete from IPProgressNotes;
DBCC CHECKIDENT(IPProgressNotes, RESEED, 0) ;
delete from IPatientOPDConsent;
delete from IPPreOperativeCheckList;
DBCC CHECKIDENT(IPPreOperativeCheckList, RESEED, 0) ;
delete from IPPatientCurrentMedication;
DBCC CHECKIDENT(IPPreOperativeCheckList, RESEED, 0) ;
delete from IPatientOperation;
DBCC CHECKIDENT(IPatientOperation, RESEED, 0) ;
delete from NursingTreatmentFollow

delete from IPOrders;
DBCC CHECKIDENT(IPOrders, RESEED, 0) ;
Delete From IPPatientCPTRequests;
delete from IPPatientCPTCashRequests;

delete from PatientCPTAuth;
delete from DoctorGPDecisionMacking;
delete from PhysiotherapyClaimForm;
delete from DoctorOphtEyeGlasses
delete from DoctorOphtExam2


delete from [dbo].[DoctorDentalOrthodonticDiagnostic]  
delete from [dbo].[DoctorDentalOrthodonticDiagnosticHistory] 
delete from [dbo].[DoctorDentalOrthoExam] 
delete from  [dbo].[DoctorDentalOrthoExamHistory]
delete from [dbo].[DoctorDentalOrthoSheet]

delete from DoctorOrthoConsent
delete from  DoctorOrthoExamination
delete from DoctorOrthoHistory
delete from DoctorOrthoTreatmentInfo
delete from DoctorOrthoTreatmentSheet
delete from  DoctorDentalProgressNote

delete from DoctorDentalProgressNoteHistory

delete from DoctorProgressNotes

delete from IPProgressNotes
delete from NursingPMAProgressNotes

delete from PatientCliamFormDentalServices
delete from DoctorDentalProgressNoteHistory
delete from DoctorDentalProgressNote
delete from DoctorGP
delete from DoctorGP_HI
delete from [dbo].[DoctorGP_HI] 
delete from DoctorGPNutritionAssessment

delete from InvoiceDetailHistory

delete from InvoiceDetailServiceGiven

delete from InvoiceHistory
delete from InvoiceHistory_Old

delete from InvoiceRemitanceDetail
delete from InvoiceRemitance
delete from StockIssueCashInvoiceDetail
delete from StockIssueCashInvoice

delete from PhEclaimInvoiceDetail
delete from PhEclaimInvoice

delete from PhInvoiceRemitanceDetail

delete from PhInvoiceRemitance

delete from [dbo].[PatientCPTAuthRemitance]
delete from WaitingPatientHistory
delete from PHPatients


delete from  PatientBehalf
delete from DoctorDermaDermatology
delete from  DoctorDermaChemicalPeeling
delete from DoctorDermaCarbon
delete from ChildAssessment
delete from PhAuth
delete from DoctorGPChiefComplain
delete from DoctorOphtEyeVisualAcuity
delete from DoctorDermaConsultation
delete from DoctorDermaMicroneedle
delete from DoctorDermaSlimming
delete from  IPPatientDrugsDose
delete from IPPatientDrugs





delete from WaitingPatient;

DBCC CHECKIDENT(WaitingPatient, RESEED, 0) ;
delete from IPPatientDrugsDose;
DBCC CHECKIDENT(IPPatientDrugsDose, RESEED, 0) ;
delete from IPAnaesthesiaConsent;
DBCC CHECKIDENT(IPAnaesthesiaConsent, RESEED, 0) ;
delete from PatientBehalf;
DBCC CHECKIDENT(PatientBehalf, RESEED, 0) ;
delete from IPPatientDrugs;
DBCC CHECKIDENT(IPPatientDrugs, RESEED, 0) ;
delete from ChildAssessment;
delete from DoctorOphtEyeVisualAcuity;
delete from Patients;
delete from WaitingPatientNumbering
delete from ReportTemplate;
delete from Doctors where doctorID <> 1;
DBCC CHECKIDENT(doctors, RESEED, 1) ;

delete from PatientCPTRequestsObservation;
DBCC CHECKIDENT(PatientCPTRequestsObservation, RESEED, 1) ;

delete from dbo.[Clinics] where CinicID > 3;
DBCC CHECKIDENT([Clinics], RESEED, 2) ;
delete from Users where UserID > 1;
DBCC CHECKIDENT(Users, RESEED, 1) ;

delete from Rooms;
DBCC CHECKIDENT(Rooms, RESEED, 1) ;

delete from Fees;
DBCC CHECKIDENT(Fees, RESEED, 1) ;

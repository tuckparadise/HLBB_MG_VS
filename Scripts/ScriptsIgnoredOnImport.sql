
/****** Object:  Database [HLBB_MG_VS]    Script Date: 2/14/2022 7:05:40 PM ******/
CREATE DATABASE [HLBB_MG_VS]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'HLBB_MG_ATTACHMENT', FILENAME = N'C:\SQLServerDBFiles\HLBB_MG_ATTACHMENT.mdf' , SIZE = 199872KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'HLBB_MG_ATTACHMENT_log', FILENAME = N'C:\SQLServerDBFiles\HLBB_MG_ATTACHMENT_log.ldf' , SIZE = 139264KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO

IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [HLBB_MG_VS].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO

ALTER DATABASE [HLBB_MG_VS] SET ANSI_NULL_DEFAULT OFF
GO

ALTER DATABASE [HLBB_MG_VS] SET ANSI_NULLS OFF
GO

ALTER DATABASE [HLBB_MG_VS] SET ANSI_PADDING OFF
GO

ALTER DATABASE [HLBB_MG_VS] SET ANSI_WARNINGS OFF
GO

ALTER DATABASE [HLBB_MG_VS] SET ARITHABORT OFF
GO

ALTER DATABASE [HLBB_MG_VS] SET AUTO_CLOSE OFF
GO

ALTER DATABASE [HLBB_MG_VS] SET AUTO_SHRINK OFF
GO

ALTER DATABASE [HLBB_MG_VS] SET AUTO_UPDATE_STATISTICS ON
GO

ALTER DATABASE [HLBB_MG_VS] SET CURSOR_CLOSE_ON_COMMIT OFF
GO

ALTER DATABASE [HLBB_MG_VS] SET CURSOR_DEFAULT  GLOBAL
GO

ALTER DATABASE [HLBB_MG_VS] SET CONCAT_NULL_YIELDS_NULL OFF
GO

ALTER DATABASE [HLBB_MG_VS] SET NUMERIC_ROUNDABORT OFF
GO

ALTER DATABASE [HLBB_MG_VS] SET QUOTED_IDENTIFIER OFF
GO

ALTER DATABASE [HLBB_MG_VS] SET RECURSIVE_TRIGGERS OFF
GO

ALTER DATABASE [HLBB_MG_VS] SET  DISABLE_BROKER
GO

ALTER DATABASE [HLBB_MG_VS] SET AUTO_UPDATE_STATISTICS_ASYNC OFF
GO

ALTER DATABASE [HLBB_MG_VS] SET DATE_CORRELATION_OPTIMIZATION OFF
GO

ALTER DATABASE [HLBB_MG_VS] SET TRUSTWORTHY OFF
GO

ALTER DATABASE [HLBB_MG_VS] SET ALLOW_SNAPSHOT_ISOLATION OFF
GO

ALTER DATABASE [HLBB_MG_VS] SET PARAMETERIZATION SIMPLE
GO

ALTER DATABASE [HLBB_MG_VS] SET READ_COMMITTED_SNAPSHOT OFF
GO

ALTER DATABASE [HLBB_MG_VS] SET HONOR_BROKER_PRIORITY OFF
GO

ALTER DATABASE [HLBB_MG_VS] SET RECOVERY SIMPLE
GO

ALTER DATABASE [HLBB_MG_VS] SET  MULTI_USER
GO

ALTER DATABASE [HLBB_MG_VS] SET PAGE_VERIFY CHECKSUM
GO

ALTER DATABASE [HLBB_MG_VS] SET DB_CHAINING OFF
GO

ALTER DATABASE [HLBB_MG_VS] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF )
GO

ALTER DATABASE [HLBB_MG_VS] SET TARGET_RECOVERY_TIME = 60 SECONDS
GO

ALTER DATABASE [HLBB_MG_VS] SET DELAYED_DURABILITY = DISABLED
GO

EXEC sys.sp_db_vardecimal_storage_format N'HLBB_MG_VS', N'ON'
GO

/****** Object:  UserDefinedFunction [dbo].[ufn_DevPortal_GetCaseNumber]    Script Date: 2/14/2022 7:05:41 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

/****** Object:  UserDefinedFunction [dbo].[ufn_DevPortal_GetDraft]    Script Date: 2/14/2022 7:05:41 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

/****** Object:  UserDefinedFunction [dbo].[ufn_DevPortalResubmit_GetCaseNumber]    Script Date: 2/14/2022 7:05:41 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

/****** Object:  UserDefinedFunction [dbo].[ufn_DevPortalReSubmit_GetRejectedID]    Script Date: 2/14/2022 7:05:41 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

/****** Object:  UserDefinedFunction [dbo].[ufn_getPDFImage]    Script Date: 2/14/2022 7:05:41 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

/****** Object:  UserDefinedFunction [dbo].[ufn_getPDFImageName]    Script Date: 2/14/2022 7:05:41 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

/****** Object:  UserDefinedFunction [dbo].[ufn_getPDFImageNameFileType]    Script Date: 2/14/2022 7:05:41 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

/****** Object:  Table [dbo].[aaSolicitorDisbursementSubmissionAttachment]    Script Date: 2/14/2022 7:05:41 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

/****** Object:  Table [dbo].[attachment_detail]    Script Date: 2/14/2022 7:05:41 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

/****** Object:  Table [dbo].[attachment_detail_bk]    Script Date: 2/14/2022 7:05:41 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

/****** Object:  Table [dbo].[attachment_master]    Script Date: 2/14/2022 7:05:41 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

/****** Object:  Table [dbo].[attachment_master_bk]    Script Date: 2/14/2022 7:05:41 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

/****** Object:  Table [dbo].[attachment_staging]    Script Date: 2/14/2022 7:05:41 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

/****** Object:  Table [dbo].[attachment_staging_bk]    Script Date: 2/14/2022 7:05:41 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

/****** Object:  Table [dbo].[ddProjectSubmissionAttachment]    Script Date: 2/14/2022 7:05:41 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

/****** Object:  Table [dbo].[devportal_attachment_master]    Script Date: 2/14/2022 7:05:41 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

/****** Object:  Table [dbo].[errorLog]    Script Date: 2/14/2022 7:05:41 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

/****** Object:  Table [dbo].[FireEyeAPILog]    Script Date: 2/14/2022 7:05:41 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

/****** Object:  Table [dbo].[FireEyeAPILog_CheckJobStatus]    Script Date: 2/14/2022 7:05:41 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

/****** Object:  Table [dbo].[FireEyeAPILog_login]    Script Date: 2/14/2022 7:05:41 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

/****** Object:  Table [dbo].[FireEyeAPILog_logout]    Script Date: 2/14/2022 7:05:41 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

/****** Object:  Table [dbo].[FireEyeAPILog2]    Script Date: 2/14/2022 7:05:41 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

/****** Object:  Table [dbo].[FireEyeFailedLog]    Script Date: 2/14/2022 7:05:41 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

/****** Object:  Table [dbo].[maliciousfilelog]    Script Date: 2/14/2022 7:05:41 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

/****** Object:  Table [dbo].[resultlog]    Script Date: 2/14/2022 7:05:41 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

/****** Object:  StoredProcedure [dbo].[aa_ws_Check_ProjectDisbursementReSubmitAttachment_Completed_GetList]    Script Date: 2/14/2022 7:05:41 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

/****** Object:  StoredProcedure [dbo].[aa_ws_Check_ProjectDisbursementSubmissionAttachment_CheckCaseInMaster]    Script Date: 2/14/2022 7:05:41 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

/****** Object:  StoredProcedure [dbo].[aa_ws_Check_ProjectDisbursementSubmissionAttachment_Completed_ARN]    Script Date: 2/14/2022 7:05:41 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

/****** Object:  StoredProcedure [dbo].[aa_ws_Check_ProjectDisbursementSubmissionAttachment_Completed_GetList]    Script Date: 2/14/2022 7:05:41 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

/****** Object:  StoredProcedure [dbo].[aa_ws_Check_ProjectResubmissionAttachment_Completed_ARN]    Script Date: 2/14/2022 7:05:41 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

/****** Object:  StoredProcedure [dbo].[aa_ws_Check_SolicitorDisbursementSubmissionAttachment_Completed_ARN]    Script Date: 2/14/2022 7:05:41 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

/****** Object:  StoredProcedure [dbo].[aa_ws_list_ProjectDisbursementResubmissionAttachment_For_Completed_ARN]    Script Date: 2/14/2022 7:05:41 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

/****** Object:  StoredProcedure [dbo].[aa_ws_list_ProjectDisbursementSubmissionAttachment_For_Completed_ARN]    Script Date: 2/14/2022 7:05:41 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

/****** Object:  StoredProcedure [dbo].[aa_ws_list_SolicitorDisbursementSubmissionAttachment_For_Completed_ARN]    Script Date: 2/14/2022 7:05:41 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

/****** Object:  StoredProcedure [dbo].[aa_ws_solicitorDisbursementAttachment_create_master_data]    Script Date: 2/14/2022 7:05:41 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

/****** Object:  StoredProcedure [dbo].[aa_ws_SolicitorDisbursementAttachment_PreUpload]    Script Date: 2/14/2022 7:05:41 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

/****** Object:  StoredProcedure [dbo].[aa_ws_SolicitorDisbursementSubmission_CheckARN]    Script Date: 2/14/2022 7:05:41 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

/****** Object:  StoredProcedure [dbo].[aaa_ws_SQLSolicitorDisbursementSubmissionAttachment_add_withattachment]    Script Date: 2/14/2022 7:05:41 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

/****** Object:  StoredProcedure [dbo].[aaa_ws_SQLSolicitorDisbursementSubmissionAttachment_DeleteAllAttachments]    Script Date: 2/14/2022 7:05:41 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

/****** Object:  StoredProcedure [dbo].[aaa_ws_SQLSolicitorDisbursementSubmissionAttachment_DeleteAttachment]    Script Date: 2/14/2022 7:05:41 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

/****** Object:  StoredProcedure [dbo].[aaa_ws_SQLSolicitorDisbursementSubmissionAttachment_SelectAll]    Script Date: 2/14/2022 7:05:41 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

/****** Object:  StoredProcedure [dbo].[aaa_ws_SQLSolicitorDisbursementSubmissionAttachment_SelectAttachmentCount]    Script Date: 2/14/2022 7:05:41 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

/****** Object:  StoredProcedure [dbo].[ddProjectDisbursementSubmission_Attachment_CountBySubmission]    Script Date: 2/14/2022 7:05:41 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

/****** Object:  StoredProcedure [dbo].[ddProjectDisbursementSubmission_Attachment_GetAttachment]    Script Date: 2/14/2022 7:05:41 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

/****** Object:  StoredProcedure [dbo].[ddProjectDisbursementSubmission_Resubmit_CheckDuplicate]    Script Date: 2/14/2022 7:05:41 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

/****** Object:  StoredProcedure [dbo].[ddProjectDisbursementSubmission_Resubmit_SaveAttachment]    Script Date: 2/14/2022 7:05:41 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

/****** Object:  StoredProcedure [dbo].[ddProjectDisbursementSubmission_SaveAttachment]    Script Date: 2/14/2022 7:05:41 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

/****** Object:  StoredProcedure [dbo].[tbd_getattachmentforpdfpasswordtest]    Script Date: 2/14/2022 7:05:41 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

/****** Object:  StoredProcedure [dbo].[tbd_usp_savexmlforpdfpasswordtest]    Script Date: 2/14/2022 7:05:41 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

/****** Object:  StoredProcedure [dbo].[tbd_usp_solicitorattachment_upload]    Script Date: 2/14/2022 7:05:41 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

/****** Object:  StoredProcedure [dbo].[tbd_usp_valuerattachment_upload]    Script Date: 2/14/2022 7:05:41 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

/****** Object:  StoredProcedure [dbo].[usp_errorlog_view]    Script Date: 2/14/2022 7:05:41 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

/****** Object:  StoredProcedure [dbo].[usp_getErrorLog]    Script Date: 2/14/2022 7:05:41 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

/****** Object:  StoredProcedure [dbo].[usp_list_attachment_to_check]    Script Date: 2/14/2022 7:05:41 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

/****** Object:  StoredProcedure [dbo].[usp_list_SolicitorDisbursementSubmissionAttachmentInStaging]    Script Date: 2/14/2022 7:05:41 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

/****** Object:  StoredProcedure [dbo].[usp_list_SolicitorSubmissionAttachmentInStaging]    Script Date: 2/14/2022 7:05:41 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

/****** Object:  StoredProcedure [dbo].[usp_save_fireeyefailedlog]    Script Date: 2/14/2022 7:05:41 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

/****** Object:  StoredProcedure [dbo].[usp_save_fireeyelog]    Script Date: 2/14/2022 7:05:41 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

/****** Object:  StoredProcedure [dbo].[usp_save_fireeyelog_login]    Script Date: 2/14/2022 7:05:41 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

/****** Object:  StoredProcedure [dbo].[usp_save_fireeyelog_logout]    Script Date: 2/14/2022 7:05:41 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

/****** Object:  StoredProcedure [dbo].[usp_save_fireeyelog2]    Script Date: 2/14/2022 7:05:41 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

/****** Object:  StoredProcedure [dbo].[usp_solicitorattachment_preupload]    Script Date: 2/14/2022 7:05:41 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

/****** Object:  StoredProcedure [dbo].[usp_solicitorsubmission_setuploadcomplete]    Script Date: 2/14/2022 7:05:41 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

/****** Object:  StoredProcedure [dbo].[usp_valuersubmission_setuploadcomplete]    Script Date: 2/14/2022 7:05:41 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

/****** Object:  StoredProcedure [dbo].[usp_ws_Check_SolicitorSubmissionAttachment_Completed_ARN]    Script Date: 2/14/2022 7:05:41 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

/****** Object:  StoredProcedure [dbo].[usp_ws_Check_ValuerSubmissionAttachment_Completed_ARN]    Script Date: 2/14/2022 7:05:41 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

/****** Object:  StoredProcedure [dbo].[usp_ws_deleterecords]    Script Date: 2/14/2022 7:05:41 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

/****** Object:  StoredProcedure [dbo].[usp_ws_DeveloperAttachment_create_master_data]    Script Date: 2/14/2022 7:05:41 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

/****** Object:  StoredProcedure [dbo].[usp_ws_DeveloperResubmitAttachment_create_master_data]    Script Date: 2/14/2022 7:05:41 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

/****** Object:  StoredProcedure [dbo].[usp_ws_errorLog]    Script Date: 2/14/2022 7:05:41 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

/****** Object:  StoredProcedure [dbo].[usp_ws_getfailedattachments]    Script Date: 2/14/2022 7:05:41 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

/****** Object:  StoredProcedure [dbo].[usp_ws_getmaliciousfilesLog]    Script Date: 2/14/2022 7:05:41 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

/****** Object:  StoredProcedure [dbo].[usp_ws_list_SolicitorSubmissionAttachment_For_Completed_ARN]    Script Date: 2/14/2022 7:05:41 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

/****** Object:  StoredProcedure [dbo].[usp_ws_list_ValuerSubmissionAttachment_For_Completed_ARN]    Script Date: 2/14/2022 7:05:41 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

/****** Object:  StoredProcedure [dbo].[usp_ws_list_ValuerSubmissionAttachmentInStaging]    Script Date: 2/14/2022 7:05:41 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

/****** Object:  StoredProcedure [dbo].[usp_ws_solicitorattachment_create_master_data]    Script Date: 2/14/2022 7:05:41 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

/****** Object:  StoredProcedure [dbo].[usp_ws_solicitorattachment_preupload]    Script Date: 2/14/2022 7:05:41 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

/****** Object:  StoredProcedure [dbo].[usp_ws_SolicitorSubmission_CheckARN]    Script Date: 2/14/2022 7:05:41 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

/****** Object:  StoredProcedure [dbo].[usp_ws_valuerattachment_create_master_data]    Script Date: 2/14/2022 7:05:41 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

/****** Object:  StoredProcedure [dbo].[usp_ws_valuerattachment_preupload]    Script Date: 2/14/2022 7:05:41 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

/****** Object:  StoredProcedure [dbo].[usp_ws_ValuerSubmission_CheckARN]    Script Date: 2/14/2022 7:05:41 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

/****** Object:  StoredProcedure [dbo].[usp_ws2_list_attachment_to_scan]    Script Date: 2/14/2022 7:05:41 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

/****** Object:  StoredProcedure [dbo].[usp_ws2_lock_master_by_workflow_arn]    Script Date: 2/14/2022 7:05:41 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

/****** Object:  StoredProcedure [dbo].[usp_ws2_save_result]    Script Date: 2/14/2022 7:05:41 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

/****** Object:  StoredProcedure [dbo].[usp_ws2_save_submission_detail]    Script Date: 2/14/2022 7:05:41 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

/****** Object:  StoredProcedure [dbo].[usp_ws2_search_available_arn_to_check]    Script Date: 2/14/2022 7:05:41 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

/****** Object:  StoredProcedure [dbo].[usp_ws2_search_available_arn_to_start]    Script Date: 2/14/2022 7:05:41 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

/****** Object:  StoredProcedure [dbo].[usp_ws2_update_masterattachment_status_to_complete]    Script Date: 2/14/2022 7:05:41 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

/****** Object:  StoredProcedure [dbo].[usp_ws2_update_masterattachment_status_to_inprogress]    Script Date: 2/14/2022 7:05:41 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

ALTER DATABASE [HLBB_MG_VS] SET  READ_WRITE
GO

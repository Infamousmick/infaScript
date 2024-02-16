#!/bin/sh
clear
echo "
####################### GMS Enabler #######################
Press ENTER to start"
read -r a
adb shell pm enable com.google.android.gms/com.google.android.gms.nearby.messages.service.NearbyMessagesService
adb shell pm enable com.google.android.gms/com.google.android.gms.nearby.discovery.service.DiscoveryService
adb shell pm enable com.google.android.gms/.chimera.GmsIntentOperationService
adb shell pm enable com.google.android.gms/com.google.android.gms.nearby.messages.service.NearbyMessagesService
adb shell pm enable com.google.android.gms/com.google.android.gms.nearby.discovery.service.DiscoveryService
adb shell pm enable com.google.android.gms/.chimera.GmsIntentOperationService
adb shell pm enable com.google.android.gms/.kids.KidSetupActivity
adb shell pm enable com.google.android.gms/.kids.LockscreenActivity
adb shell pm enable com.google.android.gms/.kids.LockscreenActivityV2
adb shell pm enable com.google.android.gms/.kids.LockscreenUnlockActivity
adb shell pm enable com.google.android.gms/.kids.ParentAccessActivity
adb shell pm enable com.google.android.gms/.kids.SyncTailTrapperActivity
adb shell pm enable com.google.android.gms/.kids.TransparencyActivity
adb shell pm enable com.google.android.gms/.kids.chimera.RegisterProfileOwnerActivityProxy
adb shell pm enable com.google.android.gms/.kids.settings.KidsSettingsActivity
adb shell pm enable com.google.android.gms/.kids.settings.KidsSettingsActivityAliasSuw

adb shell pm enable com.google.android.gms/.nearby.discovery.devices.DevicesListActivity
adb shell pm enable com.google.android.gms/.nearby.discovery.devices.FindDeviceActivity
adb shell pm enable com.google.android.gms/.nearby.discovery.fastpair.AtvConnectActivity
adb shell pm enable com.google.android.gms/.nearby.discovery.fastpair.CompanionAppInstallActivity
adb shell pm enable com.google.android.gms/.nearby.discovery.fastpair.HalfSheetActivity
adb shell pm enable com.google.android.gms/.nearby.exposurenotification.settings.SettingsActivity
adb shell pm enable com.google.android.gms/.nearby.exposurenotification.settings.SettingsActivityAlias
adb shell pm enable com.google.android.gms/.nearby.exposurenotification.settings.SettingsCheckerActivity
adb shell pm enable com.google.android.gms/.nearby.exposurenotification.settings.SettingsCollapsingToolbarActivity
adb shell pm enable com.google.android.gms/.nearby.messages.settings.NearbyMessagesAppOptInActivity
adb shell pm enable com.google.android.gms/.nearby.setup.ui.WifiConsentActivity
adb shell pm enable com.google.android.gms/.nearby.sharing.ConsentsActivity
adb shell pm enable com.google.android.gms/.nearby.sharing.DeviceVisibilityActivity
adb shell pm enable com.google.android.gms/.nearby.sharing.InternalReceiveSurfaceActivity
adb shell pm enable com.google.android.gms/.nearby.sharing.InternalShareSheetActivity
adb shell pm enable com.google.android.gms/.nearby.sharing.QuickSettingsActivity
adb shell pm enable com.google.android.gms/.nearby.sharing.ReceiveSurfaceActivity
adb shell pm enable com.google.android.gms/.nearby.sharing.SettingsActivity
adb shell pm enable com.google.android.gms/.nearby.sharing.SettingsActivityAlias
adb shell pm enable com.google.android.gms/.nearby.sharing.SettingsCollapsingToolbarActivity
adb shell pm enable com.google.android.gms/.nearby.sharing.SettingsCollapsingToolbarActivityAlias
adb shell pm enable com.google.android.gms/.nearby.sharing.SettingsPreferenceActivity
adb shell pm enable com.google.android.gms/.nearby.sharing.SettingsPreferenceActivityAlias
adb shell pm enable com.google.android.gms/.nearby.sharing.SetupActivity
adb shell pm enable com.google.android.gms/.nearby.sharing.ShareSheetActivity
adb shell pm enable com.google.android.gms/.nearby.sharing.ShareSheetActivityAlias
adb shell pm enable com.google.android.gms/.nearby.sharing.ShareSheetActivityAliasSamsungGallery
adb shell pm enable com.google.android.gms/.nearby.sharing.ShareSheetActivityAliasSamsungMyFiles

adb shell pm enable com.google.android.gms/.fitness.settings.FitnessSettingsActivity

adb shell pm enable com.google.android.gms/.wearable.consent.PrivacySettingsActivity
adb shell pm enable com.google.android.gms/.wearable.consent.TermsOfServiceActivity
adb shell pm enable com.google.android.gms/.wearable.playsetup.ui.AppInstallActivity
adb shell pm enable com.google.android.gms/.wearable.ui.WearableManageSpaceActivity

adb shell pm enable com.google.android.gms/.feedback.FeedbackActivity
adb shell pm enable com.google.android.gms/.feedback.IntentListenerFeedbackActivity
adb shell pm enable com.google.android.gms/.feedback.PreviewActivity
adb shell pm enable com.google.android.gms/.feedback.PreviewScreenshotActivity
adb shell pm enable com.google.android.gms/.feedback.ShowTextActivity
adb shell pm enable com.google.android.gms/.feedback.SuggestionsActivity

adb shell pm enable com.google.android.gms/.googlehelp.contact.chat.ChatConversationActivity
adb shell pm enable com.google.android.gms/.googlehelp.helpactivities.DeviceSignalsExportActivity
adb shell pm enable com.google.android.gms/.googlehelp.helpactivities.ExitActivity
adb shell pm enable com.google.android.gms/.googlehelp.helpactivities.HelpActivity
adb shell pm enable com.google.android.gms/.googlehelp.helpactivities.OpenHelpActivity
adb shell pm enable com.google.android.gms/.googlehelp.helpactivities.OpenHelpRtcActivity
adb shell pm enable com.google.android.gms/.googlehelp.helpactivities.SystemAppTrampolineActivity
adb shell pm enable com.google.android.gms/.googlehelp.webview.GoogleHelpRenderingApiWebViewActivity
adb shell pm enable com.google.android.gms/.googlehelp.webview.GoogleHelpWebViewActivity

adb shell pm enable com.google.android.gms/.ads.settings.AdsSettingsActivity

adb shell pm enable com.google.android.gms/.plus.activity.AccountSignUpActivity
adb shell pm enable com.google.android.gms/.plus.apps.ListAppsActivity
adb shell pm enable com.google.android.gms/.plus.apps.ManageAppActivity
adb shell pm enable com.google.android.gms/.plus.apps.ManageDeviceActivity
adb shell pm enable com.google.android.gms/.plus.apps.ManageMomentActivity
adb shell pm enable com.google.android.gms/.plus.audience.AclSelectionActivity
adb shell pm enable com.google.android.gms/.plus.audience.AudienceSearchActivity
adb shell pm enable com.google.android.gms/.plus.audience.CircleCreationActivity
adb shell pm enable com.google.android.gms/.plus.audience.CircleSelectionActivity
adb shell pm enable com.google.android.gms/.plus.audience.FaclSelectionActivity
adb shell pm enable com.google.android.gms/.plus.audience.UpdateActionOnlyActivity
adb shell pm enable com.google.android.gms/.plus.audience.UpdateCirclesActivity
adb shell pm enable com.google.android.gms/.plus.circles.AddToCircleConsentActivity
adb shell pm enable com.google.android.gms/.plus.oob.PlusActivity
adb shell pm enable com.google.android.gms/.plus.oob.UpgradeAccountActivity
adb shell pm enable com.google.android.gms/.plus.oob.UpgradeAccountInfoActivity
adb shell pm enable com.google.android.gms/.plus.plusone.PlusOneActivity
adb shell pm enable com.google.android.gms/.plus.sharebox.AddToCircleActivity
adb shell pm enable com.google.android.gms/.plus.sharebox.ReplyBoxActivity
adb shell pm enable com.google.android.gms/.plus.sharebox.ShareBoxActivity
adb shell pm enable com.google.android.gms/.plus.ui.DpadNavigableWebViewActivity


adb shell pm enable com.google.android.gms/.games.AddAccountActivity
adb shell pm enable com.google.android.gms/.games.InstallPlayGamesActivity
adb shell pm enable com.google.android.gms/.games.PlayGamesUpgradeActivity
adb shell pm enable com.google.android.gms/.games.ui.ingame.FeatureNotAvailableActivity
adb shell pm enable com.google.android.gms/.games.ui.profile.CreateProfileActivity
adb shell pm enable com.google.android.gms/.games.ui.promotions.InGamePromotionsActivity
adb shell pm enable com.google.android.gms/.games.ui.settings.GamesSettingsActivity
adb shell pm enable com.google.android.gms/.games.ui.settingsv2.GamesSettingsActivity
adb shell pm enable com.google.android.gms/.games.ui.signinflow.SignInActivity
adb shell pm enable com.google.android.gms/.games.ui.upsell.InGameUiProxyActivity
adb shell pm enable com.google.android.gms/.games.ui.upsell.InstallPlayGamesActivity
adb shell pm enable com.google.android.gms/.games.ui.video.ScreenCaptureRequestActivity

adb shell pm enable com.google.android.gms/.cast.activity.CastPopupActivity

adb shell pm enable com.google.android.gms/.findmydevice.spot.deeplinks.DeepLinkActivity
adb shell pm enable com.google.android.gms/.mdm.settings.FindMyDeviceSettingsActivity

adb shell pm enable com.google.android.gms/.mdm.services.MdmPhoneWearableListenerService

adb shell pm enable com.google.android.gms/.usagereporting.settings.UsageReportingActivity
adb shell pm enable com.google.android.gms/.usagereporting.ui.UsageReportingDebugActivity
adb shell pm enable com.google.android.gms/.usagereporting.ui.UsageReportingDialogActivity

adb shell pm enable com.google.android.gms/.pay.deeplink.AliasAddSignUpValuablesDeepLinkActivity
adb shell pm enable com.google.android.gms/.pay.deeplink.AliasSaveValuablesDeepLinkActivity
adb shell pm enable com.google.android.gms/.pay.deeplink.AliasViewValuablesDetailsDeepLinkActivity
adb shell pm enable com.google.android.gms/.pay.deeplink.DeepLinkActivity
adb shell pm enable com.google.android.gms/.pay.main.PayActivity
adb shell pm enable com.google.android.gms/.pay.main.PayOptionalActivity
adb shell pm enable com.google.android.gms/.tapandpay.account.SelectAccountActivity
adb shell pm enable com.google.android.gms/.tapandpay.admin.DeviceAdminPromptActivity
adb shell pm enable com.google.android.gms/.tapandpay.diagnostics.TapDiagnosticsActivity
adb shell pm enable com.google.android.gms/.tapandpay.issuer.RequestDeleteTokenActivity
adb shell pm enable com.google.android.gms/.tapandpay.issuer.RequestSelectTokenActivity
adb shell pm enable com.google.android.gms/.tapandpay.issuer.RequestTokenizeActivity
adb shell pm enable com.google.android.gms/.tapandpay.keyguard.KeyguardSecurityInfoActivity
adb shell pm enable com.google.android.gms/.tapandpay.settings.NotificationSettingsActivity
adb shell pm enable com.google.android.gms/.tapandpay.settings.SelectOtherPaymentMethodActivity
adb shell pm enable com.google.android.gms/.tapandpay.settings.SelectUntokenizedCardActivity
adb shell pm enable com.google.android.gms/.tapandpay.settings.TapAndPaySettingsActivity
adb shell pm enable com.google.android.gms/.tapandpay.tap.TapKeyguardActivity
adb shell pm enable com.google.android.gms/.tapandpay.tap.TapUiActivity
adb shell pm enable com.google.android.gms/.tapandpay.tokenization.AcceptGooglePayTosActivity
adb shell pm enable com.google.android.gms/.tapandpay.tokenization.AcceptTosActivity
adb shell pm enable com.google.android.gms/.tapandpay.tokenization.AddNewCardForTokenizationActivity
adb shell pm enable com.google.android.gms/.tapandpay.tokenization.AddNewCardThroughBrowserActivity
adb shell pm enable com.google.android.gms/.tapandpay.tokenization.EnableNfcActivity
adb shell pm enable com.google.android.gms/.tapandpay.tokenization.EnterVerificationCodeActivity
adb shell pm enable com.google.android.gms/.tapandpay.tokenization.NameResolutionActivity
adb shell pm enable com.google.android.gms/.tapandpay.tokenization.SelectVerificationMethodActivity
adb shell pm enable com.google.android.gms/.tapandpay.tokenization.SummaryActivity
adb shell pm enable com.google.android.gms/.tapandpay.tokenization.TokenizePanActivity
adb shell pm enable com.google.android.gms/.tapandpay.tokenization.UnsupportedCardActivity
adb shell pm enable com.google.android.gms/.tapandpay.transaction.WalletTransactionDetailsActivity
adb shell pm enable com.google.android.gms/.tapandpay.ui.EnableSecureKeyguardActivity
adb shell pm enable com.google.android.gms/.tapandpay.ui.PromptSetupActivity
adb shell pm enable com.google.android.gms/.tapandpay.ui.SecureDeviceActivity
adb shell pm enable com.google.android.gms/.tapandpay.ui.ShowSecurityPromptActivity
adb shell pm enable com.google.android.gms/.tapandpay.ui.TokenizationSuccessActivity
adb shell pm enable com.google.android.gms/.tapandpay.ui.WarmWelcomeActivity
adb shell pm enable com.google.android.gms/.tapandpay.wear.WearProxyActivity
adb shell pm enable com.google.android.gms/.tapandpay.wear.WearProxyCompanionActivity
adb shell pm enable com.google.android.gms/.tapandpay.wear.dialog.WearSecureKeyguardDialogActivity
adb shell pm enable com.google.android.gms/.tapandpay.wear.dialog.WearTapAndPayDialogActivity
adb shell pm enable com.google.android.gms/.wallet.activity.GenericDelegatorActivity
adb shell pm enable com.google.android.gms/.wallet.activity.OrchestrationDelegatorActivity
adb shell pm enable com.google.android.gms/.wallet.bender3.Bender3FinishRedirectProxyActivity
adb shell pm enable com.google.android.gms/.wallet.common.ui.UpdateCallingAppActivity
adb shell pm enable com.google.android.gms/.wallet.ib.IbPaymentRequestCompatActivity
adb shell pm enable com.google.android.gms/.wallet.idcredit.IdCreditActivity
adb shell pm enable com.google.android.gms/.wallet.im.ImRootActivity
adb shell pm enable com.google.android.gms/.wallet.ow.ChooseAccountShimActivity
adb shell pm enable com.google.android.gms/.wallet.ow.ChooseAccountShimInternalActivity
adb shell pm enable com.google.android.gms/.wallet.paymentmethods.PaymentMethodsActivity
adb shell pm enable com.google.android.gms/.wallet.adb shell pm.adb shell pmRootActivity
adb shell pm enable com.google.android.gms/.wallet.redirect.FinishAndroidAppRedirectProxyActivity
adb shell pm enable com.google.android.gms/.wallet.selector.InitializeGenericSelectorRootActivity
adb shell pm enable com.google.android.gms/.wallet.setupwizard.PaymentsSetupWizardActivity
adb shell pm enable com.google.android.gms/.wallet.setupwizard.PaymentsSetupWizardMainActivity
adb shell pm enable com.google.android.gms/.wallet.setupwizard.PaymentsSetupWizardPortalActivity
adb shell pm enable com.google.android.gms/.wallet.setupwizard.PaymentsSetupWizardReactivationActivity
adb shell pm enable com.google.android.gms/.wallet.setupwizard.PaymentsSetupWizardTokenEligibleActivity
adb shell pm enable com.google.android.gms/.wallet.timelineview.TimeLineViewActivity
adb shell pm enable com.google.android.gms/.walletp2p.feature.completion.CompleteMoneyTransferActivity
adb shell pm enable com.google.android.gms/.walletp2p.feature.transfer.TransferMoneyActivity



# Providers
adb shell pm enable com.google.android.gms/.nearby.discovery.fastpair.slice.FastPairContextualCardProvider
adb shell pm enable com.google.android.gms/.nearby.discovery.fastpair.slice.FastPairSliceProvider
adb shell pm enable com.google.android.gms/.nearby.sharing.SharingSliceProvider

adb shell pm enable com.google.android.gms/.fitness.sync.FitnessContentProvider

adb shell pm enable com.google.android.gms/.ads.adinfo.AdvertisingInfoContentProvider

adb shell pm enable com.google.android.gms/.games.chimera.GamesContentProviderProxy
adb shell pm enable com.google.android.gms/.games.provider.NotificationStubContentProvider

adb shell pm enable com.google.android.gms/.plus.provider.PlusProvider

adb shell pm enable com.google.android.gms/.phenotype.provider.ConfigurationProvider

adb shell pm enable com.google.android.gms/.wallet.setupwizard.PaymentsSetupWizardSuggestionStateProvider

# Receivers
adb shell pm enable com.google.android.gms/.kids.account.receiver.ProfileOwnerReceiver

adb shell pm enable com.google.android.gms/.nearby.discovery.fastpair.slice.FastPairContextualCardProvider

adb shell pm enable com.google.android.gms/.googlehelp.GcmBroadcastReceiver

adb shell pm enable com.google.android.gms/.ads.config.FlagsReceiver

adb shell pm enable com.google.android.gms/.analytics.AnalyticsReceiver

adb shell pm enable com.google.android.gms/.games.chimera.GamesSystemBroadcastReceiverProxy
adb shell pm enable com.google.android.gms/.games.chimera.InternalIntentReceiverProxy

adb shell pm enable com.google.android.gms/.phenotype.service.FlagOverrideReceiver
adb shell pm enable com.google.android.gms/com.google.android.libraries.phenotype.client.stable.AccountRemovedBroadcastReceiver

adb shell pm enable com.google.android.gms/.pay.notifications.GcmBroadcastReceiver
adb shell pm enable com.google.android.gms/.tapandpay.admin.TpDeviceAdminReceiver
adb shell pm enable com.google.android.gms/.tapandpay.notifications.GcmBroadcastReceiver

adb shell pm enable com.google.android.gms/.stats.service.DropBoxEntryAddedReceiver

# Services
adb shell pm enable com.google.android.gms/.kids.GcmReceiverService
adb shell pm enable com.google.android.gms/.kids.JobService
adb shell pm enable com.google.android.gms/.kids.SecondaryLockscreenService
adb shell pm enable com.google.android.gms/.kids.SupervisionService
adb shell pm enable com.google.android.gms/.kids.chimera.KidsServiceProxy

adb shell pm enable com.google.android.gms/.nearby.bootstrap.service.NearbyBootstrapService
adb shell pm enable com.google.android.gms/.nearby.connection.service.NearbyConnectionsAndroidService ##
adb shell pm enable com.google.android.gms/.nearby.discovery.service.DiscoveryService
adb shell pm enable com.google.android.gms/.nearby.exposurenotification.WakeUpService
adb shell pm enable com.google.android.gms/.nearby.exposurenotification.service.ExposureMatchingService
adb shell pm enable com.google.android.gms/.nearby.exposurenotification.service.ExposureMatchingTriggerService
adb shell pm enable com.google.android.gms/.nearby.exposurenotification.service.ExposureNotificationInternalService
adb shell pm enable com.google.android.gms/.nearby.fastpair.service.WearableDataListenerService
adb shell pm enable com.google.android.gms/.nearby.mediums.nearfieldcommunication.NfcAdvertisingService
adb shell pm enable com.google.android.gms/.nearby.mediums.nearfieldcommunication.NfcAdvertisingService
adb shell pm enable com.google.android.gms/.nearby.messages.debug.DebugPokeService
adb shell pm enable com.google.android.gms/.nearby.messages.offline.OfflineCachingService
adb shell pm enable com.google.android.gms/.nearby.messages.service.NearbyMessagesService
adb shell pm enable com.google.android.gms/.nearby.sharing.DirectShareService
adb shell pm enable com.google.android.gms/.nearby.sharing.ReceiveSurfaceService
adb shell pm enable com.google.android.gms/.nearby.sharing.SharingSyncService
adb shell pm enable com.google.android.gms/.nearby.sharing.SharingTileService

adb shell pm enable com.google.android.gms/.chimera.CarBoundBrokerService
adb shell pm enable com.google.android.gms/.chimera.CastPersistentBoundBrokerService

adb shell pm enable com.google.android.gms/.fitness.cache.DataUpdateListenerCacheService
adb shell pm enable com.google.android.gms/.fitness.sensors.sample.CollectSensorService
adb shell pm enable com.google.android.gms/.fitness.service.ble.FitBleBroker
adb shell pm enable com.google.android.gms/.fitness.service.config.FitConfigBroker
adb shell pm enable com.google.android.gms/.fitness.service.goals.FitGoalsBroker
adb shell pm enable com.google.android.gms/.fitness.service.history.FitHistoryBroker
adb shell pm enable com.google.android.gms/.fitness.service.internal.FitInternalBroker
adb shell pm enable com.google.android.gms/.fitness.service.proxy.FitProxyBroker
adb shell pm enable com.google.android.gms/.fitness.service.recording.FitRecordingBroker
adb shell pm enable com.google.android.gms/.fitness.service.sensors.FitSensorsBroker
adb shell pm enable com.google.android.gms/.fitness.service.sessions.FitSessionsBroker
adb shell pm enable com.google.android.gms/.fitness.service.wearable.WearableSyncAccountService
adb shell pm enable com.google.android.gms/.fitness.service.wearable.WearableSyncConfigService
adb shell pm enable com.google.android.gms/.fitness.service.wearable.WearableSyncConnectionService
adb shell pm enable com.google.android.gms/.fitness.service.wearable.WearableSyncMessageService
adb shell pm enable com.google.android.gms/.fitness.sync.FitnessSyncAdapterService
adb shell pm enable com.google.android.gms/.fitness.sync.SyncGcmTaskService
adb shell pm enable com.google.android.gms/.fitness.wearables.WearableSyncService

adb shell pm enable com.google.android.gms/.wearable.service.WearableService

adb shell pm enable com.google.android.gms/.feedback.FeedbackAsyncService
adb shell pm enable com.google.android.gms/.feedback.LegacyBugReportService
adb shell pm enable com.google.android.gms/.feedback.OfflineReportSendTaskService

adb shell pm enable com.google.android.gms/.googlehelp.contact.chat.ChatRequestAndConversationService
adb shell pm enable com.google.android.gms/.googlehelp.gcm.InvalidateGcmTokenGcmTaskService
adb shell pm enable com.google.android.gms/.googlehelp.metrics.ReportBatchedMetricsGcmTaskService
adb shell pm enable com.google.android.gms/.googlehelp.service.GoogleHelpService

adb shell pm enable com.google.android.gms/.ads.AdRequestBrokerService ##
adb shell pm enable com.google.android.gms/.ads.GservicesValueBrokerService
adb shell pm enable com.google.android.gms/.ads.cache.CacheBrokerService ##
adb shell pm enable com.google.android.gms/.ads.identifier.service.AdvertisingIdNotificationService
adb shell pm enable com.google.android.gms/.ads.identifier.service.AdvertisingIdService ##
adb shell pm enable com.google.android.gms/.ads.jams.NegotiationService
adb shell pm enable com.google.android.gms/.ads.measurement.GmpConversionTrackingBrokerService
adb shell pm enable com.google.android.gms/.ads.social.GcmSchedulerWakeupService

adb shell pm enable com.google.android.gms/.analytics.AnalyticsService
adb shell pm enable com.google.android.gms/.analytics.AnalyticsTaskService ##
adb shell pm enable com.google.android.gms/.analytics.internal.PlayLogReportingService
adb shell pm enable com.google.android.gms/.analytics.service.AnalyticsService

adb shell pm enable com.google.android.gms/.plus.service.DefaultIntentService
adb shell pm enable com.google.android.gms/.plus.service.ImageIntentService
adb shell pm enable com.google.android.gms/.plus.service.OfflineActionSyncAdapterService
adb shell pm enable com.google.android.gms/.plus.service.PlusService

adb shell pm enable com.google.android.gms/.games.chimera.GamesAndroidServiceProxy
adb shell pm enable com.google.android.gms/.games.chimera.GamesAsyncServiceProxy
adb shell pm enable com.google.android.gms/.games.chimera.GamesSignInIntentServiceProxy
adb shell pm enable com.google.android.gms/.games.chimera.GamesSignInServiceProxy
adb shell pm enable com.google.android.gms/.games.chimera.GamesSyncServiceMainProxy
adb shell pm enable com.google.android.gms/.games.chimera.GamesSyncServiceNotificationProxy
adb shell pm enable com.google.android.gms/.games.chimera.GamesUploadServiceProxy
adb shell pm enable com.google.android.gms/.games.chimera.RoomAndroidServiceProxy
adb shell pm enable com.google.android.gms/.games.chimera.SnapshotEventServiceProxy

adb shell pm enable com.google.android.gms/.photos.autobackup.service.AutoBackupService

adb shell pm enable com.google.android.gms/.measurement.service.MeasurementBrokerService

adb shell pm enable com.google.android.gms/.cast.media.CastMediaRoute2ProviderService
adb shell pm enable com.google.android.gms/.cast.media.CastMediaRoute2ProviderService_Isolated
adb shell pm enable com.google.android.gms/.cast.media.CastMediaRoute2ProviderService_Persistent
adb shell pm enable com.google.android.gms/.cast.media.CastMediaRouteProviderService
adb shell pm enable com.google.android.gms/.cast.media.CastMediaRouteProviderService_Isolated
adb shell pm enable com.google.android.gms/.cast.media.CastMediaRouteProviderService_Persistent
adb shell pm enable com.google.android.gms/.cast.media.CastRemoteDisplayProviderService
adb shell pm enable com.google.android.gms/.cast.media.CastRemoteDisplayProviderService_Isolated
adb shell pm enable com.google.android.gms/.cast.media.CastRemoteDisplayProviderService_Persistent
adb shell pm enable com.google.android.gms/.cast.service.CastPersistentService
adb shell pm enable com.google.android.gms/.cast.service.CastPersistentService_Isolated
adb shell pm enable com.google.android.gms/.cast.service.CastPersistentService_Persistent
adb shell pm enable com.google.android.gms/.cast.service.CastSocketMultiplexerLifeCycleService
adb shell pm enable com.google.android.gms/.cast.service.CastSocketMultiplexerLifeCycleService_Isolated
adb shell pm enable com.google.android.gms/.cast.service.CastSocketMultiplexerLifeCycleService_Persistent

adb shell pm enable com.google.android.gms/.chimera.GmsIntentOperationService ## bug log flood

adb shell pm enable com.google.android.gms/.common.config.PhenotypeCheckinService
adb shell pm enable com.google.android.gms/.phenotype.gcm.GcmReceiverService
adb shell pm enable com.google.android.gms/.phenotype.service.sync.PackageUpdateTaskService
adb shell pm enable com.google.android.gms/.phenotype.service.sync.PhenotypeConfigurator
adb shell pm enable com.google.android.gms/com.google.android.libraries.phenotype.registration.PhenotypeMetadataHolderService

adb shell pm enable com.google.android.gms/.usagereporting.service.UsageReportingIntentService

adb shell pm enable com.google.android.gms/.pay.gcmtask.PayGcmTaskService
adb shell pm enable com.google.android.gms/.pay.hce.service.PayHceService
adb shell pm enable com.google.android.gms/.pay.notifications.PayNotificationService
adb shell pm enable com.google.android.gms/.pay.security.storagekey.service.StorageKeyCacheService
adb shell pm enable com.google.android.gms/.tapandpay.gcmtask.TapAndPayGcmTaskService
adb shell pm enable com.google.android.gms/.tapandpay.globalactions.QuickAccessWalletService
adb shell pm enable com.google.android.gms/.tapandpay.hce.service.TpHceService
adb shell pm enable com.google.android.gms/.tapandpay.security.StorageKeyCacheService
adb shell pm enable com.google.android.gms/.tapandpay.tokenization.TokenizePanService
adb shell pm enable com.google.android.gms/.tapandpay.wear.WearProxyService
adb shell pm enable com.google.android.gms/.wallet.service.PaymentService
adb shell pm enable com.google.android.gms/.wallet.service.WalletGcmTaskService
adb shell pm enable com.google.android.gms/.wallet.service.address.AddressService

adb shell pm enable com.google.android.gms/.backup.stats.BackupStatsService
adb shell pm enable com.google.android.gms/.common.stats.StatsUploadService
adb shell pm enable com.google.android.gms/.common.stats.net.NetworkReportService
adb shell pm enable com.google.android.gms/.stats.PlatformStatsCollectorService
adb shell pm enable com.google.android.gms/.stats.service.DropBoxEntryAddedService
adb shell pm enable com.google.android.gms/.chimera.GmsIntentOperationService

echo "#######################    FINISH    #######################
Press ENTER to return to START"
read -r a
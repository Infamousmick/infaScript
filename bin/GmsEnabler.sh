#!/bin/sh
clear
echo "
####################### GMS Enabler #######################
Press ENTER to start"
read -r a
pm enable com.google.android.gms/com.google.android.gms.nearby.messages.service.NearbyMessagesService
pm enable com.google.android.gms/com.google.android.gms.nearby.discovery.service.DiscoveryService
pm enable com.google.android.gms/.chimera.GmsIntentOperationService
pm enable com.google.android.gms/com.google.android.gms.nearby.messages.service.NearbyMessagesService
pm enable com.google.android.gms/com.google.android.gms.nearby.discovery.service.DiscoveryService
pm enable com.google.android.gms/.chimera.GmsIntentOperationService
pm enable com.google.android.gms/.kids.KidSetupActivity
pm enable com.google.android.gms/.kids.LockscreenActivity
pm enable com.google.android.gms/.kids.LockscreenActivityV2
pm enable com.google.android.gms/.kids.LockscreenUnlockActivity
pm enable com.google.android.gms/.kids.ParentAccessActivity
pm enable com.google.android.gms/.kids.SyncTailTrapperActivity
pm enable com.google.android.gms/.kids.TransparencyActivity
pm enable com.google.android.gms/.kids.chimera.RegisterProfileOwnerActivityProxy
pm enable com.google.android.gms/.kids.settings.KidsSettingsActivity
pm enable com.google.android.gms/.kids.settings.KidsSettingsActivityAliasSuw

pm enable com.google.android.gms/.nearby.discovery.devices.DevicesListActivity
pm enable com.google.android.gms/.nearby.discovery.devices.FindDeviceActivity
pm enable com.google.android.gms/.nearby.discovery.fastpair.AtvConnectActivity
pm enable com.google.android.gms/.nearby.discovery.fastpair.CompanionAppInstallActivity
pm enable com.google.android.gms/.nearby.discovery.fastpair.HalfSheetActivity
pm enable com.google.android.gms/.nearby.exposurenotification.settings.SettingsActivity
pm enable com.google.android.gms/.nearby.exposurenotification.settings.SettingsActivityAlias
pm enable com.google.android.gms/.nearby.exposurenotification.settings.SettingsCheckerActivity
pm enable com.google.android.gms/.nearby.exposurenotification.settings.SettingsCollapsingToolbarActivity
pm enable com.google.android.gms/.nearby.messages.settings.NearbyMessagesAppOptInActivity
pm enable com.google.android.gms/.nearby.setup.ui.WifiConsentActivity
pm enable com.google.android.gms/.nearby.sharing.ConsentsActivity
pm enable com.google.android.gms/.nearby.sharing.DeviceVisibilityActivity
pm enable com.google.android.gms/.nearby.sharing.InternalReceiveSurfaceActivity
pm enable com.google.android.gms/.nearby.sharing.InternalShareSheetActivity
pm enable com.google.android.gms/.nearby.sharing.QuickSettingsActivity
pm enable com.google.android.gms/.nearby.sharing.ReceiveSurfaceActivity
pm enable com.google.android.gms/.nearby.sharing.SettingsActivity
pm enable com.google.android.gms/.nearby.sharing.SettingsActivityAlias
pm enable com.google.android.gms/.nearby.sharing.SettingsCollapsingToolbarActivity
pm enable com.google.android.gms/.nearby.sharing.SettingsCollapsingToolbarActivityAlias
pm enable com.google.android.gms/.nearby.sharing.SettingsPreferenceActivity
pm enable com.google.android.gms/.nearby.sharing.SettingsPreferenceActivityAlias
pm enable com.google.android.gms/.nearby.sharing.SetupActivity
pm enable com.google.android.gms/.nearby.sharing.ShareSheetActivity
pm enable com.google.android.gms/.nearby.sharing.ShareSheetActivityAlias
pm enable com.google.android.gms/.nearby.sharing.ShareSheetActivityAliasSamsungGallery
pm enable com.google.android.gms/.nearby.sharing.ShareSheetActivityAliasSamsungMyFiles

pm enable com.google.android.gms/.fitness.settings.FitnessSettingsActivity

pm enable com.google.android.gms/.wearable.consent.PrivacySettingsActivity
pm enable com.google.android.gms/.wearable.consent.TermsOfServiceActivity
pm enable com.google.android.gms/.wearable.playsetup.ui.AppInstallActivity
pm enable com.google.android.gms/.wearable.ui.WearableManageSpaceActivity

pm enable com.google.android.gms/.feedback.FeedbackActivity
pm enable com.google.android.gms/.feedback.IntentListenerFeedbackActivity
pm enable com.google.android.gms/.feedback.PreviewActivity
pm enable com.google.android.gms/.feedback.PreviewScreenshotActivity
pm enable com.google.android.gms/.feedback.ShowTextActivity
pm enable com.google.android.gms/.feedback.SuggestionsActivity

pm enable com.google.android.gms/.googlehelp.contact.chat.ChatConversationActivity
pm enable com.google.android.gms/.googlehelp.helpactivities.DeviceSignalsExportActivity
pm enable com.google.android.gms/.googlehelp.helpactivities.ExitActivity
pm enable com.google.android.gms/.googlehelp.helpactivities.HelpActivity
pm enable com.google.android.gms/.googlehelp.helpactivities.OpenHelpActivity
pm enable com.google.android.gms/.googlehelp.helpactivities.OpenHelpRtcActivity
pm enable com.google.android.gms/.googlehelp.helpactivities.SystemAppTrampolineActivity
pm enable com.google.android.gms/.googlehelp.webview.GoogleHelpRenderingApiWebViewActivity
pm enable com.google.android.gms/.googlehelp.webview.GoogleHelpWebViewActivity

pm enable com.google.android.gms/.ads.settings.AdsSettingsActivity

pm enable com.google.android.gms/.plus.activity.AccountSignUpActivity
pm enable com.google.android.gms/.plus.apps.ListAppsActivity
pm enable com.google.android.gms/.plus.apps.ManageAppActivity
pm enable com.google.android.gms/.plus.apps.ManageDeviceActivity
pm enable com.google.android.gms/.plus.apps.ManageMomentActivity
pm enable com.google.android.gms/.plus.audience.AclSelectionActivity
pm enable com.google.android.gms/.plus.audience.AudienceSearchActivity
pm enable com.google.android.gms/.plus.audience.CircleCreationActivity
pm enable com.google.android.gms/.plus.audience.CircleSelectionActivity
pm enable com.google.android.gms/.plus.audience.FaclSelectionActivity
pm enable com.google.android.gms/.plus.audience.UpdateActionOnlyActivity
pm enable com.google.android.gms/.plus.audience.UpdateCirclesActivity
pm enable com.google.android.gms/.plus.circles.AddToCircleConsentActivity
pm enable com.google.android.gms/.plus.oob.PlusActivity
pm enable com.google.android.gms/.plus.oob.UpgradeAccountActivity
pm enable com.google.android.gms/.plus.oob.UpgradeAccountInfoActivity
pm enable com.google.android.gms/.plus.plusone.PlusOneActivity
pm enable com.google.android.gms/.plus.sharebox.AddToCircleActivity
pm enable com.google.android.gms/.plus.sharebox.ReplyBoxActivity
pm enable com.google.android.gms/.plus.sharebox.ShareBoxActivity
pm enable com.google.android.gms/.plus.ui.DpadNavigableWebViewActivity


pm enable com.google.android.gms/.games.AddAccountActivity
pm enable com.google.android.gms/.games.InstallPlayGamesActivity
pm enable com.google.android.gms/.games.PlayGamesUpgradeActivity
pm enable com.google.android.gms/.games.ui.ingame.FeatureNotAvailableActivity
pm enable com.google.android.gms/.games.ui.profile.CreateProfileActivity
pm enable com.google.android.gms/.games.ui.promotions.InGamePromotionsActivity
pm enable com.google.android.gms/.games.ui.settings.GamesSettingsActivity
pm enable com.google.android.gms/.games.ui.settingsv2.GamesSettingsActivity
pm enable com.google.android.gms/.games.ui.signinflow.SignInActivity
pm enable com.google.android.gms/.games.ui.upsell.InGameUiProxyActivity
pm enable com.google.android.gms/.games.ui.upsell.InstallPlayGamesActivity
pm enable com.google.android.gms/.games.ui.video.ScreenCaptureRequestActivity

pm enable com.google.android.gms/.cast.activity.CastPopupActivity

pm enable com.google.android.gms/.findmydevice.spot.deeplinks.DeepLinkActivity
pm enable com.google.android.gms/.mdm.settings.FindMyDeviceSettingsActivity

pm enable com.google.android.gms/.mdm.services.MdmPhoneWearableListenerService

pm enable com.google.android.gms/.usagereporting.settings.UsageReportingActivity
pm enable com.google.android.gms/.usagereporting.ui.UsageReportingDebugActivity
pm enable com.google.android.gms/.usagereporting.ui.UsageReportingDialogActivity

pm enable com.google.android.gms/.pay.deeplink.AliasAddSignUpValuablesDeepLinkActivity
pm enable com.google.android.gms/.pay.deeplink.AliasSaveValuablesDeepLinkActivity
pm enable com.google.android.gms/.pay.deeplink.AliasViewValuablesDetailsDeepLinkActivity
pm enable com.google.android.gms/.pay.deeplink.DeepLinkActivity
pm enable com.google.android.gms/.pay.main.PayActivity
pm enable com.google.android.gms/.pay.main.PayOptionalActivity
pm enable com.google.android.gms/.tapandpay.account.SelectAccountActivity
pm enable com.google.android.gms/.tapandpay.admin.DeviceAdminPromptActivity
pm enable com.google.android.gms/.tapandpay.diagnostics.TapDiagnosticsActivity
pm enable com.google.android.gms/.tapandpay.issuer.RequestDeleteTokenActivity
pm enable com.google.android.gms/.tapandpay.issuer.RequestSelectTokenActivity
pm enable com.google.android.gms/.tapandpay.issuer.RequestTokenizeActivity
pm enable com.google.android.gms/.tapandpay.keyguard.KeyguardSecurityInfoActivity
pm enable com.google.android.gms/.tapandpay.settings.NotificationSettingsActivity
pm enable com.google.android.gms/.tapandpay.settings.SelectOtherPaymentMethodActivity
pm enable com.google.android.gms/.tapandpay.settings.SelectUntokenizedCardActivity
pm enable com.google.android.gms/.tapandpay.settings.TapAndPaySettingsActivity
pm enable com.google.android.gms/.tapandpay.tap.TapKeyguardActivity
pm enable com.google.android.gms/.tapandpay.tap.TapUiActivity
pm enable com.google.android.gms/.tapandpay.tokenization.AcceptGooglePayTosActivity
pm enable com.google.android.gms/.tapandpay.tokenization.AcceptTosActivity
pm enable com.google.android.gms/.tapandpay.tokenization.AddNewCardForTokenizationActivity
pm enable com.google.android.gms/.tapandpay.tokenization.AddNewCardThroughBrowserActivity
pm enable com.google.android.gms/.tapandpay.tokenization.EnableNfcActivity
pm enable com.google.android.gms/.tapandpay.tokenization.EnterVerificationCodeActivity
pm enable com.google.android.gms/.tapandpay.tokenization.NameResolutionActivity
pm enable com.google.android.gms/.tapandpay.tokenization.SelectVerificationMethodActivity
pm enable com.google.android.gms/.tapandpay.tokenization.SummaryActivity
pm enable com.google.android.gms/.tapandpay.tokenization.TokenizePanActivity
pm enable com.google.android.gms/.tapandpay.tokenization.UnsupportedCardActivity
pm enable com.google.android.gms/.tapandpay.transaction.WalletTransactionDetailsActivity
pm enable com.google.android.gms/.tapandpay.ui.EnableSecureKeyguardActivity
pm enable com.google.android.gms/.tapandpay.ui.PromptSetupActivity
pm enable com.google.android.gms/.tapandpay.ui.SecureDeviceActivity
pm enable com.google.android.gms/.tapandpay.ui.ShowSecurityPromptActivity
pm enable com.google.android.gms/.tapandpay.ui.TokenizationSuccessActivity
pm enable com.google.android.gms/.tapandpay.ui.WarmWelcomeActivity
pm enable com.google.android.gms/.tapandpay.wear.WearProxyActivity
pm enable com.google.android.gms/.tapandpay.wear.WearProxyCompanionActivity
pm enable com.google.android.gms/.tapandpay.wear.dialog.WearSecureKeyguardDialogActivity
pm enable com.google.android.gms/.tapandpay.wear.dialog.WearTapAndPayDialogActivity
pm enable com.google.android.gms/.wallet.activity.GenericDelegatorActivity
pm enable com.google.android.gms/.wallet.activity.OrchestrationDelegatorActivity
pm enable com.google.android.gms/.wallet.bender3.Bender3FinishRedirectProxyActivity
pm enable com.google.android.gms/.wallet.common.ui.UpdateCallingAppActivity
pm enable com.google.android.gms/.wallet.ib.IbPaymentRequestCompatActivity
pm enable com.google.android.gms/.wallet.idcredit.IdCreditActivity
pm enable com.google.android.gms/.wallet.im.ImRootActivity
pm enable com.google.android.gms/.wallet.ow.ChooseAccountShimActivity
pm enable com.google.android.gms/.wallet.ow.ChooseAccountShimInternalActivity
pm enable com.google.android.gms/.wallet.paymentmethods.PaymentMethodsActivity
pm enable com.google.android.gms/.wallet.pm.pmRootActivity
pm enable com.google.android.gms/.wallet.redirect.FinishAndroidAppRedirectProxyActivity
pm enable com.google.android.gms/.wallet.selector.InitializeGenericSelectorRootActivity
pm enable com.google.android.gms/.wallet.setupwizard.PaymentsSetupWizardActivity
pm enable com.google.android.gms/.wallet.setupwizard.PaymentsSetupWizardMainActivity
pm enable com.google.android.gms/.wallet.setupwizard.PaymentsSetupWizardPortalActivity
pm enable com.google.android.gms/.wallet.setupwizard.PaymentsSetupWizardReactivationActivity
pm enable com.google.android.gms/.wallet.setupwizard.PaymentsSetupWizardTokenEligibleActivity
pm enable com.google.android.gms/.wallet.timelineview.TimeLineViewActivity
pm enable com.google.android.gms/.walletp2p.feature.completion.CompleteMoneyTransferActivity
pm enable com.google.android.gms/.walletp2p.feature.transfer.TransferMoneyActivity



# Providers
pm enable com.google.android.gms/.nearby.discovery.fastpair.slice.FastPairContextualCardProvider
pm enable com.google.android.gms/.nearby.discovery.fastpair.slice.FastPairSliceProvider
pm enable com.google.android.gms/.nearby.sharing.SharingSliceProvider

pm enable com.google.android.gms/.fitness.sync.FitnessContentProvider

pm enable com.google.android.gms/.ads.adinfo.AdvertisingInfoContentProvider

pm enable com.google.android.gms/.games.chimera.GamesContentProviderProxy
pm enable com.google.android.gms/.games.provider.NotificationStubContentProvider

pm enable com.google.android.gms/.plus.provider.PlusProvider

pm enable com.google.android.gms/.phenotype.provider.ConfigurationProvider

pm enable com.google.android.gms/.wallet.setupwizard.PaymentsSetupWizardSuggestionStateProvider

# Receivers
pm enable com.google.android.gms/.kids.account.receiver.ProfileOwnerReceiver

pm enable com.google.android.gms/.nearby.discovery.fastpair.slice.FastPairContextualCardProvider

pm enable com.google.android.gms/.googlehelp.GcmBroadcastReceiver

pm enable com.google.android.gms/.ads.config.FlagsReceiver

pm enable com.google.android.gms/.analytics.AnalyticsReceiver

pm enable com.google.android.gms/.games.chimera.GamesSystemBroadcastReceiverProxy
pm enable com.google.android.gms/.games.chimera.InternalIntentReceiverProxy

pm enable com.google.android.gms/.phenotype.service.FlagOverrideReceiver
pm enable com.google.android.gms/com.google.android.libraries.phenotype.client.stable.AccountRemovedBroadcastReceiver

pm enable com.google.android.gms/.pay.notifications.GcmBroadcastReceiver
pm enable com.google.android.gms/.tapandpay.admin.TpDeviceAdminReceiver
pm enable com.google.android.gms/.tapandpay.notifications.GcmBroadcastReceiver

pm enable com.google.android.gms/.stats.service.DropBoxEntryAddedReceiver

# Services
pm enable com.google.android.gms/.kids.GcmReceiverService
pm enable com.google.android.gms/.kids.JobService
pm enable com.google.android.gms/.kids.SecondaryLockscreenService
pm enable com.google.android.gms/.kids.SupervisionService
pm enable com.google.android.gms/.kids.chimera.KidsServiceProxy

pm enable com.google.android.gms/.nearby.bootstrap.service.NearbyBootstrapService
pm enable com.google.android.gms/.nearby.connection.service.NearbyConnectionsAndroidService ##
pm enable com.google.android.gms/.nearby.discovery.service.DiscoveryService
pm enable com.google.android.gms/.nearby.exposurenotification.WakeUpService
pm enable com.google.android.gms/.nearby.exposurenotification.service.ExposureMatchingService
pm enable com.google.android.gms/.nearby.exposurenotification.service.ExposureMatchingTriggerService
pm enable com.google.android.gms/.nearby.exposurenotification.service.ExposureNotificationInternalService
pm enable com.google.android.gms/.nearby.fastpair.service.WearableDataListenerService
pm enable com.google.android.gms/.nearby.mediums.nearfieldcommunication.NfcAdvertisingService
pm enable com.google.android.gms/.nearby.mediums.nearfieldcommunication.NfcAdvertisingService
pm enable com.google.android.gms/.nearby.messages.debug.DebugPokeService
pm enable com.google.android.gms/.nearby.messages.offline.OfflineCachingService
pm enable com.google.android.gms/.nearby.messages.service.NearbyMessagesService
pm enable com.google.android.gms/.nearby.sharing.DirectShareService
pm enable com.google.android.gms/.nearby.sharing.ReceiveSurfaceService
pm enable com.google.android.gms/.nearby.sharing.SharingSyncService
pm enable com.google.android.gms/.nearby.sharing.SharingTileService

pm enable com.google.android.gms/.chimera.CarBoundBrokerService
pm enable com.google.android.gms/.chimera.CastPersistentBoundBrokerService

pm enable com.google.android.gms/.fitness.cache.DataUpdateListenerCacheService
pm enable com.google.android.gms/.fitness.sensors.sample.CollectSensorService
pm enable com.google.android.gms/.fitness.service.ble.FitBleBroker
pm enable com.google.android.gms/.fitness.service.config.FitConfigBroker
pm enable com.google.android.gms/.fitness.service.goals.FitGoalsBroker
pm enable com.google.android.gms/.fitness.service.history.FitHistoryBroker
pm enable com.google.android.gms/.fitness.service.internal.FitInternalBroker
pm enable com.google.android.gms/.fitness.service.proxy.FitProxyBroker
pm enable com.google.android.gms/.fitness.service.recording.FitRecordingBroker
pm enable com.google.android.gms/.fitness.service.sensors.FitSensorsBroker
pm enable com.google.android.gms/.fitness.service.sessions.FitSessionsBroker
pm enable com.google.android.gms/.fitness.service.wearable.WearableSyncAccountService
pm enable com.google.android.gms/.fitness.service.wearable.WearableSyncConfigService
pm enable com.google.android.gms/.fitness.service.wearable.WearableSyncConnectionService
pm enable com.google.android.gms/.fitness.service.wearable.WearableSyncMessageService
pm enable com.google.android.gms/.fitness.sync.FitnessSyncAdapterService
pm enable com.google.android.gms/.fitness.sync.SyncGcmTaskService
pm enable com.google.android.gms/.fitness.wearables.WearableSyncService

pm enable com.google.android.gms/.wearable.service.WearableService

pm enable com.google.android.gms/.feedback.FeedbackAsyncService
pm enable com.google.android.gms/.feedback.LegacyBugReportService
pm enable com.google.android.gms/.feedback.OfflineReportSendTaskService

pm enable com.google.android.gms/.googlehelp.contact.chat.ChatRequestAndConversationService
pm enable com.google.android.gms/.googlehelp.gcm.InvalidateGcmTokenGcmTaskService
pm enable com.google.android.gms/.googlehelp.metrics.ReportBatchedMetricsGcmTaskService
pm enable com.google.android.gms/.googlehelp.service.GoogleHelpService

pm enable com.google.android.gms/.ads.AdRequestBrokerService ##
pm enable com.google.android.gms/.ads.GservicesValueBrokerService
pm enable com.google.android.gms/.ads.cache.CacheBrokerService ##
pm enable com.google.android.gms/.ads.identifier.service.AdvertisingIdNotificationService
pm enable com.google.android.gms/.ads.identifier.service.AdvertisingIdService ##
pm enable com.google.android.gms/.ads.jams.NegotiationService
pm enable com.google.android.gms/.ads.measurement.GmpConversionTrackingBrokerService
pm enable com.google.android.gms/.ads.social.GcmSchedulerWakeupService

pm enable com.google.android.gms/.analytics.AnalyticsService
pm enable com.google.android.gms/.analytics.AnalyticsTaskService ##
pm enable com.google.android.gms/.analytics.internal.PlayLogReportingService
pm enable com.google.android.gms/.analytics.service.AnalyticsService

pm enable com.google.android.gms/.plus.service.DefaultIntentService
pm enable com.google.android.gms/.plus.service.ImageIntentService
pm enable com.google.android.gms/.plus.service.OfflineActionSyncAdapterService
pm enable com.google.android.gms/.plus.service.PlusService

pm enable com.google.android.gms/.games.chimera.GamesAndroidServiceProxy
pm enable com.google.android.gms/.games.chimera.GamesAsyncServiceProxy
pm enable com.google.android.gms/.games.chimera.GamesSignInIntentServiceProxy
pm enable com.google.android.gms/.games.chimera.GamesSignInServiceProxy
pm enable com.google.android.gms/.games.chimera.GamesSyncServiceMainProxy
pm enable com.google.android.gms/.games.chimera.GamesSyncServiceNotificationProxy
pm enable com.google.android.gms/.games.chimera.GamesUploadServiceProxy
pm enable com.google.android.gms/.games.chimera.RoomAndroidServiceProxy
pm enable com.google.android.gms/.games.chimera.SnapshotEventServiceProxy

pm enable com.google.android.gms/.photos.autobackup.service.AutoBackupService

pm enable com.google.android.gms/.measurement.service.MeasurementBrokerService

pm enable com.google.android.gms/.cast.media.CastMediaRoute2ProviderService
pm enable com.google.android.gms/.cast.media.CastMediaRoute2ProviderService_Isolated
pm enable com.google.android.gms/.cast.media.CastMediaRoute2ProviderService_Persistent
pm enable com.google.android.gms/.cast.media.CastMediaRouteProviderService
pm enable com.google.android.gms/.cast.media.CastMediaRouteProviderService_Isolated
pm enable com.google.android.gms/.cast.media.CastMediaRouteProviderService_Persistent
pm enable com.google.android.gms/.cast.media.CastRemoteDisplayProviderService
pm enable com.google.android.gms/.cast.media.CastRemoteDisplayProviderService_Isolated
pm enable com.google.android.gms/.cast.media.CastRemoteDisplayProviderService_Persistent
pm enable com.google.android.gms/.cast.service.CastPersistentService
pm enable com.google.android.gms/.cast.service.CastPersistentService_Isolated
pm enable com.google.android.gms/.cast.service.CastPersistentService_Persistent
pm enable com.google.android.gms/.cast.service.CastSocketMultiplexerLifeCycleService
pm enable com.google.android.gms/.cast.service.CastSocketMultiplexerLifeCycleService_Isolated
pm enable com.google.android.gms/.cast.service.CastSocketMultiplexerLifeCycleService_Persistent

pm enable com.google.android.gms/.chimera.GmsIntentOperationService ## bug log flood

pm enable com.google.android.gms/.common.config.PhenotypeCheckinService
pm enable com.google.android.gms/.phenotype.gcm.GcmReceiverService
pm enable com.google.android.gms/.phenotype.service.sync.PackageUpdateTaskService
pm enable com.google.android.gms/.phenotype.service.sync.PhenotypeConfigurator
pm enable com.google.android.gms/com.google.android.libraries.phenotype.registration.PhenotypeMetadataHolderService

pm enable com.google.android.gms/.usagereporting.service.UsageReportingIntentService

pm enable com.google.android.gms/.pay.gcmtask.PayGcmTaskService
pm enable com.google.android.gms/.pay.hce.service.PayHceService
pm enable com.google.android.gms/.pay.notifications.PayNotificationService
pm enable com.google.android.gms/.pay.security.storagekey.service.StorageKeyCacheService
pm enable com.google.android.gms/.tapandpay.gcmtask.TapAndPayGcmTaskService
pm enable com.google.android.gms/.tapandpay.globalactions.QuickAccessWalletService
pm enable com.google.android.gms/.tapandpay.hce.service.TpHceService
pm enable com.google.android.gms/.tapandpay.security.StorageKeyCacheService
pm enable com.google.android.gms/.tapandpay.tokenization.TokenizePanService
pm enable com.google.android.gms/.tapandpay.wear.WearProxyService
pm enable com.google.android.gms/.wallet.service.PaymentService
pm enable com.google.android.gms/.wallet.service.WalletGcmTaskService
pm enable com.google.android.gms/.wallet.service.address.AddressService

pm enable com.google.android.gms/.backup.stats.BackupStatsService
pm enable com.google.android.gms/.common.stats.StatsUploadService
pm enable com.google.android.gms/.common.stats.net.NetworkReportService
pm enable com.google.android.gms/.stats.PlatformStatsCollectorService
pm enable com.google.android.gms/.stats.service.DropBoxEntryAddedService
pm enable com.google.android.gms/.chimera.GmsIntentOperationService

echo "#######################    FINISH    #######################
Press ENTER to return to START"
read -r a
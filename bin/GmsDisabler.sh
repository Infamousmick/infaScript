#!/bin/sh
su
clear
echo "
##################### GMS Disabler ####################

Press ENTER to start"
read -r a
pm disable com.google.android.gms/com.google.android.gms.nearby.messages.service.NearbyMessagesService
pm disable com.google.android.gms/com.google.android.gms.nearby.discovery.service.DiscoveryService
pm disable com.google.android.gms/.chimera.GmsIntentOperationService
pm disable com.google.android.gms/com.google.android.gms.nearby.messages.service.NearbyMessagesService
pm disable com.google.android.gms/com.google.android.gms.nearby.discovery.service.DiscoveryService
pm disable com.google.android.gms/.chimera.GmsIntentOperationService
pm disable com.google.android.gms/.kids.KidSetupActivity
pm disable com.google.android.gms/.kids.LockscreenActivity
pm disable com.google.android.gms/.kids.LockscreenActivityV2
pm disable com.google.android.gms/.kids.LockscreenUnlockActivity
pm disable com.google.android.gms/.kids.ParentAccessActivity
pm disable com.google.android.gms/.kids.SyncTailTrapperActivity
pm disable com.google.android.gms/.kids.TransparencyActivity
pm disable com.google.android.gms/.kids.chimera.RegisterProfileOwnerActivityProxy
pm disable com.google.android.gms/.kids.settings.KidsSettingsActivity
pm disable com.google.android.gms/.kids.settings.KidsSettingsActivityAliasSuw

pm disable com.google.android.gms/.nearby.discovery.devices.DevicesListActivity
pm disable com.google.android.gms/.nearby.discovery.devices.FindDeviceActivity
pm disable com.google.android.gms/.nearby.discovery.fastpair.AtvConnectActivity
pm disable com.google.android.gms/.nearby.discovery.fastpair.CompanionAppInstallActivity
pm disable com.google.android.gms/.nearby.discovery.fastpair.HalfSheetActivity
pm disable com.google.android.gms/.nearby.exposurenotification.settings.SettingsActivity
pm disable com.google.android.gms/.nearby.exposurenotification.settings.SettingsActivityAlias
pm disable com.google.android.gms/.nearby.exposurenotification.settings.SettingsCheckerActivity
pm disable com.google.android.gms/.nearby.exposurenotification.settings.SettingsCollapsingToolbarActivity
pm disable com.google.android.gms/.nearby.messages.settings.NearbyMessagesAppOptInActivity
pm disable com.google.android.gms/.nearby.setup.ui.WifiConsentActivity
pm disable com.google.android.gms/.nearby.sharing.ConsentsActivity
pm disable com.google.android.gms/.nearby.sharing.DeviceVisibilityActivity
pm disable com.google.android.gms/.nearby.sharing.InternalReceiveSurfaceActivity
pm disable com.google.android.gms/.nearby.sharing.InternalShareSheetActivity
pm disable com.google.android.gms/.nearby.sharing.QuickSettingsActivity
pm disable com.google.android.gms/.nearby.sharing.ReceiveSurfaceActivity
pm disable com.google.android.gms/.nearby.sharing.SettingsActivity
pm disable com.google.android.gms/.nearby.sharing.SettingsActivityAlias
pm disable com.google.android.gms/.nearby.sharing.SettingsCollapsingToolbarActivity
pm disable com.google.android.gms/.nearby.sharing.SettingsCollapsingToolbarActivityAlias
pm disable com.google.android.gms/.nearby.sharing.SettingsPreferenceActivity
pm disable com.google.android.gms/.nearby.sharing.SettingsPreferenceActivityAlias
pm disable com.google.android.gms/.nearby.sharing.SetupActivity
pm disable com.google.android.gms/.nearby.sharing.ShareSheetActivity
pm disable com.google.android.gms/.nearby.sharing.ShareSheetActivityAlias
pm disable com.google.android.gms/.nearby.sharing.ShareSheetActivityAliasSamsungGallery
pm disable com.google.android.gms/.nearby.sharing.ShareSheetActivityAliasSamsungMyFiles

pm disable com.google.android.gms/.fitness.settings.FitnessSettingsActivity

pm disable com.google.android.gms/.wearable.consent.PrivacySettingsActivity
pm disable com.google.android.gms/.wearable.consent.TermsOfServiceActivity
pm disable com.google.android.gms/.wearable.playsetup.ui.AppInstallActivity
pm disable com.google.android.gms/.wearable.ui.WearableManageSpaceActivity

pm disable com.google.android.gms/.feedback.FeedbackActivity
pm disable com.google.android.gms/.feedback.IntentListenerFeedbackActivity
pm disable com.google.android.gms/.feedback.PreviewActivity
pm disable com.google.android.gms/.feedback.PreviewScreenshotActivity
pm disable com.google.android.gms/.feedback.ShowTextActivity
pm disable com.google.android.gms/.feedback.SuggestionsActivity

pm disable com.google.android.gms/.googlehelp.contact.chat.ChatConversationActivity
pm disable com.google.android.gms/.googlehelp.helpactivities.DeviceSignalsExportActivity
pm disable com.google.android.gms/.googlehelp.helpactivities.ExitActivity
pm disable com.google.android.gms/.googlehelp.helpactivities.HelpActivity
pm disable com.google.android.gms/.googlehelp.helpactivities.OpenHelpActivity
pm disable com.google.android.gms/.googlehelp.helpactivities.OpenHelpRtcActivity
pm disable com.google.android.gms/.googlehelp.helpactivities.SystemAppTrampolineActivity
pm disable com.google.android.gms/.googlehelp.webview.GoogleHelpRenderingApiWebViewActivity
pm disable com.google.android.gms/.googlehelp.webview.GoogleHelpWebViewActivity

pm disable com.google.android.gms/.ads.settings.AdsSettingsActivity

pm disable com.google.android.gms/.plus.activity.AccountSignUpActivity
pm disable com.google.android.gms/.plus.apps.ListAppsActivity
pm disable com.google.android.gms/.plus.apps.ManageAppActivity
pm disable com.google.android.gms/.plus.apps.ManageDeviceActivity
pm disable com.google.android.gms/.plus.apps.ManageMomentActivity
pm disable com.google.android.gms/.plus.audience.AclSelectionActivity
pm disable com.google.android.gms/.plus.audience.AudienceSearchActivity
pm disable com.google.android.gms/.plus.audience.CircleCreationActivity
pm disable com.google.android.gms/.plus.audience.CircleSelectionActivity
pm disable com.google.android.gms/.plus.audience.FaclSelectionActivity
pm disable com.google.android.gms/.plus.audience.UpdateActionOnlyActivity
pm disable com.google.android.gms/.plus.audience.UpdateCirclesActivity
pm disable com.google.android.gms/.plus.circles.AddToCircleConsentActivity
pm disable com.google.android.gms/.plus.oob.PlusActivity
pm disable com.google.android.gms/.plus.oob.UpgradeAccountActivity
pm disable com.google.android.gms/.plus.oob.UpgradeAccountInfoActivity
pm disable com.google.android.gms/.plus.plusone.PlusOneActivity
pm disable com.google.android.gms/.plus.sharebox.AddToCircleActivity
pm disable com.google.android.gms/.plus.sharebox.ReplyBoxActivity
pm disable com.google.android.gms/.plus.sharebox.ShareBoxActivity
pm disable com.google.android.gms/.plus.ui.DpadNavigableWebViewActivity


pm disable com.google.android.gms/.games.AddAccountActivity
pm disable com.google.android.gms/.games.InstallPlayGamesActivity
pm disable com.google.android.gms/.games.PlayGamesUpgradeActivity
pm disable com.google.android.gms/.games.ui.ingame.FeatureNotAvailableActivity
pm disable com.google.android.gms/.games.ui.profile.CreateProfileActivity
pm disable com.google.android.gms/.games.ui.promotions.InGamePromotionsActivity
pm disable com.google.android.gms/.games.ui.settings.GamesSettingsActivity
pm disable com.google.android.gms/.games.ui.settingsv2.GamesSettingsActivity
pm disable com.google.android.gms/.games.ui.signinflow.SignInActivity
pm disable com.google.android.gms/.games.ui.upsell.InGameUiProxyActivity
pm disable com.google.android.gms/.games.ui.upsell.InstallPlayGamesActivity
pm disable com.google.android.gms/.games.ui.video.ScreenCaptureRequestActivity

pm disable com.google.android.gms/.cast.activity.CastPopupActivity

pm disable com.google.android.gms/.findmydevice.spot.deeplinks.DeepLinkActivity
pm disable com.google.android.gms/.mdm.settings.FindMyDeviceSettingsActivity

pm disable com.google.android.gms/.mdm.services.MdmPhoneWearableListenerService

pm disable com.google.android.gms/.usagereporting.settings.UsageReportingActivity
pm disable com.google.android.gms/.usagereporting.ui.UsageReportingDebugActivity
pm disable com.google.android.gms/.usagereporting.ui.UsageReportingDialogActivity

pm disable com.google.android.gms/.pay.deeplink.AliasAddSignUpValuablesDeepLinkActivity
pm disable com.google.android.gms/.pay.deeplink.AliasSaveValuablesDeepLinkActivity
pm disable com.google.android.gms/.pay.deeplink.AliasViewValuablesDetailsDeepLinkActivity
pm disable com.google.android.gms/.pay.deeplink.DeepLinkActivity
pm disable com.google.android.gms/.pay.main.PayActivity
pm disable com.google.android.gms/.pay.main.PayOptionalActivity
pm disable com.google.android.gms/.tapandpay.account.SelectAccountActivity
pm disable com.google.android.gms/.tapandpay.admin.DeviceAdminPromptActivity
pm disable com.google.android.gms/.tapandpay.diagnostics.TapDiagnosticsActivity
pm disable com.google.android.gms/.tapandpay.issuer.RequestDeleteTokenActivity
pm disable com.google.android.gms/.tapandpay.issuer.RequestSelectTokenActivity
pm disable com.google.android.gms/.tapandpay.issuer.RequestTokenizeActivity
pm disable com.google.android.gms/.tapandpay.keyguard.KeyguardSecurityInfoActivity
pm disable com.google.android.gms/.tapandpay.settings.NotificationSettingsActivity
pm disable com.google.android.gms/.tapandpay.settings.SelectOtherPaymentMethodActivity
pm disable com.google.android.gms/.tapandpay.settings.SelectUntokenizedCardActivity
pm disable com.google.android.gms/.tapandpay.settings.TapAndPaySettingsActivity
pm disable com.google.android.gms/.tapandpay.tap.TapKeyguardActivity
pm disable com.google.android.gms/.tapandpay.tap.TapUiActivity
pm disable com.google.android.gms/.tapandpay.tokenization.AcceptGooglePayTosActivity
pm disable com.google.android.gms/.tapandpay.tokenization.AcceptTosActivity
pm disable com.google.android.gms/.tapandpay.tokenization.AddNewCardForTokenizationActivity
pm disable com.google.android.gms/.tapandpay.tokenization.AddNewCardThroughBrowserActivity
pm disable com.google.android.gms/.tapandpay.tokenization.EnableNfcActivity
pm disable com.google.android.gms/.tapandpay.tokenization.EnterVerificationCodeActivity
pm disable com.google.android.gms/.tapandpay.tokenization.NameResolutionActivity
pm disable com.google.android.gms/.tapandpay.tokenization.SelectVerificationMethodActivity
pm disable com.google.android.gms/.tapandpay.tokenization.SummaryActivity
pm disable com.google.android.gms/.tapandpay.tokenization.TokenizePanActivity
pm disable com.google.android.gms/.tapandpay.tokenization.UnsupportedCardActivity
pm disable com.google.android.gms/.tapandpay.transaction.WalletTransactionDetailsActivity
pm disable com.google.android.gms/.tapandpay.ui.EnableSecureKeyguardActivity
pm disable com.google.android.gms/.tapandpay.ui.PromptSetupActivity
pm disable com.google.android.gms/.tapandpay.ui.SecureDeviceActivity
pm disable com.google.android.gms/.tapandpay.ui.ShowSecurityPromptActivity
pm disable com.google.android.gms/.tapandpay.ui.TokenizationSuccessActivity
pm disable com.google.android.gms/.tapandpay.ui.WarmWelcomeActivity
pm disable com.google.android.gms/.tapandpay.wear.WearProxyActivity
pm disable com.google.android.gms/.tapandpay.wear.WearProxyCompanionActivity
pm disable com.google.android.gms/.tapandpay.wear.dialog.WearSecureKeyguardDialogActivity
pm disable com.google.android.gms/.tapandpay.wear.dialog.WearTapAndPayDialogActivity
pm disable com.google.android.gms/.wallet.activity.GenericDelegatorActivity
pm disable com.google.android.gms/.wallet.activity.OrchestrationDelegatorActivity
pm disable com.google.android.gms/.wallet.bender3.Bender3FinishRedirectProxyActivity
pm disable com.google.android.gms/.wallet.common.ui.UpdateCallingAppActivity
pm disable com.google.android.gms/.wallet.ib.IbPaymentRequestCompatActivity
pm disable com.google.android.gms/.wallet.idcredit.IdCreditActivity
pm disable com.google.android.gms/.wallet.im.ImRootActivity
pm disable com.google.android.gms/.wallet.ow.ChooseAccountShimActivity
pm disable com.google.android.gms/.wallet.ow.ChooseAccountShimInternalActivity
pm disable com.google.android.gms/.wallet.paymentmethods.PaymentMethodsActivity
pm disable com.google.android.gms/.wallet.pm.pmRootActivity
pm disable com.google.android.gms/.wallet.redirect.FinishAndroidAppRedirectProxyActivity
pm disable com.google.android.gms/.wallet.selector.InitializeGenericSelectorRootActivity
pm disable com.google.android.gms/.wallet.setupwizard.PaymentsSetupWizardActivity
pm disable com.google.android.gms/.wallet.setupwizard.PaymentsSetupWizardMainActivity
pm disable com.google.android.gms/.wallet.setupwizard.PaymentsSetupWizardPortalActivity
pm disable com.google.android.gms/.wallet.setupwizard.PaymentsSetupWizardReactivationActivity
pm disable com.google.android.gms/.wallet.setupwizard.PaymentsSetupWizardTokenEligibleActivity
pm disable com.google.android.gms/.wallet.timelineview.TimeLineViewActivity
pm disable com.google.android.gms/.walletp2p.feature.completion.CompleteMoneyTransferActivity
pm disable com.google.android.gms/.walletp2p.feature.transfer.TransferMoneyActivity



# Providers
pm disable com.google.android.gms/.nearby.discovery.fastpair.slice.FastPairContextualCardProvider
pm disable com.google.android.gms/.nearby.discovery.fastpair.slice.FastPairSliceProvider
pm disable com.google.android.gms/.nearby.sharing.SharingSliceProvider

pm disable com.google.android.gms/.fitness.sync.FitnessContentProvider

pm disable com.google.android.gms/.ads.adinfo.AdvertisingInfoContentProvider

pm disable com.google.android.gms/.games.chimera.GamesContentProviderProxy
pm disable com.google.android.gms/.games.provider.NotificationStubContentProvider

pm disable com.google.android.gms/.plus.provider.PlusProvider

pm disable com.google.android.gms/.phenotype.provider.ConfigurationProvider

pm disable com.google.android.gms/.wallet.setupwizard.PaymentsSetupWizardSuggestionStateProvider

# Receivers
pm disable com.google.android.gms/.kids.account.receiver.ProfileOwnerReceiver

pm disable com.google.android.gms/.nearby.discovery.fastpair.slice.FastPairContextualCardProvider

pm disable com.google.android.gms/.googlehelp.GcmBroadcastReceiver

pm disable com.google.android.gms/.ads.config.FlagsReceiver

pm disable com.google.android.gms/.analytics.AnalyticsReceiver

pm disable com.google.android.gms/.games.chimera.GamesSystemBroadcastReceiverProxy
pm disable com.google.android.gms/.games.chimera.InternalIntentReceiverProxy

pm disable com.google.android.gms/.phenotype.service.FlagOverrideReceiver
pm disable com.google.android.gms/com.google.android.libraries.phenotype.client.stable.AccountRemovedBroadcastReceiver

pm disable com.google.android.gms/.pay.notifications.GcmBroadcastReceiver
pm disable com.google.android.gms/.tapandpay.admin.TpDeviceAdminReceiver
pm disable com.google.android.gms/.tapandpay.notifications.GcmBroadcastReceiver

pm disable com.google.android.gms/.stats.service.DropBoxEntryAddedReceiver

# Services
pm disable com.google.android.gms/.kids.GcmReceiverService
pm disable com.google.android.gms/.kids.JobService
pm disable com.google.android.gms/.kids.SecondaryLockscreenService
pm disable com.google.android.gms/.kids.SupervisionService
pm disable com.google.android.gms/.kids.chimera.KidsServiceProxy

pm disable com.google.android.gms/.nearby.bootstrap.service.NearbyBootstrapService
pm disable com.google.android.gms/.nearby.connection.service.NearbyConnectionsAndroidService ##
pm disable com.google.android.gms/.nearby.discovery.service.DiscoveryService
pm disable com.google.android.gms/.nearby.exposurenotification.WakeUpService
pm disable com.google.android.gms/.nearby.exposurenotification.service.ExposureMatchingService
pm disable com.google.android.gms/.nearby.exposurenotification.service.ExposureMatchingTriggerService
pm disable com.google.android.gms/.nearby.exposurenotification.service.ExposureNotificationInternalService
pm disable com.google.android.gms/.nearby.fastpair.service.WearableDataListenerService
pm disable com.google.android.gms/.nearby.mediums.nearfieldcommunication.NfcAdvertisingService
pm disable com.google.android.gms/.nearby.mediums.nearfieldcommunication.NfcAdvertisingService
pm disable com.google.android.gms/.nearby.messages.debug.DebugPokeService
pm disable com.google.android.gms/.nearby.messages.offline.OfflineCachingService
pm disable com.google.android.gms/.nearby.messages.service.NearbyMessagesService
pm disable com.google.android.gms/.nearby.sharing.DirectShareService
pm disable com.google.android.gms/.nearby.sharing.ReceiveSurfaceService
pm disable com.google.android.gms/.nearby.sharing.SharingSyncService
pm disable com.google.android.gms/.nearby.sharing.SharingTileService

pm disable com.google.android.gms/.chimera.CarBoundBrokerService
pm disable com.google.android.gms/.chimera.CastPersistentBoundBrokerService

pm disable com.google.android.gms/.fitness.cache.DataUpdateListenerCacheService
pm disable com.google.android.gms/.fitness.sensors.sample.CollectSensorService
pm disable com.google.android.gms/.fitness.service.ble.FitBleBroker
pm disable com.google.android.gms/.fitness.service.config.FitConfigBroker
pm disable com.google.android.gms/.fitness.service.goals.FitGoalsBroker
pm disable com.google.android.gms/.fitness.service.history.FitHistoryBroker
pm disable com.google.android.gms/.fitness.service.internal.FitInternalBroker
pm disable com.google.android.gms/.fitness.service.proxy.FitProxyBroker
pm disable com.google.android.gms/.fitness.service.recording.FitRecordingBroker
pm disable com.google.android.gms/.fitness.service.sensors.FitSensorsBroker
pm disable com.google.android.gms/.fitness.service.sessions.FitSessionsBroker
pm disable com.google.android.gms/.fitness.service.wearable.WearableSyncAccountService
pm disable com.google.android.gms/.fitness.service.wearable.WearableSyncConfigService
pm disable com.google.android.gms/.fitness.service.wearable.WearableSyncConnectionService
pm disable com.google.android.gms/.fitness.service.wearable.WearableSyncMessageService
pm disable com.google.android.gms/.fitness.sync.FitnessSyncAdapterService
pm disable com.google.android.gms/.fitness.sync.SyncGcmTaskService
pm disable com.google.android.gms/.fitness.wearables.WearableSyncService

pm disable com.google.android.gms/.wearable.service.WearableService

pm disable com.google.android.gms/.feedback.FeedbackAsyncService
pm disable com.google.android.gms/.feedback.LegacyBugReportService
pm disable com.google.android.gms/.feedback.OfflineReportSendTaskService

pm disable com.google.android.gms/.googlehelp.contact.chat.ChatRequestAndConversationService
pm disable com.google.android.gms/.googlehelp.gcm.InvalidateGcmTokenGcmTaskService
pm disable com.google.android.gms/.googlehelp.metrics.ReportBatchedMetricsGcmTaskService
pm disable com.google.android.gms/.googlehelp.service.GoogleHelpService

pm disable com.google.android.gms/.ads.AdRequestBrokerService ##
pm disable com.google.android.gms/.ads.GservicesValueBrokerService
pm disable com.google.android.gms/.ads.cache.CacheBrokerService ##
pm disable com.google.android.gms/.ads.identifier.service.AdvertisingIdNotificationService
pm disable com.google.android.gms/.ads.identifier.service.AdvertisingIdService ##
pm disable com.google.android.gms/.ads.jams.NegotiationService
pm disable com.google.android.gms/.ads.measurement.GmpConversionTrackingBrokerService
pm disable com.google.android.gms/.ads.social.GcmSchedulerWakeupService

pm disable com.google.android.gms/.analytics.AnalyticsService
pm disable com.google.android.gms/.analytics.AnalyticsTaskService ##
pm disable com.google.android.gms/.analytics.internal.PlayLogReportingService
pm disable com.google.android.gms/.analytics.service.AnalyticsService

pm disable com.google.android.gms/.plus.service.DefaultIntentService
pm disable com.google.android.gms/.plus.service.ImageIntentService
pm disable com.google.android.gms/.plus.service.OfflineActionSyncAdapterService
pm disable com.google.android.gms/.plus.service.PlusService

pm disable com.google.android.gms/.games.chimera.GamesAndroidServiceProxy
pm disable com.google.android.gms/.games.chimera.GamesAsyncServiceProxy
pm disable com.google.android.gms/.games.chimera.GamesSignInIntentServiceProxy
pm disable com.google.android.gms/.games.chimera.GamesSignInServiceProxy
pm disable com.google.android.gms/.games.chimera.GamesSyncServiceMainProxy
pm disable com.google.android.gms/.games.chimera.GamesSyncServiceNotificationProxy
pm disable com.google.android.gms/.games.chimera.GamesUploadServiceProxy
pm disable com.google.android.gms/.games.chimera.RoomAndroidServiceProxy
pm disable com.google.android.gms/.games.chimera.SnapshotEventServiceProxy

pm disable com.google.android.gms/.photos.autobackup.service.AutoBackupService

pm disable com.google.android.gms/.measurement.service.MeasurementBrokerService

pm disable com.google.android.gms/.cast.media.CastMediaRoute2ProviderService
pm disable com.google.android.gms/.cast.media.CastMediaRoute2ProviderService_Isolated
pm disable com.google.android.gms/.cast.media.CastMediaRoute2ProviderService_Persistent
pm disable com.google.android.gms/.cast.media.CastMediaRouteProviderService
pm disable com.google.android.gms/.cast.media.CastMediaRouteProviderService_Isolated
pm disable com.google.android.gms/.cast.media.CastMediaRouteProviderService_Persistent
pm disable com.google.android.gms/.cast.media.CastRemoteDisplayProviderService
pm disable com.google.android.gms/.cast.media.CastRemoteDisplayProviderService_Isolated
pm disable com.google.android.gms/.cast.media.CastRemoteDisplayProviderService_Persistent
pm disable com.google.android.gms/.cast.service.CastPersistentService
pm disable com.google.android.gms/.cast.service.CastPersistentService_Isolated
pm disable com.google.android.gms/.cast.service.CastPersistentService_Persistent
pm disable com.google.android.gms/.cast.service.CastSocketMultiplexerLifeCycleService
pm disable com.google.android.gms/.cast.service.CastSocketMultiplexerLifeCycleService_Isolated
pm disable com.google.android.gms/.cast.service.CastSocketMultiplexerLifeCycleService_Persistent

pm disable com.google.android.gms/.chimera.GmsIntentOperationService ## bug log flood

pm disable com.google.android.gms/.common.config.PhenotypeCheckinService
pm disable com.google.android.gms/.phenotype.gcm.GcmReceiverService
pm disable com.google.android.gms/.phenotype.service.sync.PackageUpdateTaskService
pm disable com.google.android.gms/.phenotype.service.sync.PhenotypeConfigurator
pm disable com.google.android.gms/com.google.android.libraries.phenotype.registration.PhenotypeMetadataHolderService

pm disable com.google.android.gms/.usagereporting.service.UsageReportingIntentService

pm disable com.google.android.gms/.pay.gcmtask.PayGcmTaskService
pm disable com.google.android.gms/.pay.hce.service.PayHceService
pm disable com.google.android.gms/.pay.notifications.PayNotificationService
pm disable com.google.android.gms/.pay.security.storagekey.service.StorageKeyCacheService
pm disable com.google.android.gms/.tapandpay.gcmtask.TapAndPayGcmTaskService
pm disable com.google.android.gms/.tapandpay.globalactions.QuickAccessWalletService
pm disable com.google.android.gms/.tapandpay.hce.service.TpHceService
pm disable com.google.android.gms/.tapandpay.security.StorageKeyCacheService
pm disable com.google.android.gms/.tapandpay.tokenization.TokenizePanService
pm disable com.google.android.gms/.tapandpay.wear.WearProxyService
pm disable com.google.android.gms/.wallet.service.PaymentService
pm disable com.google.android.gms/.wallet.service.WalletGcmTaskService
pm disable com.google.android.gms/.wallet.service.address.AddressService

pm disable com.google.android.gms/.backup.stats.BackupStatsService
pm disable com.google.android.gms/.common.stats.StatsUploadService
pm disable com.google.android.gms/.common.stats.net.NetworkReportService
pm disable com.google.android.gms/.stats.PlatformStatsCollectorService
pm disable com.google.android.gms/.stats.service.DropBoxEntryAddedService
pm disable com.google.android.gms/.chimera.GmsIntentOperationService
sleep 2
clear
echo "
######################## FINISH #######################

    Press ENTER to return to START"
read -r a
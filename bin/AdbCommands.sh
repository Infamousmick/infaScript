#!/bin/sh
clear
echo "
###################### ADB COMMANDS ######################

                Press ENTER to start
"
read -r a
echo "Running ADB commands"
adb shell settings put global adaptive_battery_management_enabled 0
adb shell settings put global cached_apps_freezer enabled
adb shell settings put global sem_low_power_mode 1
adb shell settings put global ram_expand_size 0
adb shell settings put global swap_enabled 0
adb shell settings put global zram_enabled 0
adb shell settings put secure adaptive_sleep 0
adb shell settings put secure aware_enabled 0
adb shell settings put secure aware_lock_enabled 0
adb shell settings put global ambient_enabled 0
adb shell settings put global ambient_tilt_to_wake 0
adb shell settings put global ambient_touch_to_wake 0
adb shell settings put global aware_allowed 0
adb shell settings put global enable_back_animation 1
adb shell settings put global google_core_control 0
adb shell settings put global hotword_detection_enabled 0
adb shell settings put global ble_scan_always_enabled 0
adb shell settings put global data_roaming 0
adb shell settings put global mobile_data_always_on 0
adb shell settings put global mobile_signal_detector 0
adb shell settings put global network_avoid_bad_wifi 0
adb shell settings put global network_recommendations_enabled 0
adb shell settings put global network_scoring_ui_enabled 0
adb shell settings put global private_dns_specifier dns.adguard.com
adb shell settings put global sem_wifi_network_rating_scorer_enabled 0
adb shell settings put global sem_wifi_switch_to_better_wifi_enabled 0
adb shell settings put global sem_wifi_switch_to_better_wifi_supported 0
adb shell settings put global wifi_scan_always_enabled 0
adb shell settings put system ltw_connected 0
adb shell settings put system ltw_smartview_connected 0
adb shell settings put system multi_control_enabled 0
adb shell settings put system remote_control 0
adb shell settings put system samsung_errorlog_agree 0
adb shell settings put secure wifi_ap_powersave_mode_checked 1
adb shell settings put global online_manual_url 0
adb shell settings put global auto_wifi 0
adb shell settings put global bug_report 0
adb shell settings put global debug_app 0
adb shell settings put global uwb_enabled 0
adb shell settings put global wait_for_debugger 0
adb shell settings put global app_standby_enabled 1
adb shell settings put global bluetooth_sanitized_exposure_notification_supported 0
adb shell settings put global burn_in_protection 1
adb shell settings put global call_reminder false
adb shell settings put global protect_battery 1
echo "COMANDI PLUS BATTERY"
adb shell settings put global adaptive_battery_management_enabled 0
adb shell settings put global app_standby_enabled 1
adb shell settings put global cached_apps_freezer enabled
adb shell settings put global enhanced_processing 0
adb shell settings put global sem_enhanced_cpu_responsiveness 0
echo "CONNECTIONS"
adb shell settings put system direct_share 0
adb shell settings put system ltw_connected 0
adb shell settings put system mcf_continuity 0
adb shell settings put system mcf_permission_denied 1
adb shell settings put system mcf_continuity_nearby_device_state 0
adb shell settings put system multi_control_enabled 0
adb shell settings put system nearby_scanning_enabled 0
adb shell settings put system nearby_scanning_permission_allowed 0
adb shell settings put system quickshare_enabled 0
adb shell settings put secure multi_control_connection_state 0
adb shell settings put global uwb_enabled 0
echo "DISPLAY"
adb shell wm reset
adb shell settings put system hdr_effect 0
adb shell settings put system screen_mode_setting 0
adb shell settings put global screen_mode 0
adb shell settings put system time_12_24 24
adb shell settings put secure accessibility_captioning_font_scale 0.7
adb shell settings put global animator-duration_scale 0.5
adb shell settings put secure brightness_on_top 1
adb shell settings put secure odi_captions_volume_ui_enabled 0
adb shell settings put global transition_animation_scale 0.5
adb shell settings put global window_animation_scale 0.5
echo "FEEDBACK"
adb shell settings put system camera_feedback_vibrate 0
adb shell settings put system dialing_keypad_vibrate 0
adb shell settings put system dtmf_tone 0
adb shell settings put system haptic_feedback_enabled 1
adb shell settings put system lockscreen_sounds_enabled 0
adb shell settings put system navigation_gestures_vibrate 0
adb shell settings put system SEM_VIBRATION_FORCE_TOUCH_INTENSITY 0
adb shell settings put system SEM_VIBRATION_NOTIFICATION_INTENSITY 1
adb shell settings put system SEM_VIBRATION_RING_INTENSITY 2
adb shell settings put system sound_effects_enabled 0
adb shell settings put system sync_vibration_with_notification 1
adb shell settings put system sync_vibration_with_ringtone 1
adb shell settings put system vibrate_when_ringing 1
adb shell settings put system vibration_sound_enabled 0
adb shell settings put system VIB_FEEDBACK_MAGNITUDE 0
adb shell settings put system VIB_RECVCALL_MAGNITUDE 5
adb shell settings put secure charging_sounds_enabled 1
adb shell settings put secure charging_vibration_enabled 1
adb shell settings put global emergency_tone 0
adb shell settings put global power_sounds_enabled 0
echo "FINGERPRINT"
adb shell settings put secure fingerprint_always_on 0
adb shell settings put secure fingerprint_effect 0
adb shell settings put system screen_transition_effect 0
echo "GESTURES"
adb shell settings put system double_tab_to_wake_up 0
adb shell settings put system double_tap_to_sleep 0
adb shell settings put system lift_to_wake 0
adb shell settings put system master_motion 0
adb shell settings put system motion_engine 0
adb shell settings put system surface_palm_swipe 0
adb shell settings put system surface_palm_touch 0
adb shell settings put secure back_gesture_inset_scale_left 0.75
adb shell settings put secure back_gesture_inset_scale_right 0.75
adb shell settings put secure double_tap_to_wake 0
adb shell settings put secure hush_gesture_used 0
adb shell settings put secure one_handed_mode_activated 0
adb shell settings put secure one_handed_mode_enabled 0
adb shell settings put secure skip_gesture 0
adb shell settings put secure silence_gesture 0
adb shell settings put secure volume_hush_gesture 0
adb shell settings put secure wake_gesture_enabled 0
adb shell settings put global enable_back_animation 1
adb shell settings put global bottom_gesture_inset_scale 1.0
echo "GOOGLE"
adb shell settings put system gearhead:driving_mode_settings_enabled 0
adb shell settings put secure assistant 0
adb shell settings put secure smartspace 0
adb shell settings put global google_core_control 0
echo "LOCATION"
adb shell settings put global assisted_gps_enabled 0
adb shell settings put global ble_scan_always_enabled 0
adb shell settings put global wifi_scan_always_enabled 1
echo "LOCKSCREEN"
adb shell settings put system aod_charging_mode 0
adb shell settings put system aod_mode 0
adb shell settings put system aod_tap_to_show_mode 0
adb shell settings put system charging_info_always 0
adb shell settings put system lock_editor_support_touch_hold 0
adb shell settings put system lock_noticard_opacity 0
adb shell settings put system lockscreen_show_shortcut 0
adb shell settings put secure lock_screen_allow_private_notifications 1
adb shell settings put secure lock_screen_show_notifications 1
adb shell settings put secure lock_screen_lock_after_timeout 0
adb shell settings put secure lock_screen_show_silent_notifications 0
echo "MEDIA"
adb shell settings put system sound_alive_effect 0
adb shell settings put system tube_amp_effect 0
adb shell settings put global multisound_state 0
adb shell cmd device_config put netd_native doh 1
echo "NETWORK"
adb shell settings put secure data_preferred_mode_during_calling 0
adb shell settings put global mobile_data_always_on 0
adb shell settings put global mobile_signal_detector 0
adb shell settings put global network_avoid_bad_wifi 0
adb shell settings put global network_recommendations_enabled 0
adb shell settings put global network_scoring_ui_enabled 0
adb shell settings put global wifi_networks_available_notification_on 0
adb shell settings put global wifi_scan_always_enabled 0
echo "NOTIFICATION AND QUICK"
adb shell settings put secure brightness_on_top 1
adb shell settings put secure qspanel_media_quickcontrol_bar_available 0
adb shell settings put secure qspanel_media_quickcontrol_bar_available_on_top 0
echo PERFOMANCE
adb shell settings put secure long_press_timeout 250
adb shell settings put secure multi_press_timeout 250
adb shell settings put global accessibility_reduce_transparency 1
adb shell settings put global animator_duration_scale 0.5
adb shell settings put global transition_animation_scale 0.5
adb shell settings put global window_animation_scale 0.5
adb shell settings put global ram_expand_size 0
adb shell settings put global ram_expand_size_list 0,1,2,4,8
adb shell settings put global zram_enabled 0
echo "SAMSUNG"
adb shell settings put system cocktail_bar_enabled_cocktails 0
adb shell settings put system enable_smart_capture 1
adb shell settings put system epdg_support1 0
adb shell settings put system fmm_notification_other 0
adb shell settings put system display_night_theme 1
adb shell settings put system remote_control 0
adb shell settings put system samsung_errorlog_agree 0
adb shell settings put system samsung_eula_agree 1
adb shell settings put system samsung_eula_agree_hqm 1
adb shell settings put secure fmm_community_finding 0
adb shell settings put secure fmm_unlock_recovery 0
adb shell settings put secure friends_plugin_connected 0
adb shell settings put secure game_auto_temperature_control 0
adb shell settings put secure game_home_enable 1
adb shell settings put secure screen_extra_brightness 1
adb shell settings put global bixby_pregranted_permissions 0
adb shell settings put global edge_enable 0
adb shell settings put global galaxy_system_update_block 0
adb shell settings put global online_manual_url 0
adb shell settings put global smart_replies_enabled 0
echo "SCREENSAVER"
adb shell settings put secure screensaver_enabled 0
adb shell settings put secure screensaver_activate_on_sleep 0
adb shell settings put secure screensaver_activate_on_dock 0
echo "SMART CALL"
adb shell settings put system call_extra_volume 1
adb shell settings put system call_noise_reduction 1
adb shell settings put system call_answer_vib 1
adb shell settings put system call_end_vib 1
adb shell settings put system call_extra_volume 1
adb shell settings put system call_noise_reduction 1
adb shell settings put system call_popup 1
adb shell settings put global swipe_to_call_message 1
echo "SYSTEM"
adb shell settings put system access_control_enabled 0
adb shell settings put system screen_off_pocket 0
adb shell settings put system send_security_reports 0
adb shell settings put secure install_non_market_apps 1
adb shell settings put secure package_verifier_state 0
adb shell settings put global art_verifier_verify_debuggable 0
adb shell settings put global verifier_verify_adb_installs 0
echo "
######################    FINISH    ######################

                Press ENTER to return to START
"
read -r a
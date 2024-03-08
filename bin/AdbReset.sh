#!/bin/bash

adbreset() {
    clear
    printf "
    ${RESET}${txtbgrst}${BLUE}${BOLD}########## ADB RESET ##########${WHITE}${BOLD}
        ${RESET}${txtinv}${BOLD}Press ENTER to start${RESET}
    "
    read -r a
        printf "Running ADB Reset"
    read -r a
    adb shell settings delete global adaptive_battery_management_enabled 0
    adb shell settings delete global cached_apps_freezer enabled
    adb shell settings delete global sem_low_power_mode 1
    adb shell settings delete global ram_expand_size 0
    adb shell settings delete global swap_enabled 0
    adb shell settings delete global zram_enabled 0
    adb shell settings delete secure adaptive_sleep 0
    adb shell settings delete secure aware_enabled 0
    adb shell settings delete secure aware_lock_enabled 0
    adb shell settings delete global ambient_enabled 0
    adb shell settings delete global ambient_tilt_to_wake 0
    adb shell settings delete global ambient_touch_to_wake 0
    adb shell settings delete global aware_allowed 0
    adb shell settings delete global enable_back_animation 1
    adb shell settings delete global google_core_control 0
    adb shell settings delete global hotword_detection_enabled 0
    adb shell settings delete global ble_scan_always_enabled 0
    adb shell settings delete global data_roaming 0
    adb shell settings delete global mobile_data_always_on 0
    adb shell settings delete global mobile_signal_detector 0
    adb shell settings delete global network_avoid_bad_wifi 0
    adb shell settings delete global network_recommendations_enabled 0
    adb shell settings delete global network_scoring_ui_enabled 0
    adb shell settings delete global private_dns_specifier dns.adguard.com
    adb shell settings delete global sem_wifi_network_rating_scorer_enabled 0
    adb shell settings delete global sem_wifi_switch_to_better_wifi_enabled 0
    adb shell settings delete global sem_wifi_switch_to_better_wifi_supported 0
    adb shell settings delete global wifi_scan_always_enabled 0
    adb shell settings delete system ltw_connected 0
    adb shell settings delete system ltw_smartview_connected 0
    adb shell settings delete system multi_control_enabled 0
    adb shell settings delete system remote_control 0
    adb shell settings delete system samsung_errorlog_agree 0
    adb shell settings delete secure wifi_ap_powersave_mode_checked 1
    adb shell settings delete global online_manual_url 0
    adb shell settings delete global auto_wifi 0
    adb shell settings delete global bug_report 0
    adb shell settings delete global debug_app 0
    adb shell settings delete global uwb_enabled 0
    adb shell settings delete global wait_for_debugger 0
    adb shell settings delete global app_standby_enabled 1
    adb shell settings delete global bluetooth_sanitized_exposure_notification_supported 0
    adb shell settings delete global burn_in_protection 1
    adb shell settings delete global call_reminder false
    adb shell settings delete global protect_battery 1
    echo "MORE BATTERY"
    adb shell settings delete global adaptive_battery_management_enabled 0
    adb shell settings delete global app_standby_enabled 1
    adb shell settings delete global cached_apps_freezer enabled
    adb shell settings delete global enhanced_processing 0
    adb shell settings delete global sem_enhanced_cpu_responsiveness 0
    echo "CONNECTIONS"
    adb shell settings delete system direct_share 0
    adb shell settings delete system ltw_connected 0
    adb shell settings delete system mcf_continuity 0
    adb shell settings delete system mcf_permission_denied 1
    adb shell settings delete system mcf_continuity_nearby_device_state 0
    adb shell settings delete system multi_control_enabled 0
    adb shell settings delete system nearby_scanning_enabled 0
    adb shell settings delete system nearby_scanning_permission_allowed 0
    adb shell settings delete system quickshare_enabled 0
    adb shell settings delete secure multi_control_connection_state 0
    adb shell settings delete global uwb_enabled 0
    echo "DISPLAY"
    adb shell wm reset
    adb shell settings delete system hdr_effect 0
    adb shell settings delete system screen_mode_setting 0
    adb shell settings delete global screen_mode 0
    adb shell settings delete system time_12_24 24
    adb shell settings delete secure accessibility_captioning_font_scale 0.7
    adb shell settings delete global animator-duration_scale 0.5
    adb shell settings delete secure brightness_on_top 1
    adb shell settings delete secure odi_captions_volume_ui_enabled 0
    adb shell settings delete global transition_animation_scale 0.5
    adb shell settings delete global window_animation_scale 0.5
    echo "FEEDBACK"
    adb shell settings delete system camera_feedback_vibrate 0
    adb shell settings delete system dialing_keypad_vibrate 0
    adb shell settings delete system dtmf_tone 0
    adb shell settings delete system haptic_feedback_enabled 1
    adb shell settings delete system lockscreen_sounds_enabled 0
    adb shell settings delete system navigation_gestures_vibrate 0
    adb shell settings delete system SEM_VIBRATION_FORCE_TOUCH_INTENSITY 0
    adb shell settings delete system SEM_VIBRATION_NOTIFICATION_INTENSITY 1
    adb shell settings delete system SEM_VIBRATION_RING_INTENSITY 2
    adb shell settings delete system sound_effects_enabled 0
    adb shell settings delete system sync_vibration_with_notification 1
    adb shell settings delete system sync_vibration_with_ringtone 1
    adb shell settings delete system vibrate_when_ringing 1
    adb shell settings delete system vibration_sound_enabled 0
    adb shell settings delete system VIB_FEEDBACK_MAGNITUDE 0
    adb shell settings delete system VIB_RECVCALL_MAGNITUDE 5
    adb shell settings delete secure charging_sounds_enabled 1
    adb shell settings delete secure charging_vibration_enabled 1
    adb shell settings delete global emergency_tone 0
    adb shell settings delete global power_sounds_enabled 0
    echo "FINGERPRINT"
    adb shell settings delete secure fingerprint_always_on 0
    adb shell settings delete secure fingerprint_effect 0
    adb shell settings delete system screen_transition_effect 0
    echo "GESTURES"
    adb shell settings delete system double_tab_to_wake_up 0
    adb shell settings delete system double_tap_to_sleep 0
    adb shell settings delete system lift_to_wake 0
    adb shell settings delete system master_motion 0
    adb shell settings delete system motion_engine 0
    adb shell settings delete system surface_palm_swipe 0
    adb shell settings delete system surface_palm_touch 0
    adb shell settings delete secure back_gesture_inset_scale_left 0.75
    adb shell settings delete secure back_gesture_inset_scale_right 0.75
    adb shell settings delete secure double_tap_to_wake 0
    adb shell settings delete secure hush_gesture_used 0
    adb shell settings delete secure one_handed_mode_activated 0
    adb shell settings delete secure one_handed_mode_enabled 0
    adb shell settings delete secure skip_gesture 0
    adb shell settings delete secure silence_gesture 0
    adb shell settings delete secure volume_hush_gesture 0
    adb shell settings delete secure wake_gesture_enabled 0
    adb shell settings delete global enable_back_animation 1
    adb shell settings delete global bottom_gesture_inset_scale 1.0
    echo "GOOGLE"
    adb shell settings delete system gearhead:driving_mode_settings_enabled 0
    adb shell settings delete secure assistant 0
    adb shell settings delete secure smartspace 0
    adb shell settings delete global google_core_control 0
    echo "LOCATION"
    adb shell settings delete global assisted_gps_enabled 0
    adb shell settings delete global ble_scan_always_enabled 0
    adb shell settings delete global wifi_scan_always_enabled 1
    echo "LOCKSCREEN"
    adb shell settings delete system aod_charging_mode 0
    adb shell settings delete system aod_mode 0
    adb shell settings delete system aod_tap_to_show_mode 0
    adb shell settings delete system charging_info_always 0
    adb shell settings delete system lock_editor_support_touch_hold 0
    adb shell settings delete system lock_noticard_opacity 0
    adb shell settings delete system lockscreen_show_shortcut 0
    adb shell settings delete secure lock_screen_allow_private_notifications 1
    adb shell settings delete secure lock_screen_show_notifications 1
    adb shell settings delete secure lock_screen_lock_after_timeout 0
    adb shell settings delete secure lock_screen_show_silent_notifications 0
    echo "MEDIA"
    adb shell settings delete system sound_alive_effect 0
    adb shell settings delete system tube_amp_effect 0
    adb shell settings delete global multisound_state 0
    adb shell cmd device_config put netd_native doh 1
    echo "NETWORK"
    adb shell settings delete secure data_preferred_mode_during_calling 0
    adb shell settings delete global mobile_data_always_on 0
    adb shell settings delete global mobile_signal_detector 0
    adb shell settings delete global network_avoid_bad_wifi 0
    adb shell settings delete global network_recommendations_enabled 0
    adb shell settings delete global network_scoring_ui_enabled 0
    adb shell settings delete global wifi_networks_available_notification_on 0
    adb shell settings delete global wifi_scan_always_enabled 0
    echo "NOTIFICATION AND QUICK"
    adb shell settings delete secure brightness_on_top 1
    adb shell settings delete secure qspanel_media_quickcontrol_bar_available 0
    adb shell settings delete secure qspanel_media_quickcontrol_bar_available_on_top 0
    echo PERFOMANCE
    adb shell settings delete secure long_press_timeout 250
    adb shell settings delete secure multi_press_timeout 250
    adb shell settings delete global accessibility_reduce_transparency 1
    adb shell settings delete global animator_duration_scale 0.5
    adb shell settings delete global transition_animation_scale 0.5
    adb shell settings delete global window_animation_scale 0.5
    adb shell settings delete global ram_expand_size 0
    adb shell settings delete global ram_expand_size_list 0,1,2,4,8
    adb shell settings delete global zram_enabled 0
    echo "SAMSUNG"
    adb shell settings delete system cocktail_bar_enabled_cocktails 0
    adb shell settings delete system enable_smart_capture 1
    adb shell settings delete system epdg_support1 0
    adb shell settings delete system fmm_notification_other 0
    adb shell settings delete system display_night_theme 1
    adb shell settings delete system remote_control 0
    adb shell settings delete system samsung_errorlog_agree 0
    adb shell settings delete system samsung_eula_agree 1
    adb shell settings delete system samsung_eula_agree_hqm 1
    adb shell settings delete secure fmm_community_finding 0
    adb shell settings delete secure fmm_unlock_recovery 0
    adb shell settings delete secure friends_plugin_connected 0
    adb shell settings delete secure game_auto_temperature_control 0
    adb shell settings delete secure game_home_enable 1
    adb shell settings delete secure screen_extra_brightness 1
    adb shell settings delete global bixby_pregranted_permissions 0
    adb shell settings delete global edge_enable 0
    adb shell settings delete global galaxy_system_update_block 0
    adb shell settings delete global online_manual_url 0
    adb shell settings delete global smart_replies_enabled 0
    echo "SCREENSAVER"
    adb shell settings delete secure screensaver_enabled 0
    adb shell settings delete secure screensaver_activate_on_sleep 0
    adb shell settings delete secure screensaver_activate_on_dock 0
    echo "SMART CALL"
    adb shell settings delete system call_extra_volume 1
    adb shell settings delete system call_noise_reduction 1
    adb shell settings delete system call_answer_vib 1
    adb shell settings delete system call_end_vib 1
    adb shell settings delete system call_extra_volume 1
    adb shell settings delete system call_noise_reduction 1
    adb shell settings delete system call_popup 1
    adb shell settings delete global swipe_to_call_message 1
    echo "SYSTEM"
    adb shell settings delete system access_control_enabled 0
    adb shell settings delete system screen_off_pocket 0
    adb shell settings delete system send_security_reports 0
    adb shell settings delete secure install_non_market_apps 1
    adb shell settings delete secure package_verifier_state 0
    adb shell settings delete global art_verifier_verify_debuggable 0
    adb shell settings delete global verifier_verify_adb_installs 0
    sleep 2
    printf "
    ${RESET}${txtbgrst}${BLUE}${BOLD}########### FINISH ############${WHITE}${BOLD}
        ${RESET}${txtinv}${BOLD}Press ENTER to return to START${RESET}"
    read -r a
    exit 0
}
adbreset
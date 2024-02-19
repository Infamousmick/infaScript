#!/bin/sh
adbrun() {
clear
echo "
###################### ADB START ######################

                Press ENTER to start
"
read -r a
echo "Running ADB commands"
settings put global adaptive_battery_management_enabled 0
settings put global cached_apps_freezer enabled
settings put global sem_low_power_mode 1
settings put global ram_expand_size 0
settings put global swap_enabled 0
settings put global zram_enabled 0
settings put secure adaptive_sleep 0
settings put secure aware_enabled 0
settings put secure aware_lock_enabled 0
settings put global ambient_enabled 0
settings put global ambient_tilt_to_wake 0
settings put global ambient_touch_to_wake 0
settings put global aware_allowed 0
settings put global enable_back_animation 1
settings put global google_core_control 0
settings put global hotword_detection_enabled 0
settings put global ble_scan_always_enabled 0
settings put global data_roaming 0
settings put global mobile_data_always_on 0
settings put global mobile_signal_detector 0
settings put global network_avoid_bad_wifi 0
settings put global network_recommendations_enabled 0
settings put global network_scoring_ui_enabled 0
settings put global private_dns_specifier dns.adguard.com
settings put global sem_wifi_network_rating_scorer_enabled 0
settings put global sem_wifi_switch_to_better_wifi_enabled 0
settings put global sem_wifi_switch_to_better_wifi_supported 0
settings put global wifi_scan_always_enabled 0
settings put system ltw_connected 0
settings put system ltw_smartview_connected 0
settings put system multi_control_enabled 0
settings put system remote_control 0
settings put system samsung_errorlog_agree 0
settings put secure wifi_ap_powersave_mode_checked 1
settings put global online_manual_url 0
settings put global auto_wifi 0
settings put global bug_report 0
settings put global debug_app 0
settings put global uwb_enabled 0
settings put global wait_for_debugger 0
settings put global app_standby_enabled 1
settings put global bluetooth_sanitized_exposure_notification_supported 0
settings put global burn_in_protection 1
settings put global call_reminder false
settings put global protect_battery 1
echo "MORE BATTERY"
settings put global adaptive_battery_management_enabled 0
settings put global app_standby_enabled 1
settings put global cached_apps_freezer enabled
settings put global enhanced_processing 0
settings put global sem_enhanced_cpu_responsiveness 0
echo "CONNECTIONS"
settings put system direct_share 0
settings put system ltw_connected 0
settings put system mcf_continuity 0
settings put system mcf_permission_denied 1
settings put system mcf_continuity_nearby_device_state 0
settings put system multi_control_enabled 0
settings put system nearby_scanning_enabled 0
settings put system nearby_scanning_permission_allowed 0
settings put system quickshare_enabled 0
settings put secure multi_control_connection_state 0
settings put global uwb_enabled 0
echo "DISPLAY"
wm reset
settings put system hdr_effect 0
settings put system screen_mode_setting 0
settings put global screen_mode 0
settings put system time_12_24 24
settings put secure accessibility_captioning_font_scale 0.7
settings put global animator-duration_scale 0.5
settings put secure brightness_on_top 1
settings put secure odi_captions_volume_ui_enabled 0
settings put global transition_animation_scale 0.5
settings put global window_animation_scale 0.5
echo "FEEDBACK"
settings put system camera_feedback_vibrate 0
settings put system dialing_keypad_vibrate 0
settings put system dtmf_tone 0
settings put system haptic_feedback_enabled 1
settings put system lockscreen_sounds_enabled 0
settings put system navigation_gestures_vibrate 0
settings put system SEM_VIBRATION_FORCE_TOUCH_INTENSITY 0
settings put system SEM_VIBRATION_NOTIFICATION_INTENSITY 1
settings put system SEM_VIBRATION_RING_INTENSITY 2
settings put system sound_effects_enabled 0
settings put system sync_vibration_with_notification 1
settings put system sync_vibration_with_ringtone 1
settings put system vibrate_when_ringing 1
settings put system vibration_sound_enabled 0
settings put system VIB_FEEDBACK_MAGNITUDE 0
settings put system VIB_RECVCALL_MAGNITUDE 5
settings put secure charging_sounds_enabled 1
settings put secure charging_vibration_enabled 1
settings put global emergency_tone 0
settings put global power_sounds_enabled 0
echo "FINGERPRINT"
settings put secure fingerprint_always_on 0
settings put secure fingerprint_effect 0
settings put system screen_transition_effect 0
echo "GESTURES"
settings put system double_tab_to_wake_up 0
settings put system double_tap_to_sleep 0
settings put system lift_to_wake 0
settings put system master_motion 0
settings put system motion_engine 0
settings put system surface_palm_swipe 0
settings put system surface_palm_touch 0
settings put secure back_gesture_inset_scale_left 0.75
settings put secure back_gesture_inset_scale_right 0.75
settings put secure double_tap_to_wake 0
settings put secure hush_gesture_used 0
settings put secure one_handed_mode_activated 0
settings put secure one_handed_mode_enabled 0
settings put secure skip_gesture 0
settings put secure silence_gesture 0
settings put secure volume_hush_gesture 0
settings put secure wake_gesture_enabled 0
settings put global enable_back_animation 1
settings put global bottom_gesture_inset_scale 1.0
echo "GOOGLE"
settings put system gearhead:driving_mode_settings_enabled 0
settings put secure assistant 0
settings put secure smartspace 0
settings put global google_core_control 0
echo "LOCATION"
settings put global assisted_gps_enabled 0
settings put global ble_scan_always_enabled 0
settings put global wifi_scan_always_enabled 1
echo "LOCKSCREEN"
settings put system aod_charging_mode 0
settings put system aod_mode 0
settings put system aod_tap_to_show_mode 0
settings put system charging_info_always 0
settings put system lock_editor_support_touch_hold 0
settings put system lock_noticard_opacity 0
settings put system lockscreen_show_shortcut 0
settings put secure lock_screen_allow_private_notifications 1
settings put secure lock_screen_show_notifications 1
settings put secure lock_screen_lock_after_timeout 0
settings put secure lock_screen_show_silent_notifications 0
echo "MEDIA"
settings put system sound_alive_effect 0
settings put system tube_amp_effect 0
settings put global multisound_state 0
cmd device_config put netd_native doh 1
echo "NETWORK"
settings put secure data_preferred_mode_during_calling 0
settings put global mobile_data_always_on 0
settings put global mobile_signal_detector 0
settings put global network_avoid_bad_wifi 0
settings put global network_recommendations_enabled 0
settings put global network_scoring_ui_enabled 0
settings put global wifi_networks_available_notification_on 0
settings put global wifi_scan_always_enabled 0
echo "NOTIFICATION AND QUICK"
settings put secure brightness_on_top 1
settings put secure qspanel_media_quickcontrol_bar_available 0
settings put secure qspanel_media_quickcontrol_bar_available_on_top 0
echo PERFOMANCE
settings put secure long_press_timeout 250
settings put secure multi_press_timeout 250
settings put global accessibility_reduce_transparency 1
settings put global animator_duration_scale 0.5
settings put global transition_animation_scale 0.5
settings put global window_animation_scale 0.5
settings put global ram_expand_size 0
settings put global ram_expand_size_list 0,1,2,4,8
settings put global zram_enabled 0
echo "SAMSUNG"
settings put system cocktail_bar_enabled_cocktails 0
settings put system enable_smart_capture 1
settings put system epdg_support1 0
settings put system fmm_notification_other 0
settings put system display_night_theme 1
settings put system remote_control 0
settings put system samsung_errorlog_agree 0
settings put system samsung_eula_agree 1
settings put system samsung_eula_agree_hqm 1
settings put secure fmm_community_finding 0
settings put secure fmm_unlock_recovery 0
settings put secure friends_plugin_connected 0
settings put secure game_auto_temperature_control 0
settings put secure game_home_enable 1
settings put secure screen_extra_brightness 1
settings put global bixby_pregranted_permissions 0
settings put global edge_enable 0
settings put global galaxy_system_update_block 0
settings put global online_manual_url 0
settings put global smart_replies_enabled 0
echo "SCREENSAVER"
settings put secure screensaver_enabled 0
settings put secure screensaver_activate_on_sleep 0
settings put secure screensaver_activate_on_dock 0
echo "SMART CALL"
settings put system call_extra_volume 1
settings put system call_noise_reduction 1
settings put system call_answer_vib 1
settings put system call_end_vib 1
settings put system call_extra_volume 1
settings put system call_noise_reduction 1
settings put system call_popup 1
settings put global swipe_to_call_message 1
echo "SYSTEM"
settings put system access_control_enabled 0
settings put system screen_off_pocket 0
settings put system send_security_reports 0
settings put secure install_non_market_apps 1
settings put secure package_verifier_state 0
settings put global art_verifier_verify_debuggable 0
settings put global verifier_verify_adb_installs 0
sleep 2
echo "
######################## FINISH #######################

    Press ENTER to return to START"
read -r a
exit 0
}

adbreset() {
    echo "
###################### ADB RESET ######################


                Press ENTER to start
"
read -r a

echo "Running ADB commands"
settings delete global adaptive_battery_management_enabled
settings delete global cached_apps_freezer
settings delete global sem_low_power_mode
settings delete global ram_expand_size
settings delete global swap_enabled
settings delete global zram_enabled
settings delete secure adaptive_sleep
settings delete secure aware_enabled
settings delete secure aware_lock_enabled
settings delete global ambient_enabled
settings delete global ambient_tilt_to_wake
settings delete global ambient_touch_to_wake
settings delete global aware_allowed
settings delete global enable_back_animation
settings delete global google_core_control
settings delete global hotword_detection_enabled
settings delete global ble_scan_always_enabled
settings delete global data_roaming
settings delete global mobile_data_always_on
settings delete global mobile_signal_detector
settings delete global network_avoid_bad_wifi
settings delete global network_recommendations_enabled
settings delete global network_scoring_ui_enabled
settings delete global private_dns_specifier
settings delete global sem_wifi_network_rating_scorer_enabled
settings delete global sem_wifi_switch_to_better_wifi_enabled
settings delete global sem_wifi_switch_to_better_wifi_supported
settings delete global wifi_scan_always_enabled
settings delete system ltw_connected
settings delete system ltw_smartview_connected
settings delete system multi_control_enabled
settings delete system remote_control
settings delete system samsung_errorlog_agree
settings delete secure wifi_ap_powersave_mode_checked
settings delete global online_manual_url
settings delete global auto_wifi
settings delete global bug_report
settings delete global debug_app
settings delete global uwb_enabled
settings delete global wait_for_debugger
settings delete global app_standby_enabled
settings delete global bluetooth_sanitized_exposure_notification_supported
settings delete global burn_in_protection
settings delete global call_reminder
settings delete global protect_battery
echo "MORE BATTERY"
settings delete global adaptive_battery_management_enabled
settings delete global app_standby_enabled
settings delete global cached_apps_freezer
settings delete global enhanced_processing
settings delete global sem_enhanced_cpu_responsiveness
echo "CONNECTIONS"
settings delete system direct_share
settings delete system ltw_connected
settings delete system mcf_continuity
settings delete system mcf_permission_denied
settings delete system mcf_continuity_nearby_device_state
settings delete system multi_control_enabled
settings delete system nearby_scanning_enabled
settings delete system nearby_scanning_permission_allowed
settings delete system quickshare_enabled
settings delete secure multi_control_connection_state
settings delete global uwb_enabled
echo "DISPLAY"
adb shell wm reset
settings delete system hdr_effect
settings delete system screen_mode_setting
settings delete global screen_mode
settings delete system time_12_24
settings delete secure accessibility_captioning_font_scale
settings delete global animator-duration_scale
settings delete secure brightness_on_top
settings delete secure odi_captions_volume_ui_enabled
settings delete global transition_animation_scale
settings delete global window_animation_scale
echo "FEEDBACK"
settings delete system camera_feedback_vibrate
settings delete system dialing_keypad_vibrate
settings delete system dtmf_tone
settings delete system haptic_feedback_enabled
settings delete system lockscreen_sounds_enabled
settings delete system navigation_gestures_vibrate
settings delete system SEM_VIBRATION_FORCE_TOUCH_INTENSITY
settings delete system SEM_VIBRATION_NOTIFICATION_INTENSITY
settings delete system SEM_VIBRATION_RING_INTENSITY
settings delete system sound_effects_enabled
settings delete system sync_vibration_with_notification
settings delete system sync_vibration_with_ringtone
settings delete system vibrate_when_ringing
settings delete system vibration_sound_enabled
settings delete system VIB_FEEDBACK_MAGNITUDE
settings delete system VIB_RECVCALL_MAGNITUDE
settings delete secure charging_sounds_enabled
settings delete secure charging_vibration_enabled
settings delete global emergency_tone
settings delete global power_sounds_enabled
echo "FINGERPRINT"
settings delete secure fingerprint_always_on
settings delete secure fingerprint_effect
settings delete system screen_transition_effect
echo "GESTURES"
settings delete system double_tab_to_wake_up
settings delete system double_tap_to_sleep
settings delete system lift_to_wake
settings delete system master_motion
settings delete system motion_engine
settings delete system surface_palm_swipe
settings delete system surface_palm_touch
settings delete secure back_gesture_inset_scale_left
settings delete secure back_gesture_inset_scale_right
settings delete secure double_tap_to_wake
settings delete secure hush_gesture_used
settings delete secure one_handed_mode_activated
settings delete secure one_handed_mode_enabled
settings delete secure skip_gesture
settings delete secure silence_gesture
settings delete secure volume_hush_gesture
settings delete secure wake_gesture_enabled
settings delete global enable_back_animation
settings delete global bottom_gesture_inset_scale
echo "GOOGLE"
settings delete system gearhead:driving_mode_settings_enabled
settings delete secure assistant
settings delete secure smartspace
settings delete global google_core_control
echo "LOCATION"
settings delete global assisted_gps_enabled
settings delete global ble_scan_always_enabled
settings delete global wifi_scan_always_enabled
echo "LOCKSCREEN"
settings delete system aod_charging_mode
settings delete system aod_mode 0
settings delete system aod_tap_to_show_mode
settings delete system charging_info_always
settings delete system lock_editor_support_touch_hold
settings delete system lock_noticard_opacity
settings delete system lockscreen_show_shortcut
settings delete secure lock_screen_allow_private_notifications
settings delete secure lock_screen_show_notifications
settings delete secure lock_screen_lock_after_timeout
settings delete secure lock_screen_show_silent_notifications
echo "MEDIA"
settings delete system sound_alive_effect
settings delete system tube_amp_effect
settings delete global multisound_state
adb shell cmd device_config delete netd_native doh
echo "NETWORK"
settings delete secure data_preferred_mode_during_calling
settings delete global mobile_data_always_on
settings delete global mobile_signal_detector
settings delete global network_avoid_bad_wifi
settings delete global network_recommendations_enabled
settings delete global network_scoring_ui_enabled
settings delete global wifi_networks_available_notification_on
settings delete global wifi_scan_always_enabled
echo "NOTIFICATION" AND QUICK
settings delete secure brightness_on_top
settings delete secure qspanel_media_quickcontrol_bar_available
settings delete secure qspanel_media_quickcontrol_bar_available_on_top
echo "PERFOMANCE"
settings delete secure long_press_timeout
settings delete secure multi_press_timeout
settings delete global accessibility_reduce_transparency
settings delete global animator_duration_scale
settings delete global transition_animation_scale
settings delete global window_animation_scale
settings delete global ram_expand_size
settings delete global ram_expand_size_list
settings delete global zram_enabled
echo "SAMSUNG"
settings delete system cocktail_bar_enabled_cocktails
settings delete system enable_smart_capture
settings delete system epdg_support1
settings delete system fmm_notification_other
settings delete system display_night_theme
settings delete system remote_control
settings delete system samsung_errorlog_agree
settings delete system samsung_eula_agree
settings delete system samsung_eula_agree_hqm
settings delete secure fmm_community_finding
settings delete secure fmm_unlock_recovery
settings delete secure friends_plugin_connected
settings delete secure game_auto_temperature_control
settings delete secure game_home_enable
settings delete secure screen_extra_brightness
settings delete global bixby_pregranted_permissions
settings delete global edge_enable
settings delete global galaxy_system_update_block
settings delete global online_manual_url
settings delete global smart_replies_enabled
echo "SCREENSAVER"
settings delete secure screensaver_enabled
settings delete secure screensaver_activate_on_sleep
settings delete secure screensaver_activate_on_dock
echo "SMART CALL"
settings delete system call_extra_volume
settings delete system call_noise_reduction
settings delete system call_answer_vib
settings delete system call_end_vib
settings delete system call_extra_volume
settings delete system call_noise_reduction
settings delete system call_popup
settings delete global swipe_to_call_message
echo "SYSTEM"
settings delete system access_control_enabled
settings delete system screen_off_pocket
settings delete system send_security_reports
settings delete secure install_non_market_apps
settings delete secure package_verifier_state
settings delete global art_verifier_verify_debuggable
settings delete global verifier_verify_adb_installs
sleep 2
echo "
######################## FINISH #######################

    Press ENTER to return to START"
read -r a
exit 0
}
# Funzione per eseguire adb shell settings list e salvare i file
adb_backup() {

backup_folder="ADB_Backup"

# Verificare se la cartella "ADB Backup" esiste, altrimenti crearla
if [ ! -d "$backup_folder" ]; then
    mkdir "$backup_folder"
    echo "Cartella '$backup_folder' creata con successo."
    else
    echo "'$backup_folder' folder found, no need to create it"
fi

# Eseguire il comando "adb shell settings list" per i parametri "system", "secure" e "global"
system_settings=$(adb shell settings list system)
secure_settings=$(adb shell settings list secure)
global_settings=$(adb shell settings list global)

# Chiedere all'utente il nome dei file in uscita
read -p "Choose a prefix file name: " filename_prefix
read -p "Add the date to add to the file: " file_date

# Salvare i file nella cartella "ADB Backup" con i nomi e le date specificati
system_filename="$backup_folder/${filename_prefix}_system_$file_date.txt"
secure_filename="$backup_folder/${filename_prefix}_secure_$file_date.txt"
global_filename="$backup_folder/${filename_prefix}_global_$file_date.txt"

echo "$system_settings" > "$system_filename"
echo "$secure_settings" > "$secure_filename"
echo "$global_settings" > "$global_filename"

echo "File saved successfully into '$backup_folder':"
echo "- $system_filename"
echo "- $secure_filename"
echo "- $global_filename"
echo "Press ENTER to return to ADB Commands Start..."
read -r a
startadb
}


startadb() {
clear
echo "
###################### ADB START ###################### 
Choose what to do?
1. Run adb Preset inside the script
2. Reset the value of the Preset adb
3. ADB Preset Backup
4. Return to InfaScript Start
#######################################################
 Answer: "
    read -r answer

}

while true; do
    startadb
    case $answer in
    1)
        adbrun
        ;;
    2)
        adbreset
        ;;
    3)
        adb_backup
        ;;
    4)
        echo "
        Press ENTER to return to InfaScript Start "
        read -r a
        exit 0
        ;;
    *)   
            echo "
            Choose a valid option, press ENTER to continue..."
            read -r a
            startadb
            ;;
    esac
done
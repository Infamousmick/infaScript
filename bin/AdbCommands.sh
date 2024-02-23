#!/bin/sh
adbrun() {
clear
echo "
###################### ADB START ######################

                Press ENTER to start
"
read -r a
echo "Running ADB commands"
boot_count=$(adb shell get global boot_count | tr -d '\r')
echo "
To have a better SOT it's better to set it from 0 to 10, let'see what's your boot count value.."
  

# Now, for a little twist - resetting boot count if it's soaring above 10

if [ $boot_count -gt 10 ] && [ $boot_count -le 50 ]; then
    echo "Your boot count stands at $boot_count!
    Let's reset to 0..."
    adb shell settings put global boot_count 0
    adb shell settings put global Phenotype_boot_count 0
    echo "Resetted to 0"
elif [ $boot_count -gt 50 ] && [ $boot_count -le 100 ]; then
    echo "OMG!! Your boot count stands at $boot_count!
    MUST reset to 0..."
    adb shell settings put global boot_count 0
    adb shell settings put global Phenotype_boot_count 0
    echo "Resetted to 0"
elif [ $boot_count -gt 100 ]; then
    echo "OH JESUS CHRIST!! You are FOOLISH!! The boot count stands at $boot_count!
    MUST HAVE TO RESET TO 0, MADE IN HEAVEN..."
    adb shell settings put global boot_count 0
    adb shell settings put global Phenotype_boot_count 0
    echo "Resetted to 0"
else
    echo "Have boot count set to $boot_count , no need to reset"
fi

echo "Press a button to continue..."
read -r
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
echo "MORE BATTERY"
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
wm reset
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
adb shell settings put system gearhead:driving_mode_adb shell _enabled 0
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
cmd device_config put netd_native doh 1
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
adb shell settings delete global adaptive_battery_management_enabled
adb shell settings delete global cached_apps_freezer
adb shell settings delete global sem_low_power_mode
adb shell settings delete global ram_expand_size
adb shell settings delete global swap_enabled
adb shell settings delete global zram_enabled
adb shell settings delete secure adaptive_sleep
adb shell settings delete secure aware_enabled
adb shell settings delete secure aware_lock_enabled
adb shell settings delete global ambient_enabled
adb shell settings delete global ambient_tilt_to_wake
adb shell settings delete global ambient_touch_to_wake
adb shell settings delete global aware_allowed
adb shell settings delete global enable_back_animation
adb shell settings delete global google_core_control
adb shell settings delete global hotword_detection_enabled
adb shell settings delete global ble_scan_always_enabled
adb shell settings delete global data_roaming
adb shell settings delete global mobile_data_always_on
adb shell settings delete global mobile_signal_detector
adb shell settings delete global network_avoid_bad_wifi
adb shell settings delete global network_recommendations_enabled
adb shell settings delete global network_scoring_ui_enabled
adb shell settings delete global private_dns_specifier
adb shell settings delete global sem_wifi_network_rating_scorer_enabled
adb shell settings delete global sem_wifi_switch_to_better_wifi_enabled
adb shell settings delete global sem_wifi_switch_to_better_wifi_supported
adb shell settings delete global wifi_scan_always_enabled
adb shell settings delete system ltw_connected
adb shell settings delete system ltw_smartview_connected
adb shell settings delete system multi_control_enabled
adb shell settings delete system remote_control
adb shell settings delete system samsung_errorlog_agree
adb shell settings delete secure wifi_ap_powersave_mode_checked
adb shell settings delete global online_manual_url
adb shell settings delete global auto_wifi
adb shell settings delete global bug_report
adb shell settings delete global debug_app
adb shell settings delete global uwb_enabled
adb shell settings delete global wait_for_debugger
adb shell settings delete global app_standby_enabled
adb shell settings delete global bluetooth_sanitized_exposure_notification_supported
adb shell settings delete global burn_in_protection
adb shell settings delete global call_reminder
adb shell settings delete global protect_battery
echo "MORE BATTERY"
adb shell settings delete global adaptive_battery_management_enabled
adb shell settings delete global app_standby_enabled
adb shell settings delete global cached_apps_freezer
adb shell settings delete global enhanced_processing
adb shell settings delete global sem_enhanced_cpu_responsiveness
echo "CONNECTIONS"
adb shell settings delete system direct_share
adb shell settings delete system ltw_connected
adb shell settings delete system mcf_continuity
adb shell settings delete system mcf_permission_denied
adb shell settings delete system mcf_continuity_nearby_device_state
adb shell settings delete system multi_control_enabled
adb shell settings delete system nearby_scanning_enabled
adb shell settings delete system nearby_scanning_permission_allowed
adb shell settings delete system quickshare_enabled
adb shell settings delete secure multi_control_connection_state
adb shell settings delete global uwb_enabled
echo "DISPLAY"
adb shell wm reset
adb shell settings delete system hdr_effect
adb shell settings delete system screen_mode_setting
adb shell settings delete global screen_mode
adb shell settings delete system time_12_24
adb shell settings delete secure accessibility_captioning_font_scale
adb shell settings delete global animator-duration_scale
adb shell settings delete secure brightness_on_top
adb shell settings delete secure odi_captions_volume_ui_enabled
adb shell settings delete global transition_animation_scale
adb shell settings delete global window_animation_scale
echo "FEEDBACK"
adb shell settings delete system camera_feedback_vibrate
adb shell settings delete system dialing_keypad_vibrate
adb shell settings delete system dtmf_tone
adb shell settings delete system haptic_feedback_enabled
adb shell settings delete system lockscreen_sounds_enabled
adb shell settings delete system navigation_gestures_vibrate
adb shell settings delete system SEM_VIBRATION_FORCE_TOUCH_INTENSITY
adb shell settings delete system SEM_VIBRATION_NOTIFICATION_INTENSITY
adb shell settings delete system SEM_VIBRATION_RING_INTENSITY
adb shell settings delete system sound_effects_enabled
adb shell settings delete system sync_vibration_with_notification
adb shell settings delete system sync_vibration_with_ringtone
adb shell settings delete system vibrate_when_ringing
adb shell settings delete system vibration_sound_enabled
adb shell settings delete system VIB_FEEDBACK_MAGNITUDE
adb shell settings delete system VIB_RECVCALL_MAGNITUDE
adb shell settings delete secure charging_sounds_enabled
adb shell settings delete secure charging_vibration_enabled
adb shell settings delete global emergency_tone
adb shell settings delete global power_sounds_enabled
echo "FINGERPRINT"
adb shell settings delete secure fingerprint_always_on
adb shell settings delete secure fingerprint_effect
adb shell settings delete system screen_transition_effect
echo "GESTURES"
adb shell settings delete system double_tab_to_wake_up
adb shell settings delete system double_tap_to_sleep
adb shell settings delete system lift_to_wake
adb shell settings delete system master_motion
adb shell settings delete system motion_engine
adb shell settings delete system surface_palm_swipe
adb shell settings delete system surface_palm_touch
adb shell settings delete secure back_gesture_inset_scale_left
adb shell settings delete secure back_gesture_inset_scale_right
adb shell settings delete secure double_tap_to_wake
adb shell settings delete secure hush_gesture_used
adb shell settings delete secure one_handed_mode_activated
adb shell settings delete secure one_handed_mode_enabled
adb shell settings delete secure skip_gesture
adb shell settings delete secure silence_gesture
adb shell settings delete secure volume_hush_gesture
adb shell settings delete secure wake_gesture_enabled
adb shell settings delete global enable_back_animation
adb shell settings delete global bottom_gesture_inset_scale
echo "GOOGLE"
adb shell settings delete system gearhead:driving_mode_adb shell _enabled
adb shell settings delete secure assistant
adb shell settings delete secure smartspace
adb shell settings delete global google_core_control
echo "LOCATION"
adb shell settings delete global assisted_gps_enabled
adb shell settings delete global ble_scan_always_enabled
adb shell settings delete global wifi_scan_always_enabled
echo "LOCKSCREEN"
adb shell settings delete system aod_charging_mode
adb shell settings delete system aod_mode 0
adb shell settings delete system aod_tap_to_show_mode
adb shell settings delete system charging_info_always
adb shell settings delete system lock_editor_support_touch_hold
adb shell settings delete system lock_noticard_opacity
adb shell settings delete system lockscreen_show_shortcut
adb shell settings delete secure lock_screen_allow_private_notifications
adb shell settings delete secure lock_screen_show_notifications
adb shell settings delete secure lock_screen_lock_after_timeout
adb shell settings delete secure lock_screen_show_silent_notifications
echo "MEDIA"
adb shell settings delete system sound_alive_effect
adb shell settings delete system tube_amp_effect
adb shell settings delete global multisound_state
adb shell cmd device_config delete netd_native doh
echo "NETWORK"
adb shell settings delete secure data_preferred_mode_during_calling
adb shell settings delete global mobile_data_always_on
adb shell settings delete global mobile_signal_detector
adb shell settings delete global network_avoid_bad_wifi
adb shell settings delete global network_recommendations_enabled
adb shell settings delete global network_scoring_ui_enabled
adb shell settings delete global wifi_networks_available_notification_on
adb shell settings delete global wifi_scan_always_enabled
echo "NOTIFICATION" AND QUICK
adb shell settings delete secure brightness_on_top
adb shell settings delete secure qspanel_media_quickcontrol_bar_available
adb shell settings delete secure qspanel_media_quickcontrol_bar_available_on_top
echo "PERFOMANCE"
adb shell settings delete secure long_press_timeout
adb shell settings delete secure multi_press_timeout
adb shell settings delete global accessibility_reduce_transparency
adb shell settings delete global animator_duration_scale
adb shell settings delete global transition_animation_scale
adb shell settings delete global window_animation_scale
adb shell settings delete global ram_expand_size
adb shell settings delete global ram_expand_size_list
adb shell settings delete global zram_enabled
echo "SAMSUNG"
adb shell settings delete system cocktail_bar_enabled_cocktails
adb shell settings delete system enable_smart_capture
adb shell settings delete system epdg_support1
adb shell settings delete system fmm_notification_other
adb shell settings delete system display_night_theme
adb shell settings delete system remote_control
adb shell settings delete system samsung_errorlog_agree
adb shell settings delete system samsung_eula_agree
adb shell settings delete system samsung_eula_agree_hqm
adb shell settings delete secure fmm_community_finding
adb shell settings delete secure fmm_unlock_recovery
adb shell settings delete secure friends_plugin_connected
adb shell settings delete secure game_auto_temperature_control
adb shell settings delete secure game_home_enable
adb shell settings delete secure screen_extra_brightness
adb shell settings delete global bixby_pregranted_permissions
adb shell settings delete global edge_enable
adb shell settings delete global galaxy_system_update_block
adb shell settings delete global online_manual_url
adb shell settings delete global smart_replies_enabled
echo "SCREENSAVER"
adb shell settings delete secure screensaver_enabled
adb shell settings delete secure screensaver_activate_on_sleep
adb shell settings delete secure screensaver_activate_on_dock
echo "SMART CALL"
adb shell settings delete system call_extra_volume
adb shell settings delete system call_noise_reduction
adb shell settings delete system call_answer_vib
adb shell settings delete system call_end_vib
adb shell settings delete system call_extra_volume
adb shell settings delete system call_noise_reduction
adb shell settings delete system call_popup
adb shell settings delete global swipe_to_call_message
echo "SYSTEM"
adb shell settings delete system access_control_enabled
adb shell settings delete system screen_off_pocket
adb shell settings delete system send_security_reports
adb shell settings delete secure install_non_market_apps
adb shell settings delete secure package_verifier_state
adb shell settings delete global art_verifier_verify_debuggable
adb shell settings delete global verifier_verify_adb_installs
sleep 2
echo "
######################## FINISH #######################

    Press ENTER to return to START"
read -r a
exit 0
}
# Funzione per eseguire adb shell adb shell  list e salvare i file
adb_backup() {

backup_folder="ADB_Backup"

# Verificare se la cartella "ADB Backup" esiste, altrimenti crearla
if [ ! -d "$backup_folder" ]; then
    mkdir "$backup_folder"
    echo "Cartella '$backup_folder' creata con successo."
    else
    echo "'$backup_folder' folder found, no need to create it"
fi

# Eseguire il comando "adb shell adb shell  list" per i parametri "system", "secure" e "global"
system_adb shell =$(adb shell settings list system)
secure_adb shell =$(adb shell settings list secure)
global_adb shell =$(adb shell settings list global)

# Chiedere all'utente il nome dei file in uscita
read -p "Choose a prefix file name: " filename_prefix
read -p "Add the date to add to the file: " file_date

# Salvare i file nella cartella "ADB Backup" con i nomi e le date specificati
system_filename="$backup_folder/${filename_prefix}_system_$file_date.txt"
secure_filename="$backup_folder/${filename_prefix}_secure_$file_date.txt"
global_filename="$backup_folder/${filename_prefix}_global_$file_date.txt"

echo "$system_adb shell " > "$system_filename"
echo "$secure_adb shell " > "$secure_filename"
echo "$global_adb shell " > "$global_filename"

echo "File saved successfully into '$backup_folder':"
echo "- $system_filename"
echo "- $secure_filename"
echo "- $global_filename"
chmod u+x -R ADB_Backup/* ; chmod u+x *
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
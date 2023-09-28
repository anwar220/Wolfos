# classes2.dex

.class public abstract Landroid/media/IAudioService$Stub;
.super Landroid/os/Binder;

# interfaces
.implements Landroid/media/IAudioService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/IAudioService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/IAudioService$Stub$Proxy;
    }
.end annotation


# static fields
.field public static final DESCRIPTOR:Ljava/lang/String; = "android.media.IAudioService"

.field static final TRANSACTION_abandonAudioFocus:I = 0x3e

.field static final TRANSACTION_abandonAudioFocusForTest:I = 0x9b

.field static final TRANSACTION_addAssistantServicesUids:I = 0xc9

.field static final TRANSACTION_addMixForPolicy:I = 0x56

.field static final TRANSACTION_addSpatializerCompatibleAudioDevice:I = 0xb1

.field static final TRANSACTION_adjustStreamVolume:I = 0x9

.field static final TRANSACTION_adjustStreamVolumeForUid:I = 0x89

.field static final TRANSACTION_adjustStreamVolumeWithAttribution:I = 0xa

.field static final TRANSACTION_adjustSuggestedStreamVolumeForUid:I = 0x8a

.field static final TRANSACTION_areNavigationRepeatSoundEffectsEnabled:I = 0x93

.field static final TRANSACTION_cacheParameters:I = 0x83

.field static final TRANSACTION_canBeSpatialized:I = 0xa9

.field static final TRANSACTION_cancelMuteAwaitConnection:I = 0xc2

.field static final TRANSACTION_clearPreferredDevicesForCapturePreset:I = 0x85

.field static final TRANSACTION_createAudioRecordForLoopback:I = 0x7f

.field static final TRANSACTION_createAudioRecordForLoopbackWithClient:I = 0x80

.field static final TRANSACTION_disableSafeMediaVolume:I = 0x50

.field static final TRANSACTION_dispatchFocusChange:I = 0x62

.field static final TRANSACTION_forceRemoteSubmixFullVolume:I = 0xf

.field static final TRANSACTION_forceVolumeControlStream:I = 0x44

.field static final TRANSACTION_getActiveAssistantServiceUids:I = 0xcd

.field static final TRANSACTION_getActivePlaybackConfigurations:I = 0x60

.field static final TRANSACTION_getActiveRecordingConfigurations:I = 0x5d

.field static final TRANSACTION_getActualHeadTrackingMode:I = 0xb6

.field static final TRANSACTION_getAdditionalOutputDeviceDelay:I = 0x98

.field static final TRANSACTION_getAllowedCapturePolicy:I = 0x75

.field static final TRANSACTION_getAssistantServicesUids:I = 0xcc

.field static final TRANSACTION_getAudioPolicyMatchUids:I = 0x81

.field static final TRANSACTION_getAudioProductStrategies:I = 0x1d

.field static final TRANSACTION_getAudioVolumeGroups:I = 0x15

.field static final TRANSACTION_getAvailableCommunicationDeviceIds:I = 0x8e

.field static final TRANSACTION_getCommunicationDevice:I = 0x90

.field static final TRANSACTION_getCurrentAudioFocus:I = 0x40

.field static final TRANSACTION_getDefaultVolumeInfo:I = 0xbf

.field static final TRANSACTION_getDesiredHeadTrackingMode:I = 0xb4

.field static final TRANSACTION_getDeviceMaskForStream:I = 0x8d

.field static final TRANSACTION_getDeviceStreamVolume:I = 0x7e

.field static final TRANSACTION_getDeviceVolumeBehavior:I = 0x7a

.field static final TRANSACTION_getDevicesForAttributes:I = 0x72

.field static final TRANSACTION_getDevicesForAttributesUnprotected:I = 0x73

.field static final TRANSACTION_getEncodedSurroundMode:I = 0x36

.field static final TRANSACTION_getFadeOutDurationOnFocusLossMillis:I = 0x9c

.field static final TRANSACTION_getFocusRampTimeMs:I = 0x61

.field static final TRANSACTION_getFocusStack:I = 0xc7

.field static final TRANSACTION_getHalVersion:I = 0xcf

.field static final TRANSACTION_getLastAudibleStreamVolume:I = 0x1a

.field static final TRANSACTION_getMaxAdditionalOutputDeviceDelay:I = 0x99

.field static final TRANSACTION_getMaxVolumeIndexForAttributes:I = 0x18

.field static final TRANSACTION_getMinVolumeIndexForAttributes:I = 0x19

.field static final TRANSACTION_getMode:I = 0x2b

.field static final TRANSACTION_getMutingExpectedDevice:I = 0xc3

.field static final TRANSACTION_getNotificationUri:I = 0x7d

.field static final TRANSACTION_getPlayerVolume:I = 0x7c

.field static final TRANSACTION_getPreferredDevicesForCapturePreset:I = 0x86

.field static final TRANSACTION_getPreferredDevicesForStrategy:I = 0x71

.field static final TRANSACTION_getReportedSurroundFormats:I = 0x32

.field static final TRANSACTION_getRingerModeExternal:I = 0x24

.field static final TRANSACTION_getRingerModeInternal:I = 0x25

.field static final TRANSACTION_getRingtonePlayer:I = 0x46

.field static final TRANSACTION_getSpatializerCompatibleAudioDevices:I = 0xb0

.field static final TRANSACTION_getSpatializerImmersiveAudioLevel:I = 0x9f

.field static final TRANSACTION_getSpatializerOutput:I = 0xbb

.field static final TRANSACTION_getSpatializerParameter:I = 0xba

.field static final TRANSACTION_getStreamMaxVolume:I = 0x14

.field static final TRANSACTION_getStreamMinVolume:I = 0x13

.field static final TRANSACTION_getStreamVolume:I = 0x12

.field static final TRANSACTION_getSupportedHeadTrackingModes:I = 0xb5

.field static final TRANSACTION_getSupportedSystemUsages:I = 0x1c

.field static final TRANSACTION_getSurroundFormats:I = 0x31

.field static final TRANSACTION_getUiSoundsStreamType:I = 0x47

.field static final TRANSACTION_getVibrateSetting:I = 0x28

.field static final TRANSACTION_getVolumeIndexForAttributes:I = 0x17

.field static final TRANSACTION_handleBluetoothA2dpActiveDeviceChange:I = 0x49

.field static final TRANSACTION_handleBluetoothActiveDeviceChanged:I = 0x64

.field static final TRANSACTION_handleVolumeKey:I = 0xd

.field static final TRANSACTION_hasHapticChannels:I = 0x6d

.field static final TRANSACTION_hasHeadTracker:I = 0xa3

.field static final TRANSACTION_hasRegisteredDynamicPolicy:I = 0x5a

.field static final TRANSACTION_isAudioServerRunning:I = 0x68

.field static final TRANSACTION_isBluetoothA2dpOn:I = 0x3c

.field static final TRANSACTION_isBluetoothScoOn:I = 0x3a

.field static final TRANSACTION_isCallScreeningModeSupported:I = 0x6e

.field static final TRANSACTION_isCameraSoundForced:I = 0x4b

.field static final TRANSACTION_isHdmiSystemAudioSupported:I = 0x52

.field static final TRANSACTION_isHeadTrackerAvailable:I = 0xa6

.field static final TRANSACTION_isHeadTrackerEnabled:I = 0xa5

.field static final TRANSACTION_isHomeSoundEffectEnabled:I = 0x95

.field static final TRANSACTION_isMasterMute:I = 0x10

.field static final TRANSACTION_isMicrophoneMuted:I = 0x1e

.field static final TRANSACTION_isMusicActive:I = 0x8c

.field static final TRANSACTION_isPstnCallAudioInterceptable:I = 0xc0

.field static final TRANSACTION_isSpatializerAvailable:I = 0xa1

.field static final TRANSACTION_isSpatializerAvailableForDevice:I = 0xa2

.field static final TRANSACTION_isSpatializerEnabled:I = 0xa0

.field static final TRANSACTION_isSpeakerphoneOn:I = 0x38

.field static final TRANSACTION_isStreamAffectedByMute:I = 0x4f

.field static final TRANSACTION_isStreamAffectedByRingerMode:I = 0x4e

.field static final TRANSACTION_isStreamMute:I = 0xe

.field static final TRANSACTION_isSurroundFormatEnabled:I = 0x34

.field static final TRANSACTION_isUltrasoundSupported:I = 0x1f

.field static final TRANSACTION_isValidRingerMode:I = 0x26

.field static final TRANSACTION_isVolumeFixed:I = 0xbe

.field static final TRANSACTION_loadSoundEffects:I = 0x2e

.field static final TRANSACTION_muteAwaitConnection:I = 0xc1

.field static final TRANSACTION_notifyVolumeControllerVisible:I = 0x4d

.field static final TRANSACTION_playSoundEffect:I = 0x2c

.field static final TRANSACTION_playSoundEffectVolume:I = 0x2d

.field static final TRANSACTION_playerAttributes:I = 0x2

.field static final TRANSACTION_playerEvent:I = 0x3

.field static final TRANSACTION_playerHasOpPlayAudio:I = 0x63

.field static final TRANSACTION_playerSessionId:I = 0x8

.field static final TRANSACTION_recenterHeadTracker:I = 0xb8

.field static final TRANSACTION_recorderEvent:I = 0x6

.field static final TRANSACTION_registerAudioPolicy:I = 0x53

.field static final TRANSACTION_registerAudioServerStateDispatcher:I = 0x66

.field static final TRANSACTION_registerCapturePresetDevicesRoleDispatcher:I = 0x87

.field static final TRANSACTION_registerCommunicationDeviceDispatcher:I = 0x91

.field static final TRANSACTION_registerDeviceVolumeBehaviorDispatcher:I = 0xc6

.field static final TRANSACTION_registerDeviceVolumeDispatcherForAbsoluteVolume:I = 0xce

.field static final TRANSACTION_registerHeadToSoundstagePoseCallback:I = 0xae

.field static final TRANSACTION_registerModeDispatcher:I = 0x9d

.field static final TRANSACTION_registerMuteAwaitConnectionDispatcher:I = 0xc4

.field static final TRANSACTION_registerPlaybackCallback:I = 0x5e

.field static final TRANSACTION_registerRecordingCallback:I = 0x5b

.field static final TRANSACTION_registerSpatializerCallback:I = 0xaa

.field static final TRANSACTION_registerSpatializerHeadTrackerAvailableCallback:I = 0xa7

.field static final TRANSACTION_registerSpatializerHeadTrackingCallback:I = 0xac

.field static final TRANSACTION_registerSpatializerOutputCallback:I = 0xbc

.field static final TRANSACTION_registerStrategyPreferredDevicesDispatcher:I = 0x76

.field static final TRANSACTION_releasePlayer:I = 0x4

.field static final TRANSACTION_releaseRecorder:I = 0x7

.field static final TRANSACTION_reloadAudioSettings:I = 0x30

.field static final TRANSACTION_removeAssistantServicesUids:I = 0xca

.field static final TRANSACTION_removeMixForPolicy:I = 0x57

.field static final TRANSACTION_removePreferredDevicesForStrategy:I = 0x70

.field static final TRANSACTION_removeSpatializerCompatibleAudioDevice:I = 0xb2

.field static final TRANSACTION_removeUidDeviceAffinity:I = 0x6a

.field static final TRANSACTION_removeUserIdDeviceAffinity:I = 0x6c

.field static final TRANSACTION_requestAudioFocus:I = 0x3d

.field static final TRANSACTION_requestAudioFocusForTest:I = 0x9a

.field static final TRANSACTION_sendFocusLoss:I = 0xc8

.field static final TRANSACTION_setActiveAssistantServiceUids:I = 0xcb

.field static final TRANSACTION_setAdditionalOutputDeviceDelay:I = 0x97

.field static final TRANSACTION_setAllowedCapturePolicy:I = 0x74

.field static final TRANSACTION_setBluetoothA2dpOn:I = 0x3b

.field static final TRANSACTION_setBluetoothScoOn:I = 0x39

.field static final TRANSACTION_setCommunicationDevice:I = 0x8f

.field static final TRANSACTION_setDesiredHeadTrackingMode:I = 0xb3

.field static final TRANSACTION_setDeviceVolumeBehavior:I = 0x79

.field static final TRANSACTION_setEncodedSurroundMode:I = 0x35

.field static final TRANSACTION_setFocusPropertiesForPolicy:I = 0x58

.field static final TRANSACTION_setFocusRequestResultFromExtPolicy:I = 0x65

.field static final TRANSACTION_setHdmiSystemAudioSupported:I = 0x51

.field static final TRANSACTION_setHeadTrackerEnabled:I = 0xa4

.field static final TRANSACTION_setHomeSoundEffectEnabled:I = 0x96

.field static final TRANSACTION_setMasterMute:I = 0x11

.field static final TRANSACTION_setMicrophoneMute:I = 0x20

.field static final TRANSACTION_setMicrophoneMuteFromSwitch:I = 0x21

.field static final TRANSACTION_setMode:I = 0x2a

.field static final TRANSACTION_setMultiAudioFocusEnabled:I = 0x82

.field static final TRANSACTION_setNavigationRepeatSoundEffectsEnabled:I = 0x94

.field static final TRANSACTION_setPlayerVolume:I = 0x7b

.field static final TRANSACTION_setPreferredDevicesForCapturePreset:I = 0x84

.field static final TRANSACTION_setPreferredDevicesForStrategy:I = 0x6f

.field static final TRANSACTION_setRingerModeExternal:I = 0x22

.field static final TRANSACTION_setRingerModeInternal:I = 0x23

.field static final TRANSACTION_setRingtonePlayer:I = 0x45

.field static final TRANSACTION_setRttEnabled:I = 0x78

.field static final TRANSACTION_setSpatializerEnabled:I = 0xa8

.field static final TRANSACTION_setSpatializerGlobalTransform:I = 0xb7

.field static final TRANSACTION_setSpatializerParameter:I = 0xb9

.field static final TRANSACTION_setSpeakerphoneOn:I = 0x37

.field static final TRANSACTION_setStreamVolume:I = 0xb

.field static final TRANSACTION_setStreamVolumeForUid:I = 0x8b

.field static final TRANSACTION_setStreamVolumeWithAttribution:I = 0xc

.field static final TRANSACTION_setSupportedSystemUsages:I = 0x1b

.field static final TRANSACTION_setSurroundFormatEnabled:I = 0x33

.field static final TRANSACTION_setTestDeviceConnectionState:I = 0xc5

.field static final TRANSACTION_setUidDeviceAffinity:I = 0x69

.field static final TRANSACTION_setUserIdDeviceAffinity:I = 0x6b

.field static final TRANSACTION_setVibrateSetting:I = 0x27

.field static final TRANSACTION_setVolumeController:I = 0x4c

.field static final TRANSACTION_setVolumeIndexForAttributes:I = 0x16

.field static final TRANSACTION_setVolumePolicy:I = 0x59

.field static final TRANSACTION_setWiredDeviceConnectionState:I = 0x48

.field static final TRANSACTION_shouldVibrate:I = 0x29

.field static final TRANSACTION_startBluetoothSco:I = 0x41

.field static final TRANSACTION_startBluetoothScoVirtualCall:I = 0x42

.field static final TRANSACTION_startWatchingRoutes:I = 0x4a

.field static final TRANSACTION_stopBluetoothSco:I = 0x43

.field static final TRANSACTION_trackPlayer:I = 0x1

.field static final TRANSACTION_trackRecorder:I = 0x5

.field static final TRANSACTION_unloadSoundEffects:I = 0x2f

.field static final TRANSACTION_unregisterAudioFocusClient:I = 0x3f

.field static final TRANSACTION_unregisterAudioPolicy:I = 0x55

.field static final TRANSACTION_unregisterAudioPolicyAsync:I = 0x54

.field static final TRANSACTION_unregisterAudioServerStateDispatcher:I = 0x67

.field static final TRANSACTION_unregisterCapturePresetDevicesRoleDispatcher:I = 0x88

.field static final TRANSACTION_unregisterCommunicationDeviceDispatcher:I = 0x92

.field static final TRANSACTION_unregisterHeadToSoundstagePoseCallback:I = 0xaf

.field static final TRANSACTION_unregisterModeDispatcher:I = 0x9e

.field static final TRANSACTION_unregisterPlaybackCallback:I = 0x5f

.field static final TRANSACTION_unregisterRecordingCallback:I = 0x5c

.field static final TRANSACTION_unregisterSpatializerCallback:I = 0xab

.field static final TRANSACTION_unregisterSpatializerHeadTrackingCallback:I = 0xad

.field static final TRANSACTION_unregisterSpatializerOutputCallback:I = 0xbd

.field static final TRANSACTION_unregisterStrategyPreferredDevicesDispatcher:I = 0x77


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "android.media.IAudioService"

    invoke-virtual {p0, p0, v0}, Landroid/media/IAudioService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/media/IAudioService;
    .registers 3

    if-nez p0, :cond_4

    const/4 v0, 0x0

    return-object v0

    :cond_4
    const-string v0, "android.media.IAudioService"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/media/IAudioService;

    if-eqz v1, :cond_14

    move-object v1, v0

    check-cast v1, Landroid/media/IAudioService;

    return-object v1

    :cond_14
    new-instance v1, Landroid/media/IAudioService$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/media/IAudioService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2

    packed-switch p0, :pswitch_data_272

    const/4 v0, 0x0

    return-object v0

    :pswitch_5  #0xcf
    const-string v0, "getHalVersion"

    return-object v0

    :pswitch_8  #0xce
    const-string v0, "registerDeviceVolumeDispatcherForAbsoluteVolume"

    return-object v0

    :pswitch_b  #0xcd
    const-string v0, "getActiveAssistantServiceUids"

    return-object v0

    :pswitch_e  #0xcc
    const-string v0, "getAssistantServicesUids"

    return-object v0

    :pswitch_11  #0xcb
    const-string v0, "setActiveAssistantServiceUids"

    return-object v0

    :pswitch_14  #0xca
    const-string v0, "removeAssistantServicesUids"

    return-object v0

    :pswitch_17  #0xc9
    const-string v0, "addAssistantServicesUids"

    return-object v0

    :pswitch_1a  #0xc8
    const-string v0, "sendFocusLoss"

    return-object v0

    :pswitch_1d  #0xc7
    const-string v0, "getFocusStack"

    return-object v0

    :pswitch_20  #0xc6
    const-string v0, "registerDeviceVolumeBehaviorDispatcher"

    return-object v0

    :pswitch_23  #0xc5
    const-string v0, "setTestDeviceConnectionState"

    return-object v0

    :pswitch_26  #0xc4
    const-string v0, "registerMuteAwaitConnectionDispatcher"

    return-object v0

    :pswitch_29  #0xc3
    const-string v0, "getMutingExpectedDevice"

    return-object v0

    :pswitch_2c  #0xc2
    const-string v0, "cancelMuteAwaitConnection"

    return-object v0

    :pswitch_2f  #0xc1
    const-string v0, "muteAwaitConnection"

    return-object v0

    :pswitch_32  #0xc0
    const-string v0, "isPstnCallAudioInterceptable"

    return-object v0

    :pswitch_35  #0xbf
    const-string v0, "getDefaultVolumeInfo"

    return-object v0

    :pswitch_38  #0xbe
    const-string v0, "isVolumeFixed"

    return-object v0

    :pswitch_3b  #0xbd
    const-string v0, "unregisterSpatializerOutputCallback"

    return-object v0

    :pswitch_3e  #0xbc
    const-string v0, "registerSpatializerOutputCallback"

    return-object v0

    :pswitch_41  #0xbb
    const-string v0, "getSpatializerOutput"

    return-object v0

    :pswitch_44  #0xba
    const-string v0, "getSpatializerParameter"

    return-object v0

    :pswitch_47  #0xb9
    const-string v0, "setSpatializerParameter"

    return-object v0

    :pswitch_4a  #0xb8
    const-string v0, "recenterHeadTracker"

    return-object v0

    :pswitch_4d  #0xb7
    const-string v0, "setSpatializerGlobalTransform"

    return-object v0

    :pswitch_50  #0xb6
    const-string v0, "getActualHeadTrackingMode"

    return-object v0

    :pswitch_53  #0xb5
    const-string v0, "getSupportedHeadTrackingModes"

    return-object v0

    :pswitch_56  #0xb4
    const-string v0, "getDesiredHeadTrackingMode"

    return-object v0

    :pswitch_59  #0xb3
    const-string v0, "setDesiredHeadTrackingMode"

    return-object v0

    :pswitch_5c  #0xb2
    const-string v0, "removeSpatializerCompatibleAudioDevice"

    return-object v0

    :pswitch_5f  #0xb1
    const-string v0, "addSpatializerCompatibleAudioDevice"

    return-object v0

    :pswitch_62  #0xb0
    const-string v0, "getSpatializerCompatibleAudioDevices"

    return-object v0

    :pswitch_65  #0xaf
    const-string v0, "unregisterHeadToSoundstagePoseCallback"

    return-object v0

    :pswitch_68  #0xae
    const-string v0, "registerHeadToSoundstagePoseCallback"

    return-object v0

    :pswitch_6b  #0xad
    const-string v0, "unregisterSpatializerHeadTrackingCallback"

    return-object v0

    :pswitch_6e  #0xac
    const-string v0, "registerSpatializerHeadTrackingCallback"

    return-object v0

    :pswitch_71  #0xab
    const-string v0, "unregisterSpatializerCallback"

    return-object v0

    :pswitch_74  #0xaa
    const-string v0, "registerSpatializerCallback"

    return-object v0

    :pswitch_77  #0xa9
    const-string v0, "canBeSpatialized"

    return-object v0

    :pswitch_7a  #0xa8
    const-string v0, "setSpatializerEnabled"

    return-object v0

    :pswitch_7d  #0xa7
    const-string v0, "registerSpatializerHeadTrackerAvailableCallback"

    return-object v0

    :pswitch_80  #0xa6
    const-string v0, "isHeadTrackerAvailable"

    return-object v0

    :pswitch_83  #0xa5
    const-string v0, "isHeadTrackerEnabled"

    return-object v0

    :pswitch_86  #0xa4
    const-string v0, "setHeadTrackerEnabled"

    return-object v0

    :pswitch_89  #0xa3
    const-string v0, "hasHeadTracker"

    return-object v0

    :pswitch_8c  #0xa2
    const-string v0, "isSpatializerAvailableForDevice"

    return-object v0

    :pswitch_8f  #0xa1
    const-string v0, "isSpatializerAvailable"

    return-object v0

    :pswitch_92  #0xa0
    const-string v0, "isSpatializerEnabled"

    return-object v0

    :pswitch_95  #0x9f
    const-string v0, "getSpatializerImmersiveAudioLevel"

    return-object v0

    :pswitch_98  #0x9e
    const-string v0, "unregisterModeDispatcher"

    return-object v0

    :pswitch_9b  #0x9d
    const-string v0, "registerModeDispatcher"

    return-object v0

    :pswitch_9e  #0x9c
    const-string v0, "getFadeOutDurationOnFocusLossMillis"

    return-object v0

    :pswitch_a1  #0x9b
    const-string v0, "abandonAudioFocusForTest"

    return-object v0

    :pswitch_a4  #0x9a
    const-string v0, "requestAudioFocusForTest"

    return-object v0

    :pswitch_a7  #0x99
    const-string v0, "getMaxAdditionalOutputDeviceDelay"

    return-object v0

    :pswitch_aa  #0x98
    const-string v0, "getAdditionalOutputDeviceDelay"

    return-object v0

    :pswitch_ad  #0x97
    const-string v0, "setAdditionalOutputDeviceDelay"

    return-object v0

    :pswitch_b0  #0x96
    const-string v0, "setHomeSoundEffectEnabled"

    return-object v0

    :pswitch_b3  #0x95
    const-string v0, "isHomeSoundEffectEnabled"

    return-object v0

    :pswitch_b6  #0x94
    const-string v0, "setNavigationRepeatSoundEffectsEnabled"

    return-object v0

    :pswitch_b9  #0x93
    const-string v0, "areNavigationRepeatSoundEffectsEnabled"

    return-object v0

    :pswitch_bc  #0x92
    const-string v0, "unregisterCommunicationDeviceDispatcher"

    return-object v0

    :pswitch_bf  #0x91
    const-string v0, "registerCommunicationDeviceDispatcher"

    return-object v0

    :pswitch_c2  #0x90
    const-string v0, "getCommunicationDevice"

    return-object v0

    :pswitch_c5  #0x8f
    const-string v0, "setCommunicationDevice"

    return-object v0

    :pswitch_c8  #0x8e
    const-string v0, "getAvailableCommunicationDeviceIds"

    return-object v0

    :pswitch_cb  #0x8d
    const-string v0, "getDeviceMaskForStream"

    return-object v0

    :pswitch_ce  #0x8c
    const-string v0, "isMusicActive"

    return-object v0

    :pswitch_d1  #0x8b
    const-string v0, "setStreamVolumeForUid"

    return-object v0

    :pswitch_d4  #0x8a
    const-string v0, "adjustSuggestedStreamVolumeForUid"

    return-object v0

    :pswitch_d7  #0x89
    const-string v0, "adjustStreamVolumeForUid"

    return-object v0

    :pswitch_da  #0x88
    const-string v0, "unregisterCapturePresetDevicesRoleDispatcher"

    return-object v0

    :pswitch_dd  #0x87
    const-string v0, "registerCapturePresetDevicesRoleDispatcher"

    return-object v0

    :pswitch_e0  #0x86
    const-string v0, "getPreferredDevicesForCapturePreset"

    return-object v0

    :pswitch_e3  #0x85
    const-string v0, "clearPreferredDevicesForCapturePreset"

    return-object v0

    :pswitch_e6  #0x84
    const-string v0, "setPreferredDevicesForCapturePreset"

    return-object v0

    :pswitch_e9  #0x83
    const-string v0, "cacheParameters"

    return-object v0

    :pswitch_ec  #0x82
    const-string v0, "setMultiAudioFocusEnabled"

    return-object v0

    :pswitch_ef  #0x81
    const-string v0, "getAudioPolicyMatchUids"

    return-object v0

    :pswitch_f2  #0x80
    const-string v0, "createAudioRecordForLoopbackWithClient"

    return-object v0

    :pswitch_f5  #0x7f
    const-string v0, "createAudioRecordForLoopback"

    return-object v0

    :pswitch_f8  #0x7e
    const-string v0, "getDeviceStreamVolume"

    return-object v0

    :pswitch_fb  #0x7d
    const-string v0, "getNotificationUri"

    return-object v0

    :pswitch_fe  #0x7c
    const-string v0, "getPlayerVolume"

    return-object v0

    :pswitch_101  #0x7b
    const-string v0, "setPlayerVolume"

    return-object v0

    :pswitch_104  #0x7a
    const-string v0, "getDeviceVolumeBehavior"

    return-object v0

    :pswitch_107  #0x79
    const-string v0, "setDeviceVolumeBehavior"

    return-object v0

    :pswitch_10a  #0x78
    const-string v0, "setRttEnabled"

    return-object v0

    :pswitch_10d  #0x77
    const-string v0, "unregisterStrategyPreferredDevicesDispatcher"

    return-object v0

    :pswitch_110  #0x76
    const-string v0, "registerStrategyPreferredDevicesDispatcher"

    return-object v0

    :pswitch_113  #0x75
    const-string v0, "getAllowedCapturePolicy"

    return-object v0

    :pswitch_116  #0x74
    const-string v0, "setAllowedCapturePolicy"

    return-object v0

    :pswitch_119  #0x73
    const-string v0, "getDevicesForAttributesUnprotected"

    return-object v0

    :pswitch_11c  #0x72
    const-string v0, "getDevicesForAttributes"

    return-object v0

    :pswitch_11f  #0x71
    const-string v0, "getPreferredDevicesForStrategy"

    return-object v0

    :pswitch_122  #0x70
    const-string v0, "removePreferredDevicesForStrategy"

    return-object v0

    :pswitch_125  #0x6f
    const-string v0, "setPreferredDevicesForStrategy"

    return-object v0

    :pswitch_128  #0x6e
    const-string v0, "isCallScreeningModeSupported"

    return-object v0

    :pswitch_12b  #0x6d
    const-string v0, "hasHapticChannels"

    return-object v0

    :pswitch_12e  #0x6c
    const-string v0, "removeUserIdDeviceAffinity"

    return-object v0

    :pswitch_131  #0x6b
    const-string v0, "setUserIdDeviceAffinity"

    return-object v0

    :pswitch_134  #0x6a
    const-string v0, "removeUidDeviceAffinity"

    return-object v0

    :pswitch_137  #0x69
    const-string v0, "setUidDeviceAffinity"

    return-object v0

    :pswitch_13a  #0x68
    const-string v0, "isAudioServerRunning"

    return-object v0

    :pswitch_13d  #0x67
    const-string v0, "unregisterAudioServerStateDispatcher"

    return-object v0

    :pswitch_140  #0x66
    const-string v0, "registerAudioServerStateDispatcher"

    return-object v0

    :pswitch_143  #0x65
    const-string v0, "setFocusRequestResultFromExtPolicy"

    return-object v0

    :pswitch_146  #0x64
    const-string v0, "handleBluetoothActiveDeviceChanged"

    return-object v0

    :pswitch_149  #0x63
    const-string v0, "playerHasOpPlayAudio"

    return-object v0

    :pswitch_14c  #0x62
    const-string v0, "dispatchFocusChange"

    return-object v0

    :pswitch_14f  #0x61
    const-string v0, "getFocusRampTimeMs"

    return-object v0

    :pswitch_152  #0x60
    const-string v0, "getActivePlaybackConfigurations"

    return-object v0

    :pswitch_155  #0x5f
    const-string v0, "unregisterPlaybackCallback"

    return-object v0

    :pswitch_158  #0x5e
    const-string v0, "registerPlaybackCallback"

    return-object v0

    :pswitch_15b  #0x5d
    const-string v0, "getActiveRecordingConfigurations"

    return-object v0

    :pswitch_15e  #0x5c
    const-string v0, "unregisterRecordingCallback"

    return-object v0

    :pswitch_161  #0x5b
    const-string v0, "registerRecordingCallback"

    return-object v0

    :pswitch_164  #0x5a
    const-string v0, "hasRegisteredDynamicPolicy"

    return-object v0

    :pswitch_167  #0x59
    const-string v0, "setVolumePolicy"

    return-object v0

    :pswitch_16a  #0x58
    const-string v0, "setFocusPropertiesForPolicy"

    return-object v0

    :pswitch_16d  #0x57
    const-string v0, "removeMixForPolicy"

    return-object v0

    :pswitch_170  #0x56
    const-string v0, "addMixForPolicy"

    return-object v0

    :pswitch_173  #0x55
    const-string v0, "unregisterAudioPolicy"

    return-object v0

    :pswitch_176  #0x54
    const-string v0, "unregisterAudioPolicyAsync"

    return-object v0

    :pswitch_179  #0x53
    const-string v0, "registerAudioPolicy"

    return-object v0

    :pswitch_17c  #0x52
    const-string v0, "isHdmiSystemAudioSupported"

    return-object v0

    :pswitch_17f  #0x51
    const-string v0, "setHdmiSystemAudioSupported"

    return-object v0

    :pswitch_182  #0x50
    const-string v0, "disableSafeMediaVolume"

    return-object v0

    :pswitch_185  #0x4f
    const-string v0, "isStreamAffectedByMute"

    return-object v0

    :pswitch_188  #0x4e
    const-string v0, "isStreamAffectedByRingerMode"

    return-object v0

    :pswitch_18b  #0x4d
    const-string v0, "notifyVolumeControllerVisible"

    return-object v0

    :pswitch_18e  #0x4c
    const-string v0, "setVolumeController"

    return-object v0

    :pswitch_191  #0x4b
    const-string v0, "isCameraSoundForced"

    return-object v0

    :pswitch_194  #0x4a
    const-string v0, "startWatchingRoutes"

    return-object v0

    :pswitch_197  #0x49
    const-string v0, "handleBluetoothA2dpActiveDeviceChange"

    return-object v0

    :pswitch_19a  #0x48
    const-string v0, "setWiredDeviceConnectionState"

    return-object v0

    :pswitch_19d  #0x47
    const-string v0, "getUiSoundsStreamType"

    return-object v0

    :pswitch_1a0  #0x46
    const-string v0, "getRingtonePlayer"

    return-object v0

    :pswitch_1a3  #0x45
    const-string v0, "setRingtonePlayer"

    return-object v0

    :pswitch_1a6  #0x44
    const-string v0, "forceVolumeControlStream"

    return-object v0

    :pswitch_1a9  #0x43
    const-string v0, "stopBluetoothSco"

    return-object v0

    :pswitch_1ac  #0x42
    const-string v0, "startBluetoothScoVirtualCall"

    return-object v0

    :pswitch_1af  #0x41
    const-string v0, "startBluetoothSco"

    return-object v0

    :pswitch_1b2  #0x40
    const-string v0, "getCurrentAudioFocus"

    return-object v0

    :pswitch_1b5  #0x3f
    const-string v0, "unregisterAudioFocusClient"

    return-object v0

    :pswitch_1b8  #0x3e
    const-string v0, "abandonAudioFocus"

    return-object v0

    :pswitch_1bb  #0x3d
    const-string v0, "requestAudioFocus"

    return-object v0

    :pswitch_1be  #0x3c
    const-string v0, "isBluetoothA2dpOn"

    return-object v0

    :pswitch_1c1  #0x3b
    const-string v0, "setBluetoothA2dpOn"

    return-object v0

    :pswitch_1c4  #0x3a
    const-string v0, "isBluetoothScoOn"

    return-object v0

    :pswitch_1c7  #0x39
    const-string v0, "setBluetoothScoOn"

    return-object v0

    :pswitch_1ca  #0x38
    const-string v0, "isSpeakerphoneOn"

    return-object v0

    :pswitch_1cd  #0x37
    const-string v0, "setSpeakerphoneOn"

    return-object v0

    :pswitch_1d0  #0x36
    const-string v0, "getEncodedSurroundMode"

    return-object v0

    :pswitch_1d3  #0x35
    const-string v0, "setEncodedSurroundMode"

    return-object v0

    :pswitch_1d6  #0x34
    const-string v0, "isSurroundFormatEnabled"

    return-object v0

    :pswitch_1d9  #0x33
    const-string v0, "setSurroundFormatEnabled"

    return-object v0

    :pswitch_1dc  #0x32
    const-string v0, "getReportedSurroundFormats"

    return-object v0

    :pswitch_1df  #0x31
    const-string v0, "getSurroundFormats"

    return-object v0

    :pswitch_1e2  #0x30
    const-string v0, "reloadAudioSettings"

    return-object v0

    :pswitch_1e5  #0x2f
    const-string v0, "unloadSoundEffects"

    return-object v0

    :pswitch_1e8  #0x2e
    const-string v0, "loadSoundEffects"

    return-object v0

    :pswitch_1eb  #0x2d
    const-string v0, "playSoundEffectVolume"

    return-object v0

    :pswitch_1ee  #0x2c
    const-string v0, "playSoundEffect"

    return-object v0

    :pswitch_1f1  #0x2b
    const-string v0, "getMode"

    return-object v0

    :pswitch_1f4  #0x2a
    const-string v0, "setMode"

    return-object v0

    :pswitch_1f7  #0x29
    const-string v0, "shouldVibrate"

    return-object v0

    :pswitch_1fa  #0x28
    const-string v0, "getVibrateSetting"

    return-object v0

    :pswitch_1fd  #0x27
    const-string v0, "setVibrateSetting"

    return-object v0

    :pswitch_200  #0x26
    const-string v0, "isValidRingerMode"

    return-object v0

    :pswitch_203  #0x25
    const-string v0, "getRingerModeInternal"

    return-object v0

    :pswitch_206  #0x24
    const-string v0, "getRingerModeExternal"

    return-object v0

    :pswitch_209  #0x23
    const-string v0, "setRingerModeInternal"

    return-object v0

    :pswitch_20c  #0x22
    const-string v0, "setRingerModeExternal"

    return-object v0

    :pswitch_20f  #0x21
    const-string v0, "setMicrophoneMuteFromSwitch"

    return-object v0

    :pswitch_212  #0x20
    const-string v0, "setMicrophoneMute"

    return-object v0

    :pswitch_215  #0x1f
    const-string v0, "isUltrasoundSupported"

    return-object v0

    :pswitch_218  #0x1e
    const-string v0, "isMicrophoneMuted"

    return-object v0

    :pswitch_21b  #0x1d
    const-string v0, "getAudioProductStrategies"

    return-object v0

    :pswitch_21e  #0x1c
    const-string v0, "getSupportedSystemUsages"

    return-object v0

    :pswitch_221  #0x1b
    const-string v0, "setSupportedSystemUsages"

    return-object v0

    :pswitch_224  #0x1a
    const-string v0, "getLastAudibleStreamVolume"

    return-object v0

    :pswitch_227  #0x19
    const-string v0, "getMinVolumeIndexForAttributes"

    return-object v0

    :pswitch_22a  #0x18
    const-string v0, "getMaxVolumeIndexForAttributes"

    return-object v0

    :pswitch_22d  #0x17
    const-string v0, "getVolumeIndexForAttributes"

    return-object v0

    :pswitch_230  #0x16
    const-string v0, "setVolumeIndexForAttributes"

    return-object v0

    :pswitch_233  #0x15
    const-string v0, "getAudioVolumeGroups"

    return-object v0

    :pswitch_236  #0x14
    const-string v0, "getStreamMaxVolume"

    return-object v0

    :pswitch_239  #0x13
    const-string v0, "getStreamMinVolume"

    return-object v0

    :pswitch_23c  #0x12
    const-string v0, "getStreamVolume"

    return-object v0

    :pswitch_23f  #0x11
    const-string v0, "setMasterMute"

    return-object v0

    :pswitch_242  #0x10
    const-string v0, "isMasterMute"

    return-object v0

    :pswitch_245  #0xf
    const-string v0, "forceRemoteSubmixFullVolume"

    return-object v0

    :pswitch_248  #0xe
    const-string v0, "isStreamMute"

    return-object v0

    :pswitch_24b  #0xd
    const-string v0, "handleVolumeKey"

    return-object v0

    :pswitch_24e  #0xc
    const-string v0, "setStreamVolumeWithAttribution"

    return-object v0

    :pswitch_251  #0xb
    const-string v0, "setStreamVolume"

    return-object v0

    :pswitch_254  #0xa
    const-string v0, "adjustStreamVolumeWithAttribution"

    return-object v0

    :pswitch_257  #0x9
    const-string v0, "adjustStreamVolume"

    return-object v0

    :pswitch_25a  #0x8
    const-string v0, "playerSessionId"

    return-object v0

    :pswitch_25d  #0x7
    const-string v0, "releaseRecorder"

    return-object v0

    :pswitch_260  #0x6
    const-string v0, "recorderEvent"

    return-object v0

    :pswitch_263  #0x5
    const-string v0, "trackRecorder"

    return-object v0

    :pswitch_266  #0x4
    const-string v0, "releasePlayer"

    return-object v0

    :pswitch_269  #0x3
    const-string v0, "playerEvent"

    return-object v0

    :pswitch_26c  #0x2
    const-string v0, "playerAttributes"

    return-object v0

    :pswitch_26f  #0x1
    const-string v0, "trackPlayer"

    return-object v0

    :pswitch_data_272
    .packed-switch 0x1
        :pswitch_26f  #00000001
        :pswitch_26c  #00000002
        :pswitch_269  #00000003
        :pswitch_266  #00000004
        :pswitch_263  #00000005
        :pswitch_260  #00000006
        :pswitch_25d  #00000007
        :pswitch_25a  #00000008
        :pswitch_257  #00000009
        :pswitch_254  #0000000a
        :pswitch_251  #0000000b
        :pswitch_24e  #0000000c
        :pswitch_24b  #0000000d
        :pswitch_248  #0000000e
        :pswitch_245  #0000000f
        :pswitch_242  #00000010
        :pswitch_23f  #00000011
        :pswitch_23c  #00000012
        :pswitch_239  #00000013
        :pswitch_236  #00000014
        :pswitch_233  #00000015
        :pswitch_230  #00000016
        :pswitch_22d  #00000017
        :pswitch_22a  #00000018
        :pswitch_227  #00000019
        :pswitch_224  #0000001a
        :pswitch_221  #0000001b
        :pswitch_21e  #0000001c
        :pswitch_21b  #0000001d
        :pswitch_218  #0000001e
        :pswitch_215  #0000001f
        :pswitch_212  #00000020
        :pswitch_20f  #00000021
        :pswitch_20c  #00000022
        :pswitch_209  #00000023
        :pswitch_206  #00000024
        :pswitch_203  #00000025
        :pswitch_200  #00000026
        :pswitch_1fd  #00000027
        :pswitch_1fa  #00000028
        :pswitch_1f7  #00000029
        :pswitch_1f4  #0000002a
        :pswitch_1f1  #0000002b
        :pswitch_1ee  #0000002c
        :pswitch_1eb  #0000002d
        :pswitch_1e8  #0000002e
        :pswitch_1e5  #0000002f
        :pswitch_1e2  #00000030
        :pswitch_1df  #00000031
        :pswitch_1dc  #00000032
        :pswitch_1d9  #00000033
        :pswitch_1d6  #00000034
        :pswitch_1d3  #00000035
        :pswitch_1d0  #00000036
        :pswitch_1cd  #00000037
        :pswitch_1ca  #00000038
        :pswitch_1c7  #00000039
        :pswitch_1c4  #0000003a
        :pswitch_1c1  #0000003b
        :pswitch_1be  #0000003c
        :pswitch_1bb  #0000003d
        :pswitch_1b8  #0000003e
        :pswitch_1b5  #0000003f
        :pswitch_1b2  #00000040
        :pswitch_1af  #00000041
        :pswitch_1ac  #00000042
        :pswitch_1a9  #00000043
        :pswitch_1a6  #00000044
        :pswitch_1a3  #00000045
        :pswitch_1a0  #00000046
        :pswitch_19d  #00000047
        :pswitch_19a  #00000048
        :pswitch_197  #00000049
        :pswitch_194  #0000004a
        :pswitch_191  #0000004b
        :pswitch_18e  #0000004c
        :pswitch_18b  #0000004d
        :pswitch_188  #0000004e
        :pswitch_185  #0000004f
        :pswitch_182  #00000050
        :pswitch_17f  #00000051
        :pswitch_17c  #00000052
        :pswitch_179  #00000053
        :pswitch_176  #00000054
        :pswitch_173  #00000055
        :pswitch_170  #00000056
        :pswitch_16d  #00000057
        :pswitch_16a  #00000058
        :pswitch_167  #00000059
        :pswitch_164  #0000005a
        :pswitch_161  #0000005b
        :pswitch_15e  #0000005c
        :pswitch_15b  #0000005d
        :pswitch_158  #0000005e
        :pswitch_155  #0000005f
        :pswitch_152  #00000060
        :pswitch_14f  #00000061
        :pswitch_14c  #00000062
        :pswitch_149  #00000063
        :pswitch_146  #00000064
        :pswitch_143  #00000065
        :pswitch_140  #00000066
        :pswitch_13d  #00000067
        :pswitch_13a  #00000068
        :pswitch_137  #00000069
        :pswitch_134  #0000006a
        :pswitch_131  #0000006b
        :pswitch_12e  #0000006c
        :pswitch_12b  #0000006d
        :pswitch_128  #0000006e
        :pswitch_125  #0000006f
        :pswitch_122  #00000070
        :pswitch_11f  #00000071
        :pswitch_11c  #00000072
        :pswitch_119  #00000073
        :pswitch_116  #00000074
        :pswitch_113  #00000075
        :pswitch_110  #00000076
        :pswitch_10d  #00000077
        :pswitch_10a  #00000078
        :pswitch_107  #00000079
        :pswitch_104  #0000007a
        :pswitch_101  #0000007b
        :pswitch_fe  #0000007c
        :pswitch_fb  #0000007d
        :pswitch_f8  #0000007e
        :pswitch_f5  #0000007f
        :pswitch_f2  #00000080
        :pswitch_ef  #00000081
        :pswitch_ec  #00000082
        :pswitch_e9  #00000083
        :pswitch_e6  #00000084
        :pswitch_e3  #00000085
        :pswitch_e0  #00000086
        :pswitch_dd  #00000087
        :pswitch_da  #00000088
        :pswitch_d7  #00000089
        :pswitch_d4  #0000008a
        :pswitch_d1  #0000008b
        :pswitch_ce  #0000008c
        :pswitch_cb  #0000008d
        :pswitch_c8  #0000008e
        :pswitch_c5  #0000008f
        :pswitch_c2  #00000090
        :pswitch_bf  #00000091
        :pswitch_bc  #00000092
        :pswitch_b9  #00000093
        :pswitch_b6  #00000094
        :pswitch_b3  #00000095
        :pswitch_b0  #00000096
        :pswitch_ad  #00000097
        :pswitch_aa  #00000098
        :pswitch_a7  #00000099
        :pswitch_a4  #0000009a
        :pswitch_a1  #0000009b
        :pswitch_9e  #0000009c
        :pswitch_9b  #0000009d
        :pswitch_98  #0000009e
        :pswitch_95  #0000009f
        :pswitch_92  #000000a0
        :pswitch_8f  #000000a1
        :pswitch_8c  #000000a2
        :pswitch_89  #000000a3
        :pswitch_86  #000000a4
        :pswitch_83  #000000a5
        :pswitch_80  #000000a6
        :pswitch_7d  #000000a7
        :pswitch_7a  #000000a8
        :pswitch_77  #000000a9
        :pswitch_74  #000000aa
        :pswitch_71  #000000ab
        :pswitch_6e  #000000ac
        :pswitch_6b  #000000ad
        :pswitch_68  #000000ae
        :pswitch_65  #000000af
        :pswitch_62  #000000b0
        :pswitch_5f  #000000b1
        :pswitch_5c  #000000b2
        :pswitch_59  #000000b3
        :pswitch_56  #000000b4
        :pswitch_53  #000000b5
        :pswitch_50  #000000b6
        :pswitch_4d  #000000b7
        :pswitch_4a  #000000b8
        :pswitch_47  #000000b9
        :pswitch_44  #000000ba
        :pswitch_41  #000000bb
        :pswitch_3e  #000000bc
        :pswitch_3b  #000000bd
        :pswitch_38  #000000be
        :pswitch_35  #000000bf
        :pswitch_32  #000000c0
        :pswitch_2f  #000000c1
        :pswitch_2c  #000000c2
        :pswitch_29  #000000c3
        :pswitch_26  #000000c4
        :pswitch_23  #000000c5
        :pswitch_20  #000000c6
        :pswitch_1d  #000000c7
        :pswitch_1a  #000000c8
        :pswitch_17  #000000c9
        :pswitch_14  #000000ca
        :pswitch_11  #000000cb
        :pswitch_e  #000000cc
        :pswitch_b  #000000cd
        :pswitch_8  #000000ce
        :pswitch_5  #000000cf
    .end packed-switch
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    return-object p0
.end method

.method public getMaxTransactionId()I
    .registers 2

    const/16 v0, 0xce

    return v0
.end method

.method public getTransactionName(I)Ljava/lang/String;
    .registers 3

    invoke-static {p1}, Landroid/media/IAudioService$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 32
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    move-object/from16 v11, p0

    move/from16 v12, p1

    move-object/from16 v13, p2

    move-object/from16 v14, p3

    const-string v15, "android.media.IAudioService"

    const/4 v10, 0x1

    if-lt v12, v10, :cond_15

    const v0, 0xffffff

    if-gt v12, v0, :cond_15

    invoke-virtual {v13, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    :cond_15
    packed-switch v12, :pswitch_data_1268

    packed-switch v12, :pswitch_data_126e

    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    :pswitch_20  #0x5f4e5446
    invoke-virtual {v14, v15}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v10

    :pswitch_24  #0xcf
    invoke-virtual/range {p0 .. p0}, Landroid/media/IAudioService$Stub;->getHalVersion()Ljava/lang/String;

    move-result-object v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v14, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move/from16 v26, v10

    goto/16 :goto_1267

    :pswitch_32  #0xce
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v7

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/media/IAudioDeviceVolumeDispatcher$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/IAudioDeviceVolumeDispatcher;

    move-result-object v8

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v9

    sget-object v0, Landroid/media/AudioDeviceAttributes;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v16, v0

    check-cast v16, Landroid/media/AudioDeviceAttributes;

    sget-object v0, Landroid/media/VolumeInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v17

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v18

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    move-object/from16 v0, p0

    move v1, v7

    move-object v2, v8

    move-object v3, v9

    move-object/from16 v4, v16

    move-object/from16 v5, v17

    move/from16 v6, v18

    invoke-virtual/range {v0 .. v6}, Landroid/media/IAudioService$Stub;->registerDeviceVolumeDispatcherForAbsoluteVolume(ZLandroid/media/IAudioDeviceVolumeDispatcher;Ljava/lang/String;Landroid/media/AudioDeviceAttributes;Ljava/util/List;Z)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move/from16 v26, v10

    goto/16 :goto_1267

    :pswitch_6e  #0xcd
    invoke-virtual/range {p0 .. p0}, Landroid/media/IAudioService$Stub;->getActiveAssistantServiceUids()[I

    move-result-object v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v14, v0}, Landroid/os/Parcel;->writeIntArray([I)V

    move/from16 v26, v10

    goto/16 :goto_1267

    :pswitch_7c  #0xcc
    invoke-virtual/range {p0 .. p0}, Landroid/media/IAudioService$Stub;->getAssistantServicesUids()[I

    move-result-object v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v14, v0}, Landroid/os/Parcel;->writeIntArray([I)V

    move/from16 v26, v10

    goto/16 :goto_1267

    :pswitch_8a  #0xcb
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v11, v0}, Landroid/media/IAudioService$Stub;->setActiveAssistantServiceUids([I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move/from16 v26, v10

    goto/16 :goto_1267

    :pswitch_9b  #0xca
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v11, v0}, Landroid/media/IAudioService$Stub;->removeAssistantServicesUids([I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move/from16 v26, v10

    goto/16 :goto_1267

    :pswitch_ac  #0xc9
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v11, v0}, Landroid/media/IAudioService$Stub;->addAssistantServicesUids([I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move/from16 v26, v10

    goto/16 :goto_1267

    :pswitch_bd  #0xc8
    sget-object v0, Landroid/media/AudioFocusInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioFocusInfo;

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/media/audiopolicy/IAudioPolicyCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/audiopolicy/IAudioPolicyCallback;

    move-result-object v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v11, v0, v1}, Landroid/media/IAudioService$Stub;->sendFocusLoss(Landroid/media/AudioFocusInfo;Landroid/media/audiopolicy/IAudioPolicyCallback;)Z

    move-result v2

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v14, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    move/from16 v26, v10

    goto/16 :goto_1267

    :pswitch_de  #0xc7
    invoke-virtual/range {p0 .. p0}, Landroid/media/IAudioService$Stub;->getFocusStack()Ljava/util/List;

    move-result-object v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v14, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    move/from16 v26, v10

    goto/16 :goto_1267

    :pswitch_ec  #0xc6
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/media/IDeviceVolumeBehaviorDispatcher$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/IDeviceVolumeBehaviorDispatcher;

    move-result-object v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v11, v0, v1}, Landroid/media/IAudioService$Stub;->registerDeviceVolumeBehaviorDispatcher(ZLandroid/media/IDeviceVolumeBehaviorDispatcher;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move/from16 v26, v10

    goto/16 :goto_1267

    :pswitch_105  #0xc5
    sget-object v0, Landroid/media/AudioDeviceAttributes;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioDeviceAttributes;

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v11, v0, v1}, Landroid/media/IAudioService$Stub;->setTestDeviceConnectionState(Landroid/media/AudioDeviceAttributes;Z)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move/from16 v26, v10

    goto/16 :goto_1267

    :pswitch_11e  #0xc4
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/media/IMuteAwaitConnectionCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/IMuteAwaitConnectionCallback;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v11, v0, v1}, Landroid/media/IAudioService$Stub;->registerMuteAwaitConnectionDispatcher(Landroid/media/IMuteAwaitConnectionCallback;Z)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move/from16 v26, v10

    goto/16 :goto_1267

    :pswitch_137  #0xc3
    invoke-virtual/range {p0 .. p0}, Landroid/media/IAudioService$Stub;->getMutingExpectedDevice()Landroid/media/AudioDeviceAttributes;

    move-result-object v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v14, v0, v10}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    move/from16 v26, v10

    goto/16 :goto_1267

    :pswitch_145  #0xc2
    sget-object v0, Landroid/media/AudioDeviceAttributes;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioDeviceAttributes;

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v11, v0}, Landroid/media/IAudioService$Stub;->cancelMuteAwaitConnection(Landroid/media/AudioDeviceAttributes;)V

    move/from16 v26, v10

    goto/16 :goto_1267

    :pswitch_157  #0xc1
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v0

    sget-object v1, Landroid/media/AudioDeviceAttributes;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioDeviceAttributes;

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v11, v0, v1, v2, v3}, Landroid/media/IAudioService$Stub;->muteAwaitConnection([ILandroid/media/AudioDeviceAttributes;J)V

    move/from16 v26, v10

    goto/16 :goto_1267

    :pswitch_171  #0xc0
    invoke-virtual/range {p0 .. p0}, Landroid/media/IAudioService$Stub;->isPstnCallAudioInterceptable()Z

    move-result v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v14, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    move/from16 v26, v10

    goto/16 :goto_1267

    :pswitch_17f  #0xbf
    invoke-virtual/range {p0 .. p0}, Landroid/media/IAudioService$Stub;->getDefaultVolumeInfo()Landroid/media/VolumeInfo;

    move-result-object v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v14, v0, v10}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    move/from16 v26, v10

    goto/16 :goto_1267

    :pswitch_18d  #0xbe
    invoke-virtual/range {p0 .. p0}, Landroid/media/IAudioService$Stub;->isVolumeFixed()Z

    move-result v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v14, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    move/from16 v26, v10

    goto/16 :goto_1267

    :pswitch_19b  #0xbd
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/media/ISpatializerOutputCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/ISpatializerOutputCallback;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v11, v0}, Landroid/media/IAudioService$Stub;->unregisterSpatializerOutputCallback(Landroid/media/ISpatializerOutputCallback;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move/from16 v26, v10

    goto/16 :goto_1267

    :pswitch_1b0  #0xbc
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/media/ISpatializerOutputCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/ISpatializerOutputCallback;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v11, v0}, Landroid/media/IAudioService$Stub;->registerSpatializerOutputCallback(Landroid/media/ISpatializerOutputCallback;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move/from16 v26, v10

    goto/16 :goto_1267

    :pswitch_1c5  #0xbb
    invoke-virtual/range {p0 .. p0}, Landroid/media/IAudioService$Stub;->getSpatializerOutput()I

    move-result v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v14, v0}, Landroid/os/Parcel;->writeInt(I)V

    move/from16 v26, v10

    goto/16 :goto_1267

    :pswitch_1d3  #0xba
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v11, v0, v1}, Landroid/media/IAudioService$Stub;->getSpatializerParameter(I[B)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v14, v1}, Landroid/os/Parcel;->writeByteArray([B)V

    move/from16 v26, v10

    goto/16 :goto_1267

    :pswitch_1eb  #0xb9
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v11, v0, v1}, Landroid/media/IAudioService$Stub;->setSpatializerParameter(I[B)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move/from16 v26, v10

    goto/16 :goto_1267

    :pswitch_200  #0xb8
    invoke-virtual/range {p0 .. p0}, Landroid/media/IAudioService$Stub;->recenterHeadTracker()V

    move/from16 v26, v10

    goto/16 :goto_1267

    :pswitch_207  #0xb7
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createFloatArray()[F

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v11, v0}, Landroid/media/IAudioService$Stub;->setSpatializerGlobalTransform([F)V

    move/from16 v26, v10

    goto/16 :goto_1267

    :pswitch_215  #0xb6
    invoke-virtual/range {p0 .. p0}, Landroid/media/IAudioService$Stub;->getActualHeadTrackingMode()I

    move-result v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v14, v0}, Landroid/os/Parcel;->writeInt(I)V

    move/from16 v26, v10

    goto/16 :goto_1267

    :pswitch_223  #0xb5
    invoke-virtual/range {p0 .. p0}, Landroid/media/IAudioService$Stub;->getSupportedHeadTrackingModes()[I

    move-result-object v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v14, v0}, Landroid/os/Parcel;->writeIntArray([I)V

    move/from16 v26, v10

    goto/16 :goto_1267

    :pswitch_231  #0xb4
    invoke-virtual/range {p0 .. p0}, Landroid/media/IAudioService$Stub;->getDesiredHeadTrackingMode()I

    move-result v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v14, v0}, Landroid/os/Parcel;->writeInt(I)V

    move/from16 v26, v10

    goto/16 :goto_1267

    :pswitch_23f  #0xb3
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v11, v0}, Landroid/media/IAudioService$Stub;->setDesiredHeadTrackingMode(I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move/from16 v26, v10

    goto/16 :goto_1267

    :pswitch_250  #0xb2
    sget-object v0, Landroid/media/AudioDeviceAttributes;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioDeviceAttributes;

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v11, v0}, Landroid/media/IAudioService$Stub;->removeSpatializerCompatibleAudioDevice(Landroid/media/AudioDeviceAttributes;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move/from16 v26, v10

    goto/16 :goto_1267

    :pswitch_265  #0xb1
    sget-object v0, Landroid/media/AudioDeviceAttributes;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioDeviceAttributes;

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v11, v0}, Landroid/media/IAudioService$Stub;->addSpatializerCompatibleAudioDevice(Landroid/media/AudioDeviceAttributes;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move/from16 v26, v10

    goto/16 :goto_1267

    :pswitch_27a  #0xb0
    invoke-virtual/range {p0 .. p0}, Landroid/media/IAudioService$Stub;->getSpatializerCompatibleAudioDevices()Ljava/util/List;

    move-result-object v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v14, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    move/from16 v26, v10

    goto/16 :goto_1267

    :pswitch_288  #0xaf
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/media/ISpatializerHeadToSoundStagePoseCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/ISpatializerHeadToSoundStagePoseCallback;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v11, v0}, Landroid/media/IAudioService$Stub;->unregisterHeadToSoundstagePoseCallback(Landroid/media/ISpatializerHeadToSoundStagePoseCallback;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move/from16 v26, v10

    goto/16 :goto_1267

    :pswitch_29d  #0xae
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/media/ISpatializerHeadToSoundStagePoseCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/ISpatializerHeadToSoundStagePoseCallback;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v11, v0}, Landroid/media/IAudioService$Stub;->registerHeadToSoundstagePoseCallback(Landroid/media/ISpatializerHeadToSoundStagePoseCallback;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move/from16 v26, v10

    goto/16 :goto_1267

    :pswitch_2b2  #0xad
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/media/ISpatializerHeadTrackingModeCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/ISpatializerHeadTrackingModeCallback;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v11, v0}, Landroid/media/IAudioService$Stub;->unregisterSpatializerHeadTrackingCallback(Landroid/media/ISpatializerHeadTrackingModeCallback;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move/from16 v26, v10

    goto/16 :goto_1267

    :pswitch_2c7  #0xac
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/media/ISpatializerHeadTrackingModeCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/ISpatializerHeadTrackingModeCallback;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v11, v0}, Landroid/media/IAudioService$Stub;->registerSpatializerHeadTrackingCallback(Landroid/media/ISpatializerHeadTrackingModeCallback;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move/from16 v26, v10

    goto/16 :goto_1267

    :pswitch_2dc  #0xab
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/media/ISpatializerCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/ISpatializerCallback;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v11, v0}, Landroid/media/IAudioService$Stub;->unregisterSpatializerCallback(Landroid/media/ISpatializerCallback;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move/from16 v26, v10

    goto/16 :goto_1267

    :pswitch_2f1  #0xaa
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/media/ISpatializerCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/ISpatializerCallback;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v11, v0}, Landroid/media/IAudioService$Stub;->registerSpatializerCallback(Landroid/media/ISpatializerCallback;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move/from16 v26, v10

    goto/16 :goto_1267

    :pswitch_306  #0xa9
    sget-object v0, Landroid/media/AudioAttributes;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioAttributes;

    sget-object v1, Landroid/media/AudioFormat;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioFormat;

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v11, v0, v1}, Landroid/media/IAudioService$Stub;->canBeSpatialized(Landroid/media/AudioAttributes;Landroid/media/AudioFormat;)Z

    move-result v2

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v14, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    move/from16 v26, v10

    goto/16 :goto_1267

    :pswitch_327  #0xa8
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v11, v0}, Landroid/media/IAudioService$Stub;->setSpatializerEnabled(Z)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move/from16 v26, v10

    goto/16 :goto_1267

    :pswitch_338  #0xa7
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/media/ISpatializerHeadTrackerAvailableCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/ISpatializerHeadTrackerAvailableCallback;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v11, v0, v1}, Landroid/media/IAudioService$Stub;->registerSpatializerHeadTrackerAvailableCallback(Landroid/media/ISpatializerHeadTrackerAvailableCallback;Z)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move/from16 v26, v10

    goto/16 :goto_1267

    :pswitch_351  #0xa6
    invoke-virtual/range {p0 .. p0}, Landroid/media/IAudioService$Stub;->isHeadTrackerAvailable()Z

    move-result v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v14, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    move/from16 v26, v10

    goto/16 :goto_1267

    :pswitch_35f  #0xa5
    sget-object v0, Landroid/media/AudioDeviceAttributes;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioDeviceAttributes;

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v11, v0}, Landroid/media/IAudioService$Stub;->isHeadTrackerEnabled(Landroid/media/AudioDeviceAttributes;)Z

    move-result v1

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v14, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    move/from16 v26, v10

    goto/16 :goto_1267

    :pswitch_378  #0xa4
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    sget-object v1, Landroid/media/AudioDeviceAttributes;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioDeviceAttributes;

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v11, v0, v1}, Landroid/media/IAudioService$Stub;->setHeadTrackerEnabled(ZLandroid/media/AudioDeviceAttributes;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move/from16 v26, v10

    goto/16 :goto_1267

    :pswitch_391  #0xa3
    sget-object v0, Landroid/media/AudioDeviceAttributes;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioDeviceAttributes;

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v11, v0}, Landroid/media/IAudioService$Stub;->hasHeadTracker(Landroid/media/AudioDeviceAttributes;)Z

    move-result v1

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v14, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    move/from16 v26, v10

    goto/16 :goto_1267

    :pswitch_3aa  #0xa2
    sget-object v0, Landroid/media/AudioDeviceAttributes;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioDeviceAttributes;

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v11, v0}, Landroid/media/IAudioService$Stub;->isSpatializerAvailableForDevice(Landroid/media/AudioDeviceAttributes;)Z

    move-result v1

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v14, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    move/from16 v26, v10

    goto/16 :goto_1267

    :pswitch_3c3  #0xa1
    invoke-virtual/range {p0 .. p0}, Landroid/media/IAudioService$Stub;->isSpatializerAvailable()Z

    move-result v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v14, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    move/from16 v26, v10

    goto/16 :goto_1267

    :pswitch_3d1  #0xa0
    invoke-virtual/range {p0 .. p0}, Landroid/media/IAudioService$Stub;->isSpatializerEnabled()Z

    move-result v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v14, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    move/from16 v26, v10

    goto/16 :goto_1267

    :pswitch_3df  #0x9f
    invoke-virtual/range {p0 .. p0}, Landroid/media/IAudioService$Stub;->getSpatializerImmersiveAudioLevel()I

    move-result v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v14, v0}, Landroid/os/Parcel;->writeInt(I)V

    move/from16 v26, v10

    goto/16 :goto_1267

    :pswitch_3ed  #0x9e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/media/IAudioModeDispatcher$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/IAudioModeDispatcher;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v11, v0}, Landroid/media/IAudioService$Stub;->unregisterModeDispatcher(Landroid/media/IAudioModeDispatcher;)V

    move/from16 v26, v10

    goto/16 :goto_1267

    :pswitch_3ff  #0x9d
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/media/IAudioModeDispatcher$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/IAudioModeDispatcher;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v11, v0}, Landroid/media/IAudioService$Stub;->registerModeDispatcher(Landroid/media/IAudioModeDispatcher;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move/from16 v26, v10

    goto/16 :goto_1267

    :pswitch_414  #0x9c
    sget-object v0, Landroid/media/AudioAttributes;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioAttributes;

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v11, v0}, Landroid/media/IAudioService$Stub;->getFadeOutDurationOnFocusLossMillis(Landroid/media/AudioAttributes;)J

    move-result-wide v1

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v14, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    move/from16 v26, v10

    goto/16 :goto_1267

    :pswitch_42d  #0x9b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/media/IAudioFocusDispatcher$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/IAudioFocusDispatcher;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Landroid/media/AudioAttributes;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/AudioAttributes;

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v11, v0, v1, v2, v3}, Landroid/media/IAudioService$Stub;->abandonAudioFocusForTest(Landroid/media/IAudioFocusDispatcher;Ljava/lang/String;Landroid/media/AudioAttributes;Ljava/lang/String;)I

    move-result v4

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v14, v4}, Landroid/os/Parcel;->writeInt(I)V

    move/from16 v26, v10

    goto/16 :goto_1267

    :pswitch_456  #0x9a
    sget-object v0, Landroid/media/AudioAttributes;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v16, v0

    check-cast v16, Landroid/media/AudioAttributes;

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v18

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/media/IAudioFocusDispatcher$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/IAudioFocusDispatcher;

    move-result-object v19

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v22

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v23

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v24

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move/from16 v2, v17

    move-object/from16 v3, v18

    move-object/from16 v4, v19

    move-object/from16 v5, v20

    move-object/from16 v6, v21

    move/from16 v7, v22

    move/from16 v8, v23

    move/from16 v9, v24

    invoke-virtual/range {v0 .. v9}, Landroid/media/IAudioService$Stub;->requestAudioFocusForTest(Landroid/media/AudioAttributes;ILandroid/os/IBinder;Landroid/media/IAudioFocusDispatcher;Ljava/lang/String;Ljava/lang/String;III)I

    move-result v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v14, v0}, Landroid/os/Parcel;->writeInt(I)V

    move/from16 v26, v10

    goto/16 :goto_1267

    :pswitch_4a9  #0x99
    sget-object v0, Landroid/media/AudioDeviceAttributes;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioDeviceAttributes;

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v11, v0}, Landroid/media/IAudioService$Stub;->getMaxAdditionalOutputDeviceDelay(Landroid/media/AudioDeviceAttributes;)J

    move-result-wide v1

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v14, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    move/from16 v26, v10

    goto/16 :goto_1267

    :pswitch_4c2  #0x98
    sget-object v0, Landroid/media/AudioDeviceAttributes;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioDeviceAttributes;

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v11, v0}, Landroid/media/IAudioService$Stub;->getAdditionalOutputDeviceDelay(Landroid/media/AudioDeviceAttributes;)J

    move-result-wide v1

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v14, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    move/from16 v26, v10

    goto/16 :goto_1267

    :pswitch_4db  #0x97
    sget-object v0, Landroid/media/AudioDeviceAttributes;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioDeviceAttributes;

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v11, v0, v1, v2}, Landroid/media/IAudioService$Stub;->setAdditionalOutputDeviceDelay(Landroid/media/AudioDeviceAttributes;J)Z

    move-result v3

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v14, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    move/from16 v26, v10

    goto/16 :goto_1267

    :pswitch_4f8  #0x96
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v11, v0}, Landroid/media/IAudioService$Stub;->setHomeSoundEffectEnabled(Z)V

    move/from16 v26, v10

    goto/16 :goto_1267

    :pswitch_506  #0x95
    invoke-virtual/range {p0 .. p0}, Landroid/media/IAudioService$Stub;->isHomeSoundEffectEnabled()Z

    move-result v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v14, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    move/from16 v26, v10

    goto/16 :goto_1267

    :pswitch_514  #0x94
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v11, v0}, Landroid/media/IAudioService$Stub;->setNavigationRepeatSoundEffectsEnabled(Z)V

    move/from16 v26, v10

    goto/16 :goto_1267

    :pswitch_522  #0x93
    invoke-virtual/range {p0 .. p0}, Landroid/media/IAudioService$Stub;->areNavigationRepeatSoundEffectsEnabled()Z

    move-result v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v14, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    move/from16 v26, v10

    goto/16 :goto_1267

    :pswitch_530  #0x92
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/media/ICommunicationDeviceDispatcher$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/ICommunicationDeviceDispatcher;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v11, v0}, Landroid/media/IAudioService$Stub;->unregisterCommunicationDeviceDispatcher(Landroid/media/ICommunicationDeviceDispatcher;)V

    move/from16 v26, v10

    goto/16 :goto_1267

    :pswitch_542  #0x91
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/media/ICommunicationDeviceDispatcher$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/ICommunicationDeviceDispatcher;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v11, v0}, Landroid/media/IAudioService$Stub;->registerCommunicationDeviceDispatcher(Landroid/media/ICommunicationDeviceDispatcher;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move/from16 v26, v10

    goto/16 :goto_1267

    :pswitch_557  #0x90
    invoke-virtual/range {p0 .. p0}, Landroid/media/IAudioService$Stub;->getCommunicationDevice()I

    move-result v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v14, v0}, Landroid/os/Parcel;->writeInt(I)V

    move/from16 v26, v10

    goto/16 :goto_1267

    :pswitch_565  #0x8f
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v11, v0, v1}, Landroid/media/IAudioService$Stub;->setCommunicationDevice(Landroid/os/IBinder;I)Z

    move-result v2

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v14, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    move/from16 v26, v10

    goto/16 :goto_1267

    :pswitch_57e  #0x8e
    invoke-virtual/range {p0 .. p0}, Landroid/media/IAudioService$Stub;->getAvailableCommunicationDeviceIds()[I

    move-result-object v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v14, v0}, Landroid/os/Parcel;->writeIntArray([I)V

    move/from16 v26, v10

    goto/16 :goto_1267

    :pswitch_58c  #0x8d
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v11, v0}, Landroid/media/IAudioService$Stub;->getDeviceMaskForStream(I)I

    move-result v1

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v14, v1}, Landroid/os/Parcel;->writeInt(I)V

    move/from16 v26, v10

    goto/16 :goto_1267

    :pswitch_5a1  #0x8c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v11, v0}, Landroid/media/IAudioService$Stub;->isMusicActive(Z)Z

    move-result v1

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v14, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    move/from16 v26, v10

    goto/16 :goto_1267

    :pswitch_5b6  #0x8b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v16

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v19

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v20

    sget-object v0, Landroid/os/UserHandle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v21, v0

    check-cast v21, Landroid/os/UserHandle;

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v22

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    move-object/from16 v0, p0

    move v1, v9

    move/from16 v2, v16

    move/from16 v3, v17

    move-object/from16 v4, v18

    move/from16 v5, v19

    move/from16 v6, v20

    move-object/from16 v7, v21

    move/from16 v8, v22

    invoke-virtual/range {v0 .. v8}, Landroid/media/IAudioService$Stub;->setStreamVolumeForUid(IIILjava/lang/String;IILandroid/os/UserHandle;I)V

    move/from16 v26, v10

    goto/16 :goto_1267

    :pswitch_5f7  #0x8a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v16

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v19

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v20

    sget-object v0, Landroid/os/UserHandle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v21, v0

    check-cast v21, Landroid/os/UserHandle;

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v22

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    move-object/from16 v0, p0

    move v1, v9

    move/from16 v2, v16

    move/from16 v3, v17

    move-object/from16 v4, v18

    move/from16 v5, v19

    move/from16 v6, v20

    move-object/from16 v7, v21

    move/from16 v8, v22

    invoke-virtual/range {v0 .. v8}, Landroid/media/IAudioService$Stub;->adjustSuggestedStreamVolumeForUid(IIILjava/lang/String;IILandroid/os/UserHandle;I)V

    move/from16 v26, v10

    goto/16 :goto_1267

    :pswitch_638  #0x89
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v16

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v19

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v20

    sget-object v0, Landroid/os/UserHandle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v21, v0

    check-cast v21, Landroid/os/UserHandle;

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v22

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    move-object/from16 v0, p0

    move v1, v9

    move/from16 v2, v16

    move/from16 v3, v17

    move-object/from16 v4, v18

    move/from16 v5, v19

    move/from16 v6, v20

    move-object/from16 v7, v21

    move/from16 v8, v22

    invoke-virtual/range {v0 .. v8}, Landroid/media/IAudioService$Stub;->adjustStreamVolumeForUid(IIILjava/lang/String;IILandroid/os/UserHandle;I)V

    move/from16 v26, v10

    goto/16 :goto_1267

    :pswitch_679  #0x88
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/media/ICapturePresetDevicesRoleDispatcher$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/ICapturePresetDevicesRoleDispatcher;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v11, v0}, Landroid/media/IAudioService$Stub;->unregisterCapturePresetDevicesRoleDispatcher(Landroid/media/ICapturePresetDevicesRoleDispatcher;)V

    move/from16 v26, v10

    goto/16 :goto_1267

    :pswitch_68b  #0x87
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/media/ICapturePresetDevicesRoleDispatcher$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/ICapturePresetDevicesRoleDispatcher;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v11, v0}, Landroid/media/IAudioService$Stub;->registerCapturePresetDevicesRoleDispatcher(Landroid/media/ICapturePresetDevicesRoleDispatcher;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move/from16 v26, v10

    goto/16 :goto_1267

    :pswitch_6a0  #0x86
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v11, v0}, Landroid/media/IAudioService$Stub;->getPreferredDevicesForCapturePreset(I)Ljava/util/List;

    move-result-object v1

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v14, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    move/from16 v26, v10

    goto/16 :goto_1267

    :pswitch_6b5  #0x85
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v11, v0}, Landroid/media/IAudioService$Stub;->clearPreferredDevicesForCapturePreset(I)I

    move-result v1

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v14, v1}, Landroid/os/Parcel;->writeInt(I)V

    move/from16 v26, v10

    goto/16 :goto_1267

    :pswitch_6ca  #0x84
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    sget-object v1, Landroid/media/AudioDeviceAttributes;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v1}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v11, v0, v1}, Landroid/media/IAudioService$Stub;->setPreferredDevicesForCapturePreset(ILjava/util/List;)I

    move-result v2

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v14, v2}, Landroid/os/Parcel;->writeInt(I)V

    move/from16 v26, v10

    goto/16 :goto_1267

    :pswitch_6e5  #0x83
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v11, v0, v1}, Landroid/media/IAudioService$Stub;->cacheParameters(Landroid/os/IBinder;Ljava/lang/String;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move/from16 v26, v10

    goto/16 :goto_1267

    :pswitch_6fa  #0x82
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v11, v0}, Landroid/media/IAudioService$Stub;->setMultiAudioFocusEnabled(Z)V

    move/from16 v26, v10

    goto/16 :goto_1267

    :pswitch_708  #0x81
    invoke-virtual/range {p0 .. p0}, Landroid/media/IAudioService$Stub;->getAudioPolicyMatchUids()[I

    move-result-object v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v14, v0}, Landroid/os/Parcel;->writeIntArray([I)V

    move/from16 v26, v10

    goto/16 :goto_1267

    :pswitch_716  #0x80
    sget-object v0, Landroid/os/ParcelFileDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/ParcelFileDescriptor;

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v11, v0, v1, v2, v3}, Landroid/media/IAudioService$Stub;->createAudioRecordForLoopbackWithClient(Landroid/os/ParcelFileDescriptor;JLandroid/os/IBinder;)Landroid/os/IBinder;

    move-result-object v4

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v14, v4}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    move/from16 v26, v10

    goto/16 :goto_1267

    :pswitch_737  #0x7f
    sget-object v0, Landroid/os/ParcelFileDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/ParcelFileDescriptor;

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v11, v0, v1, v2}, Landroid/media/IAudioService$Stub;->createAudioRecordForLoopback(Landroid/os/ParcelFileDescriptor;J)Landroid/os/IBinder;

    move-result-object v3

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v14, v3}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    move/from16 v26, v10

    goto/16 :goto_1267

    :pswitch_754  #0x7e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v11, v0, v1}, Landroid/media/IAudioService$Stub;->getDeviceStreamVolume(II)I

    move-result v2

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v14, v2}, Landroid/os/Parcel;->writeInt(I)V

    move/from16 v26, v10

    goto/16 :goto_1267

    :pswitch_76d  #0x7d
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v11, v0}, Landroid/media/IAudioService$Stub;->getNotificationUri(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v14, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move/from16 v26, v10

    goto/16 :goto_1267

    :pswitch_782  #0x7c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v11, v0}, Landroid/media/IAudioService$Stub;->getPlayerVolume(Ljava/lang/String;)F

    move-result v1

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v14, v1}, Landroid/os/Parcel;->writeFloat(F)V

    move/from16 v26, v10

    goto/16 :goto_1267

    :pswitch_797  #0x7b
    sget-object v0, Landroid/media/AudioPlaybackConfiguration;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioPlaybackConfiguration;

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readFloat()F

    move-result v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v11, v0, v1}, Landroid/media/IAudioService$Stub;->setPlayerVolume(Landroid/media/AudioPlaybackConfiguration;F)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move/from16 v26, v10

    goto/16 :goto_1267

    :pswitch_7b0  #0x7a
    sget-object v0, Landroid/media/AudioDeviceAttributes;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioDeviceAttributes;

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v11, v0}, Landroid/media/IAudioService$Stub;->getDeviceVolumeBehavior(Landroid/media/AudioDeviceAttributes;)I

    move-result v1

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v14, v1}, Landroid/os/Parcel;->writeInt(I)V

    move/from16 v26, v10

    goto/16 :goto_1267

    :pswitch_7c9  #0x79
    sget-object v0, Landroid/media/AudioDeviceAttributes;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioDeviceAttributes;

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v11, v0, v1, v2}, Landroid/media/IAudioService$Stub;->setDeviceVolumeBehavior(Landroid/media/AudioDeviceAttributes;ILjava/lang/String;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move/from16 v26, v10

    goto/16 :goto_1267

    :pswitch_7e6  #0x78
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v11, v0}, Landroid/media/IAudioService$Stub;->setRttEnabled(Z)V

    move/from16 v26, v10

    goto/16 :goto_1267

    :pswitch_7f4  #0x77
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/media/IStrategyPreferredDevicesDispatcher$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/IStrategyPreferredDevicesDispatcher;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v11, v0}, Landroid/media/IAudioService$Stub;->unregisterStrategyPreferredDevicesDispatcher(Landroid/media/IStrategyPreferredDevicesDispatcher;)V

    move/from16 v26, v10

    goto/16 :goto_1267

    :pswitch_806  #0x76
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/media/IStrategyPreferredDevicesDispatcher$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/IStrategyPreferredDevicesDispatcher;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v11, v0}, Landroid/media/IAudioService$Stub;->registerStrategyPreferredDevicesDispatcher(Landroid/media/IStrategyPreferredDevicesDispatcher;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move/from16 v26, v10

    goto/16 :goto_1267

    :pswitch_81b  #0x75
    invoke-virtual/range {p0 .. p0}, Landroid/media/IAudioService$Stub;->getAllowedCapturePolicy()I

    move-result v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v14, v0}, Landroid/os/Parcel;->writeInt(I)V

    move/from16 v26, v10

    goto/16 :goto_1267

    :pswitch_829  #0x74
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v11, v0}, Landroid/media/IAudioService$Stub;->setAllowedCapturePolicy(I)I

    move-result v1

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v14, v1}, Landroid/os/Parcel;->writeInt(I)V

    move/from16 v26, v10

    goto/16 :goto_1267

    :pswitch_83e  #0x73
    sget-object v0, Landroid/media/AudioAttributes;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioAttributes;

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v11, v0}, Landroid/media/IAudioService$Stub;->getDevicesForAttributesUnprotected(Landroid/media/AudioAttributes;)Ljava/util/List;

    move-result-object v1

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v14, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    move/from16 v26, v10

    goto/16 :goto_1267

    :pswitch_857  #0x72
    sget-object v0, Landroid/media/AudioAttributes;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioAttributes;

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v11, v0}, Landroid/media/IAudioService$Stub;->getDevicesForAttributes(Landroid/media/AudioAttributes;)Ljava/util/List;

    move-result-object v1

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v14, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    move/from16 v26, v10

    goto/16 :goto_1267

    :pswitch_870  #0x71
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v11, v0}, Landroid/media/IAudioService$Stub;->getPreferredDevicesForStrategy(I)Ljava/util/List;

    move-result-object v1

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v14, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    move/from16 v26, v10

    goto/16 :goto_1267

    :pswitch_885  #0x70
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v11, v0}, Landroid/media/IAudioService$Stub;->removePreferredDevicesForStrategy(I)I

    move-result v1

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v14, v1}, Landroid/os/Parcel;->writeInt(I)V

    move/from16 v26, v10

    goto/16 :goto_1267

    :pswitch_89a  #0x6f
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    sget-object v1, Landroid/media/AudioDeviceAttributes;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v1}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v11, v0, v1}, Landroid/media/IAudioService$Stub;->setPreferredDevicesForStrategy(ILjava/util/List;)I

    move-result v2

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v14, v2}, Landroid/os/Parcel;->writeInt(I)V

    move/from16 v26, v10

    goto/16 :goto_1267

    :pswitch_8b5  #0x6e
    invoke-virtual/range {p0 .. p0}, Landroid/media/IAudioService$Stub;->isCallScreeningModeSupported()Z

    move-result v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v14, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    move/from16 v26, v10

    goto/16 :goto_1267

    :pswitch_8c3  #0x6d
    sget-object v0, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v11, v0}, Landroid/media/IAudioService$Stub;->hasHapticChannels(Landroid/net/Uri;)Z

    move-result v1

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v14, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    move/from16 v26, v10

    goto/16 :goto_1267

    :pswitch_8dc  #0x6c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/media/audiopolicy/IAudioPolicyCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/audiopolicy/IAudioPolicyCallback;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v11, v0, v1}, Landroid/media/IAudioService$Stub;->removeUserIdDeviceAffinity(Landroid/media/audiopolicy/IAudioPolicyCallback;I)I

    move-result v2

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v14, v2}, Landroid/os/Parcel;->writeInt(I)V

    move/from16 v26, v10

    goto/16 :goto_1267

    :pswitch_8f9  #0x6b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/media/audiopolicy/IAudioPolicyCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/audiopolicy/IAudioPolicyCallback;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v2

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v11, v0, v1, v2, v3}, Landroid/media/IAudioService$Stub;->setUserIdDeviceAffinity(Landroid/media/audiopolicy/IAudioPolicyCallback;I[I[Ljava/lang/String;)I

    move-result v4

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v14, v4}, Landroid/os/Parcel;->writeInt(I)V

    move/from16 v26, v10

    goto/16 :goto_1267

    :pswitch_91e  #0x6a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/media/audiopolicy/IAudioPolicyCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/audiopolicy/IAudioPolicyCallback;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v11, v0, v1}, Landroid/media/IAudioService$Stub;->removeUidDeviceAffinity(Landroid/media/audiopolicy/IAudioPolicyCallback;I)I

    move-result v2

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v14, v2}, Landroid/os/Parcel;->writeInt(I)V

    move/from16 v26, v10

    goto/16 :goto_1267

    :pswitch_93b  #0x69
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/media/audiopolicy/IAudioPolicyCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/audiopolicy/IAudioPolicyCallback;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v2

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v11, v0, v1, v2, v3}, Landroid/media/IAudioService$Stub;->setUidDeviceAffinity(Landroid/media/audiopolicy/IAudioPolicyCallback;I[I[Ljava/lang/String;)I

    move-result v4

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v14, v4}, Landroid/os/Parcel;->writeInt(I)V

    move/from16 v26, v10

    goto/16 :goto_1267

    :pswitch_960  #0x68
    invoke-virtual/range {p0 .. p0}, Landroid/media/IAudioService$Stub;->isAudioServerRunning()Z

    move-result v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v14, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    move/from16 v26, v10

    goto/16 :goto_1267

    :pswitch_96e  #0x67
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/media/IAudioServerStateDispatcher$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/IAudioServerStateDispatcher;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v11, v0}, Landroid/media/IAudioService$Stub;->unregisterAudioServerStateDispatcher(Landroid/media/IAudioServerStateDispatcher;)V

    move/from16 v26, v10

    goto/16 :goto_1267

    :pswitch_980  #0x66
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/media/IAudioServerStateDispatcher$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/IAudioServerStateDispatcher;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v11, v0}, Landroid/media/IAudioService$Stub;->registerAudioServerStateDispatcher(Landroid/media/IAudioServerStateDispatcher;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move/from16 v26, v10

    goto/16 :goto_1267

    :pswitch_995  #0x65
    sget-object v0, Landroid/media/AudioFocusInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioFocusInfo;

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/media/audiopolicy/IAudioPolicyCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/audiopolicy/IAudioPolicyCallback;

    move-result-object v2

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v11, v0, v1, v2}, Landroid/media/IAudioService$Stub;->setFocusRequestResultFromExtPolicy(Landroid/media/AudioFocusInfo;ILandroid/media/audiopolicy/IAudioPolicyCallback;)V

    move/from16 v26, v10

    goto/16 :goto_1267

    :pswitch_9b3  #0x64
    sget-object v0, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    sget-object v1, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothDevice;

    sget-object v2, Landroid/media/BluetoothProfileConnectionInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/BluetoothProfileConnectionInfo;

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v11, v0, v1, v2}, Landroid/media/IAudioService$Stub;->handleBluetoothActiveDeviceChanged(Landroid/bluetooth/BluetoothDevice;Landroid/bluetooth/BluetoothDevice;Landroid/media/BluetoothProfileConnectionInfo;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move/from16 v26, v10

    goto/16 :goto_1267

    :pswitch_9d8  #0x63
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v11, v0, v1}, Landroid/media/IAudioService$Stub;->playerHasOpPlayAudio(IZ)V

    move/from16 v26, v10

    goto/16 :goto_1267

    :pswitch_9ea  #0x62
    sget-object v0, Landroid/media/AudioFocusInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioFocusInfo;

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/media/audiopolicy/IAudioPolicyCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/audiopolicy/IAudioPolicyCallback;

    move-result-object v2

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v11, v0, v1, v2}, Landroid/media/IAudioService$Stub;->dispatchFocusChange(Landroid/media/AudioFocusInfo;ILandroid/media/audiopolicy/IAudioPolicyCallback;)I

    move-result v3

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v14, v3}, Landroid/os/Parcel;->writeInt(I)V

    move/from16 v26, v10

    goto/16 :goto_1267

    :pswitch_a0f  #0x61
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    sget-object v1, Landroid/media/AudioAttributes;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioAttributes;

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v11, v0, v1}, Landroid/media/IAudioService$Stub;->getFocusRampTimeMs(ILandroid/media/AudioAttributes;)I

    move-result v2

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v14, v2}, Landroid/os/Parcel;->writeInt(I)V

    move/from16 v26, v10

    goto/16 :goto_1267

    :pswitch_a2c  #0x60
    invoke-virtual/range {p0 .. p0}, Landroid/media/IAudioService$Stub;->getActivePlaybackConfigurations()Ljava/util/List;

    move-result-object v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v14, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    move/from16 v26, v10

    goto/16 :goto_1267

    :pswitch_a3a  #0x5f
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/media/IPlaybackConfigDispatcher$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/IPlaybackConfigDispatcher;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v11, v0}, Landroid/media/IAudioService$Stub;->unregisterPlaybackCallback(Landroid/media/IPlaybackConfigDispatcher;)V

    move/from16 v26, v10

    goto/16 :goto_1267

    :pswitch_a4c  #0x5e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/media/IPlaybackConfigDispatcher$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/IPlaybackConfigDispatcher;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v11, v0}, Landroid/media/IAudioService$Stub;->registerPlaybackCallback(Landroid/media/IPlaybackConfigDispatcher;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move/from16 v26, v10

    goto/16 :goto_1267

    :pswitch_a61  #0x5d
    invoke-virtual/range {p0 .. p0}, Landroid/media/IAudioService$Stub;->getActiveRecordingConfigurations()Ljava/util/List;

    move-result-object v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v14, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    move/from16 v26, v10

    goto/16 :goto_1267

    :pswitch_a6f  #0x5c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/media/IRecordingConfigDispatcher$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/IRecordingConfigDispatcher;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v11, v0}, Landroid/media/IAudioService$Stub;->unregisterRecordingCallback(Landroid/media/IRecordingConfigDispatcher;)V

    move/from16 v26, v10

    goto/16 :goto_1267

    :pswitch_a81  #0x5b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/media/IRecordingConfigDispatcher$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/IRecordingConfigDispatcher;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v11, v0}, Landroid/media/IAudioService$Stub;->registerRecordingCallback(Landroid/media/IRecordingConfigDispatcher;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move/from16 v26, v10

    goto/16 :goto_1267

    :pswitch_a96  #0x5a
    invoke-virtual/range {p0 .. p0}, Landroid/media/IAudioService$Stub;->hasRegisteredDynamicPolicy()Z

    move-result v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v14, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    move/from16 v26, v10

    goto/16 :goto_1267

    :pswitch_aa4  #0x59
    sget-object v0, Landroid/media/VolumePolicy;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/VolumePolicy;

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v11, v0}, Landroid/media/IAudioService$Stub;->setVolumePolicy(Landroid/media/VolumePolicy;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move/from16 v26, v10

    goto/16 :goto_1267

    :pswitch_ab9  #0x58
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/media/audiopolicy/IAudioPolicyCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/audiopolicy/IAudioPolicyCallback;

    move-result-object v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v11, v0, v1}, Landroid/media/IAudioService$Stub;->setFocusPropertiesForPolicy(ILandroid/media/audiopolicy/IAudioPolicyCallback;)I

    move-result v2

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v14, v2}, Landroid/os/Parcel;->writeInt(I)V

    move/from16 v26, v10

    goto/16 :goto_1267

    :pswitch_ad6  #0x57
    sget-object v0, Landroid/media/audiopolicy/AudioPolicyConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/audiopolicy/AudioPolicyConfig;

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/media/audiopolicy/IAudioPolicyCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/audiopolicy/IAudioPolicyCallback;

    move-result-object v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v11, v0, v1}, Landroid/media/IAudioService$Stub;->removeMixForPolicy(Landroid/media/audiopolicy/AudioPolicyConfig;Landroid/media/audiopolicy/IAudioPolicyCallback;)I

    move-result v2

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v14, v2}, Landroid/os/Parcel;->writeInt(I)V

    move/from16 v26, v10

    goto/16 :goto_1267

    :pswitch_af7  #0x56
    sget-object v0, Landroid/media/audiopolicy/AudioPolicyConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/audiopolicy/AudioPolicyConfig;

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/media/audiopolicy/IAudioPolicyCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/audiopolicy/IAudioPolicyCallback;

    move-result-object v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v11, v0, v1}, Landroid/media/IAudioService$Stub;->addMixForPolicy(Landroid/media/audiopolicy/AudioPolicyConfig;Landroid/media/audiopolicy/IAudioPolicyCallback;)I

    move-result v2

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v14, v2}, Landroid/os/Parcel;->writeInt(I)V

    move/from16 v26, v10

    goto/16 :goto_1267

    :pswitch_b18  #0x55
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/media/audiopolicy/IAudioPolicyCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/audiopolicy/IAudioPolicyCallback;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v11, v0}, Landroid/media/IAudioService$Stub;->unregisterAudioPolicy(Landroid/media/audiopolicy/IAudioPolicyCallback;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move/from16 v26, v10

    goto/16 :goto_1267

    :pswitch_b2d  #0x54
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/media/audiopolicy/IAudioPolicyCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/audiopolicy/IAudioPolicyCallback;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v11, v0}, Landroid/media/IAudioService$Stub;->unregisterAudioPolicyAsync(Landroid/media/audiopolicy/IAudioPolicyCallback;)V

    move/from16 v26, v10

    goto/16 :goto_1267

    :pswitch_b3f  #0x53
    sget-object v0, Landroid/media/audiopolicy/AudioPolicyConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Landroid/media/audiopolicy/AudioPolicyConfig;

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/media/audiopolicy/IAudioPolicyCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/audiopolicy/IAudioPolicyCallback;

    move-result-object v9

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v16

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v17

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v18

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v19

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/media/projection/IMediaProjection$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/projection/IMediaProjection;

    move-result-object v20

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    move-object/from16 v0, p0

    move-object v1, v8

    move-object v2, v9

    move/from16 v3, v16

    move/from16 v4, v17

    move/from16 v5, v18

    move/from16 v6, v19

    move-object/from16 v7, v20

    invoke-virtual/range {v0 .. v7}, Landroid/media/IAudioService$Stub;->registerAudioPolicy(Landroid/media/audiopolicy/AudioPolicyConfig;Landroid/media/audiopolicy/IAudioPolicyCallback;ZZZZLandroid/media/projection/IMediaProjection;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v14, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move/from16 v26, v10

    goto/16 :goto_1267

    :pswitch_b87  #0x52
    invoke-virtual/range {p0 .. p0}, Landroid/media/IAudioService$Stub;->isHdmiSystemAudioSupported()Z

    move-result v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v14, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    move/from16 v26, v10

    goto/16 :goto_1267

    :pswitch_b95  #0x51
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v11, v0}, Landroid/media/IAudioService$Stub;->setHdmiSystemAudioSupported(Z)I

    move-result v1

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v14, v1}, Landroid/os/Parcel;->writeInt(I)V

    move/from16 v26, v10

    goto/16 :goto_1267

    :pswitch_baa  #0x50
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v11, v0}, Landroid/media/IAudioService$Stub;->disableSafeMediaVolume(Ljava/lang/String;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move/from16 v26, v10

    goto/16 :goto_1267

    :pswitch_bbb  #0x4f
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v11, v0}, Landroid/media/IAudioService$Stub;->isStreamAffectedByMute(I)Z

    move-result v1

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v14, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    move/from16 v26, v10

    goto/16 :goto_1267

    :pswitch_bd0  #0x4e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v11, v0}, Landroid/media/IAudioService$Stub;->isStreamAffectedByRingerMode(I)Z

    move-result v1

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v14, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    move/from16 v26, v10

    goto/16 :goto_1267

    :pswitch_be5  #0x4d
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/media/IVolumeController$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/IVolumeController;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v11, v0, v1}, Landroid/media/IAudioService$Stub;->notifyVolumeControllerVisible(Landroid/media/IVolumeController;Z)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move/from16 v26, v10

    goto/16 :goto_1267

    :pswitch_bfe  #0x4c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/media/IVolumeController$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/IVolumeController;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v11, v0}, Landroid/media/IAudioService$Stub;->setVolumeController(Landroid/media/IVolumeController;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move/from16 v26, v10

    goto/16 :goto_1267

    :pswitch_c13  #0x4b
    invoke-virtual/range {p0 .. p0}, Landroid/media/IAudioService$Stub;->isCameraSoundForced()Z

    move-result v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v14, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    move/from16 v26, v10

    goto/16 :goto_1267

    :pswitch_c21  #0x4a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/media/IAudioRoutesObserver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/IAudioRoutesObserver;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v11, v0}, Landroid/media/IAudioService$Stub;->startWatchingRoutes(Landroid/media/IAudioRoutesObserver;)Landroid/media/AudioRoutesInfo;

    move-result-object v1

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v14, v1, v10}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    move/from16 v26, v10

    goto/16 :goto_1267

    :pswitch_c3a  #0x49
    sget-object v0, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Landroid/bluetooth/BluetoothDevice;

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v9

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v16

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    move-object/from16 v0, p0

    move-object v1, v6

    move v2, v7

    move v3, v8

    move v4, v9

    move/from16 v5, v16

    invoke-virtual/range {v0 .. v5}, Landroid/media/IAudioService$Stub;->handleBluetoothA2dpActiveDeviceChange(Landroid/bluetooth/BluetoothDevice;IIZI)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move/from16 v26, v10

    goto/16 :goto_1267

    :pswitch_c68  #0x48
    sget-object v0, Landroid/media/AudioDeviceAttributes;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioDeviceAttributes;

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v11, v0, v1, v2}, Landroid/media/IAudioService$Stub;->setWiredDeviceConnectionState(Landroid/media/AudioDeviceAttributes;ILjava/lang/String;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move/from16 v26, v10

    goto/16 :goto_1267

    :pswitch_c85  #0x47
    invoke-virtual/range {p0 .. p0}, Landroid/media/IAudioService$Stub;->getUiSoundsStreamType()I

    move-result v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v14, v0}, Landroid/os/Parcel;->writeInt(I)V

    move/from16 v26, v10

    goto/16 :goto_1267

    :pswitch_c93  #0x46
    invoke-virtual/range {p0 .. p0}, Landroid/media/IAudioService$Stub;->getRingtonePlayer()Landroid/media/IRingtonePlayer;

    move-result-object v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v14, v0}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    move/from16 v26, v10

    goto/16 :goto_1267

    :pswitch_ca1  #0x45
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/media/IRingtonePlayer$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/IRingtonePlayer;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v11, v0}, Landroid/media/IAudioService$Stub;->setRingtonePlayer(Landroid/media/IRingtonePlayer;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move/from16 v26, v10

    goto/16 :goto_1267

    :pswitch_cb6  #0x44
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v11, v0, v1}, Landroid/media/IAudioService$Stub;->forceVolumeControlStream(ILandroid/os/IBinder;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move/from16 v26, v10

    goto/16 :goto_1267

    :pswitch_ccb  #0x43
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v11, v0}, Landroid/media/IAudioService$Stub;->stopBluetoothSco(Landroid/os/IBinder;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move/from16 v26, v10

    goto/16 :goto_1267

    :pswitch_cdc  #0x42
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v11, v0}, Landroid/media/IAudioService$Stub;->startBluetoothScoVirtualCall(Landroid/os/IBinder;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move/from16 v26, v10

    goto/16 :goto_1267

    :pswitch_ced  #0x41
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v11, v0, v1}, Landroid/media/IAudioService$Stub;->startBluetoothSco(Landroid/os/IBinder;I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move/from16 v26, v10

    goto/16 :goto_1267

    :pswitch_d02  #0x40
    invoke-virtual/range {p0 .. p0}, Landroid/media/IAudioService$Stub;->getCurrentAudioFocus()I

    move-result v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v14, v0}, Landroid/os/Parcel;->writeInt(I)V

    move/from16 v26, v10

    goto/16 :goto_1267

    :pswitch_d10  #0x3f
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v11, v0}, Landroid/media/IAudioService$Stub;->unregisterAudioFocusClient(Ljava/lang/String;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move/from16 v26, v10

    goto/16 :goto_1267

    :pswitch_d21  #0x3e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/media/IAudioFocusDispatcher$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/IAudioFocusDispatcher;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Landroid/media/AudioAttributes;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/AudioAttributes;

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v11, v0, v1, v2, v3}, Landroid/media/IAudioService$Stub;->abandonAudioFocus(Landroid/media/IAudioFocusDispatcher;Ljava/lang/String;Landroid/media/AudioAttributes;Ljava/lang/String;)I

    move-result v4

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v14, v4}, Landroid/os/Parcel;->writeInt(I)V

    move/from16 v26, v10

    goto/16 :goto_1267

    :pswitch_d4a  #0x3d
    sget-object v0, Landroid/media/AudioAttributes;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v16, v0

    check-cast v16, Landroid/media/AudioAttributes;

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v18

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/media/IAudioFocusDispatcher$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/IAudioFocusDispatcher;

    move-result-object v19

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v23

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/media/audiopolicy/IAudioPolicyCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/audiopolicy/IAudioPolicyCallback;

    move-result-object v24

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v25

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move/from16 v2, v17

    move-object/from16 v3, v18

    move-object/from16 v4, v19

    move-object/from16 v5, v20

    move-object/from16 v6, v21

    move-object/from16 v7, v22

    move/from16 v8, v23

    move-object/from16 v9, v24

    move/from16 v26, v10

    move/from16 v10, v25

    invoke-virtual/range {v0 .. v10}, Landroid/media/IAudioService$Stub;->requestAudioFocus(Landroid/media/AudioAttributes;ILandroid/os/IBinder;Landroid/media/IAudioFocusDispatcher;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/media/audiopolicy/IAudioPolicyCallback;I)I

    move-result v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v14, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_1267

    :pswitch_da7  #0x3c
    move/from16 v26, v10

    invoke-virtual/range {p0 .. p0}, Landroid/media/IAudioService$Stub;->isBluetoothA2dpOn()Z

    move-result v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v14, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_1267

    :pswitch_db5  #0x3b
    move/from16 v26, v10

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v11, v0}, Landroid/media/IAudioService$Stub;->setBluetoothA2dpOn(Z)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_1267

    :pswitch_dc6  #0x3a
    move/from16 v26, v10

    invoke-virtual/range {p0 .. p0}, Landroid/media/IAudioService$Stub;->isBluetoothScoOn()Z

    move-result v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v14, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_1267

    :pswitch_dd4  #0x39
    move/from16 v26, v10

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v11, v0}, Landroid/media/IAudioService$Stub;->setBluetoothScoOn(Z)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_1267

    :pswitch_de5  #0x38
    move/from16 v26, v10

    invoke-virtual/range {p0 .. p0}, Landroid/media/IAudioService$Stub;->isSpeakerphoneOn()Z

    move-result v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v14, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_1267

    :pswitch_df3  #0x37
    move/from16 v26, v10

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v11, v0, v1}, Landroid/media/IAudioService$Stub;->setSpeakerphoneOn(Landroid/os/IBinder;Z)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_1267

    :pswitch_e08  #0x36
    move/from16 v26, v10

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v11, v0}, Landroid/media/IAudioService$Stub;->getEncodedSurroundMode(I)I

    move-result v1

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v14, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_1267

    :pswitch_e1d  #0x35
    move/from16 v26, v10

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v11, v0}, Landroid/media/IAudioService$Stub;->setEncodedSurroundMode(I)Z

    move-result v1

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v14, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_1267

    :pswitch_e32  #0x34
    move/from16 v26, v10

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v11, v0}, Landroid/media/IAudioService$Stub;->isSurroundFormatEnabled(I)Z

    move-result v1

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v14, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_1267

    :pswitch_e47  #0x33
    move/from16 v26, v10

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v11, v0, v1}, Landroid/media/IAudioService$Stub;->setSurroundFormatEnabled(IZ)Z

    move-result v2

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v14, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_1267

    :pswitch_e60  #0x32
    move/from16 v26, v10

    invoke-virtual/range {p0 .. p0}, Landroid/media/IAudioService$Stub;->getReportedSurroundFormats()Ljava/util/List;

    move-result-object v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v14, v0}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    goto/16 :goto_1267

    :pswitch_e6e  #0x31
    move/from16 v26, v10

    invoke-virtual/range {p0 .. p0}, Landroid/media/IAudioService$Stub;->getSurroundFormats()Ljava/util/Map;

    move-result-object v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v14, v0}, Landroid/os/Parcel;->writeMap(Ljava/util/Map;)V

    goto/16 :goto_1267

    :pswitch_e7c  #0x30
    move/from16 v26, v10

    invoke-virtual/range {p0 .. p0}, Landroid/media/IAudioService$Stub;->reloadAudioSettings()V

    goto/16 :goto_1267

    :pswitch_e83  #0x2f
    move/from16 v26, v10

    invoke-virtual/range {p0 .. p0}, Landroid/media/IAudioService$Stub;->unloadSoundEffects()V

    goto/16 :goto_1267

    :pswitch_e8a  #0x2e
    move/from16 v26, v10

    invoke-virtual/range {p0 .. p0}, Landroid/media/IAudioService$Stub;->loadSoundEffects()Z

    move-result v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v14, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_1267

    :pswitch_e98  #0x2d
    move/from16 v26, v10

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readFloat()F

    move-result v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v11, v0, v1}, Landroid/media/IAudioService$Stub;->playSoundEffectVolume(IF)V

    goto/16 :goto_1267

    :pswitch_eaa  #0x2c
    move/from16 v26, v10

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v11, v0, v1}, Landroid/media/IAudioService$Stub;->playSoundEffect(II)V

    goto/16 :goto_1267

    :pswitch_ebc  #0x2b
    move/from16 v26, v10

    invoke-virtual/range {p0 .. p0}, Landroid/media/IAudioService$Stub;->getMode()I

    move-result v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v14, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_1267

    :pswitch_eca  #0x2a
    move/from16 v26, v10

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v11, v0, v1, v2}, Landroid/media/IAudioService$Stub;->setMode(ILandroid/os/IBinder;Ljava/lang/String;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_1267

    :pswitch_ee3  #0x29
    move/from16 v26, v10

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v11, v0}, Landroid/media/IAudioService$Stub;->shouldVibrate(I)Z

    move-result v1

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v14, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_1267

    :pswitch_ef8  #0x28
    move/from16 v26, v10

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v11, v0}, Landroid/media/IAudioService$Stub;->getVibrateSetting(I)I

    move-result v1

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v14, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_1267

    :pswitch_f0d  #0x27
    move/from16 v26, v10

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v11, v0, v1}, Landroid/media/IAudioService$Stub;->setVibrateSetting(II)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_1267

    :pswitch_f22  #0x26
    move/from16 v26, v10

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v11, v0}, Landroid/media/IAudioService$Stub;->isValidRingerMode(I)Z

    move-result v1

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v14, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_1267

    :pswitch_f37  #0x25
    move/from16 v26, v10

    invoke-virtual/range {p0 .. p0}, Landroid/media/IAudioService$Stub;->getRingerModeInternal()I

    move-result v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v14, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_1267

    :pswitch_f45  #0x24
    move/from16 v26, v10

    invoke-virtual/range {p0 .. p0}, Landroid/media/IAudioService$Stub;->getRingerModeExternal()I

    move-result v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v14, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_1267

    :pswitch_f53  #0x23
    move/from16 v26, v10

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v11, v0, v1}, Landroid/media/IAudioService$Stub;->setRingerModeInternal(ILjava/lang/String;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_1267

    :pswitch_f68  #0x22
    move/from16 v26, v10

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v11, v0, v1}, Landroid/media/IAudioService$Stub;->setRingerModeExternal(ILjava/lang/String;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_1267

    :pswitch_f7d  #0x21
    move/from16 v26, v10

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v11, v0}, Landroid/media/IAudioService$Stub;->setMicrophoneMuteFromSwitch(Z)V

    goto/16 :goto_1267

    :pswitch_f8b  #0x20
    move/from16 v26, v10

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v11, v0, v1, v2, v3}, Landroid/media/IAudioService$Stub;->setMicrophoneMute(ZLjava/lang/String;ILjava/lang/String;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_1267

    :pswitch_fa8  #0x1f
    move/from16 v26, v10

    invoke-virtual/range {p0 .. p0}, Landroid/media/IAudioService$Stub;->isUltrasoundSupported()Z

    move-result v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v14, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_1267

    :pswitch_fb6  #0x1e
    move/from16 v26, v10

    invoke-virtual/range {p0 .. p0}, Landroid/media/IAudioService$Stub;->isMicrophoneMuted()Z

    move-result v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v14, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_1267

    :pswitch_fc4  #0x1d
    move/from16 v26, v10

    invoke-virtual/range {p0 .. p0}, Landroid/media/IAudioService$Stub;->getAudioProductStrategies()Ljava/util/List;

    move-result-object v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v14, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    goto/16 :goto_1267

    :pswitch_fd2  #0x1c
    move/from16 v26, v10

    invoke-virtual/range {p0 .. p0}, Landroid/media/IAudioService$Stub;->getSupportedSystemUsages()[I

    move-result-object v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v14, v0}, Landroid/os/Parcel;->writeIntArray([I)V

    goto/16 :goto_1267

    :pswitch_fe0  #0x1b
    move/from16 v26, v10

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v11, v0}, Landroid/media/IAudioService$Stub;->setSupportedSystemUsages([I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_1267

    :pswitch_ff1  #0x1a
    move/from16 v26, v10

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v11, v0}, Landroid/media/IAudioService$Stub;->getLastAudibleStreamVolume(I)I

    move-result v1

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v14, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_1267

    :pswitch_1006  #0x19
    move/from16 v26, v10

    sget-object v0, Landroid/media/AudioAttributes;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioAttributes;

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v11, v0}, Landroid/media/IAudioService$Stub;->getMinVolumeIndexForAttributes(Landroid/media/AudioAttributes;)I

    move-result v1

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v14, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_1267

    :pswitch_101f  #0x18
    move/from16 v26, v10

    sget-object v0, Landroid/media/AudioAttributes;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioAttributes;

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v11, v0}, Landroid/media/IAudioService$Stub;->getMaxVolumeIndexForAttributes(Landroid/media/AudioAttributes;)I

    move-result v1

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v14, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_1267

    :pswitch_1038  #0x17
    move/from16 v26, v10

    sget-object v0, Landroid/media/AudioAttributes;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioAttributes;

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v11, v0}, Landroid/media/IAudioService$Stub;->getVolumeIndexForAttributes(Landroid/media/AudioAttributes;)I

    move-result v1

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v14, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_1267

    :pswitch_1051  #0x16
    move/from16 v26, v10

    sget-object v0, Landroid/media/AudioAttributes;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Landroid/media/AudioAttributes;

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    move-object/from16 v0, p0

    move-object v1, v6

    move v2, v7

    move v3, v8

    move-object v4, v9

    move-object v5, v10

    invoke-virtual/range {v0 .. v5}, Landroid/media/IAudioService$Stub;->setVolumeIndexForAttributes(Landroid/media/AudioAttributes;IILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_1267

    :pswitch_107e  #0x15
    move/from16 v26, v10

    invoke-virtual/range {p0 .. p0}, Landroid/media/IAudioService$Stub;->getAudioVolumeGroups()Ljava/util/List;

    move-result-object v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v14, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    goto/16 :goto_1267

    :pswitch_108c  #0x14
    move/from16 v26, v10

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v11, v0}, Landroid/media/IAudioService$Stub;->getStreamMaxVolume(I)I

    move-result v1

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v14, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_1267

    :pswitch_10a1  #0x13
    move/from16 v26, v10

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v11, v0}, Landroid/media/IAudioService$Stub;->getStreamMinVolume(I)I

    move-result v1

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v14, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_1267

    :pswitch_10b6  #0x12
    move/from16 v26, v10

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v11, v0}, Landroid/media/IAudioService$Stub;->getStreamVolume(I)I

    move-result v1

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v14, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_1267

    :pswitch_10cb  #0x11
    move/from16 v26, v10

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v6

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    move-object/from16 v0, p0

    move v1, v6

    move v2, v7

    move-object v3, v8

    move v4, v9

    move-object v5, v10

    invoke-virtual/range {v0 .. v5}, Landroid/media/IAudioService$Stub;->setMasterMute(ZILjava/lang/String;ILjava/lang/String;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_1267

    :pswitch_10f3  #0x10
    move/from16 v26, v10

    invoke-virtual/range {p0 .. p0}, Landroid/media/IAudioService$Stub;->isMasterMute()Z

    move-result v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v14, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_1267

    :pswitch_1101  #0xf
    move/from16 v26, v10

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v11, v0, v1}, Landroid/media/IAudioService$Stub;->forceRemoteSubmixFullVolume(ZLandroid/os/IBinder;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_1267

    :pswitch_1116  #0xe
    move/from16 v26, v10

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v11, v0}, Landroid/media/IAudioService$Stub;->isStreamMute(I)Z

    move-result v1

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v14, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_1267

    :pswitch_112b  #0xd
    move/from16 v26, v10

    sget-object v0, Landroid/view/KeyEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/KeyEvent;

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v11, v0, v1, v2, v3}, Landroid/media/IAudioService$Stub;->handleVolumeKey(Landroid/view/KeyEvent;ZLjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1267

    :pswitch_1149  #0xc
    move/from16 v26, v10

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    move-object/from16 v0, p0

    move v1, v6

    move v2, v7

    move v3, v8

    move-object v4, v9

    move-object v5, v10

    invoke-virtual/range {v0 .. v5}, Landroid/media/IAudioService$Stub;->setStreamVolumeWithAttribution(IIILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_1267

    :pswitch_1171  #0xb
    move/from16 v26, v10

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v11, v0, v1, v2, v3}, Landroid/media/IAudioService$Stub;->setStreamVolume(IIILjava/lang/String;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_1267

    :pswitch_118e  #0xa
    move/from16 v26, v10

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    move-object/from16 v0, p0

    move v1, v6

    move v2, v7

    move v3, v8

    move-object v4, v9

    move-object v5, v10

    invoke-virtual/range {v0 .. v5}, Landroid/media/IAudioService$Stub;->adjustStreamVolumeWithAttribution(IIILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_1267

    :pswitch_11b6  #0x9
    move/from16 v26, v10

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v11, v0, v1, v2, v3}, Landroid/media/IAudioService$Stub;->adjustStreamVolume(IIILjava/lang/String;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_1267

    :pswitch_11d3  #0x8
    move/from16 v26, v10

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v11, v0, v1}, Landroid/media/IAudioService$Stub;->playerSessionId(II)V

    goto/16 :goto_1267

    :pswitch_11e5  #0x7
    move/from16 v26, v10

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v11, v0}, Landroid/media/IAudioService$Stub;->releaseRecorder(I)V

    goto/16 :goto_1267

    :pswitch_11f3  #0x6
    move/from16 v26, v10

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v11, v0, v1}, Landroid/media/IAudioService$Stub;->recorderEvent(II)V

    goto :goto_1267

    :pswitch_1204  #0x5
    move/from16 v26, v10

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v11, v0}, Landroid/media/IAudioService$Stub;->trackRecorder(Landroid/os/IBinder;)I

    move-result v1

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v14, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_1267

    :pswitch_1218  #0x4
    move/from16 v26, v10

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v11, v0}, Landroid/media/IAudioService$Stub;->releasePlayer(I)V

    goto :goto_1267

    :pswitch_1225  #0x3
    move/from16 v26, v10

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v11, v0, v1, v2}, Landroid/media/IAudioService$Stub;->playerEvent(III)V

    goto :goto_1267

    :pswitch_123a  #0x2
    move/from16 v26, v10

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    sget-object v1, Landroid/media/AudioAttributes;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioAttributes;

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v11, v0, v1}, Landroid/media/IAudioService$Stub;->playerAttributes(ILandroid/media/AudioAttributes;)V

    goto :goto_1267

    :pswitch_124f  #0x1
    move/from16 v26, v10

    sget-object v0, Landroid/media/PlayerBase$PlayerIdCard;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/PlayerBase$PlayerIdCard;

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v11, v0}, Landroid/media/IAudioService$Stub;->trackPlayer(Landroid/media/PlayerBase$PlayerIdCard;)I

    move-result v1

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v14, v1}, Landroid/os/Parcel;->writeInt(I)V

    nop

    :goto_1267
    return v26

    :pswitch_data_1268
    .packed-switch 0x5f4e5446
        :pswitch_20  #5f4e5446
    .end packed-switch

    :pswitch_data_126e
    .packed-switch 0x1
        :pswitch_124f  #00000001
        :pswitch_123a  #00000002
        :pswitch_1225  #00000003
        :pswitch_1218  #00000004
        :pswitch_1204  #00000005
        :pswitch_11f3  #00000006
        :pswitch_11e5  #00000007
        :pswitch_11d3  #00000008
        :pswitch_11b6  #00000009
        :pswitch_118e  #0000000a
        :pswitch_1171  #0000000b
        :pswitch_1149  #0000000c
        :pswitch_112b  #0000000d
        :pswitch_1116  #0000000e
        :pswitch_1101  #0000000f
        :pswitch_10f3  #00000010
        :pswitch_10cb  #00000011
        :pswitch_10b6  #00000012
        :pswitch_10a1  #00000013
        :pswitch_108c  #00000014
        :pswitch_107e  #00000015
        :pswitch_1051  #00000016
        :pswitch_1038  #00000017
        :pswitch_101f  #00000018
        :pswitch_1006  #00000019
        :pswitch_ff1  #0000001a
        :pswitch_fe0  #0000001b
        :pswitch_fd2  #0000001c
        :pswitch_fc4  #0000001d
        :pswitch_fb6  #0000001e
        :pswitch_fa8  #0000001f
        :pswitch_f8b  #00000020
        :pswitch_f7d  #00000021
        :pswitch_f68  #00000022
        :pswitch_f53  #00000023
        :pswitch_f45  #00000024
        :pswitch_f37  #00000025
        :pswitch_f22  #00000026
        :pswitch_f0d  #00000027
        :pswitch_ef8  #00000028
        :pswitch_ee3  #00000029
        :pswitch_eca  #0000002a
        :pswitch_ebc  #0000002b
        :pswitch_eaa  #0000002c
        :pswitch_e98  #0000002d
        :pswitch_e8a  #0000002e
        :pswitch_e83  #0000002f
        :pswitch_e7c  #00000030
        :pswitch_e6e  #00000031
        :pswitch_e60  #00000032
        :pswitch_e47  #00000033
        :pswitch_e32  #00000034
        :pswitch_e1d  #00000035
        :pswitch_e08  #00000036
        :pswitch_df3  #00000037
        :pswitch_de5  #00000038
        :pswitch_dd4  #00000039
        :pswitch_dc6  #0000003a
        :pswitch_db5  #0000003b
        :pswitch_da7  #0000003c
        :pswitch_d4a  #0000003d
        :pswitch_d21  #0000003e
        :pswitch_d10  #0000003f
        :pswitch_d02  #00000040
        :pswitch_ced  #00000041
        :pswitch_cdc  #00000042
        :pswitch_ccb  #00000043
        :pswitch_cb6  #00000044
        :pswitch_ca1  #00000045
        :pswitch_c93  #00000046
        :pswitch_c85  #00000047
        :pswitch_c68  #00000048
        :pswitch_c3a  #00000049
        :pswitch_c21  #0000004a
        :pswitch_c13  #0000004b
        :pswitch_bfe  #0000004c
        :pswitch_be5  #0000004d
        :pswitch_bd0  #0000004e
        :pswitch_bbb  #0000004f
        :pswitch_baa  #00000050
        :pswitch_b95  #00000051
        :pswitch_b87  #00000052
        :pswitch_b3f  #00000053
        :pswitch_b2d  #00000054
        :pswitch_b18  #00000055
        :pswitch_af7  #00000056
        :pswitch_ad6  #00000057
        :pswitch_ab9  #00000058
        :pswitch_aa4  #00000059
        :pswitch_a96  #0000005a
        :pswitch_a81  #0000005b
        :pswitch_a6f  #0000005c
        :pswitch_a61  #0000005d
        :pswitch_a4c  #0000005e
        :pswitch_a3a  #0000005f
        :pswitch_a2c  #00000060
        :pswitch_a0f  #00000061
        :pswitch_9ea  #00000062
        :pswitch_9d8  #00000063
        :pswitch_9b3  #00000064
        :pswitch_995  #00000065
        :pswitch_980  #00000066
        :pswitch_96e  #00000067
        :pswitch_960  #00000068
        :pswitch_93b  #00000069
        :pswitch_91e  #0000006a
        :pswitch_8f9  #0000006b
        :pswitch_8dc  #0000006c
        :pswitch_8c3  #0000006d
        :pswitch_8b5  #0000006e
        :pswitch_89a  #0000006f
        :pswitch_885  #00000070
        :pswitch_870  #00000071
        :pswitch_857  #00000072
        :pswitch_83e  #00000073
        :pswitch_829  #00000074
        :pswitch_81b  #00000075
        :pswitch_806  #00000076
        :pswitch_7f4  #00000077
        :pswitch_7e6  #00000078
        :pswitch_7c9  #00000079
        :pswitch_7b0  #0000007a
        :pswitch_797  #0000007b
        :pswitch_782  #0000007c
        :pswitch_76d  #0000007d
        :pswitch_754  #0000007e
        :pswitch_737  #0000007f
        :pswitch_716  #00000080
        :pswitch_708  #00000081
        :pswitch_6fa  #00000082
        :pswitch_6e5  #00000083
        :pswitch_6ca  #00000084
        :pswitch_6b5  #00000085
        :pswitch_6a0  #00000086
        :pswitch_68b  #00000087
        :pswitch_679  #00000088
        :pswitch_638  #00000089
        :pswitch_5f7  #0000008a
        :pswitch_5b6  #0000008b
        :pswitch_5a1  #0000008c
        :pswitch_58c  #0000008d
        :pswitch_57e  #0000008e
        :pswitch_565  #0000008f
        :pswitch_557  #00000090
        :pswitch_542  #00000091
        :pswitch_530  #00000092
        :pswitch_522  #00000093
        :pswitch_514  #00000094
        :pswitch_506  #00000095
        :pswitch_4f8  #00000096
        :pswitch_4db  #00000097
        :pswitch_4c2  #00000098
        :pswitch_4a9  #00000099
        :pswitch_456  #0000009a
        :pswitch_42d  #0000009b
        :pswitch_414  #0000009c
        :pswitch_3ff  #0000009d
        :pswitch_3ed  #0000009e
        :pswitch_3df  #0000009f
        :pswitch_3d1  #000000a0
        :pswitch_3c3  #000000a1
        :pswitch_3aa  #000000a2
        :pswitch_391  #000000a3
        :pswitch_378  #000000a4
        :pswitch_35f  #000000a5
        :pswitch_351  #000000a6
        :pswitch_338  #000000a7
        :pswitch_327  #000000a8
        :pswitch_306  #000000a9
        :pswitch_2f1  #000000aa
        :pswitch_2dc  #000000ab
        :pswitch_2c7  #000000ac
        :pswitch_2b2  #000000ad
        :pswitch_29d  #000000ae
        :pswitch_288  #000000af
        :pswitch_27a  #000000b0
        :pswitch_265  #000000b1
        :pswitch_250  #000000b2
        :pswitch_23f  #000000b3
        :pswitch_231  #000000b4
        :pswitch_223  #000000b5
        :pswitch_215  #000000b6
        :pswitch_207  #000000b7
        :pswitch_200  #000000b8
        :pswitch_1eb  #000000b9
        :pswitch_1d3  #000000ba
        :pswitch_1c5  #000000bb
        :pswitch_1b0  #000000bc
        :pswitch_19b  #000000bd
        :pswitch_18d  #000000be
        :pswitch_17f  #000000bf
        :pswitch_171  #000000c0
        :pswitch_157  #000000c1
        :pswitch_145  #000000c2
        :pswitch_137  #000000c3
        :pswitch_11e  #000000c4
        :pswitch_105  #000000c5
        :pswitch_ec  #000000c6
        :pswitch_de  #000000c7
        :pswitch_bd  #000000c8
        :pswitch_ac  #000000c9
        :pswitch_9b  #000000ca
        :pswitch_8a  #000000cb
        :pswitch_7c  #000000cc
        :pswitch_6e  #000000cd
        :pswitch_32  #000000ce
        :pswitch_24  #000000cf
    .end packed-switch
.end method

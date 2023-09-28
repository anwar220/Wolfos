# classes.dex

.class public interface abstract Landroid/hardware/biometrics/BiometricFingerprintConstants;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/biometrics/BiometricFingerprintConstants$FingerprintAcquired;,
        Landroid/hardware/biometrics/BiometricFingerprintConstants$FingerprintError;
    }
.end annotation


# static fields
.field public static final BIOMETRIC_ERROR_NO_DEVICE_CREDENTIAL:I = 0xe

.field public static final BIOMETRIC_ERROR_RE_ENROLL:I = 0x10

.field public static final BIOMETRIC_ERROR_SECURITY_UPDATE_REQUIRED:I = 0xf

.field public static final FINGERPRINT_ACQUIRED_GOOD:I = 0x0

.field public static final FINGERPRINT_ACQUIRED_IMAGER_DIRTY:I = 0x3

.field public static final FINGERPRINT_ACQUIRED_IMMOBILE:I = 0x9

.field public static final FINGERPRINT_ACQUIRED_INSUFFICIENT:I = 0x2

.field public static final FINGERPRINT_ACQUIRED_PARTIAL:I = 0x1

.field public static final FINGERPRINT_ACQUIRED_START:I = 0x7

.field public static final FINGERPRINT_ACQUIRED_TOO_BRIGHT:I = 0xa

.field public static final FINGERPRINT_ACQUIRED_TOO_FAST:I = 0x5

.field public static final FINGERPRINT_ACQUIRED_TOO_SLOW:I = 0x4

.field public static final FINGERPRINT_ACQUIRED_UNKNOWN:I = 0x8

.field public static final FINGERPRINT_ACQUIRED_VENDOR:I = 0x6

.field public static final FINGERPRINT_ACQUIRED_VENDOR_BASE:I = 0x3e8

.field public static final FINGERPRINT_ERROR_BAD_CALIBRATION:I = 0x12

.field public static final FINGERPRINT_ERROR_CANCELED:I = 0x5

.field public static final FINGERPRINT_ERROR_HW_NOT_PRESENT:I = 0xc

.field public static final FINGERPRINT_ERROR_HW_UNAVAILABLE:I = 0x1

.field public static final FINGERPRINT_ERROR_LOCKOUT:I = 0x7

.field public static final FINGERPRINT_ERROR_LOCKOUT_PERMANENT:I = 0x9

.field public static final FINGERPRINT_ERROR_NEGATIVE_BUTTON:I = 0xd

.field public static final FINGERPRINT_ERROR_NO_FINGERPRINTS:I = 0xb

.field public static final FINGERPRINT_ERROR_NO_SPACE:I = 0x4

.field public static final FINGERPRINT_ERROR_TIMEOUT:I = 0x3

.field public static final FINGERPRINT_ERROR_UNABLE_TO_PROCESS:I = 0x2

.field public static final FINGERPRINT_ERROR_UNABLE_TO_REMOVE:I = 0x6

.field public static final FINGERPRINT_ERROR_UNKNOWN:I = 0x11

.field public static final FINGERPRINT_ERROR_USER_CANCELED:I = 0xa

.field public static final FINGERPRINT_ERROR_VENDOR:I = 0x8

.field public static final FINGERPRINT_ERROR_VENDOR_BASE:I = 0x3e8


# direct methods
.method public static shouldTurnOffHbm(I)Z
    .registers 3

    const/4 v0, 0x0

    const/4 v1, 0x1

    packed-switch p0, :pswitch_data_a

    :pswitch_5  #0x8
    return v0

    :pswitch_6  #0x7
    return v0

    :pswitch_7  #0x1, 0x2, 0x3, 0x4, 0x5, 0x6, 0x9, 0xa
    return v1

    :pswitch_8  #0x0
    return v1

    nop

    :pswitch_data_a
    .packed-switch 0x0
        :pswitch_8  #00000000
        :pswitch_7  #00000001
        :pswitch_7  #00000002
        :pswitch_7  #00000003
        :pswitch_7  #00000004
        :pswitch_7  #00000005
        :pswitch_7  #00000006
        :pswitch_6  #00000007
        :pswitch_5  #00000008
        :pswitch_7  #00000009
        :pswitch_7  #0000000a
    .end packed-switch
.end method

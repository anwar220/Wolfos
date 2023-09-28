# classes.dex

.class public Landroid/hardware/biometrics/ParentalControlsUtilsInternal;
.super Ljava/lang/Object;


# static fields
.field private static final TEST_ALWAYS_REQUIRE_CONSENT_CLASS:Ljava/lang/String; = "android.hardware.biometrics.ParentalControlsUtilsInternal.require_consent_class"

.field private static final TEST_ALWAYS_REQUIRE_CONSENT_PACKAGE:Ljava/lang/String; = "android.hardware.biometrics.ParentalControlsUtilsInternal.require_consent_package"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static containsFlag(II)Z
    .registers 3

    and-int v0, p0, p1

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public static getSupervisionComponentName(Landroid/app/admin/DevicePolicyManager;Landroid/os/UserHandle;)Landroid/content/ComponentName;
    .registers 3

    invoke-virtual {p0, p1}, Landroid/app/admin/DevicePolicyManager;->getProfileOwnerOrDeviceOwnerSupervisionComponent(Landroid/os/UserHandle;)Landroid/content/ComponentName;

    move-result-object v0

    return-object v0
.end method

.method public static getTestComponentName(Landroid/content/Context;I)Landroid/content/ComponentName;
    .registers 6

    sget-boolean v0, Landroid/os/Build;->IS_USERDEBUG:Z

    const/4 v1, 0x0

    if-nez v0, :cond_b

    sget-boolean v0, Landroid/os/Build;->IS_ENG:Z

    if-eqz v0, :cond_a

    goto :goto_b

    :cond_a
    return-object v1

    :cond_b
    :goto_b
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "android.hardware.biometrics.ParentalControlsUtilsInternal.require_consent_package"

    invoke-static {v0, v2, p1}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "android.hardware.biometrics.ParentalControlsUtilsInternal.require_consent_class"

    invoke-static {v2, v3, p1}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    if-eqz v0, :cond_28

    if-eqz v2, :cond_28

    new-instance v1, Landroid/content/ComponentName;

    invoke-direct {v1, v0, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    :cond_28
    return-object v1
.end method

.method public static parentConsentRequired(Landroid/app/admin/DevicePolicyManager;ILandroid/os/UserHandle;)Z
    .registers 9

    invoke-static {p0, p2}, Landroid/hardware/biometrics/ParentalControlsUtilsInternal;->getSupervisionComponentName(Landroid/app/admin/DevicePolicyManager;Landroid/os/UserHandle;)Landroid/content/ComponentName;

    move-result-object v0

    if-nez v0, :cond_8

    const/4 v1, 0x0

    return v1

    :cond_8
    invoke-virtual {p0, v0}, Landroid/app/admin/DevicePolicyManager;->getKeyguardDisabledFeatures(Landroid/content/ComponentName;)I

    move-result v1

    const/16 v2, 0x20

    invoke-static {v1, v2}, Landroid/hardware/biometrics/ParentalControlsUtilsInternal;->containsFlag(II)Z

    move-result v2

    const/16 v3, 0x80

    invoke-static {v1, v3}, Landroid/hardware/biometrics/ParentalControlsUtilsInternal;->containsFlag(II)Z

    move-result v3

    const/16 v4, 0x100

    invoke-static {v1, v4}, Landroid/hardware/biometrics/ParentalControlsUtilsInternal;->containsFlag(II)Z

    move-result v4

    const/4 v5, 0x2

    invoke-static {p1, v5}, Landroid/hardware/biometrics/ParentalControlsUtilsInternal;->containsFlag(II)Z

    move-result v5

    if-eqz v5, :cond_29

    if-eqz v2, :cond_29

    const/4 v5, 0x1

    goto :goto_41

    :cond_29
    const/16 v5, 0x8

    invoke-static {p1, v5}, Landroid/hardware/biometrics/ParentalControlsUtilsInternal;->containsFlag(II)Z

    move-result v5

    if-eqz v5, :cond_35

    if-eqz v3, :cond_35

    const/4 v5, 0x1

    goto :goto_41

    :cond_35
    const/4 v5, 0x4

    invoke-static {p1, v5}, Landroid/hardware/biometrics/ParentalControlsUtilsInternal;->containsFlag(II)Z

    move-result v5

    if-eqz v5, :cond_40

    if-eqz v4, :cond_40

    const/4 v5, 0x1

    goto :goto_41

    :cond_40
    const/4 v5, 0x0

    :goto_41
    return v5
.end method

.method public static parentConsentRequired(Landroid/content/Context;Landroid/app/admin/DevicePolicyManager;ILandroid/os/UserHandle;)Z
    .registers 5

    invoke-virtual {p3}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0

    invoke-static {p0, v0}, Landroid/hardware/biometrics/ParentalControlsUtilsInternal;->getTestComponentName(Landroid/content/Context;I)Landroid/content/ComponentName;

    move-result-object v0

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    return v0

    :cond_c
    invoke-static {p1, p2, p3}, Landroid/hardware/biometrics/ParentalControlsUtilsInternal;->parentConsentRequired(Landroid/app/admin/DevicePolicyManager;ILandroid/os/UserHandle;)Z

    move-result v0

    return v0
.end method

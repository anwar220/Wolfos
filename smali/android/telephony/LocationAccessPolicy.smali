# classes3.dex

.class public final Landroid/telephony/LocationAccessPolicy;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telephony/LocationAccessPolicy$LocationPermissionQuery;,
        Landroid/telephony/LocationAccessPolicy$LocationPermissionResult;
    }
.end annotation


# static fields
.field private static final DBG:Z = false

.field public static final MAX_SDK_FOR_ANY_ENFORCEMENT:I = 0x2710

.field private static final TAG:Ljava/lang/String; = "LocationAccessPolicy"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static appOpsModeToPermissionResult(I)Landroid/telephony/LocationAccessPolicy$LocationPermissionResult;
    .registers 2

    packed-switch p0, :pswitch_data_c

    :pswitch_3  #0x1
    sget-object v0, Landroid/telephony/LocationAccessPolicy$LocationPermissionResult;->DENIED_SOFT:Landroid/telephony/LocationAccessPolicy$LocationPermissionResult;

    return-object v0

    :pswitch_6  #0x2
    sget-object v0, Landroid/telephony/LocationAccessPolicy$LocationPermissionResult;->DENIED_HARD:Landroid/telephony/LocationAccessPolicy$LocationPermissionResult;

    return-object v0

    :pswitch_9  #0x0
    sget-object v0, Landroid/telephony/LocationAccessPolicy$LocationPermissionResult;->ALLOWED:Landroid/telephony/LocationAccessPolicy$LocationPermissionResult;

    return-object v0

    :pswitch_data_c
    .packed-switch 0x0
        :pswitch_9  #00000000
        :pswitch_3  #00000001
        :pswitch_6  #00000002
    .end packed-switch
.end method

.method private static checkAppLocationPermissionHelper(Landroid/content/Context;Landroid/telephony/LocationAccessPolicy$LocationPermissionQuery;Ljava/lang/String;)Landroid/telephony/LocationAccessPolicy$LocationPermissionResult;
    .registers 12

    const-string v0, "android.permission.ACCESS_FINE_LOCATION"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    const-string v1, "fine"

    goto :goto_d

    :cond_b
    const-string v1, "coarse"

    :goto_d
    iget v2, p1, Landroid/telephony/LocationAccessPolicy$LocationPermissionQuery;->callingPid:I

    iget v3, p1, Landroid/telephony/LocationAccessPolicy$LocationPermissionQuery;->callingUid:I

    invoke-static {p0, v2, v3, p2}, Landroid/telephony/LocationAccessPolicy;->checkManifestPermission(Landroid/content/Context;IILjava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5d

    const-class v0, Landroid/app/AppOpsManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Landroid/app/AppOpsManager;

    invoke-static {p2}, Landroid/telephony/LocationAccessPolicy;->getAppOpsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iget v5, p1, Landroid/telephony/LocationAccessPolicy$LocationPermissionQuery;->callingUid:I

    iget-object v6, p1, Landroid/telephony/LocationAccessPolicy$LocationPermissionQuery;->callingPackage:Ljava/lang/String;

    iget-object v7, p1, Landroid/telephony/LocationAccessPolicy$LocationPermissionQuery;->callingFeatureId:Ljava/lang/String;

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Landroid/app/AppOpsManager;->noteOpNoThrow(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_34

    sget-object v3, Landroid/telephony/LocationAccessPolicy$LocationPermissionResult;->ALLOWED:Landroid/telephony/LocationAccessPolicy$LocationPermissionResult;

    return-object v3

    :cond_34
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p1, Landroid/telephony/LocationAccessPolicy$LocationPermissionQuery;->callingPackage:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " is aware of "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " but the app-ops permission is specifically denied."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "LocationAccessPolicy"

    invoke-static {v4, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v0}, Landroid/telephony/LocationAccessPolicy;->appOpsModeToPermissionResult(I)Landroid/telephony/LocationAccessPolicy$LocationPermissionResult;

    move-result-object v3

    return-object v3

    :cond_5d
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_66

    iget v0, p1, Landroid/telephony/LocationAccessPolicy$LocationPermissionQuery;->minSdkVersionForFine:I

    goto :goto_68

    :cond_66
    iget v0, p1, Landroid/telephony/LocationAccessPolicy$LocationPermissionQuery;->minSdkVersionForCoarse:I

    :goto_68
    const/16 v3, 0x2710

    const/4 v4, 0x0

    const-string v5, " "

    const-string v6, "Allowing "

    if-le v0, v3, :cond_a6

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v6, p1, Landroid/telephony/LocationAccessPolicy$LocationPermissionQuery;->callingPackage:Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " because we\'re not enforcing API "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " yet. Please fix this app because it will break in the future. Called from "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v5, p1, Landroid/telephony/LocationAccessPolicy$LocationPermissionQuery;->method:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, p1, v3}, Landroid/telephony/LocationAccessPolicy;->logError(Landroid/content/Context;Landroid/telephony/LocationAccessPolicy$LocationPermissionQuery;Ljava/lang/String;)V

    return-object v4

    :cond_a6
    iget-object v3, p1, Landroid/telephony/LocationAccessPolicy$LocationPermissionQuery;->callingPackage:Ljava/lang/String;

    invoke-static {p0, v3, v0}, Landroid/telephony/LocationAccessPolicy;->isAppAtLeastSdkVersion(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result v3

    if-nez v3, :cond_e3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v6, p1, Landroid/telephony/LocationAccessPolicy$LocationPermissionQuery;->callingPackage:Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " because it doesn\'t target API "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " yet. Please fix this app. Called from "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v5, p1, Landroid/telephony/LocationAccessPolicy$LocationPermissionQuery;->method:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, p1, v3}, Landroid/telephony/LocationAccessPolicy;->logError(Landroid/content/Context;Landroid/telephony/LocationAccessPolicy$LocationPermissionQuery;Ljava/lang/String;)V

    return-object v4

    :cond_e3
    sget-object v3, Landroid/telephony/LocationAccessPolicy$LocationPermissionResult;->DENIED_HARD:Landroid/telephony/LocationAccessPolicy$LocationPermissionResult;

    return-object v3
.end method

.method private static checkInteractAcrossUsersFull(Landroid/content/Context;II)Z
    .registers 4

    const-string v0, "android.permission.INTERACT_ACROSS_USERS_FULL"

    invoke-static {p0, p1, p2, v0}, Landroid/telephony/LocationAccessPolicy;->checkManifestPermission(Landroid/content/Context;IILjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static checkLocationPermission(Landroid/content/Context;Landroid/telephony/LocationAccessPolicy$LocationPermissionQuery;)Landroid/telephony/LocationAccessPolicy$LocationPermissionResult;
    .registers 5

    iget v0, p1, Landroid/telephony/LocationAccessPolicy$LocationPermissionQuery;->callingUid:I

    const/16 v1, 0x3e9

    if-eq v0, v1, :cond_46

    iget v0, p1, Landroid/telephony/LocationAccessPolicy$LocationPermissionQuery;->callingUid:I

    const/16 v1, 0x3e8

    if-eq v0, v1, :cond_46

    iget v0, p1, Landroid/telephony/LocationAccessPolicy$LocationPermissionQuery;->callingUid:I

    const/16 v1, 0x431

    if-eq v0, v1, :cond_46

    iget v0, p1, Landroid/telephony/LocationAccessPolicy$LocationPermissionQuery;->callingUid:I

    if-nez v0, :cond_17

    goto :goto_46

    :cond_17
    iget v0, p1, Landroid/telephony/LocationAccessPolicy$LocationPermissionQuery;->callingUid:I

    iget v1, p1, Landroid/telephony/LocationAccessPolicy$LocationPermissionQuery;->callingPid:I

    iget-object v2, p1, Landroid/telephony/LocationAccessPolicy$LocationPermissionQuery;->callingPackage:Ljava/lang/String;

    invoke-static {p0, v0, v1, v2}, Landroid/telephony/LocationAccessPolicy;->checkSystemLocationAccess(Landroid/content/Context;IILjava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_26

    sget-object v0, Landroid/telephony/LocationAccessPolicy$LocationPermissionResult;->DENIED_SOFT:Landroid/telephony/LocationAccessPolicy$LocationPermissionResult;

    return-object v0

    :cond_26
    iget v0, p1, Landroid/telephony/LocationAccessPolicy$LocationPermissionQuery;->minSdkVersionForFine:I

    const v1, 0x7fffffff

    if-ge v0, v1, :cond_36

    const-string v0, "android.permission.ACCESS_FINE_LOCATION"

    invoke-static {p0, p1, v0}, Landroid/telephony/LocationAccessPolicy;->checkAppLocationPermissionHelper(Landroid/content/Context;Landroid/telephony/LocationAccessPolicy$LocationPermissionQuery;Ljava/lang/String;)Landroid/telephony/LocationAccessPolicy$LocationPermissionResult;

    move-result-object v0

    if-eqz v0, :cond_36

    return-object v0

    :cond_36
    iget v0, p1, Landroid/telephony/LocationAccessPolicy$LocationPermissionQuery;->minSdkVersionForCoarse:I

    if-ge v0, v1, :cond_43

    const-string v0, "android.permission.ACCESS_COARSE_LOCATION"

    invoke-static {p0, p1, v0}, Landroid/telephony/LocationAccessPolicy;->checkAppLocationPermissionHelper(Landroid/content/Context;Landroid/telephony/LocationAccessPolicy$LocationPermissionQuery;Ljava/lang/String;)Landroid/telephony/LocationAccessPolicy$LocationPermissionResult;

    move-result-object v0

    if-eqz v0, :cond_43

    return-object v0

    :cond_43
    sget-object v0, Landroid/telephony/LocationAccessPolicy$LocationPermissionResult;->ALLOWED:Landroid/telephony/LocationAccessPolicy$LocationPermissionResult;

    return-object v0

    :cond_46
    :goto_46
    sget-object v0, Landroid/telephony/LocationAccessPolicy$LocationPermissionResult;->ALLOWED:Landroid/telephony/LocationAccessPolicy$LocationPermissionResult;

    return-object v0
.end method

.method private static checkManifestPermission(Landroid/content/Context;IILjava/lang/String;)Z
    .registers 5

    invoke-virtual {p0, p3, p1, p2}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    move-result v0

    if-nez v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method private static checkSystemLocationAccess(Landroid/content/Context;IILjava/lang/String;)Z
    .registers 6

    invoke-static {p1}, Landroid/os/UserHandle;->getUserHandleForUid(I)Landroid/os/UserHandle;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0

    invoke-static {p0, v0}, Landroid/telephony/LocationAccessPolicy;->isLocationModeEnabled(Landroid/content/Context;I)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_16

    invoke-static {p0, p3}, Landroid/telephony/LocationAccessPolicy;->isLocationBypassAllowed(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_16

    return v1

    :cond_16
    invoke-static {p0, p1}, Landroid/telephony/LocationAccessPolicy;->isCurrentProfile(Landroid/content/Context;I)Z

    move-result v0

    if-nez v0, :cond_22

    invoke-static {p0, p2, p1}, Landroid/telephony/LocationAccessPolicy;->checkInteractAcrossUsersFull(Landroid/content/Context;II)Z

    move-result v0

    if-eqz v0, :cond_23

    :cond_22
    const/4 v1, 0x1

    :cond_23
    return v1
.end method

.method private static getAppOpsString(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_28

    :cond_7
    goto :goto_1c

    :sswitch_8
    const-string v0, "android.permission.ACCESS_COARSE_LOCATION"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 v0, 0x1

    goto :goto_1d

    :sswitch_12
    const-string v0, "android.permission.ACCESS_FINE_LOCATION"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 v0, 0x0

    goto :goto_1d

    :goto_1c
    const/4 v0, -0x1

    :goto_1d
    packed-switch v0, :pswitch_data_32

    const/4 v0, 0x0

    return-object v0

    :pswitch_22  #0x1
    const-string v0, "android:coarse_location"

    return-object v0

    :pswitch_25  #0x0
    const-string v0, "android:fine_location"

    return-object v0

    :sswitch_data_28
    .sparse-switch
        -0x70918bc1 -> :sswitch_12
        -0x3c1ac56 -> :sswitch_8
    .end sparse-switch

    :pswitch_data_32
    .packed-switch 0x0
        :pswitch_25  #00000000
        :pswitch_22  #00000001
    .end packed-switch
.end method

.method public static getLocationBypassPackages(Landroid/content/Context;)[Ljava/lang/String;
    .registers 3

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10700a4

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static isAppAtLeastSdkVersion(Landroid/content/Context;Ljava/lang/String;I)Z
    .registers 5

    const/4 v0, 0x0

    :try_start_1
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I
    :try_end_b
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_b} :catch_10

    if-lt v1, p2, :cond_f

    const/4 v0, 0x1

    return v0

    :cond_f
    goto :goto_11

    :catch_10
    move-exception v1

    :goto_11
    return v0
.end method

.method private static isCurrentProfile(Landroid/content/Context;I)Z
    .registers 6

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_4
    invoke-static {p1}, Landroid/os/UserHandle;->getUserHandleForUid(I)Landroid/os/UserHandle;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v2

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v3
    :try_end_10
    .catchall {:try_start_4 .. :try_end_10} :catchall_37

    if-ne v2, v3, :cond_17

    const/4 v2, 0x1

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v2

    :cond_17
    :try_start_17
    const-class v2, Landroid/app/ActivityManager;

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager;

    if-eqz v2, :cond_32

    nop

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v3

    invoke-static {v3}, Landroid/os/UserHandle;->getUserHandleForUid(I)Landroid/os/UserHandle;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/ActivityManager;->isProfileForeground(Landroid/os/UserHandle;)Z

    move-result v3
    :try_end_2e
    .catchall {:try_start_17 .. :try_end_2e} :catchall_37

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v3

    :cond_32
    const/4 v3, 0x0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v3

    :catchall_37
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method private static isLocationBypassAllowed(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 8

    invoke-static {p0}, Landroid/telephony/LocationAccessPolicy;->getLocationBypassPackages(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_7
    if-ge v3, v1, :cond_16

    aget-object v4, v0, v3

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_13

    const/4 v0, 0x1

    return v0

    :cond_13
    add-int/lit8 v3, v3, 0x1

    goto :goto_7

    :cond_16
    return v2
.end method

.method public static isLocationModeEnabled(Landroid/content/Context;I)Z
    .registers 5

    const-class v0, Landroid/location/LocationManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    if-nez v0, :cond_13

    const-string v1, "LocationAccessPolicy"

    const-string v2, "Couldn\'t get location manager, denying location access"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    return v1

    :cond_13
    invoke-static {p1}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->isLocationEnabledForUser(Landroid/os/UserHandle;)Z

    move-result v1

    return v1
.end method

.method private static logError(Landroid/content/Context;Landroid/telephony/LocationAccessPolicy$LocationPermissionQuery;Ljava/lang/String;)V
    .registers 5

    iget-boolean v0, p1, Landroid/telephony/LocationAccessPolicy$LocationPermissionQuery;->logAsInfo:Z

    const-string v1, "LocationAccessPolicy"

    if-eqz v0, :cond_a

    invoke-static {v1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_a
    invoke-static {v1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_d
    sget-boolean v0, Lcom/android/internal/telephony/util/TelephonyUtils;->IS_DEBUGGABLE:Z

    if-eqz v0, :cond_19

    const/4 v0, 0x0

    invoke-static {p0, p2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V
    :try_end_19
    .catchall {:try_start_d .. :try_end_19} :catchall_1a

    :cond_19
    goto :goto_1b

    :catchall_1a
    move-exception v0

    :goto_1b
    return-void
.end method

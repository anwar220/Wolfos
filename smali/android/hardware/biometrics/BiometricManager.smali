# classes.dex

.class public Landroid/hardware/biometrics/BiometricManager;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/biometrics/BiometricManager$Strings;,
        Landroid/hardware/biometrics/BiometricManager$Authenticators;,
        Landroid/hardware/biometrics/BiometricManager$BiometricMultiSensorMode;,
        Landroid/hardware/biometrics/BiometricManager$BiometricError;
    }
.end annotation


# static fields
.field public static final BIOMETRIC_ERROR_HW_UNAVAILABLE:I = 0x1

.field public static final BIOMETRIC_ERROR_NONE_ENROLLED:I = 0xb

.field public static final BIOMETRIC_ERROR_NO_HARDWARE:I = 0xc

.field public static final BIOMETRIC_ERROR_SECURITY_UPDATE_REQUIRED:I = 0xf

.field public static final BIOMETRIC_MULTI_SENSOR_DEFAULT:I = 0x0

.field public static final BIOMETRIC_MULTI_SENSOR_FINGERPRINT_AND_FACE:I = 0x1

.field public static final BIOMETRIC_SUCCESS:I = 0x0

.field private static final TAG:Ljava/lang/String; = "BiometricManager"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mService:Landroid/hardware/biometrics/IAuthService;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/hardware/biometrics/IAuthService;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/hardware/biometrics/BiometricManager;->mContext:Landroid/content/Context;

    iput-object p2, p0, Landroid/hardware/biometrics/BiometricManager;->mService:Landroid/hardware/biometrics/IAuthService;

    return-void
.end method


# virtual methods
.method public canAuthenticate()I
    .registers 6
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Landroid/hardware/biometrics/BiometricManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getUserId()I

    move-result v0

    const/16 v1, 0xff

    invoke-virtual {p0, v0, v1}, Landroid/hardware/biometrics/BiometricManager;->canAuthenticate(II)I

    move-result v0

    const/16 v1, 0x162

    const/4 v2, 0x0

    invoke-static {v1, v2, v2, v0}, Lcom/android/internal/util/FrameworkStatsLog;->write(IZII)V

    iget-object v1, p0, Landroid/hardware/biometrics/BiometricManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-object v2, p0, Landroid/hardware/biometrics/BiometricManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v3, 0x164

    const/4 v4, 0x4

    invoke-static {v3, v4, v1, v2}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIII)V

    return v0
.end method

.method public canAuthenticate(I)I
    .registers 5

    iget-object v0, p0, Landroid/hardware/biometrics/BiometricManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getUserId()I

    move-result v0

    invoke-virtual {p0, v0, p1}, Landroid/hardware/biometrics/BiometricManager;->canAuthenticate(II)I

    move-result v0

    const/16 v1, 0x162

    const/4 v2, 0x1

    invoke-static {v1, v2, p1, v0}, Lcom/android/internal/util/FrameworkStatsLog;->write(IZII)V

    return v0
.end method

.method public canAuthenticate(II)I
    .registers 5

    iget-object v0, p0, Landroid/hardware/biometrics/BiometricManager;->mService:Landroid/hardware/biometrics/IAuthService;

    if-eqz v0, :cond_17

    :try_start_4
    iget-object v0, p0, Landroid/hardware/biometrics/BiometricManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Landroid/hardware/biometrics/BiometricManager;->mService:Landroid/hardware/biometrics/IAuthService;

    invoke-interface {v1, v0, p1, p2}, Landroid/hardware/biometrics/IAuthService;->canAuthenticate(Ljava/lang/String;II)I

    move-result v1
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_10} :catch_11

    return v1

    :catch_11
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    :cond_17
    const-string v0, "BiometricManager"

    const-string v1, "canAuthenticate(): Service not connected"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    return v0
.end method

.method public createTestSession(I)Landroid/hardware/biometrics/BiometricTestSession;
    .registers 5

    :try_start_0
    new-instance v0, Landroid/hardware/biometrics/BiometricTestSession;

    iget-object v1, p0, Landroid/hardware/biometrics/BiometricManager;->mContext:Landroid/content/Context;

    new-instance v2, Landroid/hardware/biometrics/BiometricManager$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0}, Landroid/hardware/biometrics/BiometricManager$$ExternalSyntheticLambda0;-><init>(Landroid/hardware/biometrics/BiometricManager;)V

    invoke-direct {v0, v1, p1, v2}, Landroid/hardware/biometrics/BiometricTestSession;-><init>(Landroid/content/Context;ILandroid/hardware/biometrics/BiometricTestSession$TestSessionProvider;)V
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_c} :catch_d

    return-object v0

    :catch_d
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public getAuthenticatorIds()[J
    .registers 2

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/hardware/biometrics/BiometricManager;->getAuthenticatorIds(I)[J

    move-result-object v0

    return-object v0
.end method

.method public getAuthenticatorIds(I)[J
    .registers 4

    iget-object v0, p0, Landroid/hardware/biometrics/BiometricManager;->mService:Landroid/hardware/biometrics/IAuthService;

    if-eqz v0, :cond_f

    :try_start_4
    invoke-interface {v0, p1}, Landroid/hardware/biometrics/IAuthService;->getAuthenticatorIds(I)[J

    move-result-object v0
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_8} :catch_9

    return-object v0

    :catch_9
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    :cond_f
    const-string v0, "BiometricManager"

    const-string v1, "getAuthenticatorIds(): Service not connected"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    new-array v0, v0, [J

    return-object v0
.end method

.method public getSensorProperties()Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/hardware/biometrics/SensorProperties;",
            ">;"
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Landroid/hardware/biometrics/BiometricManager;->mService:Landroid/hardware/biometrics/IAuthService;

    iget-object v1, p0, Landroid/hardware/biometrics/BiometricManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/hardware/biometrics/IAuthService;->getSensorProperties(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_15
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/biometrics/SensorPropertiesInternal;

    invoke-static {v3}, Landroid/hardware/biometrics/SensorProperties;->from(Landroid/hardware/biometrics/SensorPropertiesInternal;)Landroid/hardware/biometrics/SensorProperties;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_28
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_28} :catch_2b

    nop

    goto :goto_15

    :cond_2a
    return-object v1

    :catch_2b
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public getStrings(I)Landroid/hardware/biometrics/BiometricManager$Strings;
    .registers 6

    new-instance v0, Landroid/hardware/biometrics/BiometricManager$Strings;

    iget-object v1, p0, Landroid/hardware/biometrics/BiometricManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Landroid/hardware/biometrics/BiometricManager;->mService:Landroid/hardware/biometrics/IAuthService;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, p1, v3}, Landroid/hardware/biometrics/BiometricManager$Strings;-><init>(Landroid/content/Context;Landroid/hardware/biometrics/IAuthService;ILandroid/hardware/biometrics/BiometricManager$Strings-IA;)V

    return-object v0
.end method

.method public getUiPackage()Ljava/lang/String;
    .registers 3

    :try_start_0
    iget-object v0, p0, Landroid/hardware/biometrics/BiometricManager;->mService:Landroid/hardware/biometrics/IAuthService;

    invoke-interface {v0}, Landroid/hardware/biometrics/IAuthService;->getUiPackage()Ljava/lang/String;

    move-result-object v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return-object v0

    :catch_7
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public hasEnrolledBiometrics(I)Z
    .registers 6

    iget-object v0, p0, Landroid/hardware/biometrics/BiometricManager;->mService:Landroid/hardware/biometrics/IAuthService;

    const/4 v1, 0x0

    if-eqz v0, :cond_2a

    :try_start_5
    iget-object v2, p0, Landroid/hardware/biometrics/BiometricManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, p1, v2}, Landroid/hardware/biometrics/IAuthService;->hasEnrolledBiometrics(ILjava/lang/String;)Z

    move-result v0
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_f} :catch_10

    return v0

    :catch_10
    move-exception v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Remote exception in hasEnrolledBiometrics(): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "BiometricManager"

    invoke-static {v3, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_2a
    return v1
.end method

.method public invalidateAuthenticatorIds(IILandroid/hardware/biometrics/IInvalidationCallback;)V
    .registers 6

    iget-object v0, p0, Landroid/hardware/biometrics/BiometricManager;->mService:Landroid/hardware/biometrics/IAuthService;

    if-eqz v0, :cond_e

    :try_start_4
    invoke-interface {v0, p1, p2, p3}, Landroid/hardware/biometrics/IAuthService;->invalidateAuthenticatorIds(IILandroid/hardware/biometrics/IInvalidationCallback;)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_7} :catch_8

    goto :goto_e

    :catch_8
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    :cond_e
    :goto_e
    return-void
.end method

.method synthetic lambda$createTestSession$0$android-hardware-biometrics-BiometricManager(Landroid/content/Context;ILandroid/hardware/biometrics/ITestSessionCallback;)Landroid/hardware/biometrics/ITestSession;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Landroid/hardware/biometrics/BiometricManager;->mService:Landroid/hardware/biometrics/IAuthService;

    invoke-virtual {p1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p2, p3, v1}, Landroid/hardware/biometrics/IAuthService;->createTestSession(ILandroid/hardware/biometrics/ITestSessionCallback;Ljava/lang/String;)Landroid/hardware/biometrics/ITestSession;

    move-result-object v0

    return-object v0
.end method

.method public registerEnabledOnKeyguardCallback(Landroid/hardware/biometrics/IBiometricEnabledOnKeyguardCallback;)V
    .registers 4

    iget-object v0, p0, Landroid/hardware/biometrics/BiometricManager;->mService:Landroid/hardware/biometrics/IAuthService;

    if-eqz v0, :cond_e

    :try_start_4
    invoke-interface {v0, p1}, Landroid/hardware/biometrics/IAuthService;->registerEnabledOnKeyguardCallback(Landroid/hardware/biometrics/IBiometricEnabledOnKeyguardCallback;)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_7} :catch_8

    goto :goto_16

    :catch_8
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    :cond_e
    const-string v0, "BiometricManager"

    const-string/jumbo v1, "registerEnabledOnKeyguardCallback(): Service not connected"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_16
    return-void
.end method

.method public resetLockoutTimeBound(Landroid/os/IBinder;Ljava/lang/String;II[B)V
    .registers 12

    iget-object v0, p0, Landroid/hardware/biometrics/BiometricManager;->mService:Landroid/hardware/biometrics/IAuthService;

    if-eqz v0, :cond_13

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    :try_start_9
    invoke-interface/range {v0 .. v5}, Landroid/hardware/biometrics/IAuthService;->resetLockoutTimeBound(Landroid/os/IBinder;Ljava/lang/String;II[B)V
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_c} :catch_d

    goto :goto_13

    :catch_d
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    :cond_13
    :goto_13
    return-void
.end method

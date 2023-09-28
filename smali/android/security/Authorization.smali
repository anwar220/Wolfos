# classes3.dex

.class public Landroid/security/Authorization;
.super Ljava/lang/Object;


# static fields
.field public static final SYSTEM_ERROR:I = 0x4

.field private static final TAG:Ljava/lang/String; = "KeystoreAuthorization"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addAuthToken(Landroid/hardware/security/keymint/HardwareAuthToken;)I
    .registers 4

    :try_start_0
    invoke-static {}, Landroid/security/Authorization;->getService()Landroid/security/authorization/IKeystoreAuthorization;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/security/authorization/IKeystoreAuthorization;->addAuthToken(Landroid/hardware/security/keymint/HardwareAuthToken;)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_d
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_7} :catch_d
    .catch Landroid/os/ServiceSpecificException; {:try_start_0 .. :try_end_7} :catch_9

    const/4 v0, 0x0

    return v0

    :catch_9
    move-exception v0

    iget v1, v0, Landroid/os/ServiceSpecificException;->errorCode:I

    return v1

    :catch_d
    move-exception v0

    const-string v1, "KeystoreAuthorization"

    const-string v2, "Can not connect to keystore"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v1, 0x4

    return v1
.end method

.method public static addAuthToken([B)I
    .registers 2

    invoke-static {p0}, Landroid/security/AuthTokenUtils;->toHardwareAuthToken([B)Landroid/hardware/security/keymint/HardwareAuthToken;

    move-result-object v0

    invoke-static {v0}, Landroid/security/Authorization;->addAuthToken(Landroid/hardware/security/keymint/HardwareAuthToken;)I

    move-result v0

    return v0
.end method

.method private static getService()Landroid/security/authorization/IKeystoreAuthorization;
    .registers 1

    nop

    const-string v0, "android.security.authorization"

    invoke-static {v0}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/security/authorization/IKeystoreAuthorization$Stub;->asInterface(Landroid/os/IBinder;)Landroid/security/authorization/IKeystoreAuthorization;

    move-result-object v0

    return-object v0
.end method

.method public static onLockScreenEvent(ZI[B[J)I
    .registers 8

    const/4 v0, 0x0

    if-eqz p0, :cond_d

    :try_start_3
    invoke-static {}, Landroid/security/Authorization;->getService()Landroid/security/authorization/IKeystoreAuthorization;

    move-result-object v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-interface {v1, v2, p1, v3, p3}, Landroid/security/authorization/IKeystoreAuthorization;->onLockScreenEvent(II[B[J)V

    goto :goto_14

    :cond_d
    invoke-static {}, Landroid/security/Authorization;->getService()Landroid/security/authorization/IKeystoreAuthorization;

    move-result-object v1

    invoke-interface {v1, v0, p1, p2, p3}, Landroid/security/authorization/IKeystoreAuthorization;->onLockScreenEvent(II[B[J)V
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_14} :catch_19
    .catch Ljava/lang/NullPointerException; {:try_start_3 .. :try_end_14} :catch_19
    .catch Landroid/os/ServiceSpecificException; {:try_start_3 .. :try_end_14} :catch_15

    :goto_14
    return v0

    :catch_15
    move-exception v0

    iget v1, v0, Landroid/os/ServiceSpecificException;->errorCode:I

    return v1

    :catch_19
    move-exception v0

    const-string v1, "KeystoreAuthorization"

    const-string v2, "Can not connect to keystore"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v1, 0x4

    return v1
.end method

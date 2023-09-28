# classes3.dex

.class public Landroid/security/AndroidKeyStoreMaintenance;
.super Ljava/lang/Object;


# static fields
.field public static final INVALID_ARGUMENT:I = 0x14

.field public static final KEY_NOT_FOUND:I = 0x7

.field public static final PERMISSION_DENIED:I = 0x6

.field public static final SYSTEM_ERROR:I = 0x4

.field private static final TAG:Ljava/lang/String; = "AndroidKeyStoreMaintenance"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static clearNamespace(IJ)I
    .registers 6

    const-string v0, "AndroidKeyStoreMaintenance"

    :try_start_2
    invoke-static {}, Landroid/security/AndroidKeyStoreMaintenance;->getService()Landroid/security/maintenance/IKeystoreMaintenance;

    move-result-object v1

    invoke-interface {v1, p0, p1, p2}, Landroid/security/maintenance/IKeystoreMaintenance;->clearNamespace(IJ)V
    :try_end_9
    .catch Landroid/os/ServiceSpecificException; {:try_start_2 .. :try_end_9} :catch_13
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_9} :catch_b

    const/4 v0, 0x0

    return v0

    :catch_b
    move-exception v1

    const-string v2, "Can not connect to keystore"

    invoke-static {v0, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v0, 0x4

    return v0

    :catch_13
    move-exception v1

    const-string v2, "clearNamespace failed"

    invoke-static {v0, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iget v0, v1, Landroid/os/ServiceSpecificException;->errorCode:I

    return v0
.end method

.method private static getService()Landroid/security/maintenance/IKeystoreMaintenance;
    .registers 1

    nop

    const-string v0, "android.security.maintenance"

    invoke-static {v0}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/security/maintenance/IKeystoreMaintenance$Stub;->asInterface(Landroid/os/IBinder;)Landroid/security/maintenance/IKeystoreMaintenance;

    move-result-object v0

    return-object v0
.end method

.method public static getState(I)I
    .registers 4

    const-string v0, "AndroidKeyStoreMaintenance"

    :try_start_2
    invoke-static {}, Landroid/security/AndroidKeyStoreMaintenance;->getService()Landroid/security/maintenance/IKeystoreMaintenance;

    move-result-object v1

    invoke-interface {v1, p0}, Landroid/security/maintenance/IKeystoreMaintenance;->getState(I)I

    move-result v0
    :try_end_a
    .catch Landroid/os/ServiceSpecificException; {:try_start_2 .. :try_end_a} :catch_13
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_a} :catch_b

    return v0

    :catch_b
    move-exception v1

    const-string v2, "Can not connect to keystore"

    invoke-static {v0, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v0, 0x4

    return v0

    :catch_13
    move-exception v1

    const-string v2, "getState failed"

    invoke-static {v0, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iget v0, v1, Landroid/os/ServiceSpecificException;->errorCode:I

    return v0
.end method

.method public static migrateKeyNamespace(Landroid/system/keystore2/KeyDescriptor;Landroid/system/keystore2/KeyDescriptor;)I
    .registers 5

    const-string v0, "AndroidKeyStoreMaintenance"

    :try_start_2
    invoke-static {}, Landroid/security/AndroidKeyStoreMaintenance;->getService()Landroid/security/maintenance/IKeystoreMaintenance;

    move-result-object v1

    invoke-interface {v1, p0, p1}, Landroid/security/maintenance/IKeystoreMaintenance;->migrateKeyNamespace(Landroid/system/keystore2/KeyDescriptor;Landroid/system/keystore2/KeyDescriptor;)V
    :try_end_9
    .catch Landroid/os/ServiceSpecificException; {:try_start_2 .. :try_end_9} :catch_13
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_9} :catch_b

    const/4 v0, 0x0

    return v0

    :catch_b
    move-exception v1

    const-string v2, "Can not connect to keystore"

    invoke-static {v0, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v0, 0x4

    return v0

    :catch_13
    move-exception v1

    const-string/jumbo v2, "migrateKeyNamespace failed"

    invoke-static {v0, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iget v0, v1, Landroid/os/ServiceSpecificException;->errorCode:I

    return v0
.end method

.method public static onDeviceOffBody()V
    .registers 3

    :try_start_0
    invoke-static {}, Landroid/security/AndroidKeyStoreMaintenance;->getService()Landroid/security/maintenance/IKeystoreMaintenance;

    move-result-object v0

    invoke-interface {v0}, Landroid/security/maintenance/IKeystoreMaintenance;->onDeviceOffBody()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_7} :catch_8

    goto :goto_10

    :catch_8
    move-exception v0

    const-string v1, "AndroidKeyStoreMaintenance"

    const-string v2, "Error while reporting device off body event."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_10
    return-void
.end method

.method public static onUserAdded(I)I
    .registers 4

    const-string v0, "AndroidKeyStoreMaintenance"

    :try_start_2
    invoke-static {}, Landroid/security/AndroidKeyStoreMaintenance;->getService()Landroid/security/maintenance/IKeystoreMaintenance;

    move-result-object v1

    invoke-interface {v1, p0}, Landroid/security/maintenance/IKeystoreMaintenance;->onUserAdded(I)V
    :try_end_9
    .catch Landroid/os/ServiceSpecificException; {:try_start_2 .. :try_end_9} :catch_13
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_9} :catch_b

    const/4 v0, 0x0

    return v0

    :catch_b
    move-exception v1

    const-string v2, "Can not connect to keystore"

    invoke-static {v0, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v0, 0x4

    return v0

    :catch_13
    move-exception v1

    const-string/jumbo v2, "onUserAdded failed"

    invoke-static {v0, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iget v0, v1, Landroid/os/ServiceSpecificException;->errorCode:I

    return v0
.end method

.method public static onUserPasswordChanged(I[B)I
    .registers 5

    const-string v0, "AndroidKeyStoreMaintenance"

    :try_start_2
    invoke-static {}, Landroid/security/AndroidKeyStoreMaintenance;->getService()Landroid/security/maintenance/IKeystoreMaintenance;

    move-result-object v1

    invoke-interface {v1, p0, p1}, Landroid/security/maintenance/IKeystoreMaintenance;->onUserPasswordChanged(I[B)V
    :try_end_9
    .catch Landroid/os/ServiceSpecificException; {:try_start_2 .. :try_end_9} :catch_13
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_9} :catch_b

    const/4 v0, 0x0

    return v0

    :catch_b
    move-exception v1

    const-string v2, "Can not connect to keystore"

    invoke-static {v0, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v0, 0x4

    return v0

    :catch_13
    move-exception v1

    const-string/jumbo v2, "onUserPasswordChanged failed"

    invoke-static {v0, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iget v0, v1, Landroid/os/ServiceSpecificException;->errorCode:I

    return v0
.end method

.method public static onUserRemoved(I)I
    .registers 4

    const-string v0, "AndroidKeyStoreMaintenance"

    :try_start_2
    invoke-static {}, Landroid/security/AndroidKeyStoreMaintenance;->getService()Landroid/security/maintenance/IKeystoreMaintenance;

    move-result-object v1

    invoke-interface {v1, p0}, Landroid/security/maintenance/IKeystoreMaintenance;->onUserRemoved(I)V
    :try_end_9
    .catch Landroid/os/ServiceSpecificException; {:try_start_2 .. :try_end_9} :catch_13
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_9} :catch_b

    const/4 v0, 0x0

    return v0

    :catch_b
    move-exception v1

    const-string v2, "Can not connect to keystore"

    invoke-static {v0, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v0, 0x4

    return v0

    :catch_13
    move-exception v1

    const-string/jumbo v2, "onUserRemoved failed"

    invoke-static {v0, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iget v0, v1, Landroid/os/ServiceSpecificException;->errorCode:I

    return v0
.end method

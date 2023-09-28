# classes4.dex

.class public final Lcom/android/internal/util/slim/AttestationHooks;
.super Ljava/lang/Object;


# static fields
.field private static final DEBUG:Z = false

.field private static final PACKAGE_FINSKY:Ljava/lang/String; = "com.android.vending"

.field private static final PACKAGE_GMS:Ljava/lang/String; = "com.google.android.gms"

.field private static final PACKAGE_GPHOTOS:Ljava/lang/String; = "com.google.android.apps.photos"

.field private static final PROCESS_UNSTABLE:Ljava/lang/String; = "com.google.android.gms.unstable"

.field private static final TAG:Ljava/lang/String; = "Attestation"

.field private static volatile sIsFinsky:Z

.field private static volatile sIsGms:Z

.field private static final sP1Props:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 3

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/internal/util/slim/AttestationHooks;->sP1Props:Ljava/util/Map;

    const-string v1, "BRAND"

    const-string v2, "google"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "MANUFACTURER"

    const-string v2, "Google"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "DEVICE"

    const-string/jumbo v2, "marlin"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "PRODUCT"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "MODEL"

    const-string v2, "Pixel XL"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "FINGERPRINT"

    const-string v2, "google/marlin/marlin:10/QP1A.191005.007.A3/5972272:user/release-keys"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/internal/util/slim/AttestationHooks;->sIsGms:Z

    sput-boolean v0, Lcom/android/internal/util/slim/AttestationHooks;->sIsFinsky:Z

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static dlog(Ljava/lang/String;)V
    .registers 1

    return-void
.end method

.method public static initApplicationBeforeOnCreate(Landroid/app/Application;)V
    .registers 4

    invoke-virtual {p0}, Landroid/app/Application;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.google.android.gms"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1e

    invoke-static {}, Landroid/app/Application;->getProcessName()Ljava/lang/String;

    move-result-object v0

    const-string v2, "com.google.android.gms.unstable"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1e

    sput-boolean v1, Lcom/android/internal/util/slim/AttestationHooks;->sIsGms:Z

    invoke-static {}, Lcom/android/internal/util/slim/AttestationHooks;->spoofBuildGms()V

    :cond_1e
    invoke-virtual {p0}, Landroid/app/Application;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const-string v2, "com.android.vending"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2c

    sput-boolean v1, Lcom/android/internal/util/slim/AttestationHooks;->sIsFinsky:Z

    :cond_2c
    invoke-virtual {p0}, Landroid/app/Application;->getPackageName()Ljava/lang/String;

    move-result-object p0

    const-string v0, "com.google.android.apps.photos"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_50

    const-string/jumbo p0, "persist.sys.pixelprops.gphotos"

    invoke-static {p0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    if-eqz p0, :cond_50

    const-string p0, "Spoofing Pixel XL for Google Photos"

    invoke-static {p0}, Lcom/android/internal/util/slim/AttestationHooks;->dlog(Ljava/lang/String;)V

    sget-object p0, Lcom/android/internal/util/slim/AttestationHooks;->sP1Props:Ljava/util/Map;

    new-instance v0, Lcom/android/internal/util/slim/AttestationHooks$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/android/internal/util/slim/AttestationHooks$$ExternalSyntheticLambda1;-><init>()V

    invoke-interface {p0, v0}, Ljava/util/Map;->forEach(Ljava/util/function/BiConsumer;)V

    :cond_50
    return-void
.end method

.method private static isCallerSafetyNet()Z
    .registers 2

    sget-boolean v0, Lcom/android/internal/util/slim/AttestationHooks;->sIsGms:Z

    if-eqz v0, :cond_1d

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->stream([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/android/internal/util/slim/AttestationHooks$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lcom/android/internal/util/slim/AttestationHooks$$ExternalSyntheticLambda0;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result v0

    if-eqz v0, :cond_1d

    const/4 v0, 0x1

    goto :goto_1e

    :cond_1d
    const/4 v0, 0x0

    :goto_1e
    return v0
.end method

.method static synthetic lambda$initApplicationBeforeOnCreate$0(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/internal/util/slim/AttestationHooks;->setPropValue(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic lambda$isCallerSafetyNet$1(Ljava/lang/StackTraceElement;)Z
    .registers 2

    invoke-virtual {p0}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object p0

    const-string v0, "DroidGuard"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    return p0
.end method

.method public static onEngineGetCertificateChain()V
    .registers 2

    invoke-static {}, Lcom/android/internal/util/slim/AttestationHooks;->isCallerSafetyNet()Z

    move-result v0

    if-nez v0, :cond_b

    sget-boolean v0, Lcom/android/internal/util/slim/AttestationHooks;->sIsFinsky:Z

    if-nez v0, :cond_b

    return-void

    :cond_b
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Blocked key attestation sIsGms="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-boolean v1, Lcom/android/internal/util/slim/AttestationHooks;->sIsGms:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " sIsFinsky="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-boolean v1, Lcom/android/internal/util/slim/AttestationHooks;->sIsFinsky:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Attestation"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method private static setBuildField(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    :try_start_0
    const-class v0, Landroid/os/Build;

    invoke-virtual {v0, p0}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 p1, 0x0

    invoke-virtual {v0, p1}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_12
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_12} :catch_13
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_12} :catch_13

    goto :goto_2c

    :catch_13
    move-exception p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failed to spoof Build."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "Attestation"

    invoke-static {v0, p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_2c
    return-void
.end method

.method private static setPropValue(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 4

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Setting prop "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/util/slim/AttestationHooks;->dlog(Ljava/lang/String;)V

    const-class v0, Landroid/os/Build;

    invoke-virtual {v0, p0}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 p1, 0x0

    invoke-virtual {v0, p1}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_36
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_36} :catch_37
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_36} :catch_37

    goto :goto_50

    :catch_37
    move-exception p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failed to set prop "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "Attestation"

    invoke-static {v0, p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_50
    return-void
.end method

.method private static setVersionField(Ljava/lang/String;Ljava/lang/Integer;)V
    .registers 4

    :try_start_0
    const-class v0, Landroid/os/Build$VERSION;

    invoke-virtual {v0, p0}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 p1, 0x0

    invoke-virtual {v0, p1}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_12
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_12} :catch_13
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_12} :catch_13

    goto :goto_2c

    :catch_13
    move-exception p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failed to spoof Build."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "Attestation"

    invoke-static {v0, p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_2c
    return-void
.end method

.method private static spoofBuildGms()V
    .registers 2

    const-string v0, "FINGERPRINT"

    const-string v1, "google/marlin/marlin:7.1.2/NJH47F/4146041:user/release-keys"

    invoke-static {v0, v1}, Lcom/android/internal/util/slim/AttestationHooks;->setBuildField(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "PRODUCT"

    const-string/jumbo v1, "marlin"

    invoke-static {v0, v1}, Lcom/android/internal/util/slim/AttestationHooks;->setBuildField(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "DEVICE"

    invoke-static {v0, v1}, Lcom/android/internal/util/slim/AttestationHooks;->setBuildField(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "MODEL"

    const-string v1, "Pixel XL"

    invoke-static {v0, v1}, Lcom/android/internal/util/slim/AttestationHooks;->setBuildField(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, 0x19

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "DEVICE_INITIAL_SDK_INT"

    invoke-static {v1, v0}, Lcom/android/internal/util/slim/AttestationHooks;->setVersionField(Ljava/lang/String;Ljava/lang/Integer;)V

    return-void
.end method

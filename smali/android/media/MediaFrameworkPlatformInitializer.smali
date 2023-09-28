# classes2.dex

.class public Landroid/media/MediaFrameworkPlatformInitializer;
.super Ljava/lang/Object;


# static fields
.field private static volatile sMediaServiceManager:Landroid/media/MediaServiceManager;


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getMediaServiceManager()Landroid/media/MediaServiceManager;
    .registers 1

    sget-object v0, Landroid/media/MediaFrameworkPlatformInitializer;->sMediaServiceManager:Landroid/media/MediaServiceManager;

    return-object v0
.end method

.method static synthetic lambda$registerServiceWrappers$0(Landroid/content/Context;)Landroid/media/session/MediaSessionManager;
    .registers 2

    new-instance v0, Landroid/media/session/MediaSessionManager;

    invoke-direct {v0, p0}, Landroid/media/session/MediaSessionManager;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public static registerServiceWrappers()V
    .registers 3

    const-class v0, Landroid/media/session/MediaSessionManager;

    new-instance v1, Landroid/media/MediaFrameworkPlatformInitializer$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Landroid/media/MediaFrameworkPlatformInitializer$$ExternalSyntheticLambda0;-><init>()V

    const-string v2, "media_session"

    invoke-static {v2, v0, v1}, Landroid/app/SystemServiceRegistry;->registerContextAwareService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ContextAwareServiceProducerWithoutBinder;)V

    return-void
.end method

.method public static setMediaServiceManager(Landroid/media/MediaServiceManager;)V
    .registers 3

    sget-object v0, Landroid/media/MediaFrameworkPlatformInitializer;->sMediaServiceManager:Landroid/media/MediaServiceManager;

    if-nez v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    const-string v1, "setMediaServiceManager called twice!"

    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkState(ZLjava/lang/String;)V

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/MediaServiceManager;

    sput-object v0, Landroid/media/MediaFrameworkPlatformInitializer;->sMediaServiceManager:Landroid/media/MediaServiceManager;

    return-void
.end method

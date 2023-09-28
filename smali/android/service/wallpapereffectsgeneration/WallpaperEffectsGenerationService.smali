# classes3.dex

.class public abstract Landroid/service/wallpapereffectsgeneration/WallpaperEffectsGenerationService;
.super Landroid/app/Service;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field public static final SERVICE_INTERFACE:Ljava/lang/String; = "android.service.wallpapereffectsgeneration.WallpaperEffectsGenerationService"

.field private static final TAG:Ljava/lang/String; = "WallpaperEffectsGenerationService"


# instance fields
.field private mHandler:Landroid/os/Handler;

.field private final mInterface:Landroid/service/wallpapereffectsgeneration/IWallpaperEffectsGenerationService;

.field private mService:Landroid/app/wallpapereffectsgeneration/IWallpaperEffectsGenerationManager;


# direct methods
.method static bridge synthetic -$$Nest$fgetmHandler(Landroid/service/wallpapereffectsgeneration/WallpaperEffectsGenerationService;)Landroid/os/Handler;
    .registers 1

    iget-object p0, p0, Landroid/service/wallpapereffectsgeneration/WallpaperEffectsGenerationService;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    new-instance v0, Landroid/service/wallpapereffectsgeneration/WallpaperEffectsGenerationService$1;

    invoke-direct {v0, p0}, Landroid/service/wallpapereffectsgeneration/WallpaperEffectsGenerationService$1;-><init>(Landroid/service/wallpapereffectsgeneration/WallpaperEffectsGenerationService;)V

    iput-object v0, p0, Landroid/service/wallpapereffectsgeneration/WallpaperEffectsGenerationService;->mInterface:Landroid/service/wallpapereffectsgeneration/IWallpaperEffectsGenerationService;

    return-void
.end method


# virtual methods
.method public final onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .registers 4

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.service.wallpapereffectsgeneration.WallpaperEffectsGenerationService"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    iget-object v0, p0, Landroid/service/wallpapereffectsgeneration/WallpaperEffectsGenerationService;->mInterface:Landroid/service/wallpapereffectsgeneration/IWallpaperEffectsGenerationService;

    invoke-interface {v0}, Landroid/service/wallpapereffectsgeneration/IWallpaperEffectsGenerationService;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    return-object v0

    :cond_13
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Tried to bind to wrong intent (should be android.service.wallpapereffectsgeneration.WallpaperEffectsGenerationService: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WallpaperEffectsGenerationService"

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .registers 5

    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    iput-object v0, p0, Landroid/service/wallpapereffectsgeneration/WallpaperEffectsGenerationService;->mHandler:Landroid/os/Handler;

    const-string/jumbo v0, "wallpaper_effects_generation"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/app/wallpapereffectsgeneration/IWallpaperEffectsGenerationManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/wallpapereffectsgeneration/IWallpaperEffectsGenerationManager;

    move-result-object v1

    iput-object v1, p0, Landroid/service/wallpapereffectsgeneration/WallpaperEffectsGenerationService;->mService:Landroid/app/wallpapereffectsgeneration/IWallpaperEffectsGenerationManager;

    return-void
.end method

.method public abstract onGenerateCinematicEffect(Landroid/app/wallpapereffectsgeneration/CinematicEffectRequest;)V
.end method

.method public final returnCinematicEffectResponse(Landroid/app/wallpapereffectsgeneration/CinematicEffectResponse;)V
    .registers 4

    :try_start_0
    iget-object v0, p0, Landroid/service/wallpapereffectsgeneration/WallpaperEffectsGenerationService;->mService:Landroid/app/wallpapereffectsgeneration/IWallpaperEffectsGenerationManager;

    invoke-interface {v0, p1}, Landroid/app/wallpapereffectsgeneration/IWallpaperEffectsGenerationManager;->returnCinematicEffectResponse(Landroid/app/wallpapereffectsgeneration/CinematicEffectResponse;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    nop

    return-void

    :catch_7
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

# classes.dex

.class public final Landroid/app/wallpapereffectsgeneration/WallpaperEffectsGenerationManager;
.super Ljava/lang/Object;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/wallpapereffectsgeneration/WallpaperEffectsGenerationManager$CinematicEffectListenerWrapper;,
        Landroid/app/wallpapereffectsgeneration/WallpaperEffectsGenerationManager$CinematicEffectListener;
    }
.end annotation


# instance fields
.field private final mService:Landroid/app/wallpapereffectsgeneration/IWallpaperEffectsGenerationManager;


# direct methods
.method public constructor <init>(Landroid/app/wallpapereffectsgeneration/IWallpaperEffectsGenerationManager;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/app/wallpapereffectsgeneration/WallpaperEffectsGenerationManager;->mService:Landroid/app/wallpapereffectsgeneration/IWallpaperEffectsGenerationManager;

    return-void
.end method


# virtual methods
.method public generateCinematicEffect(Landroid/app/wallpapereffectsgeneration/CinematicEffectRequest;Ljava/util/concurrent/Executor;Landroid/app/wallpapereffectsgeneration/WallpaperEffectsGenerationManager$CinematicEffectListener;)V
    .registers 6
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    :try_start_0
    iget-object v0, p0, Landroid/app/wallpapereffectsgeneration/WallpaperEffectsGenerationManager;->mService:Landroid/app/wallpapereffectsgeneration/IWallpaperEffectsGenerationManager;

    new-instance v1, Landroid/app/wallpapereffectsgeneration/WallpaperEffectsGenerationManager$CinematicEffectListenerWrapper;

    invoke-direct {v1, p3, p2}, Landroid/app/wallpapereffectsgeneration/WallpaperEffectsGenerationManager$CinematicEffectListenerWrapper;-><init>(Landroid/app/wallpapereffectsgeneration/WallpaperEffectsGenerationManager$CinematicEffectListener;Ljava/util/concurrent/Executor;)V

    invoke-interface {v0, p1, v1}, Landroid/app/wallpapereffectsgeneration/IWallpaperEffectsGenerationManager;->generateCinematicEffect(Landroid/app/wallpapereffectsgeneration/CinematicEffectRequest;Landroid/app/wallpapereffectsgeneration/ICinematicEffectListener;)V
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_a} :catch_c

    nop

    return-void

    :catch_c
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

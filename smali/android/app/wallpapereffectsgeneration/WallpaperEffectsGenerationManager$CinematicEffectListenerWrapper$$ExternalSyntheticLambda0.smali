# classes.dex

.class public final synthetic Landroid/app/wallpapereffectsgeneration/WallpaperEffectsGenerationManager$CinematicEffectListenerWrapper$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroid/app/wallpapereffectsgeneration/WallpaperEffectsGenerationManager$CinematicEffectListenerWrapper;

.field public final synthetic f$1:Landroid/app/wallpapereffectsgeneration/CinematicEffectResponse;


# direct methods
.method public synthetic constructor <init>(Landroid/app/wallpapereffectsgeneration/WallpaperEffectsGenerationManager$CinematicEffectListenerWrapper;Landroid/app/wallpapereffectsgeneration/CinematicEffectResponse;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/app/wallpapereffectsgeneration/WallpaperEffectsGenerationManager$CinematicEffectListenerWrapper$$ExternalSyntheticLambda0;->f$0:Landroid/app/wallpapereffectsgeneration/WallpaperEffectsGenerationManager$CinematicEffectListenerWrapper;

    iput-object p2, p0, Landroid/app/wallpapereffectsgeneration/WallpaperEffectsGenerationManager$CinematicEffectListenerWrapper$$ExternalSyntheticLambda0;->f$1:Landroid/app/wallpapereffectsgeneration/CinematicEffectResponse;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget-object v0, p0, Landroid/app/wallpapereffectsgeneration/WallpaperEffectsGenerationManager$CinematicEffectListenerWrapper$$ExternalSyntheticLambda0;->f$0:Landroid/app/wallpapereffectsgeneration/WallpaperEffectsGenerationManager$CinematicEffectListenerWrapper;

    iget-object v1, p0, Landroid/app/wallpapereffectsgeneration/WallpaperEffectsGenerationManager$CinematicEffectListenerWrapper$$ExternalSyntheticLambda0;->f$1:Landroid/app/wallpapereffectsgeneration/CinematicEffectResponse;

    invoke-virtual {v0, v1}, Landroid/app/wallpapereffectsgeneration/WallpaperEffectsGenerationManager$CinematicEffectListenerWrapper;->lambda$onCinematicEffectGenerated$0$android-app-wallpapereffectsgeneration-WallpaperEffectsGenerationManager$CinematicEffectListenerWrapper(Landroid/app/wallpapereffectsgeneration/CinematicEffectResponse;)V

    return-void
.end method

# classes3.dex

.class public final synthetic Landroid/service/wallpapereffectsgeneration/WallpaperEffectsGenerationService$1$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/BiConsumer;


# direct methods
.method public synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 3

    check-cast p1, Landroid/service/wallpapereffectsgeneration/WallpaperEffectsGenerationService;

    check-cast p2, Landroid/app/wallpapereffectsgeneration/CinematicEffectRequest;

    invoke-virtual {p1, p2}, Landroid/service/wallpapereffectsgeneration/WallpaperEffectsGenerationService;->onGenerateCinematicEffect(Landroid/app/wallpapereffectsgeneration/CinematicEffectRequest;)V

    return-void
.end method

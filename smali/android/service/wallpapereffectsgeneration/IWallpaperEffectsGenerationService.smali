# classes3.dex

.class public interface abstract Landroid/service/wallpapereffectsgeneration/IWallpaperEffectsGenerationService;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/service/wallpapereffectsgeneration/IWallpaperEffectsGenerationService$Stub;,
        Landroid/service/wallpapereffectsgeneration/IWallpaperEffectsGenerationService$Default;
    }
.end annotation


# static fields
.field public static final DESCRIPTOR:Ljava/lang/String; = "android.service.wallpapereffectsgeneration.IWallpaperEffectsGenerationService"


# virtual methods
.method public abstract onGenerateCinematicEffect(Landroid/app/wallpapereffectsgeneration/CinematicEffectRequest;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

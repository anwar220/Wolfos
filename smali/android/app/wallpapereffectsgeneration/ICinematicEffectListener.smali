# classes.dex

.class public interface abstract Landroid/app/wallpapereffectsgeneration/ICinematicEffectListener;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/wallpapereffectsgeneration/ICinematicEffectListener$Stub;,
        Landroid/app/wallpapereffectsgeneration/ICinematicEffectListener$Default;
    }
.end annotation


# static fields
.field public static final DESCRIPTOR:Ljava/lang/String; = "android.app.wallpapereffectsgeneration.ICinematicEffectListener"


# virtual methods
.method public abstract onCinematicEffectGenerated(Landroid/app/wallpapereffectsgeneration/CinematicEffectResponse;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

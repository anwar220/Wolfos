# classes2.dex

.class public interface abstract Landroid/media/tv/interactive/ITvInteractiveAppServiceCallback;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/tv/interactive/ITvInteractiveAppServiceCallback$Stub;,
        Landroid/media/tv/interactive/ITvInteractiveAppServiceCallback$Default;
    }
.end annotation


# static fields
.field public static final DESCRIPTOR:Ljava/lang/String; = "android.media.tv.interactive.ITvInteractiveAppServiceCallback"


# virtual methods
.method public abstract onStateChanged(III)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

# classes2.dex

.class public interface abstract Landroid/media/musicrecognition/IMusicRecognitionServiceCallback;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/musicrecognition/IMusicRecognitionServiceCallback$Stub;,
        Landroid/media/musicrecognition/IMusicRecognitionServiceCallback$Default;
    }
.end annotation


# static fields
.field public static final DESCRIPTOR:Ljava/lang/String; = "android.media.musicrecognition.IMusicRecognitionServiceCallback"


# virtual methods
.method public abstract onRecognitionFailed(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract onRecognitionSucceeded(Landroid/media/MediaMetadata;Landroid/os/Bundle;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

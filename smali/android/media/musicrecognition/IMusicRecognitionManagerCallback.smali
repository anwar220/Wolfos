# classes2.dex

.class public interface abstract Landroid/media/musicrecognition/IMusicRecognitionManagerCallback;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/musicrecognition/IMusicRecognitionManagerCallback$Stub;,
        Landroid/media/musicrecognition/IMusicRecognitionManagerCallback$Default;
    }
.end annotation


# static fields
.field public static final DESCRIPTOR:Ljava/lang/String; = "android.media.musicrecognition.IMusicRecognitionManagerCallback"


# virtual methods
.method public abstract onAudioStreamClosed()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

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

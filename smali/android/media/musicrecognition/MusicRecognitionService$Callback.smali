# classes2.dex

.class public interface abstract Landroid/media/musicrecognition/MusicRecognitionService$Callback;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/musicrecognition/MusicRecognitionService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Callback"
.end annotation


# virtual methods
.method public abstract onRecognitionFailed(I)V
.end method

.method public abstract onRecognitionSucceeded(Landroid/media/MediaMetadata;Landroid/os/Bundle;)V
.end method

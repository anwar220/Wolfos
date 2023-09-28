# classes3.dex

.class public interface abstract Landroid/service/voice/HotwordDetector$Callback;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/voice/HotwordDetector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Callback"
.end annotation


# virtual methods
.method public abstract onDetected(Landroid/service/voice/AlwaysOnHotwordDetector$EventPayload;)V
.end method

.method public abstract onError()V
.end method

.method public abstract onHotwordDetectionServiceInitialized(I)V
.end method

.method public abstract onHotwordDetectionServiceRestarted()V
.end method

.method public abstract onRecognitionPaused()V
.end method

.method public abstract onRecognitionResumed()V
.end method

.method public abstract onRejected(Landroid/service/voice/HotwordRejectedResult;)V
.end method

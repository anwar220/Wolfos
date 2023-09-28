# classes3.dex

.class public interface abstract Landroid/service/voice/VoiceInteractionSession$VisibleActivityCallback;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/voice/VoiceInteractionSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "VisibleActivityCallback"
.end annotation


# virtual methods
.method public onInvisible(Landroid/service/voice/VoiceInteractionSession$ActivityId;)V
    .registers 2

    return-void
.end method

.method public onVisible(Landroid/service/voice/VisibleActivityInfo;)V
    .registers 2

    return-void
.end method

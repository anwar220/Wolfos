# classes3.dex

.class public final synthetic Landroid/service/voice/SoftwareHotwordDetector$InitializationStateListener$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/Consumer;


# direct methods
.method public synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Landroid/service/voice/HotwordDetector$Callback;

    invoke-interface {p1}, Landroid/service/voice/HotwordDetector$Callback;->onHotwordDetectionServiceRestarted()V

    return-void
.end method

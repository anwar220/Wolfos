# classes3.dex

.class public final synthetic Landroid/service/voice/AbstractHotwordDetector$BinderCallback$$ExternalSyntheticLambda2;
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

    check-cast p1, Landroid/service/voice/HotwordDetector$Callback;

    check-cast p2, Landroid/service/voice/HotwordRejectedResult;

    invoke-interface {p1, p2}, Landroid/service/voice/HotwordDetector$Callback;->onRejected(Landroid/service/voice/HotwordRejectedResult;)V

    return-void
.end method
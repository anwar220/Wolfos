# classes2.dex

.class public interface abstract Landroid/view/animation/ChoreographerInjectorStub;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/animation/ChoreographerInjectorStub$DynamicBufferInfoStub;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "ChoreographerInjectorStub"


# direct methods
.method public static getInstance()Landroid/view/animation/ChoreographerInjectorStub;
    .registers 1

    const-class v0, Landroid/view/animation/ChoreographerInjectorStub;

    invoke-static {v0}, Lcom/miui/base/MiuiStubUtil;->getInstance(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/animation/ChoreographerInjectorStub;

    return-object v0
.end method


# virtual methods
.method public abstract cacheBufferIfNeeded(Landroid/os/Handler;JJJ)V
.end method

.method public creatDynamicBufferInfo(Landroid/graphics/BLASTBufferQueue;Landroid/view/animation/ChoreographerInjectorStub$DynamicBufferInfoStub$SetFrameDroppedCallback;)Landroid/view/animation/ChoreographerInjectorStub$DynamicBufferInfoStub;
    .registers 4

    const/4 v0, 0x0

    return-object v0
.end method

.method public abstract disableAnimation(I)Z
.end method

.method public setIsPageScroll(Z)V
    .registers 2

    return-void
.end method

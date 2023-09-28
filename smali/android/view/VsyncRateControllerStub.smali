# classes3.dex

.class public interface abstract Landroid/view/VsyncRateControllerStub;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/VsyncRateControllerStub$ChoreographerStub;
    }
.end annotation


# direct methods
.method public static getInstance()Landroid/view/VsyncRateControllerStub;
    .registers 1

    const-class v0, Landroid/view/VsyncRateControllerStub;

    invoke-static {v0}, Lcom/miui/base/MiuiStubUtil;->getImpl(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/VsyncRateControllerStub;

    return-object v0
.end method


# virtual methods
.method public abstract cancelSetVsyncRate()V
.end method

.method public abstract initialize(Landroid/view/ViewRootImpl;Landroid/view/VsyncRateControllerStub$ChoreographerStub;)V
.end method

.method public isEnabled()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public abstract onDisplayChanged(F)V
.end method

.method public abstract onInputEvent(Landroid/view/InputEvent;Landroid/view/View;Z)V
.end method

.method public abstract onWindowFocusChanged(Landroid/view/View;ZZ)V
.end method

.method public abstract onWindowModeChanged(II)V
.end method

.method public abstract resetVsyncRate()V
.end method

.method public abstract scheduleSetVsyncRateOnIdle(J)V
.end method

.method public abstract setVsyncRate(F)V
.end method

.method public abstract setVsyncRateDefault()V
.end method

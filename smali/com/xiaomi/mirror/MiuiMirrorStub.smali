# classes4.dex

.class public interface abstract Lcom/xiaomi/mirror/MiuiMirrorStub;
.super Ljava/lang/Object;


# static fields
.field public static final TAG:Ljava/lang/String; = "MiuiMirrorStub"


# direct methods
.method public static getInstance()Lcom/xiaomi/mirror/MiuiMirrorStub;
    .registers 1

    const-class v0, Lcom/xiaomi/mirror/MiuiMirrorStub;

    invoke-static {v0}, Lcom/miui/base/MiuiStubUtil;->getInstance(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/mirror/MiuiMirrorStub;

    return-object v0
.end method


# virtual methods
.method public cancelDragAndDrop(Ljava/lang/Object;)V
    .registers 2

    return-void
.end method

.method public cleanDragToken(Ljava/lang/Object;)V
    .registers 2

    return-void
.end method

.method public delegateMirrorDrag(Ljava/lang/Object;Landroid/view/ViewRootImpl;IILandroid/view/View$DragShadowBuilder;Landroid/graphics/Point;Landroid/content/ClipData;Ljava/lang/Object;)Z
    .registers 10

    const/4 v0, 0x0

    return v0
.end method

.method public dispatchPointerEvent(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 4

    const/4 v0, 0x0

    return v0
.end method

.method public isEnabled()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public isModelSupport()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public notifyInputTypeAndPos(III)V
    .registers 4

    return-void
.end method

.method public notifyMoveTaskToBack(Landroid/os/IBinder;Z)V
    .registers 3

    return-void
.end method

.method public performMirrorMenuQuery(Landroid/view/View;Landroid/view/MotionEvent;ZZI)Z
    .registers 7

    const/4 v0, 0x0

    return v0
.end method

.method public reportDragResult(ILandroid/view/IWindow;Z)V
    .registers 4

    return-void
.end method

.method public tryToTriggerSend(Landroid/content/Context;Landroid/view/KeyEvent;)Z
    .registers 4

    const/4 v0, 0x0

    return v0
.end method

.method public updateShadow(Landroid/view/View$DragShadowBuilder;Ljava/lang/Object;)V
    .registers 3

    return-void
.end method

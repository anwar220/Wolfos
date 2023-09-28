# classes3.dex

.class public interface abstract Landroid/view/IViewStub;
.super Ljava/lang/Object;


# direct methods
.method public static getInstance()Landroid/view/IViewStub;
    .registers 1

    const-class v0, Landroid/view/IViewStub;

    invoke-static {v0}, Lcom/miui/base/MiuiStubUtil;->getInstance(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/IViewStub;

    return-object v0
.end method


# virtual methods
.method public abstract checkAndInitWebView(Landroid/view/View;Landroid/os/Looper;)Z
.end method

.method public abstract dispatchTouchEventToFreeDrag(Landroid/view/View;Landroid/view/MotionEvent;)V
.end method

.method public abstract requestDragAndDropPermissionsIfNeeded(Landroid/view/DragEvent;Landroid/app/Activity;)V
.end method

# classes.dex

.class public interface abstract Landroid/app/ActivityStub;
.super Ljava/lang/Object;


# static fields
.field public static final RESULT_DESTROYED_FINISH_SKIPED:I = 0xc8


# direct methods
.method public static newInstance()Landroid/app/ActivityStub;
    .registers 1

    const-class v0, Landroid/app/ActivityStub;

    invoke-static {v0}, Lcom/miui/base/MiuiStubUtil;->newInstance(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityStub;

    return-object v0
.end method


# virtual methods
.method public abstract checkAccessControl(Landroid/app/Activity;)V
.end method

.method public abstract dispatchKeyEventForCatcher(Landroid/view/KeyEvent;Landroid/view/View;Landroid/app/Activity;)V
.end method

.method public abstract dispatchTouchEventForCatcher(Landroid/view/MotionEvent;Landroid/view/View;Landroid/app/Activity;)V
.end method

.method public abstract finish(Landroid/app/Activity;)V
.end method

.method public abstract notifyContentChange()V
.end method

.method public abstract notifyWebView(Landroid/view/View;Z)V
.end method

.method public abstract onBackPressed(Landroid/app/Activity;)V
.end method

.method public abstract onConfigurationChanged(Landroid/app/Activity;Landroid/content/res/Configuration;)V
.end method

.method public abstract onCreate(Landroid/app/Activity;Landroid/os/IBinder;)V
.end method

.method public abstract onDestroy(Landroid/app/Activity;)V
.end method

.method public abstract onMultiWindowModeChanged(Landroid/app/Activity;ZLandroid/content/res/Configuration;)V
.end method

.method public abstract onNewIntent(Landroid/app/Activity;Landroid/content/Intent;)V
.end method

.method public abstract onPause(Landroid/app/Activity;)V
.end method

.method public abstract onRestart(Landroid/app/Activity;)V
.end method

.method public abstract onResume(Landroid/app/Activity;)V
.end method

.method public abstract onStart(Landroid/app/Activity;)V
.end method

.method public abstract onStop(Landroid/app/Activity;)V
.end method

.method public abstract setRequestedOrientation(Landroid/app/Activity;I)V
.end method

.method public abstract setWebView(Landroid/view/View;Z)V
.end method

.method public abstract startActivity(Landroid/app/Activity;Landroid/content/Intent;)Z
.end method

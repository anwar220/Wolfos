# classes3.dex

.class final Landroid/service/voice/VoiceInteractionWindow;
.super Landroid/app/Dialog;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/service/voice/VoiceInteractionWindow$Callback;,
        Landroid/service/voice/VoiceInteractionWindow$WindowState;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "VoiceInteractionWindow"


# instance fields
.field private final mBounds:Landroid/graphics/Rect;

.field private final mCallback:Landroid/service/voice/VoiceInteractionWindow$Callback;

.field private final mDispatcherState:Landroid/view/KeyEvent$DispatcherState;

.field private final mGravity:I

.field private final mKeyEventCallback:Landroid/view/KeyEvent$Callback;

.field private final mName:Ljava/lang/String;

.field private final mTakesFocus:Z

.field private mWindowState:I

.field private final mWindowType:I


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;ILandroid/service/voice/VoiceInteractionWindow$Callback;Landroid/view/KeyEvent$Callback;Landroid/view/KeyEvent$DispatcherState;IIZ)V
    .registers 11

    invoke-direct {p0, p1, p3}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/service/voice/VoiceInteractionWindow;->mBounds:Landroid/graphics/Rect;

    const/4 v0, 0x0

    iput v0, p0, Landroid/service/voice/VoiceInteractionWindow;->mWindowState:I

    iput-object p2, p0, Landroid/service/voice/VoiceInteractionWindow;->mName:Ljava/lang/String;

    iput-object p4, p0, Landroid/service/voice/VoiceInteractionWindow;->mCallback:Landroid/service/voice/VoiceInteractionWindow$Callback;

    iput-object p5, p0, Landroid/service/voice/VoiceInteractionWindow;->mKeyEventCallback:Landroid/view/KeyEvent$Callback;

    iput-object p6, p0, Landroid/service/voice/VoiceInteractionWindow;->mDispatcherState:Landroid/view/KeyEvent$DispatcherState;

    iput p7, p0, Landroid/service/voice/VoiceInteractionWindow;->mWindowType:I

    iput p8, p0, Landroid/service/voice/VoiceInteractionWindow;->mGravity:I

    iput-boolean p9, p0, Landroid/service/voice/VoiceInteractionWindow;->mTakesFocus:Z

    invoke-direct {p0}, Landroid/service/voice/VoiceInteractionWindow;->initDockWindow()V

    return-void
.end method

.method private initDockWindow()V
    .registers 5

    invoke-virtual {p0}, Landroid/service/voice/VoiceInteractionWindow;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget v1, p0, Landroid/service/voice/VoiceInteractionWindow;->mWindowType:I

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    iget-object v1, p0, Landroid/service/voice/VoiceInteractionWindow;->mName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    iget v1, p0, Landroid/service/voice/VoiceInteractionWindow;->mGravity:I

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    invoke-direct {p0, v0}, Landroid/service/voice/VoiceInteractionWindow;->updateWidthHeight(Landroid/view/WindowManager$LayoutParams;)V

    invoke-virtual {p0}, Landroid/service/voice/VoiceInteractionWindow;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    const/16 v1, 0x100

    const/16 v2, 0x10a

    iget-boolean v3, p0, Landroid/service/voice/VoiceInteractionWindow;->mTakesFocus:Z

    if-nez v3, :cond_2a

    or-int/lit8 v1, v1, 0x8

    goto :goto_2e

    :cond_2a
    or-int/lit8 v1, v1, 0x20

    or-int/lit8 v2, v2, 0x20

    :goto_2e
    invoke-virtual {p0}, Landroid/service/voice/VoiceInteractionWindow;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3, v1, v2}, Landroid/view/Window;->setFlags(II)V

    return-void
.end method

.method private static stateToString(I)Ljava/lang/String;
    .registers 4

    packed-switch p0, :pswitch_data_2c

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown state="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_1c  #0x4
    const-string v0, "DESTROYED"

    return-object v0

    :pswitch_1f  #0x3
    const-string v0, "REJECTED_AT_LEAST_ONCE"

    return-object v0

    :pswitch_22  #0x2
    const-string v0, "SHOWN_AT_LEAST_ONCE"

    return-object v0

    :pswitch_25  #0x1
    const-string v0, "TOKEN_SET"

    return-object v0

    :pswitch_28  #0x0
    const-string v0, "TOKEN_PENDING"

    return-object v0

    nop

    :pswitch_data_2c
    .packed-switch 0x0
        :pswitch_28  #00000000
        :pswitch_25  #00000001
        :pswitch_22  #00000002
        :pswitch_1f  #00000003
        :pswitch_1c  #00000004
    .end packed-switch
.end method

.method private updateWidthHeight(Landroid/view/WindowManager$LayoutParams;)V
    .registers 6

    iget v0, p1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    const/4 v1, -0x2

    const/4 v2, -0x1

    const/16 v3, 0x30

    if-eq v0, v3, :cond_14

    iget v0, p1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    const/16 v3, 0x50

    if-ne v0, v3, :cond_f

    goto :goto_14

    :cond_f
    iput v1, p1, Landroid/view/WindowManager$LayoutParams;->width:I

    iput v2, p1, Landroid/view/WindowManager$LayoutParams;->height:I

    goto :goto_18

    :cond_14
    :goto_14
    iput v2, p1, Landroid/view/WindowManager$LayoutParams;->width:I

    iput v1, p1, Landroid/view/WindowManager$LayoutParams;->height:I

    :goto_18
    return-void
.end method

.method private updateWindowState(I)V
    .registers 2

    iput p1, p0, Landroid/service/voice/VoiceInteractionWindow;->mWindowState:I

    return-void
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 6

    invoke-virtual {p0}, Landroid/service/voice/VoiceInteractionWindow;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Landroid/service/voice/VoiceInteractionWindow;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    iget-object v0, p0, Landroid/service/voice/VoiceInteractionWindow;->mBounds:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    int-to-float v0, v0

    iget-object v1, p0, Landroid/service/voice/VoiceInteractionWindow;->mBounds:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    int-to-float v1, v1

    iget-object v2, p0, Landroid/service/voice/VoiceInteractionWindow;->mBounds:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    add-int/lit8 v2, v2, -0x1

    int-to-float v2, v2

    iget-object v3, p0, Landroid/service/voice/VoiceInteractionWindow;->mBounds:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    add-int/lit8 v3, v3, -0x1

    int-to-float v3, v3

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/view/MotionEvent;->isWithinBoundsNoHistory(FFFF)Z

    move-result v0

    if-eqz v0, :cond_30

    invoke-super {p0, p1}, Landroid/app/Dialog;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0

    :cond_30
    iget-object v0, p0, Landroid/service/voice/VoiceInteractionWindow;->mBounds:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    int-to-float v0, v0

    iget-object v1, p0, Landroid/service/voice/VoiceInteractionWindow;->mBounds:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    int-to-float v1, v1

    iget-object v2, p0, Landroid/service/voice/VoiceInteractionWindow;->mBounds:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    add-int/lit8 v2, v2, -0x1

    int-to-float v2, v2

    iget-object v3, p0, Landroid/service/voice/VoiceInteractionWindow;->mBounds:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    add-int/lit8 v3, v3, -0x1

    int-to-float v3, v3

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/view/MotionEvent;->clampNoHistory(FFFF)Landroid/view/MotionEvent;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/app/Dialog;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    return v1
.end method

.method public onBackPressed()V
    .registers 2

    iget-object v0, p0, Landroid/service/voice/VoiceInteractionWindow;->mCallback:Landroid/service/voice/VoiceInteractionWindow$Callback;

    if-eqz v0, :cond_8

    invoke-interface {v0}, Landroid/service/voice/VoiceInteractionWindow$Callback;->onBackPressed()V

    goto :goto_b

    :cond_8
    invoke-super {p0}, Landroid/app/Dialog;->onBackPressed()V

    :goto_b
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 4

    iget-object v0, p0, Landroid/service/voice/VoiceInteractionWindow;->mKeyEventCallback:Landroid/view/KeyEvent$Callback;

    if-eqz v0, :cond_c

    invoke-interface {v0, p1, p2}, Landroid/view/KeyEvent$Callback;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    return v0

    :cond_c
    invoke-super {p0, p1, p2}, Landroid/app/Dialog;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public onKeyLongPress(ILandroid/view/KeyEvent;)Z
    .registers 4

    iget-object v0, p0, Landroid/service/voice/VoiceInteractionWindow;->mKeyEventCallback:Landroid/view/KeyEvent$Callback;

    if-eqz v0, :cond_c

    invoke-interface {v0, p1, p2}, Landroid/view/KeyEvent$Callback;->onKeyLongPress(ILandroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    return v0

    :cond_c
    invoke-super {p0, p1, p2}, Landroid/app/Dialog;->onKeyLongPress(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public onKeyMultiple(IILandroid/view/KeyEvent;)Z
    .registers 5

    iget-object v0, p0, Landroid/service/voice/VoiceInteractionWindow;->mKeyEventCallback:Landroid/view/KeyEvent$Callback;

    if-eqz v0, :cond_c

    invoke-interface {v0, p1, p2, p3}, Landroid/view/KeyEvent$Callback;->onKeyMultiple(IILandroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    return v0

    :cond_c
    invoke-super {p0, p1, p2, p3}, Landroid/app/Dialog;->onKeyMultiple(IILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .registers 4

    iget-object v0, p0, Landroid/service/voice/VoiceInteractionWindow;->mKeyEventCallback:Landroid/view/KeyEvent$Callback;

    if-eqz v0, :cond_c

    invoke-interface {v0, p1, p2}, Landroid/view/KeyEvent$Callback;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    return v0

    :cond_c
    invoke-super {p0, p1, p2}, Landroid/app/Dialog;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public onWindowFocusChanged(Z)V
    .registers 3

    invoke-super {p0, p1}, Landroid/app/Dialog;->onWindowFocusChanged(Z)V

    iget-object v0, p0, Landroid/service/voice/VoiceInteractionWindow;->mDispatcherState:Landroid/view/KeyEvent$DispatcherState;

    invoke-virtual {v0}, Landroid/view/KeyEvent$DispatcherState;->reset()V

    return-void
.end method

.method setToken(Landroid/os/IBinder;)V
    .registers 5

    iget v0, p0, Landroid/service/voice/VoiceInteractionWindow;->mWindowState:I

    packed-switch v0, :pswitch_data_56

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected state="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/service/voice/VoiceInteractionWindow;->mWindowState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_20  #0x4
    const-string v0, "VoiceInteractionWindow"

    const-string v1, "Ignoring setToken() because window is already destroyed."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :pswitch_28  #0x1, 0x2, 0x3
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "setToken can be called only once"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_31  #0x0
    invoke-virtual {p0}, Landroid/service/voice/VoiceInteractionWindow;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iput-object p1, v0, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    invoke-virtual {p0}, Landroid/service/voice/VoiceInteractionWindow;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    const/4 v1, 0x1

    invoke-direct {p0, v1}, Landroid/service/voice/VoiceInteractionWindow;->updateWindowState(I)V

    invoke-virtual {p0}, Landroid/service/voice/VoiceInteractionWindow;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0}, Landroid/service/voice/VoiceInteractionWindow;->show()V

    return-void

    :pswitch_data_56
    .packed-switch 0x0
        :pswitch_31  #00000000
        :pswitch_28  #00000001
        :pswitch_28  #00000002
        :pswitch_28  #00000003
        :pswitch_20  #00000004
    .end packed-switch
.end method

.method public show()V
    .registers 4

    iget v0, p0, Landroid/service/voice/VoiceInteractionWindow;->mWindowState:I

    const-string v1, "VoiceInteractionWindow"

    packed-switch v0, :pswitch_data_4a

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected state="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/service/voice/VoiceInteractionWindow;->mWindowState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_22  #0x4
    const-string v0, "Ignoring show() because the window is already destroyed."

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :pswitch_28  #0x3
    const-string v0, "Not trying to call show() because it was already rejected once."

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :pswitch_2e  #0x1, 0x2
    :try_start_2e
    invoke-super {p0}, Landroid/app/Dialog;->show()V

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Landroid/service/voice/VoiceInteractionWindow;->updateWindowState(I)V
    :try_end_35
    .catch Landroid/view/WindowManager$BadTokenException; {:try_start_2e .. :try_end_35} :catch_36

    goto :goto_40

    :catch_36
    move-exception v0

    const-string v2, "Probably the IME window token is already invalidated. show() does nothing."

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x3

    invoke-direct {p0, v1}, Landroid/service/voice/VoiceInteractionWindow;->updateWindowState(I)V

    :goto_40
    return-void

    :pswitch_41  #0x0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Window token is not set yet."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    :pswitch_data_4a
    .packed-switch 0x0
        :pswitch_41  #00000000
        :pswitch_2e  #00000001
        :pswitch_2e  #00000002
        :pswitch_28  #00000003
        :pswitch_22  #00000004
    .end packed-switch
.end method

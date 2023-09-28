# classes3.dex

.class public final Landroid/view/ImeInsetsSourceConsumer;
.super Landroid/view/InsetsSourceConsumer;


# instance fields
.field private mIsHideAnimationRunning:Z

.field private mIsRequestedVisibleAwaitingControl:Z

.field private mIsShowRequestedDuringHideAnimation:Z


# direct methods
.method public constructor <init>(Landroid/view/InsetsState;Ljava/util/function/Supplier;Landroid/view/InsetsController;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/InsetsState;",
            "Ljava/util/function/Supplier<",
            "Landroid/view/SurfaceControl$Transaction;",
            ">;",
            "Landroid/view/InsetsController;",
            ")V"
        }
    .end annotation

    const/16 v0, 0x13

    invoke-direct {p0, v0, p1, p2, p3}, Landroid/view/InsetsSourceConsumer;-><init>(ILandroid/view/InsetsState;Ljava/util/function/Supplier;Landroid/view/InsetsController;)V

    return-void
.end method

.method private getImm()Landroid/view/inputmethod/InputMethodManager;
    .registers 2

    iget-object v0, p0, Landroid/view/ImeInsetsSourceConsumer;->mController:Landroid/view/InsetsController;

    invoke-virtual {v0}, Landroid/view/InsetsController;->getHost()Landroid/view/InsetsController$Host;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/InsetsController$Host;->getInputMethodManager()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V
    .registers 9

    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v0

    const-wide v2, 0x10b00000001L

    invoke-super {p0, p1, v2, v3}, Landroid/view/InsetsSourceConsumer;->dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V

    iget-boolean v2, p0, Landroid/view/ImeInsetsSourceConsumer;->mIsRequestedVisibleAwaitingControl:Z

    const-wide v3, 0x10800000003L

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    iget-boolean v2, p0, Landroid/view/ImeInsetsSourceConsumer;->mIsHideAnimationRunning:Z

    const-wide v3, 0x10800000004L

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    iget-boolean v2, p0, Landroid/view/ImeInsetsSourceConsumer;->mIsShowRequestedDuringHideAnimation:Z

    const-wide v3, 0x10800000005L

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    return-void
.end method

.method public hide()V
    .registers 2

    invoke-super {p0}, Landroid/view/InsetsSourceConsumer;->hide()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/view/ImeInsetsSourceConsumer;->mIsRequestedVisibleAwaitingControl:Z

    return-void
.end method

.method hide(ZI)V
    .registers 4

    invoke-virtual {p0}, Landroid/view/ImeInsetsSourceConsumer;->hide()V

    if-eqz p1, :cond_f

    iget-boolean v0, p0, Landroid/view/ImeInsetsSourceConsumer;->mIsShowRequestedDuringHideAnimation:Z

    if-nez v0, :cond_f

    invoke-virtual {p0}, Landroid/view/ImeInsetsSourceConsumer;->notifyHidden()V

    invoke-virtual {p0}, Landroid/view/ImeInsetsSourceConsumer;->removeSurface()V

    :cond_f
    xor-int/lit8 v0, p1, 0x1

    iput-boolean v0, p0, Landroid/view/ImeInsetsSourceConsumer;->mIsHideAnimationRunning:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/view/ImeInsetsSourceConsumer;->mIsShowRequestedDuringHideAnimation:Z

    return-void
.end method

.method protected isRequestedVisibleAwaitingControl()Z
    .registers 2

    iget-boolean v0, p0, Landroid/view/ImeInsetsSourceConsumer;->mIsRequestedVisibleAwaitingControl:Z

    if-nez v0, :cond_d

    invoke-virtual {p0}, Landroid/view/ImeInsetsSourceConsumer;->isRequestedVisible()Z

    move-result v0

    if-eqz v0, :cond_b

    goto :goto_d

    :cond_b
    const/4 v0, 0x0

    goto :goto_e

    :cond_d
    :goto_d
    const/4 v0, 0x1

    :goto_e
    return v0
.end method

.method notifyHidden()V
    .registers 5

    invoke-direct {p0}, Landroid/view/ImeInsetsSourceConsumer;->getImm()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    iget-object v1, p0, Landroid/view/ImeInsetsSourceConsumer;->mController:Landroid/view/InsetsController;

    invoke-virtual {v1}, Landroid/view/InsetsController;->getHost()Landroid/view/InsetsController$Host;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/InsetsController$Host;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/inputmethod/InputMethodManager;->notifyImeHidden(Landroid/os/IBinder;)V

    const-wide/16 v0, 0x8

    const-string v2, "IC.hideRequestFromApi"

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Landroid/os/Trace;->asyncTraceEnd(JLjava/lang/String;I)V

    return-void
.end method

.method public onPerceptible(Z)V
    .registers 4

    invoke-super {p0, p1}, Landroid/view/InsetsSourceConsumer;->onPerceptible(Z)V

    iget-object v0, p0, Landroid/view/ImeInsetsSourceConsumer;->mController:Landroid/view/InsetsController;

    invoke-virtual {v0}, Landroid/view/InsetsController;->getHost()Landroid/view/InsetsController$Host;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/InsetsController$Host;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    if-eqz v0, :cond_16

    invoke-direct {p0}, Landroid/view/ImeInsetsSourceConsumer;->getImm()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v1

    invoke-virtual {v1, v0, p1}, Landroid/view/inputmethod/InputMethodManager;->reportPerceptible(Landroid/os/IBinder;Z)V

    :cond_16
    return-void
.end method

.method public onShowRequested()V
    .registers 2

    iget-boolean v0, p0, Landroid/view/ImeInsetsSourceConsumer;->mIsHideAnimationRunning:Z

    if-eqz v0, :cond_7

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/ImeInsetsSourceConsumer;->mIsShowRequestedDuringHideAnimation:Z

    :cond_7
    return-void
.end method

.method public onWindowFocusGained(Z)V
    .registers 3

    invoke-super {p0, p1}, Landroid/view/InsetsSourceConsumer;->onWindowFocusGained(Z)V

    invoke-direct {p0}, Landroid/view/ImeInsetsSourceConsumer;->getImm()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/inputmethod/InputMethodManager;->registerImeConsumer(Landroid/view/ImeInsetsSourceConsumer;)V

    invoke-virtual {p0}, Landroid/view/ImeInsetsSourceConsumer;->isRequestedVisible()Z

    move-result v0

    if-eqz v0, :cond_19

    invoke-virtual {p0}, Landroid/view/ImeInsetsSourceConsumer;->getControl()Landroid/view/InsetsSourceControl;

    move-result-object v0

    if-nez v0, :cond_19

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/ImeInsetsSourceConsumer;->mIsRequestedVisibleAwaitingControl:Z

    :cond_19
    return-void
.end method

.method public onWindowFocusLost()V
    .registers 2

    invoke-super {p0}, Landroid/view/InsetsSourceConsumer;->onWindowFocusLost()V

    invoke-direct {p0}, Landroid/view/ImeInsetsSourceConsumer;->getImm()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/inputmethod/InputMethodManager;->unregisterImeConsumer(Landroid/view/ImeInsetsSourceConsumer;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/view/ImeInsetsSourceConsumer;->mIsRequestedVisibleAwaitingControl:Z

    return-void
.end method

.method public removeSurface()V
    .registers 3

    iget-object v0, p0, Landroid/view/ImeInsetsSourceConsumer;->mController:Landroid/view/InsetsController;

    invoke-virtual {v0}, Landroid/view/InsetsController;->getHost()Landroid/view/InsetsController$Host;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/InsetsController$Host;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    if-eqz v0, :cond_13

    invoke-direct {p0}, Landroid/view/ImeInsetsSourceConsumer;->getImm()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/inputmethod/InputMethodManager;->removeImeSurface(Landroid/os/IBinder;)V

    :cond_13
    return-void
.end method

.method public requestShow(Z)I
    .registers 5

    invoke-virtual {p0}, Landroid/view/ImeInsetsSourceConsumer;->getControl()Landroid/view/InsetsSourceControl;

    move-result-object v0

    const/4 v1, 0x1

    if-nez v0, :cond_9

    iput-boolean v1, p0, Landroid/view/ImeInsetsSourceConsumer;->mIsRequestedVisibleAwaitingControl:Z

    :cond_9
    if-nez p1, :cond_39

    iget-object v0, p0, Landroid/view/ImeInsetsSourceConsumer;->mState:Landroid/view/InsetsState;

    invoke-virtual {p0}, Landroid/view/ImeInsetsSourceConsumer;->getType()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/view/InsetsState;->getSource(I)Landroid/view/InsetsSource;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/InsetsSource;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_22

    invoke-virtual {p0}, Landroid/view/ImeInsetsSourceConsumer;->getControl()Landroid/view/InsetsSourceControl;

    move-result-object v0

    if-eqz v0, :cond_22

    goto :goto_39

    :cond_22
    invoke-direct {p0}, Landroid/view/ImeInsetsSourceConsumer;->getImm()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    iget-object v2, p0, Landroid/view/ImeInsetsSourceConsumer;->mController:Landroid/view/InsetsController;

    invoke-virtual {v2}, Landroid/view/InsetsController;->getHost()Landroid/view/InsetsController$Host;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/InsetsController$Host;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/view/inputmethod/InputMethodManager;->requestImeShow(Landroid/os/IBinder;)Z

    move-result v0

    if-eqz v0, :cond_37

    goto :goto_38

    :cond_37
    const/4 v1, 0x2

    :goto_38
    return v1

    :cond_39
    :goto_39
    const/4 v0, 0x0

    return v0
.end method

.method public setControl(Landroid/view/InsetsSourceControl;[I[I)Z
    .registers 6

    invoke-super {p0, p1, p2, p3}, Landroid/view/InsetsSourceConsumer;->setControl(Landroid/view/InsetsSourceControl;[I[I)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    return v1

    :cond_8
    if-nez p1, :cond_14

    iget-boolean v0, p0, Landroid/view/ImeInsetsSourceConsumer;->mIsRequestedVisibleAwaitingControl:Z

    if-nez v0, :cond_14

    invoke-virtual {p0}, Landroid/view/ImeInsetsSourceConsumer;->hide()V

    invoke-virtual {p0}, Landroid/view/ImeInsetsSourceConsumer;->removeSurface()V

    :cond_14
    if-eqz p1, :cond_18

    iput-boolean v1, p0, Landroid/view/ImeInsetsSourceConsumer;->mIsRequestedVisibleAwaitingControl:Z

    :cond_18
    const/4 v0, 0x1

    return v0
.end method

.method public show(Z)V
    .registers 2

    invoke-super {p0, p1}, Landroid/view/InsetsSourceConsumer;->show(Z)V

    invoke-virtual {p0}, Landroid/view/ImeInsetsSourceConsumer;->onShowRequested()V

    return-void
.end method

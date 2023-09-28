# classes3.dex

.class public Landroid/os/perfdebug/InputEventMonitor;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static get()Landroid/os/perfdebug/InputEventMonitor;
    .registers 1

    const-class v0, Landroid/os/perfdebug/InputEventMonitor;

    invoke-static {v0}, Lcom/miui/base/MiuiStubUtil;->getImpl(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/perfdebug/InputEventMonitor;

    return-object v0
.end method

.method public static newInputEventMonitor()Landroid/os/perfdebug/InputEventMonitor;
    .registers 1

    const-class v0, Landroid/os/perfdebug/InputEventMonitor;

    invoke-static {v0}, Lcom/miui/base/MiuiStubUtil;->newInstance(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/perfdebug/InputEventMonitor;

    return-object v0
.end method


# virtual methods
.method public markViewInterceptTouchEventBegin(Ljava/lang/String;)V
    .registers 2

    return-void
.end method

.method public markViewInterceptTouchEventEnd()V
    .registers 1

    return-void
.end method

.method public markViewTouchEventBegin(Ljava/lang/String;)V
    .registers 2

    return-void
.end method

.method public markViewTouchEventEnd()V
    .registers 1

    return-void
.end method

.method public monitorDispatchInputEvent(Landroid/view/InputEvent;)V
    .registers 2

    return-void
.end method

.method public monitorDispatchKeyEventBegin(Landroid/view/KeyEvent;)V
    .registers 2

    return-void
.end method

.method public monitorDispatchKeyEventEnd(Landroid/view/KeyEvent;Ljava/lang/String;)V
    .registers 3

    return-void
.end method

.method public monitorDispatchKeyEventPreImeBegin(Landroid/view/KeyEvent;)V
    .registers 2

    return-void
.end method

.method public monitorDispatchKeyEventPreImeEnd(Landroid/view/KeyEvent;Ljava/lang/String;)V
    .registers 3

    return-void
.end method

.method public monitorDispatchPointerEventBegin(Landroid/view/MotionEvent;)V
    .registers 2

    return-void
.end method

.method public monitorDispatchPointerEventEnd(Landroid/view/MotionEvent;Ljava/lang/String;)V
    .registers 3

    return-void
.end method

.method public monitorFinishInputEvent(Landroid/view/InputEvent;Ljava/lang/String;)V
    .registers 3

    return-void
.end method

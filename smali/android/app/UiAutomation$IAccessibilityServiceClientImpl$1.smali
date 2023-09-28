# classes.dex

.class Landroid/app/UiAutomation$IAccessibilityServiceClientImpl$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/accessibilityservice/AccessibilityService$Callbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/app/UiAutomation$IAccessibilityServiceClientImpl;-><init>(Landroid/app/UiAutomation;Landroid/os/Looper;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final mGenerationId:I

.field final synthetic val$generationId:I

.field final synthetic val$this$0:Landroid/app/UiAutomation;


# direct methods
.method constructor <init>(Landroid/app/UiAutomation;I)V
    .registers 3

    iput-object p1, p0, Landroid/app/UiAutomation$IAccessibilityServiceClientImpl$1;->val$this$0:Landroid/app/UiAutomation;

    iput p2, p0, Landroid/app/UiAutomation$IAccessibilityServiceClientImpl$1;->val$generationId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Landroid/app/UiAutomation$IAccessibilityServiceClientImpl$1;->mGenerationId:I

    return-void
.end method

.method private isGenerationChangedLocked()Z
    .registers 3

    iget v0, p0, Landroid/app/UiAutomation$IAccessibilityServiceClientImpl$1;->mGenerationId:I

    iget-object v1, p0, Landroid/app/UiAutomation$IAccessibilityServiceClientImpl$1;->val$this$0:Landroid/app/UiAutomation;

    invoke-static {v1}, Landroid/app/UiAutomation;->-$$Nest$fgetmGenerationId(Landroid/app/UiAutomation;)I

    move-result v1

    if-eq v0, v1, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method


# virtual methods
.method public createImeSession(Lcom/android/internal/inputmethod/IAccessibilityInputMethodSessionCallback;)V
    .registers 2

    return-void
.end method

.method public init(ILandroid/os/IBinder;)V
    .registers 6

    iget-object v0, p0, Landroid/app/UiAutomation$IAccessibilityServiceClientImpl$1;->val$this$0:Landroid/app/UiAutomation;

    invoke-static {v0}, Landroid/app/UiAutomation;->-$$Nest$fgetmLock(Landroid/app/UiAutomation;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_7
    invoke-direct {p0}, Landroid/app/UiAutomation$IAccessibilityServiceClientImpl$1;->isGenerationChangedLocked()Z

    move-result v1

    if-eqz v1, :cond_f

    monitor-exit v0

    return-void

    :cond_f
    iget-object v1, p0, Landroid/app/UiAutomation$IAccessibilityServiceClientImpl$1;->val$this$0:Landroid/app/UiAutomation;

    const/4 v2, 0x2

    invoke-static {v1, v2}, Landroid/app/UiAutomation;->-$$Nest$fputmConnectionState(Landroid/app/UiAutomation;I)V

    iget-object v1, p0, Landroid/app/UiAutomation$IAccessibilityServiceClientImpl$1;->val$this$0:Landroid/app/UiAutomation;

    invoke-static {v1, p1}, Landroid/app/UiAutomation;->-$$Nest$fputmConnectionId(Landroid/app/UiAutomation;I)V

    iget-object v1, p0, Landroid/app/UiAutomation$IAccessibilityServiceClientImpl$1;->val$this$0:Landroid/app/UiAutomation;

    invoke-static {v1}, Landroid/app/UiAutomation;->-$$Nest$fgetmLock(Landroid/app/UiAutomation;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v0
    :try_end_24
    .catchall {:try_start_7 .. :try_end_24} :catchall_45

    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    if-eqz v0, :cond_44

    invoke-static {}, Landroid/app/UiAutomation;->-$$Nest$sfgetLOG_TAG()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Init "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/app/UiAutomation$IAccessibilityServiceClientImpl$1;->val$this$0:Landroid/app/UiAutomation;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_44
    return-void

    :catchall_45
    move-exception v1

    :try_start_46
    monitor-exit v0
    :try_end_47
    .catchall {:try_start_46 .. :try_end_47} :catchall_45

    throw v1
.end method

.method public onAccessibilityButtonAvailabilityChanged(Z)V
    .registers 2

    return-void
.end method

.method public onAccessibilityButtonClicked(I)V
    .registers 2

    return-void
.end method

.method public onAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .registers 6

    iget-object v0, p0, Landroid/app/UiAutomation$IAccessibilityServiceClientImpl$1;->val$this$0:Landroid/app/UiAutomation;

    invoke-static {v0}, Landroid/app/UiAutomation;->-$$Nest$fgetmLock(Landroid/app/UiAutomation;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_7
    invoke-direct {p0}, Landroid/app/UiAutomation$IAccessibilityServiceClientImpl$1;->isGenerationChangedLocked()Z

    move-result v1

    if-eqz v1, :cond_f

    monitor-exit v0

    return-void

    :cond_f
    iget-object v1, p0, Landroid/app/UiAutomation$IAccessibilityServiceClientImpl$1;->val$this$0:Landroid/app/UiAutomation;

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getEventTime()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Landroid/app/UiAutomation;->-$$Nest$fputmLastEventTimeMillis(Landroid/app/UiAutomation;J)V

    iget-object v1, p0, Landroid/app/UiAutomation$IAccessibilityServiceClientImpl$1;->val$this$0:Landroid/app/UiAutomation;

    invoke-static {v1}, Landroid/app/UiAutomation;->-$$Nest$fgetmWaitingForEventDelivery(Landroid/app/UiAutomation;)Z

    move-result v1

    if-eqz v1, :cond_2d

    iget-object v1, p0, Landroid/app/UiAutomation$IAccessibilityServiceClientImpl$1;->val$this$0:Landroid/app/UiAutomation;

    invoke-static {v1}, Landroid/app/UiAutomation;->-$$Nest$fgetmEventQueue(Landroid/app/UiAutomation;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-static {p1}, Landroid/view/accessibility/AccessibilityEvent;->obtain(Landroid/view/accessibility/AccessibilityEvent;)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2d
    iget-object v1, p0, Landroid/app/UiAutomation$IAccessibilityServiceClientImpl$1;->val$this$0:Landroid/app/UiAutomation;

    invoke-static {v1}, Landroid/app/UiAutomation;->-$$Nest$fgetmLock(Landroid/app/UiAutomation;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    iget-object v1, p0, Landroid/app/UiAutomation$IAccessibilityServiceClientImpl$1;->val$this$0:Landroid/app/UiAutomation;

    invoke-static {v1}, Landroid/app/UiAutomation;->-$$Nest$fgetmOnAccessibilityEventListener(Landroid/app/UiAutomation;)Landroid/app/UiAutomation$OnAccessibilityEventListener;

    move-result-object v1

    monitor-exit v0
    :try_end_3d
    .catchall {:try_start_7 .. :try_end_3d} :catchall_56

    if-eqz v1, :cond_55

    iget-object v0, p0, Landroid/app/UiAutomation$IAccessibilityServiceClientImpl$1;->val$this$0:Landroid/app/UiAutomation;

    invoke-static {v0}, Landroid/app/UiAutomation;->-$$Nest$fgetmLocalCallbackHandler(Landroid/app/UiAutomation;)Landroid/os/Handler;

    move-result-object v0

    new-instance v2, Landroid/app/UiAutomation$IAccessibilityServiceClientImpl$1$$ExternalSyntheticLambda0;

    invoke-direct {v2}, Landroid/app/UiAutomation$IAccessibilityServiceClientImpl$1$$ExternalSyntheticLambda0;-><init>()V

    invoke-static {p1}, Landroid/view/accessibility/AccessibilityEvent;->obtain(Landroid/view/accessibility/AccessibilityEvent;)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v3

    invoke-static {v2, v1, v3}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/BiConsumer;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_55
    return-void

    :catchall_56
    move-exception v1

    :try_start_57
    monitor-exit v0
    :try_end_58
    .catchall {:try_start_57 .. :try_end_58} :catchall_56

    throw v1
.end method

.method public onFingerprintCapturingGesturesChanged(Z)V
    .registers 2

    return-void
.end method

.method public onFingerprintGesture(I)V
    .registers 2

    return-void
.end method

.method public onGesture(Landroid/accessibilityservice/AccessibilityGestureEvent;)Z
    .registers 3

    const/4 v0, 0x0

    return v0
.end method

.method public onInterrupt()V
    .registers 1

    return-void
.end method

.method public onKeyEvent(Landroid/view/KeyEvent;)Z
    .registers 3

    const/4 v0, 0x0

    return v0
.end method

.method public onMagnificationChanged(ILandroid/graphics/Region;Landroid/accessibilityservice/MagnificationConfig;)V
    .registers 4

    return-void
.end method

.method public onMotionEvent(Landroid/view/MotionEvent;)V
    .registers 2

    return-void
.end method

.method public onPerformGestureResult(IZ)V
    .registers 3

    return-void
.end method

.method public onServiceConnected()V
    .registers 1

    return-void
.end method

.method public onSoftKeyboardShowModeChanged(I)V
    .registers 2

    return-void
.end method

.method public onSystemActionsChanged()V
    .registers 1

    return-void
.end method

.method public onTouchStateChanged(II)V
    .registers 3

    return-void
.end method

.method public startInput(Lcom/android/internal/inputmethod/RemoteAccessibilityInputConnection;Landroid/view/inputmethod/EditorInfo;Z)V
    .registers 4

    return-void
.end method

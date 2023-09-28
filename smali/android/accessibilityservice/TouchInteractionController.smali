# classes.dex

.class public final Landroid/accessibilityservice/TouchInteractionController;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/accessibilityservice/TouchInteractionController$Callback;,
        Landroid/accessibilityservice/TouchInteractionController$State;
    }
.end annotation


# static fields
.field private static final MAX_POINTER_COUNT:I = 0x20

.field public static final STATE_CLEAR:I = 0x0

.field public static final STATE_DELEGATING:I = 0x4

.field public static final STATE_DRAGGING:I = 0x3

.field public static final STATE_TOUCH_EXPLORING:I = 0x2

.field public static final STATE_TOUCH_INTERACTING:I = 0x1


# instance fields
.field private mCallbacks:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroid/accessibilityservice/TouchInteractionController$Callback;",
            "Ljava/util/concurrent/Executor;",
            ">;"
        }
    .end annotation
.end field

.field private final mDisplayId:I

.field private final mLock:Ljava/lang/Object;

.field private mQueuedMotionEvents:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Landroid/view/MotionEvent;",
            ">;"
        }
    .end annotation
.end field

.field private final mService:Landroid/accessibilityservice/AccessibilityService;

.field private mServiceDetectsGestures:Z

.field private mState:I

.field private mStateChangeRequested:Z


# direct methods
.method constructor <init>(Landroid/accessibilityservice/AccessibilityService;Ljava/lang/Object;I)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Landroid/accessibilityservice/TouchInteractionController;->mQueuedMotionEvents:Ljava/util/Queue;

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/accessibilityservice/TouchInteractionController;->mStateChangeRequested:Z

    iput v0, p0, Landroid/accessibilityservice/TouchInteractionController;->mState:I

    iput p3, p0, Landroid/accessibilityservice/TouchInteractionController;->mDisplayId:I

    iput-object p2, p0, Landroid/accessibilityservice/TouchInteractionController;->mLock:Ljava/lang/Object;

    iput-object p1, p0, Landroid/accessibilityservice/TouchInteractionController;->mService:Landroid/accessibilityservice/AccessibilityService;

    return-void
.end method

.method static synthetic lambda$onStateChanged$1(Landroid/accessibilityservice/TouchInteractionController$Callback;I)V
    .registers 2

    invoke-interface {p0, p1}, Landroid/accessibilityservice/TouchInteractionController$Callback;->onStateChanged(I)V

    return-void
.end method

.method static synthetic lambda$sendEventToAllListeners$0(Landroid/accessibilityservice/TouchInteractionController$Callback;Landroid/view/MotionEvent;)V
    .registers 2

    invoke-interface {p0, p1}, Landroid/accessibilityservice/TouchInteractionController$Callback;->onMotionEvent(Landroid/view/MotionEvent;)V

    return-void
.end method

.method private sendEventToAllListeners(Landroid/view/MotionEvent;)V
    .registers 8

    iget-object v0, p0, Landroid/accessibilityservice/TouchInteractionController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    new-instance v1, Landroid/util/ArrayMap;

    iget-object v2, p0, Landroid/accessibilityservice/TouchInteractionController;->mCallbacks:Landroid/util/ArrayMap;

    invoke-direct {v1, v2}, Landroid/util/ArrayMap;-><init>(Landroid/util/ArrayMap;)V

    monitor-exit v0
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_30

    const/4 v0, 0x0

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v2

    :goto_10
    if-ge v0, v2, :cond_2f

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/accessibilityservice/TouchInteractionController$Callback;

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/concurrent/Executor;

    if-eqz v4, :cond_29

    new-instance v5, Landroid/accessibilityservice/TouchInteractionController$$ExternalSyntheticLambda1;

    invoke-direct {v5, v3, p1}, Landroid/accessibilityservice/TouchInteractionController$$ExternalSyntheticLambda1;-><init>(Landroid/accessibilityservice/TouchInteractionController$Callback;Landroid/view/MotionEvent;)V

    invoke-interface {v4, v5}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_2c

    :cond_29
    invoke-interface {v3, p1}, Landroid/accessibilityservice/TouchInteractionController$Callback;->onMotionEvent(Landroid/view/MotionEvent;)V

    :goto_2c
    add-int/lit8 v0, v0, 0x1

    goto :goto_10

    :cond_2f
    return-void

    :catchall_30
    move-exception v1

    :try_start_31
    monitor-exit v0
    :try_end_32
    .catchall {:try_start_31 .. :try_end_32} :catchall_30

    throw v1
.end method

.method private setServiceDetectsGestures(Z)V
    .registers 5

    invoke-static {}, Landroid/view/accessibility/AccessibilityInteractionClient;->getInstance()Landroid/view/accessibility/AccessibilityInteractionClient;

    iget-object v0, p0, Landroid/accessibilityservice/TouchInteractionController;->mService:Landroid/accessibilityservice/AccessibilityService;

    invoke-virtual {v0}, Landroid/accessibilityservice/AccessibilityService;->getConnectionId()I

    move-result v0

    invoke-static {v0}, Landroid/view/accessibility/AccessibilityInteractionClient;->getConnection(I)Landroid/accessibilityservice/IAccessibilityServiceConnection;

    move-result-object v0

    if-eqz v0, :cond_1e

    :try_start_f
    iget v1, p0, Landroid/accessibilityservice/TouchInteractionController;->mDisplayId:I

    invoke-interface {v0, v1, p1}, Landroid/accessibilityservice/IAccessibilityServiceConnection;->setServiceDetectsGesturesEnabled(IZ)V

    iput-boolean p1, p0, Landroid/accessibilityservice/TouchInteractionController;->mServiceDetectsGestures:Z
    :try_end_16
    .catch Landroid/os/RemoteException; {:try_start_f .. :try_end_16} :catch_17

    goto :goto_1e

    :catch_17
    move-exception v1

    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    :cond_1e
    :goto_1e
    return-void
.end method

.method public static stateToString(I)Ljava/lang/String;
    .registers 3

    packed-switch p0, :pswitch_data_26

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown state: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_17  #0x4
    const-string v0, "STATE_DELEGATING"

    return-object v0

    :pswitch_1a  #0x3
    const-string v0, "STATE_DRAGGING"

    return-object v0

    :pswitch_1d  #0x2
    const-string v0, "STATE_TOUCH_EXPLORING"

    return-object v0

    :pswitch_20  #0x1
    const-string v0, "STATE_TOUCH_INTERACTING"

    return-object v0

    :pswitch_23  #0x0
    const-string v0, "STATE_CLEAR"

    return-object v0

    :pswitch_data_26
    .packed-switch 0x0
        :pswitch_23  #00000000
        :pswitch_20  #00000001
        :pswitch_1d  #00000002
        :pswitch_1a  #00000003
        :pswitch_17  #00000004
    .end packed-switch
.end method

.method private validateTransitionRequest()V
    .registers 4

    iget-boolean v0, p0, Landroid/accessibilityservice/TouchInteractionController;->mServiceDetectsGestures:Z

    if-eqz v0, :cond_34

    iget-object v0, p0, Landroid/accessibilityservice/TouchInteractionController;->mCallbacks:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    if-eqz v0, :cond_34

    iget v0, p0, Landroid/accessibilityservice/TouchInteractionController;->mState:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_15

    const/4 v1, 0x2

    if-eq v0, v1, :cond_15

    return-void

    :cond_15
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "State transition requests are not allowed in "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/accessibilityservice/TouchInteractionController;->mState:I

    invoke-static {v2}, Landroid/accessibilityservice/TouchInteractionController;->stateToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_34
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "State transitions are not allowed without first adding a callback."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public getDisplayId()I
    .registers 2

    iget v0, p0, Landroid/accessibilityservice/TouchInteractionController;->mDisplayId:I

    return v0
.end method

.method public getMaxPointerCount()I
    .registers 2

    const/16 v0, 0x20

    return v0
.end method

.method public getState()I
    .registers 3

    iget-object v0, p0, Landroid/accessibilityservice/TouchInteractionController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget v1, p0, Landroid/accessibilityservice/TouchInteractionController;->mState:I

    monitor-exit v0

    return v1

    :catchall_7
    move-exception v1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v1
.end method

.method onMotionEvent(Landroid/view/MotionEvent;)V
    .registers 3

    iget-boolean v0, p0, Landroid/accessibilityservice/TouchInteractionController;->mStateChangeRequested:Z

    if-eqz v0, :cond_a

    iget-object v0, p0, Landroid/accessibilityservice/TouchInteractionController;->mQueuedMotionEvents:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    goto :goto_d

    :cond_a
    invoke-direct {p0, p1}, Landroid/accessibilityservice/TouchInteractionController;->sendEventToAllListeners(Landroid/view/MotionEvent;)V

    :goto_d
    return-void
.end method

.method onStateChanged(I)V
    .registers 8

    iput p1, p0, Landroid/accessibilityservice/TouchInteractionController;->mState:I

    iget-object v0, p0, Landroid/accessibilityservice/TouchInteractionController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_5
    new-instance v1, Landroid/util/ArrayMap;

    iget-object v2, p0, Landroid/accessibilityservice/TouchInteractionController;->mCallbacks:Landroid/util/ArrayMap;

    invoke-direct {v1, v2}, Landroid/util/ArrayMap;-><init>(Landroid/util/ArrayMap;)V

    monitor-exit v0
    :try_end_d
    .catchall {:try_start_5 .. :try_end_d} :catchall_49

    const/4 v0, 0x0

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v2

    :goto_12
    if-ge v0, v2, :cond_31

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/accessibilityservice/TouchInteractionController$Callback;

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/concurrent/Executor;

    if-eqz v4, :cond_2b

    new-instance v5, Landroid/accessibilityservice/TouchInteractionController$$ExternalSyntheticLambda0;

    invoke-direct {v5, v3, p1}, Landroid/accessibilityservice/TouchInteractionController$$ExternalSyntheticLambda0;-><init>(Landroid/accessibilityservice/TouchInteractionController$Callback;I)V

    invoke-interface {v4, v5}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_2e

    :cond_2b
    invoke-interface {v3, p1}, Landroid/accessibilityservice/TouchInteractionController$Callback;->onStateChanged(I)V

    :goto_2e
    add-int/lit8 v0, v0, 0x1

    goto :goto_12

    :cond_31
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/accessibilityservice/TouchInteractionController;->mStateChangeRequested:Z

    :goto_34
    iget-object v0, p0, Landroid/accessibilityservice/TouchInteractionController;->mQueuedMotionEvents:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->size()I

    move-result v0

    if-lez v0, :cond_48

    iget-object v0, p0, Landroid/accessibilityservice/TouchInteractionController;->mQueuedMotionEvents:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/MotionEvent;

    invoke-direct {p0, v0}, Landroid/accessibilityservice/TouchInteractionController;->sendEventToAllListeners(Landroid/view/MotionEvent;)V

    goto :goto_34

    :cond_48
    return-void

    :catchall_49
    move-exception v1

    :try_start_4a
    monitor-exit v0
    :try_end_4b
    .catchall {:try_start_4a .. :try_end_4b} :catchall_49

    throw v1
.end method

.method public performClick()V
    .registers 4

    invoke-static {}, Landroid/view/accessibility/AccessibilityInteractionClient;->getInstance()Landroid/view/accessibility/AccessibilityInteractionClient;

    iget-object v0, p0, Landroid/accessibilityservice/TouchInteractionController;->mService:Landroid/accessibilityservice/AccessibilityService;

    invoke-virtual {v0}, Landroid/accessibilityservice/AccessibilityService;->getConnectionId()I

    move-result v0

    invoke-static {v0}, Landroid/view/accessibility/AccessibilityInteractionClient;->getConnection(I)Landroid/accessibilityservice/IAccessibilityServiceConnection;

    move-result-object v0

    if-eqz v0, :cond_1c

    :try_start_f
    iget v1, p0, Landroid/accessibilityservice/TouchInteractionController;->mDisplayId:I

    invoke-interface {v0, v1}, Landroid/accessibilityservice/IAccessibilityServiceConnection;->onDoubleTap(I)V
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_f .. :try_end_14} :catch_15

    goto :goto_1c

    :catch_15
    move-exception v1

    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    :cond_1c
    :goto_1c
    return-void
.end method

.method public performLongClickAndStartDrag()V
    .registers 4

    invoke-static {}, Landroid/view/accessibility/AccessibilityInteractionClient;->getInstance()Landroid/view/accessibility/AccessibilityInteractionClient;

    iget-object v0, p0, Landroid/accessibilityservice/TouchInteractionController;->mService:Landroid/accessibilityservice/AccessibilityService;

    invoke-virtual {v0}, Landroid/accessibilityservice/AccessibilityService;->getConnectionId()I

    move-result v0

    invoke-static {v0}, Landroid/view/accessibility/AccessibilityInteractionClient;->getConnection(I)Landroid/accessibilityservice/IAccessibilityServiceConnection;

    move-result-object v0

    if-eqz v0, :cond_1c

    :try_start_f
    iget v1, p0, Landroid/accessibilityservice/TouchInteractionController;->mDisplayId:I

    invoke-interface {v0, v1}, Landroid/accessibilityservice/IAccessibilityServiceConnection;->onDoubleTapAndHold(I)V
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_f .. :try_end_14} :catch_15

    goto :goto_1c

    :catch_15
    move-exception v1

    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    :cond_1c
    :goto_1c
    return-void
.end method

.method public registerCallback(Ljava/util/concurrent/Executor;Landroid/accessibilityservice/TouchInteractionController$Callback;)V
    .registers 6

    iget-object v0, p0, Landroid/accessibilityservice/TouchInteractionController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Landroid/accessibilityservice/TouchInteractionController;->mCallbacks:Landroid/util/ArrayMap;

    if-nez v1, :cond_e

    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    iput-object v1, p0, Landroid/accessibilityservice/TouchInteractionController;->mCallbacks:Landroid/util/ArrayMap;

    :cond_e
    iget-object v1, p0, Landroid/accessibilityservice/TouchInteractionController;->mCallbacks:Landroid/util/ArrayMap;

    invoke-virtual {v1, p2, p1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Landroid/accessibilityservice/TouchInteractionController;->mCallbacks:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1f

    invoke-direct {p0, v2}, Landroid/accessibilityservice/TouchInteractionController;->setServiceDetectsGestures(Z)V

    :cond_1f
    monitor-exit v0

    return-void

    :catchall_21
    move-exception v1

    monitor-exit v0
    :try_end_23
    .catchall {:try_start_3 .. :try_end_23} :catchall_21

    throw v1
.end method

.method public requestDelegating()V
    .registers 4

    invoke-direct {p0}, Landroid/accessibilityservice/TouchInteractionController;->validateTransitionRequest()V

    invoke-static {}, Landroid/view/accessibility/AccessibilityInteractionClient;->getInstance()Landroid/view/accessibility/AccessibilityInteractionClient;

    iget-object v0, p0, Landroid/accessibilityservice/TouchInteractionController;->mService:Landroid/accessibilityservice/AccessibilityService;

    invoke-virtual {v0}, Landroid/accessibilityservice/AccessibilityService;->getConnectionId()I

    move-result v0

    invoke-static {v0}, Landroid/view/accessibility/AccessibilityInteractionClient;->getConnection(I)Landroid/accessibilityservice/IAccessibilityServiceConnection;

    move-result-object v0

    if-eqz v0, :cond_23

    :try_start_12
    iget v1, p0, Landroid/accessibilityservice/TouchInteractionController;->mDisplayId:I

    invoke-interface {v0, v1}, Landroid/accessibilityservice/IAccessibilityServiceConnection;->requestDelegating(I)V
    :try_end_17
    .catch Landroid/os/RemoteException; {:try_start_12 .. :try_end_17} :catch_1c

    nop

    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/accessibilityservice/TouchInteractionController;->mStateChangeRequested:Z

    goto :goto_23

    :catch_1c
    move-exception v1

    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    :cond_23
    :goto_23
    return-void
.end method

.method public requestDragging(I)V
    .registers 5

    invoke-direct {p0}, Landroid/accessibilityservice/TouchInteractionController;->validateTransitionRequest()V

    if-ltz p1, :cond_2a

    const/16 v0, 0x20

    if-gt p1, v0, :cond_2a

    invoke-static {}, Landroid/view/accessibility/AccessibilityInteractionClient;->getInstance()Landroid/view/accessibility/AccessibilityInteractionClient;

    iget-object v0, p0, Landroid/accessibilityservice/TouchInteractionController;->mService:Landroid/accessibilityservice/AccessibilityService;

    invoke-virtual {v0}, Landroid/accessibilityservice/AccessibilityService;->getConnectionId()I

    move-result v0

    invoke-static {v0}, Landroid/view/accessibility/AccessibilityInteractionClient;->getConnection(I)Landroid/accessibilityservice/IAccessibilityServiceConnection;

    move-result-object v0

    if-eqz v0, :cond_29

    :try_start_18
    iget v1, p0, Landroid/accessibilityservice/TouchInteractionController;->mDisplayId:I

    invoke-interface {v0, v1, p1}, Landroid/accessibilityservice/IAccessibilityServiceConnection;->requestDragging(II)V
    :try_end_1d
    .catch Landroid/os/RemoteException; {:try_start_18 .. :try_end_1d} :catch_22

    nop

    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/accessibilityservice/TouchInteractionController;->mStateChangeRequested:Z

    goto :goto_29

    :catch_22
    move-exception v1

    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    :cond_29
    :goto_29
    return-void

    :cond_2a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid pointer id: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public requestTouchExploration()V
    .registers 4

    invoke-direct {p0}, Landroid/accessibilityservice/TouchInteractionController;->validateTransitionRequest()V

    invoke-static {}, Landroid/view/accessibility/AccessibilityInteractionClient;->getInstance()Landroid/view/accessibility/AccessibilityInteractionClient;

    iget-object v0, p0, Landroid/accessibilityservice/TouchInteractionController;->mService:Landroid/accessibilityservice/AccessibilityService;

    invoke-virtual {v0}, Landroid/accessibilityservice/AccessibilityService;->getConnectionId()I

    move-result v0

    invoke-static {v0}, Landroid/view/accessibility/AccessibilityInteractionClient;->getConnection(I)Landroid/accessibilityservice/IAccessibilityServiceConnection;

    move-result-object v0

    if-eqz v0, :cond_23

    :try_start_12
    iget v1, p0, Landroid/accessibilityservice/TouchInteractionController;->mDisplayId:I

    invoke-interface {v0, v1}, Landroid/accessibilityservice/IAccessibilityServiceConnection;->requestTouchExploration(I)V
    :try_end_17
    .catch Landroid/os/RemoteException; {:try_start_12 .. :try_end_17} :catch_1c

    nop

    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/accessibilityservice/TouchInteractionController;->mStateChangeRequested:Z

    goto :goto_23

    :catch_1c
    move-exception v1

    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    :cond_23
    :goto_23
    return-void
.end method

.method public unregisterAllCallbacks()V
    .registers 3

    iget-object v0, p0, Landroid/accessibilityservice/TouchInteractionController;->mCallbacks:Landroid/util/ArrayMap;

    if-eqz v0, :cond_15

    iget-object v0, p0, Landroid/accessibilityservice/TouchInteractionController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_7
    iget-object v1, p0, Landroid/accessibilityservice/TouchInteractionController;->mCallbacks:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->clear()V

    const/4 v1, 0x0

    invoke-direct {p0, v1}, Landroid/accessibilityservice/TouchInteractionController;->setServiceDetectsGestures(Z)V

    monitor-exit v0

    goto :goto_15

    :catchall_12
    move-exception v1

    monitor-exit v0
    :try_end_14
    .catchall {:try_start_7 .. :try_end_14} :catchall_12

    throw v1

    :cond_15
    :goto_15
    return-void
.end method

.method public unregisterCallback(Landroid/accessibilityservice/TouchInteractionController$Callback;)Z
    .registers 6

    iget-object v0, p0, Landroid/accessibilityservice/TouchInteractionController;->mCallbacks:Landroid/util/ArrayMap;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    :cond_6
    iget-object v0, p0, Landroid/accessibilityservice/TouchInteractionController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_9
    iget-object v2, p0, Landroid/accessibilityservice/TouchInteractionController;->mCallbacks:Landroid/util/ArrayMap;

    invoke-virtual {v2, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_13

    const/4 v2, 0x1

    goto :goto_14

    :cond_13
    move v2, v1

    :goto_14
    if-eqz v2, :cond_21

    iget-object v3, p0, Landroid/accessibilityservice/TouchInteractionController;->mCallbacks:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v3

    if-nez v3, :cond_21

    invoke-direct {p0, v1}, Landroid/accessibilityservice/TouchInteractionController;->setServiceDetectsGestures(Z)V

    :cond_21
    monitor-exit v0

    return v2

    :catchall_23
    move-exception v1

    monitor-exit v0
    :try_end_25
    .catchall {:try_start_9 .. :try_end_25} :catchall_23

    throw v1
.end method

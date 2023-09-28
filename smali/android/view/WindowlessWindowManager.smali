# classes3.dex

.class public Landroid/view/WindowlessWindowManager;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/IWindowSession;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/WindowlessWindowManager$ResizeCompleteCallback;,
        Landroid/view/WindowlessWindowManager$State;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "WindowlessWindowManager"


# instance fields
.field private final mConfiguration:Landroid/content/res/Configuration;

.field private final mFocusGrantToken:Landroid/os/IBinder;

.field private final mHostInputToken:Landroid/os/IBinder;

.field private mInsetsState:Landroid/view/InsetsState;

.field private final mRealWm:Landroid/view/IWindowSession;

.field final mResizeCompletionForWindow:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Landroid/os/IBinder;",
            "Landroid/view/WindowlessWindowManager$ResizeCompleteCallback;",
            ">;"
        }
    .end annotation
.end field

.field protected final mRootSurface:Landroid/view/SurfaceControl;

.field final mStateForWindow:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Landroid/os/IBinder;",
            "Landroid/view/WindowlessWindowManager$State;",
            ">;"
        }
    .end annotation
.end field

.field private final mSurfaceSession:Landroid/view/SurfaceSession;

.field private final mTmpConfig:Landroid/util/MergedConfiguration;

.field private final mTmpFrames:Landroid/window/ClientWindowFrames;


# direct methods
.method public constructor <init>(Landroid/content/res/Configuration;Landroid/view/SurfaceControl;Landroid/os/IBinder;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/view/WindowlessWindowManager;->mStateForWindow:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/view/WindowlessWindowManager;->mResizeCompletionForWindow:Ljava/util/HashMap;

    new-instance v0, Landroid/view/SurfaceSession;

    invoke-direct {v0}, Landroid/view/SurfaceSession;-><init>()V

    iput-object v0, p0, Landroid/view/WindowlessWindowManager;->mSurfaceSession:Landroid/view/SurfaceSession;

    new-instance v0, Landroid/os/Binder;

    invoke-direct {v0}, Landroid/os/Binder;-><init>()V

    iput-object v0, p0, Landroid/view/WindowlessWindowManager;->mFocusGrantToken:Landroid/os/IBinder;

    new-instance v0, Landroid/window/ClientWindowFrames;

    invoke-direct {v0}, Landroid/window/ClientWindowFrames;-><init>()V

    iput-object v0, p0, Landroid/view/WindowlessWindowManager;->mTmpFrames:Landroid/window/ClientWindowFrames;

    new-instance v0, Landroid/util/MergedConfiguration;

    invoke-direct {v0}, Landroid/util/MergedConfiguration;-><init>()V

    iput-object v0, p0, Landroid/view/WindowlessWindowManager;->mTmpConfig:Landroid/util/MergedConfiguration;

    iput-object p2, p0, Landroid/view/WindowlessWindowManager;->mRootSurface:Landroid/view/SurfaceControl;

    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0, p1}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    iput-object v0, p0, Landroid/view/WindowlessWindowManager;->mConfiguration:Landroid/content/res/Configuration;

    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowSession()Landroid/view/IWindowSession;

    move-result-object v0

    iput-object v0, p0, Landroid/view/WindowlessWindowManager;->mRealWm:Landroid/view/IWindowSession;

    iput-object p3, p0, Landroid/view/WindowlessWindowManager;->mHostInputToken:Landroid/os/IBinder;

    return-void
.end method

.method private isInTouchMode()Z
    .registers 4

    :try_start_0
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowSession()Landroid/view/IWindowSession;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/IWindowSession;->getInTouchMode()Z

    move-result v0
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_8} :catch_9

    return v0

    :catch_9
    move-exception v0

    const-string v1, "WindowlessWindowManager"

    const-string v2, "Unable to check if the window is in touch mode"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v0, 0x0

    return v0
.end method

.method private isOpaque(Landroid/view/WindowManager$LayoutParams;)Z
    .registers 3

    iget-object v0, p1, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    if-eqz v0, :cond_a

    iget-object v0, p1, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    if-nez v0, :cond_26

    :cond_a
    iget-object v0, p1, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    if-nez v0, :cond_26

    iget-object v0, p1, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    if-nez v0, :cond_26

    iget-object v0, p1, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    if-eqz v0, :cond_1d

    goto :goto_26

    :cond_1d
    iget v0, p1, Landroid/view/WindowManager$LayoutParams;->format:I

    invoke-static {v0}, Landroid/graphics/PixelFormat;->formatHasAlpha(I)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0

    :cond_26
    :goto_26
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public addToDisplay(Landroid/view/IWindow;Landroid/view/WindowManager$LayoutParams;IILandroid/view/InsetsVisibilities;Landroid/view/InputChannel;Landroid/view/InsetsState;[Landroid/view/InsetsSourceControl;)I
    .registers 31

    move-object/from16 v8, p0

    move-object/from16 v9, p2

    new-instance v0, Landroid/view/SurfaceControl$Builder;

    iget-object v1, v8, Landroid/view/WindowlessWindowManager;->mSurfaceSession:Landroid/view/SurfaceSession;

    invoke-direct {v0, v1}, Landroid/view/SurfaceControl$Builder;-><init>(Landroid/view/SurfaceSession;)V

    iget v1, v9, Landroid/view/WindowManager$LayoutParams;->format:I

    invoke-virtual {v0, v1}, Landroid/view/SurfaceControl$Builder;->setFormat(I)Landroid/view/SurfaceControl$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/SurfaceControl$Builder;->setBLASTLayer()Landroid/view/SurfaceControl$Builder;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/view/WindowManager$LayoutParams;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/SurfaceControl$Builder;->setName(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    move-result-object v0

    const-string v1, "WindowlessWindowManager.addToDisplay"

    invoke-virtual {v0, v1}, Landroid/view/SurfaceControl$Builder;->setCallsite(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    move-result-object v10

    move-object/from16 v7, p1

    invoke-virtual {v8, v7, v10}, Landroid/view/WindowlessWindowManager;->attachToParentSurface(Landroid/view/IWindow;Landroid/view/SurfaceControl$Builder;)V

    invoke-virtual {v10}, Landroid/view/SurfaceControl$Builder;->build()Landroid/view/SurfaceControl;

    move-result-object v6

    iget v0, v9, Landroid/view/WindowManager$LayoutParams;->inputFeatures:I

    and-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_94

    :try_start_36
    iget-object v11, v8, Landroid/view/WindowlessWindowManager;->mRealWm:Landroid/view/IWindowSession;

    instance-of v0, v11, Landroid/view/IWindowSession$Stub;

    if-eqz v0, :cond_67

    new-instance v13, Landroid/view/SurfaceControl;

    const-string v0, "WindowlessWindowManager.addToDisplay"

    invoke-direct {v13, v6, v0}, Landroid/view/SurfaceControl;-><init>(Landroid/view/SurfaceControl;Ljava/lang/String;)V

    iget-object v15, v8, Landroid/view/WindowlessWindowManager;->mHostInputToken:Landroid/os/IBinder;

    iget v0, v9, Landroid/view/WindowManager$LayoutParams;->flags:I

    iget v1, v9, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    iget v2, v9, Landroid/view/WindowManager$LayoutParams;->type:I

    iget-object v3, v8, Landroid/view/WindowlessWindowManager;->mFocusGrantToken:Landroid/os/IBinder;

    invoke-virtual/range {p2 .. p2}, Landroid/view/WindowManager$LayoutParams;->getTitle()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v20

    move/from16 v12, p4

    move-object/from16 v14, p1

    move/from16 v16, v0

    move/from16 v17, v1

    move/from16 v18, v2

    move-object/from16 v19, v3

    move-object/from16 v21, p6

    invoke-interface/range {v11 .. v21}, Landroid/view/IWindowSession;->grantInputChannel(ILandroid/view/SurfaceControl;Landroid/view/IWindow;Landroid/os/IBinder;IIILandroid/os/IBinder;Ljava/lang/String;Landroid/view/InputChannel;)V

    goto :goto_8b

    :cond_67
    iget-object v15, v8, Landroid/view/WindowlessWindowManager;->mHostInputToken:Landroid/os/IBinder;

    iget v0, v9, Landroid/view/WindowManager$LayoutParams;->flags:I

    iget v1, v9, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    iget v2, v9, Landroid/view/WindowManager$LayoutParams;->type:I

    iget-object v3, v8, Landroid/view/WindowlessWindowManager;->mFocusGrantToken:Landroid/os/IBinder;

    invoke-virtual/range {p2 .. p2}, Landroid/view/WindowManager$LayoutParams;->getTitle()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v20

    move/from16 v12, p4

    move-object v13, v6

    move-object/from16 v14, p1

    move/from16 v16, v0

    move/from16 v17, v1

    move/from16 v18, v2

    move-object/from16 v19, v3

    move-object/from16 v21, p6

    invoke-interface/range {v11 .. v21}, Landroid/view/IWindowSession;->grantInputChannel(ILandroid/view/SurfaceControl;Landroid/view/IWindow;Landroid/os/IBinder;IIILandroid/os/IBinder;Ljava/lang/String;Landroid/view/InputChannel;)V
    :try_end_8b
    .catch Landroid/os/RemoteException; {:try_start_36 .. :try_end_8b} :catch_8c

    :goto_8b
    goto :goto_94

    :catch_8c
    move-exception v0

    const-string v1, "WindowlessWindowManager"

    const-string v2, "Failed to grant input to surface: "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_94
    :goto_94
    new-instance v0, Landroid/view/WindowlessWindowManager$State;

    if-eqz p6, :cond_9d

    invoke-virtual/range {p6 .. p6}, Landroid/view/InputChannel;->getToken()Landroid/os/IBinder;

    move-result-object v1

    goto :goto_9e

    :cond_9d
    const/4 v1, 0x0

    :goto_9e
    move-object v11, v1

    move-object v1, v0

    move-object/from16 v2, p0

    move-object v3, v6

    move-object/from16 v4, p2

    move/from16 v5, p4

    move-object v12, v6

    move-object v6, v11

    move-object/from16 v7, p1

    invoke-direct/range {v1 .. v7}, Landroid/view/WindowlessWindowManager$State;-><init>(Landroid/view/WindowlessWindowManager;Landroid/view/SurfaceControl;Landroid/view/WindowManager$LayoutParams;ILandroid/os/IBinder;Landroid/view/IWindow;)V

    monitor-enter p0

    :try_start_af
    iget-object v0, v8, Landroid/view/WindowlessWindowManager;->mStateForWindow:Ljava/util/HashMap;

    invoke-interface/range {p1 .. p1}, Landroid/view/IWindow;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit p0
    :try_end_b9
    .catchall {:try_start_af .. :try_end_b9} :catchall_c7

    const/16 v0, 0xa

    invoke-direct/range {p0 .. p0}, Landroid/view/WindowlessWindowManager;->isInTouchMode()Z

    move-result v2

    if-eqz v2, :cond_c4

    const/16 v2, 0xb

    goto :goto_c6

    :cond_c4
    const/16 v2, 0xa

    :goto_c6
    return v2

    :catchall_c7
    move-exception v0

    :try_start_c8
    monitor-exit p0
    :try_end_c9
    .catchall {:try_start_c8 .. :try_end_c9} :catchall_c7

    throw v0
.end method

.method public addToDisplayAsUser(Landroid/view/IWindow;Landroid/view/WindowManager$LayoutParams;IIILandroid/view/InsetsVisibilities;Landroid/view/InputChannel;Landroid/view/InsetsState;[Landroid/view/InsetsSourceControl;)I
    .registers 19

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p6

    move-object/from16 v6, p7

    move-object/from16 v7, p8

    move-object/from16 v8, p9

    invoke-virtual/range {v0 .. v8}, Landroid/view/WindowlessWindowManager;->addToDisplay(Landroid/view/IWindow;Landroid/view/WindowManager$LayoutParams;IILandroid/view/InsetsVisibilities;Landroid/view/InputChannel;Landroid/view/InsetsState;[Landroid/view/InsetsSourceControl;)I

    move-result v0

    return v0
.end method

.method public addToDisplayWithoutInputChannel(Landroid/view/IWindow;Landroid/view/WindowManager$LayoutParams;IILandroid/view/InsetsState;)I
    .registers 7

    const/4 v0, 0x0

    return v0
.end method

.method public asBinder()Landroid/os/IBinder;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method protected attachToParentSurface(Landroid/view/IWindow;Landroid/view/SurfaceControl$Builder;)V
    .registers 4

    iget-object v0, p0, Landroid/view/WindowlessWindowManager;->mRootSurface:Landroid/view/SurfaceControl;

    invoke-virtual {p2, v0}, Landroid/view/SurfaceControl$Builder;->setParent(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Builder;

    return-void
.end method

.method public cancelDragAndDrop(Landroid/os/IBinder;Z)V
    .registers 3

    return-void
.end method

.method public clearTouchableRegion(Landroid/view/IWindow;)V
    .registers 4

    invoke-interface {p1}, Landroid/view/IWindow;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/view/WindowlessWindowManager;->setTouchRegion(Landroid/os/IBinder;Landroid/graphics/Region;)V

    return-void
.end method

.method public dragRecipientEntered(Landroid/view/IWindow;)V
    .registers 2

    return-void
.end method

.method public dragRecipientExited(Landroid/view/IWindow;)V
    .registers 2

    return-void
.end method

.method public dropForAccessibility(Landroid/view/IWindow;II)Z
    .registers 5

    const/4 v0, 0x0

    return v0
.end method

.method public finishDrawing(Landroid/view/IWindow;Landroid/view/SurfaceControl$Transaction;I)V
    .registers 7

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Landroid/view/WindowlessWindowManager;->mResizeCompletionForWindow:Ljava/util/HashMap;

    invoke-interface {p1}, Landroid/view/IWindow;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowlessWindowManager$ResizeCompleteCallback;

    if-nez v0, :cond_14

    invoke-virtual {p2}, Landroid/view/SurfaceControl$Transaction;->apply()V

    monitor-exit p0

    return-void

    :cond_14
    invoke-interface {v0, p2}, Landroid/view/WindowlessWindowManager$ResizeCompleteCallback;->finished(Landroid/view/SurfaceControl$Transaction;)V

    iget-object v1, p0, Landroid/view/WindowlessWindowManager;->mResizeCompletionForWindow:Ljava/util/HashMap;

    invoke-interface {p1}, Landroid/view/IWindow;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    nop

    monitor-exit p0

    return-void

    :catchall_23
    move-exception v0

    monitor-exit p0
    :try_end_25
    .catchall {:try_start_1 .. :try_end_25} :catchall_23

    throw v0
.end method

.method public finishMovingTask(Landroid/view/IWindow;)V
    .registers 2

    return-void
.end method

.method public generateDisplayHash(Landroid/view/IWindow;Landroid/graphics/Rect;Ljava/lang/String;Landroid/os/RemoteCallback;)V
    .registers 5

    return-void
.end method

.method getFocusGrantToken()Landroid/os/IBinder;
    .registers 2

    iget-object v0, p0, Landroid/view/WindowlessWindowManager;->mFocusGrantToken:Landroid/os/IBinder;

    return-object v0
.end method

.method public getInTouchMode()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method protected getSurfaceControl(Landroid/view/IWindow;)Landroid/view/SurfaceControl;
    .registers 4

    iget-object v0, p0, Landroid/view/WindowlessWindowManager;->mStateForWindow:Ljava/util/HashMap;

    invoke-interface {p1}, Landroid/view/IWindow;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowlessWindowManager$State;

    if-nez v0, :cond_10

    const/4 v1, 0x0

    return-object v1

    :cond_10
    iget-object v1, v0, Landroid/view/WindowlessWindowManager$State;->mSurfaceControl:Landroid/view/SurfaceControl;

    return-object v1
.end method

.method protected getSurfaceControl(Landroid/view/View;)Landroid/view/SurfaceControl;
    .registers 4

    invoke-virtual {p1}, Landroid/view/View;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v0

    if-nez v0, :cond_8

    const/4 v1, 0x0

    return-object v1

    :cond_8
    iget-object v1, v0, Landroid/view/ViewRootImpl;->mWindow:Landroid/view/ViewRootImpl$W;

    invoke-virtual {p0, v1}, Landroid/view/WindowlessWindowManager;->getSurfaceControl(Landroid/view/IWindow;)Landroid/view/SurfaceControl;

    move-result-object v1

    return-object v1
.end method

.method protected getWindowBinder(Landroid/view/View;)Landroid/os/IBinder;
    .registers 4

    invoke-virtual {p1}, Landroid/view/View;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v0

    if-nez v0, :cond_8

    const/4 v1, 0x0

    return-object v1

    :cond_8
    iget-object v1, v0, Landroid/view/ViewRootImpl;->mWindow:Landroid/view/ViewRootImpl$W;

    invoke-virtual {v1}, Landroid/view/ViewRootImpl$W;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    return-object v1
.end method

.method public getWindowId(Landroid/os/IBinder;)Landroid/view/IWindowId;
    .registers 3

    const/4 v0, 0x0

    return-object v0
.end method

.method public grantEmbeddedWindowFocus(Landroid/view/IWindow;Landroid/os/IBinder;Z)V
    .registers 4

    return-void
.end method

.method public grantInputChannel(ILandroid/view/SurfaceControl;Landroid/view/IWindow;Landroid/os/IBinder;IIILandroid/os/IBinder;Ljava/lang/String;Landroid/view/InputChannel;)V
    .registers 11

    return-void
.end method

.method public onRectangleOnScreenRequested(Landroid/os/IBinder;Landroid/graphics/Rect;)V
    .registers 3

    return-void
.end method

.method public outOfMemory(Landroid/view/IWindow;)Z
    .registers 3

    const/4 v0, 0x0

    return v0
.end method

.method public performDrag(Landroid/view/IWindow;ILandroid/view/SurfaceControl;IFFFFLandroid/content/ClipData;)Landroid/os/IBinder;
    .registers 11

    const/4 v0, 0x0

    return-object v0
.end method

.method public performHapticFeedback(IZ)Z
    .registers 4

    const/4 v0, 0x0

    return v0
.end method

.method public pokeDrawLock(Landroid/os/IBinder;)V
    .registers 2

    return-void
.end method

.method public prepareToReplaceWindows(Landroid/os/IBinder;Z)V
    .registers 3

    return-void
.end method

.method public relayout(Landroid/view/IWindow;Landroid/view/WindowManager$LayoutParams;IIIILandroid/window/ClientWindowFrames;Landroid/util/MergedConfiguration;Landroid/view/SurfaceControl;Landroid/view/InsetsState;[Landroid/view/InsetsSourceControl;Landroid/os/Bundle;)I
    .registers 36

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    move-object/from16 v3, p7

    monitor-enter p0

    :try_start_7
    iget-object v0, v1, Landroid/view/WindowlessWindowManager;->mStateForWindow:Ljava/util/HashMap;

    invoke-interface/range {p1 .. p1}, Landroid/view/IWindow;->asBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowlessWindowManager$State;

    move-object v4, v0

    monitor-exit p0
    :try_end_15
    .catchall {:try_start_7 .. :try_end_15} :catchall_d7

    if-eqz v4, :cond_cd

    iget-object v12, v4, Landroid/view/WindowlessWindowManager$State;->mSurfaceControl:Landroid/view/SurfaceControl;

    new-instance v0, Landroid/view/SurfaceControl$Transaction;

    invoke-direct {v0}, Landroid/view/SurfaceControl$Transaction;-><init>()V

    move-object v13, v0

    const/4 v0, 0x0

    if-eqz v2, :cond_2a

    iget-object v5, v4, Landroid/view/WindowlessWindowManager$State;->mParams:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v5, v2}, Landroid/view/WindowManager$LayoutParams;->copyFrom(Landroid/view/WindowManager$LayoutParams;)I

    move-result v0

    move v14, v0

    goto :goto_2b

    :cond_2a
    move v14, v0

    :goto_2b
    iget-object v15, v4, Landroid/view/WindowlessWindowManager$State;->mParams:Landroid/view/WindowManager$LayoutParams;

    if-nez p5, :cond_46

    invoke-direct {v1, v15}, Landroid/view/WindowlessWindowManager;->isOpaque(Landroid/view/WindowManager$LayoutParams;)Z

    move-result v0

    invoke-virtual {v13, v12, v0}, Landroid/view/SurfaceControl$Transaction;->setOpaque(Landroid/view/SurfaceControl;Z)Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    invoke-virtual {v0, v12}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/SurfaceControl$Transaction;->apply()V

    const-string v0, "WindowlessWindowManager.relayout"

    move-object/from16 v11, p9

    invoke-virtual {v11, v12, v0}, Landroid/view/SurfaceControl;->copyFrom(Landroid/view/SurfaceControl;Ljava/lang/String;)V

    goto :goto_52

    :cond_46
    move-object/from16 v11, p9

    invoke-virtual {v13, v12}, Landroid/view/SurfaceControl$Transaction;->hide(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/SurfaceControl$Transaction;->apply()V

    invoke-virtual/range {p9 .. p9}, Landroid/view/SurfaceControl;->release()V

    :goto_52
    iget-object v0, v3, Landroid/window/ClientWindowFrames;->frame:Landroid/graphics/Rect;

    iget v5, v15, Landroid/view/WindowManager$LayoutParams;->width:I

    iget v6, v15, Landroid/view/WindowManager$LayoutParams;->height:I

    const/4 v10, 0x0

    invoke-virtual {v0, v10, v10, v5, v6}, Landroid/graphics/Rect;->set(IIII)V

    iget-object v0, v3, Landroid/window/ClientWindowFrames;->displayFrame:Landroid/graphics/Rect;

    iget-object v5, v3, Landroid/window/ClientWindowFrames;->frame:Landroid/graphics/Rect;

    invoke-virtual {v0, v5}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object v0, v1, Landroid/view/WindowlessWindowManager;->mConfiguration:Landroid/content/res/Configuration;

    move-object/from16 v9, p8

    invoke-virtual {v9, v0, v0}, Landroid/util/MergedConfiguration;->setConfiguration(Landroid/content/res/Configuration;Landroid/content/res/Configuration;)V

    and-int/lit8 v0, v14, 0x4

    if-eqz v0, :cond_bf

    iget-object v0, v4, Landroid/view/WindowlessWindowManager$State;->mInputChannelToken:Landroid/os/IBinder;

    if-eqz v0, :cond_bf

    :try_start_72
    iget-object v0, v1, Landroid/view/WindowlessWindowManager;->mRealWm:Landroid/view/IWindowSession;

    instance-of v5, v0, Landroid/view/IWindowSession$Stub;

    if-eqz v5, :cond_9c

    iget-object v5, v4, Landroid/view/WindowlessWindowManager$State;->mInputChannelToken:Landroid/os/IBinder;

    iget v6, v4, Landroid/view/WindowlessWindowManager$State;->mDisplayId:I

    new-instance v7, Landroid/view/SurfaceControl;

    const-string v8, "WindowlessWindowManager.relayout"

    invoke-direct {v7, v12, v8}, Landroid/view/SurfaceControl;-><init>(Landroid/view/SurfaceControl;Ljava/lang/String;)V

    iget v8, v15, Landroid/view/WindowManager$LayoutParams;->flags:I
    :try_end_85
    .catch Landroid/os/RemoteException; {:try_start_72 .. :try_end_85} :catch_b5

    :try_start_85
    iget v10, v15, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    iget-object v2, v4, Landroid/view/WindowlessWindowManager$State;->mInputRegion:Landroid/graphics/Region;

    move-object/from16 v16, v0

    move-object/from16 v17, v5

    move/from16 v18, v6

    move-object/from16 v19, v7

    move/from16 v20, v8

    move/from16 v21, v10

    move-object/from16 v22, v2

    invoke-interface/range {v16 .. v22}, Landroid/view/IWindowSession;->updateInputChannel(Landroid/os/IBinder;ILandroid/view/SurfaceControl;IILandroid/graphics/Region;)V

    const/4 v2, 0x0

    goto :goto_af

    :cond_9c
    iget-object v6, v4, Landroid/view/WindowlessWindowManager$State;->mInputChannelToken:Landroid/os/IBinder;

    iget v7, v4, Landroid/view/WindowlessWindowManager$State;->mDisplayId:I

    iget v2, v15, Landroid/view/WindowManager$LayoutParams;->flags:I

    iget v10, v15, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    iget-object v8, v4, Landroid/view/WindowlessWindowManager$State;->mInputRegion:Landroid/graphics/Region;
    :try_end_a6
    .catch Landroid/os/RemoteException; {:try_start_85 .. :try_end_a6} :catch_b2

    move-object v5, v0

    move-object v0, v8

    move-object v8, v12

    move v9, v2

    const/4 v2, 0x0

    move-object v11, v0

    :try_start_ac
    invoke-interface/range {v5 .. v11}, Landroid/view/IWindowSession;->updateInputChannel(Landroid/os/IBinder;ILandroid/view/SurfaceControl;IILandroid/graphics/Region;)V
    :try_end_af
    .catch Landroid/os/RemoteException; {:try_start_ac .. :try_end_af} :catch_b0

    :goto_af
    goto :goto_c0

    :catch_b0
    move-exception v0

    goto :goto_b7

    :catch_b2
    move-exception v0

    const/4 v2, 0x0

    goto :goto_b7

    :catch_b5
    move-exception v0

    move v2, v10

    :goto_b7
    const-string v5, "WindowlessWindowManager"

    const-string v6, "Failed to update surface input channel: "

    invoke-static {v5, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_c0

    :cond_bf
    move v2, v10

    :goto_c0
    iget-object v0, v1, Landroid/view/WindowlessWindowManager;->mInsetsState:Landroid/view/InsetsState;

    if-eqz v0, :cond_ca

    move-object/from16 v5, p10

    invoke-virtual {v5, v0}, Landroid/view/InsetsState;->set(Landroid/view/InsetsState;)V

    goto :goto_cc

    :cond_ca
    move-object/from16 v5, p10

    :goto_cc
    return v2

    :cond_cd
    move-object/from16 v5, p10

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v2, "Invalid window token (never added or removed already)"

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_d7
    move-exception v0

    move-object/from16 v5, p10

    :goto_da
    :try_start_da
    monitor-exit p0
    :try_end_db
    .catchall {:try_start_da .. :try_end_db} :catchall_dc

    throw v0

    :catchall_dc
    move-exception v0

    goto :goto_da
.end method

.method public remove(Landroid/view/IWindow;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Landroid/view/WindowlessWindowManager;->mRealWm:Landroid/view/IWindowSession;

    invoke-interface {v0, p1}, Landroid/view/IWindowSession;->remove(Landroid/view/IWindow;)V

    monitor-enter p0

    :try_start_6
    iget-object v0, p0, Landroid/view/WindowlessWindowManager;->mStateForWindow:Ljava/util/HashMap;

    invoke-interface {p1}, Landroid/view/IWindow;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowlessWindowManager$State;

    monitor-exit p0
    :try_end_13
    .catchall {:try_start_6 .. :try_end_13} :catchall_23

    if-eqz v0, :cond_1b

    iget-object v1, v0, Landroid/view/WindowlessWindowManager$State;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {p0, v1}, Landroid/view/WindowlessWindowManager;->removeSurface(Landroid/view/SurfaceControl;)V

    return-void

    :cond_1b
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Invalid window token (never added or removed already)"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :catchall_23
    move-exception v0

    :try_start_24
    monitor-exit p0
    :try_end_25
    .catchall {:try_start_24 .. :try_end_25} :catchall_23

    throw v0
.end method

.method protected removeSurface(Landroid/view/SurfaceControl;)V
    .registers 5

    new-instance v0, Landroid/view/SurfaceControl$Transaction;

    invoke-direct {v0}, Landroid/view/SurfaceControl$Transaction;-><init>()V

    :try_start_5
    invoke-virtual {v0, p1}, Landroid/view/SurfaceControl$Transaction;->remove(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/SurfaceControl$Transaction;->apply()V
    :try_end_c
    .catchall {:try_start_5 .. :try_end_c} :catchall_10

    invoke-virtual {v0}, Landroid/view/SurfaceControl$Transaction;->close()V

    return-void

    :catchall_10
    move-exception v1

    :try_start_11
    invoke-virtual {v0}, Landroid/view/SurfaceControl$Transaction;->close()V
    :try_end_14
    .catchall {:try_start_11 .. :try_end_14} :catchall_15

    goto :goto_19

    :catchall_15
    move-exception v2

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_19
    throw v1
.end method

.method public reportDropResult(Landroid/view/IWindow;Z)V
    .registers 3

    return-void
.end method

.method public reportKeepClearAreasChanged(Landroid/view/IWindow;Ljava/util/List;Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/IWindow;",
            "Ljava/util/List<",
            "Landroid/graphics/Rect;",
            ">;",
            "Ljava/util/List<",
            "Landroid/graphics/Rect;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public reportSystemGestureExclusionChanged(Landroid/view/IWindow;Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/IWindow;",
            "Ljava/util/List<",
            "Landroid/graphics/Rect;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public sendWallpaperCommand(Landroid/os/IBinder;Ljava/lang/String;IIILandroid/os/Bundle;Z)Landroid/os/Bundle;
    .registers 9

    const/4 v0, 0x0

    return-object v0
.end method

.method setCompletionCallback(Landroid/os/IBinder;Landroid/view/WindowlessWindowManager$ResizeCompleteCallback;)V
    .registers 5

    iget-object v0, p0, Landroid/view/WindowlessWindowManager;->mResizeCompletionForWindow:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_f

    const-string v0, "WindowlessWindowManager"

    const-string v1, "Unsupported overlapping resizes"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_f
    iget-object v0, p0, Landroid/view/WindowlessWindowManager;->mResizeCompletionForWindow:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setConfiguration(Landroid/content/res/Configuration;)V
    .registers 3

    iget-object v0, p0, Landroid/view/WindowlessWindowManager;->mConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {v0, p1}, Landroid/content/res/Configuration;->setTo(Landroid/content/res/Configuration;)V

    return-void
.end method

.method public setInTouchMode(Z)V
    .registers 2

    return-void
.end method

.method public setInsets(Landroid/view/IWindow;ILandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Region;)V
    .registers 7

    invoke-interface {p1}, Landroid/view/IWindow;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-virtual {p0, v0, p5}, Landroid/view/WindowlessWindowManager;->setTouchRegion(Landroid/os/IBinder;Landroid/graphics/Region;)V

    return-void
.end method

.method public setInsetsState(Landroid/view/InsetsState;)V
    .registers 16

    iput-object p1, p0, Landroid/view/WindowlessWindowManager;->mInsetsState:Landroid/view/InsetsState;

    iget-object v0, p0, Landroid/view/WindowlessWindowManager;->mStateForWindow:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_50

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowlessWindowManager$State;

    :try_start_18
    iget-object v2, p0, Landroid/view/WindowlessWindowManager;->mTmpFrames:Landroid/window/ClientWindowFrames;

    iget-object v2, v2, Landroid/window/ClientWindowFrames;->frame:Landroid/graphics/Rect;

    iget-object v3, v1, Landroid/view/WindowlessWindowManager$State;->mParams:Landroid/view/WindowManager$LayoutParams;

    iget v3, v3, Landroid/view/WindowManager$LayoutParams;->width:I

    iget-object v4, v1, Landroid/view/WindowlessWindowManager$State;->mParams:Landroid/view/WindowManager$LayoutParams;

    iget v4, v4, Landroid/view/WindowManager$LayoutParams;->height:I

    const/4 v5, 0x0

    invoke-virtual {v2, v5, v5, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    iget-object v2, p0, Landroid/view/WindowlessWindowManager;->mTmpFrames:Landroid/window/ClientWindowFrames;

    iget-object v2, v2, Landroid/window/ClientWindowFrames;->displayFrame:Landroid/graphics/Rect;

    iget-object v3, p0, Landroid/view/WindowlessWindowManager;->mTmpFrames:Landroid/window/ClientWindowFrames;

    iget-object v3, v3, Landroid/window/ClientWindowFrames;->frame:Landroid/graphics/Rect;

    invoke-virtual {v2, v3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object v2, p0, Landroid/view/WindowlessWindowManager;->mTmpConfig:Landroid/util/MergedConfiguration;

    iget-object v3, p0, Landroid/view/WindowlessWindowManager;->mConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {v2, v3, v3}, Landroid/util/MergedConfiguration;->setConfiguration(Landroid/content/res/Configuration;Landroid/content/res/Configuration;)V

    iget-object v4, v1, Landroid/view/WindowlessWindowManager$State;->mClient:Landroid/view/IWindow;

    iget-object v5, p0, Landroid/view/WindowlessWindowManager;->mTmpFrames:Landroid/window/ClientWindowFrames;

    const/4 v6, 0x0

    iget-object v7, p0, Landroid/view/WindowlessWindowManager;->mTmpConfig:Landroid/util/MergedConfiguration;

    const/4 v9, 0x0

    const/4 v10, 0x0

    iget v11, v1, Landroid/view/WindowlessWindowManager$State;->mDisplayId:I

    const v12, 0x7fffffff

    const/4 v13, -0x1

    move-object v8, p1

    invoke-interface/range {v4 .. v13}, Landroid/view/IWindow;->resized(Landroid/window/ClientWindowFrames;ZLandroid/util/MergedConfiguration;Landroid/view/InsetsState;ZZIII)V
    :try_end_4d
    .catch Landroid/os/RemoteException; {:try_start_18 .. :try_end_4d} :catch_4e

    goto :goto_4f

    :catch_4e
    move-exception v2

    :goto_4f
    goto :goto_c

    :cond_50
    return-void
.end method

.method public setOnBackInvokedCallbackInfo(Landroid/view/IWindow;Landroid/window/OnBackInvokedCallbackInfo;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    return-void
.end method

.method public setPendingDragEndedLoc(Landroid/view/IWindow;IIII)V
    .registers 6

    return-void
.end method

.method public setShouldZoomOutWallpaper(Landroid/os/IBinder;Z)V
    .registers 3

    return-void
.end method

.method protected setTouchRegion(Landroid/os/IBinder;Landroid/graphics/Region;)V
    .registers 12

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Landroid/view/WindowlessWindowManager;->mStateForWindow:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowlessWindowManager$State;

    if-nez v0, :cond_d

    monitor-exit p0

    return-void

    :cond_d
    iget-object v1, v0, Landroid/view/WindowlessWindowManager$State;->mInputRegion:Landroid/graphics/Region;

    invoke-static {p2, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_17

    monitor-exit p0

    return-void

    :cond_17
    if-eqz p2, :cond_1f

    new-instance v1, Landroid/graphics/Region;

    invoke-direct {v1, p2}, Landroid/graphics/Region;-><init>(Landroid/graphics/Region;)V

    goto :goto_20

    :cond_1f
    const/4 v1, 0x0

    :goto_20
    iput-object v1, v0, Landroid/view/WindowlessWindowManager$State;->mInputRegion:Landroid/graphics/Region;

    iget-object v1, v0, Landroid/view/WindowlessWindowManager$State;->mInputChannelToken:Landroid/os/IBinder;
    :try_end_24
    .catchall {:try_start_1 .. :try_end_24} :catchall_46

    if-eqz v1, :cond_44

    :try_start_26
    iget-object v2, p0, Landroid/view/WindowlessWindowManager;->mRealWm:Landroid/view/IWindowSession;

    iget-object v3, v0, Landroid/view/WindowlessWindowManager$State;->mInputChannelToken:Landroid/os/IBinder;

    iget v4, v0, Landroid/view/WindowlessWindowManager$State;->mDisplayId:I

    iget-object v5, v0, Landroid/view/WindowlessWindowManager$State;->mSurfaceControl:Landroid/view/SurfaceControl;

    iget-object v1, v0, Landroid/view/WindowlessWindowManager$State;->mParams:Landroid/view/WindowManager$LayoutParams;

    iget v6, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    iget-object v1, v0, Landroid/view/WindowlessWindowManager$State;->mParams:Landroid/view/WindowManager$LayoutParams;

    iget v7, v1, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    iget-object v8, v0, Landroid/view/WindowlessWindowManager$State;->mInputRegion:Landroid/graphics/Region;

    invoke-interface/range {v2 .. v8}, Landroid/view/IWindowSession;->updateInputChannel(Landroid/os/IBinder;ILandroid/view/SurfaceControl;IILandroid/graphics/Region;)V
    :try_end_3b
    .catch Landroid/os/RemoteException; {:try_start_26 .. :try_end_3b} :catch_3c
    .catchall {:try_start_26 .. :try_end_3b} :catchall_46

    goto :goto_44

    :catch_3c
    move-exception v1

    :try_start_3d
    const-string v2, "WindowlessWindowManager"

    const-string v3, "Failed to update surface input channel: "

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_44
    :goto_44
    monitor-exit p0

    return-void

    :catchall_46
    move-exception v0

    monitor-exit p0
    :try_end_48
    .catchall {:try_start_3d .. :try_end_48} :catchall_46

    throw v0
.end method

.method public setWallpaperDisplayOffset(Landroid/os/IBinder;II)V
    .registers 4

    return-void
.end method

.method public setWallpaperPosition(Landroid/os/IBinder;FFFF)V
    .registers 6

    return-void
.end method

.method public setWallpaperZoomOut(Landroid/os/IBinder;F)V
    .registers 3

    return-void
.end method

.method public startMovingTask(Landroid/view/IWindow;FF)Z
    .registers 5

    const/4 v0, 0x0

    return v0
.end method

.method public updateInputChannel(Landroid/os/IBinder;ILandroid/view/SurfaceControl;IILandroid/graphics/Region;)V
    .registers 7

    return-void
.end method

.method public updateLayout(Landroid/view/IWindow;Landroid/view/WindowManager$LayoutParams;ILandroid/window/ClientWindowFrames;II)V
    .registers 7

    return-void
.end method

.method public updatePointerIcon(Landroid/view/IWindow;)V
    .registers 2

    return-void
.end method

.method public updateRequestedVisibilities(Landroid/view/IWindow;Landroid/view/InsetsVisibilities;)V
    .registers 3

    return-void
.end method

.method public updateTapExcludeRegion(Landroid/view/IWindow;Landroid/graphics/Region;)V
    .registers 3

    return-void
.end method

.method public updateVisibility(Landroid/view/IWindow;Landroid/view/WindowManager$LayoutParams;ILandroid/util/MergedConfiguration;Landroid/view/SurfaceControl;Landroid/view/InsetsState;[Landroid/view/InsetsSourceControl;)I
    .registers 9

    const/4 v0, 0x0

    return v0
.end method

.method public wallpaperCommandComplete(Landroid/os/IBinder;Landroid/os/Bundle;)V
    .registers 3

    return-void
.end method

.method public wallpaperOffsetsComplete(Landroid/os/IBinder;)V
    .registers 2

    return-void
.end method

# classes3.dex

.class public Landroid/view/SurfaceView;
.super Landroid/view/View;

# interfaces
.implements Landroid/view/ViewRootImpl$SurfaceChangedCallback;
.implements Landroid/view/ViewRootImpl$CastProjectionCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/SurfaceView$SurfaceViewPositionUpdateListener;,
        Landroid/view/SurfaceView$SyncBufferTransactionCallback;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final DEBUG_POSITION:Z = false

.field private static final TAG:Ljava/lang/String; = "SurfaceView"


# instance fields
.field private lastCastModeOpen:Z

.field private lastProjectionModeOpen:Z

.field private mAlreadySetCastMode:Z

.field private mAlreadySetProjectionMode:Z

.field private mAttachedToWindow:Z

.field mBackgroundColor:I

.field mBackgroundControl:Landroid/view/SurfaceControl;

.field private mBlastBufferQueue:Landroid/graphics/BLASTBufferQueue;

.field private mBlastSurfaceControl:Landroid/view/SurfaceControl;

.field final mCallbacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/SurfaceHolder$Callback;",
            ">;"
        }
    .end annotation
.end field

.field mClipSurfaceToBounds:Z

.field mCornerRadius:F

.field private mDisableBackgroundLayer:Z

.field mDrawFinished:Z

.field private final mDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

.field mDrawingStopped:Z

.field mFormat:I

.field private final mFrameCallbackTransaction:Landroid/view/SurfaceControl$Transaction;

.field private mGlobalListenersAdded:Z

.field mHaveFrame:Z

.field mIsAddCastProjectionCallback:Z

.field mIsCreating:Z

.field mLastLockTime:J

.field mLastSurfaceHeight:I

.field mLastSurfaceWidth:I

.field mLastWindowVisibility:Z

.field final mLocation:[I

.field private mParentSurfaceSequenceId:I

.field private mPositionListener:Landroid/view/SurfaceView$SurfaceViewPositionUpdateListener;

.field private final mRTLastReportedPosition:Landroid/graphics/Rect;

.field private final mRTLastReportedSurfaceSize:Landroid/graphics/Point;

.field private mRemoteAccessibilityController:Landroid/view/RemoteAccessibilityController;

.field mRequestedFormat:I

.field mRequestedHeight:I

.field mRequestedVisible:Z

.field mRequestedWidth:I

.field mRoundedViewportPaint:Landroid/graphics/Paint;

.field private final mRtTransaction:Landroid/view/SurfaceControl$Transaction;

.field final mScreenRect:Landroid/graphics/Rect;

.field private final mScrollChangedListener:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

.field mSubLayer:I

.field final mSurface:Landroid/view/Surface;

.field mSurfaceAlpha:F

.field mSurfaceControl:Landroid/view/SurfaceControl;

.field final mSurfaceControlLock:Ljava/lang/Object;

.field mSurfaceCreated:Z

.field private mSurfaceFlags:I

.field final mSurfaceFrame:Landroid/graphics/Rect;

.field mSurfaceHeight:I

.field private final mSurfaceHolder:Landroid/view/SurfaceHolder;

.field final mSurfaceLock:Ljava/util/concurrent/locks/ReentrantLock;

.field mSurfacePackage:Landroid/view/SurfaceControlViewHost$SurfacePackage;

.field private final mSurfaceSession:Landroid/view/SurfaceSession;

.field private final mSurfaceSyncer:Landroid/window/SurfaceSyncer;

.field mSurfaceWidth:I

.field private final mSyncIds:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mTmpMatrix:Landroid/graphics/Matrix;

.field final mTmpRect:Landroid/graphics/Rect;

.field mTransformHint:I

.field mUseAlpha:Z

.field mViewVisibility:Z

.field mVisible:Z

.field mWindowSpaceLeft:I

.field mWindowSpaceTop:I

.field mWindowStopped:Z

.field mWindowVisibility:Z


# direct methods
.method public static synthetic $r8$lambda$PgOqH-1CHTj5xz7zBHK88fj8o94(Landroid/view/SurfaceView;)V
    .registers 1

    invoke-direct {p0}, Landroid/view/SurfaceView;->onDrawFinished()V

    return-void
.end method

.method public static synthetic $r8$lambda$st27mCkd9jfJkTrN_P3qIGKX6NY(Landroid/view/SurfaceView;)V
    .registers 1

    invoke-direct {p0}, Landroid/view/SurfaceView;->performDrawFinished()V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetmRTLastReportedPosition(Landroid/view/SurfaceView;)Landroid/graphics/Rect;
    .registers 1

    iget-object p0, p0, Landroid/view/SurfaceView;->mRTLastReportedPosition:Landroid/graphics/Rect;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmRTLastReportedSurfaceSize(Landroid/view/SurfaceView;)Landroid/graphics/Point;
    .registers 1

    iget-object p0, p0, Landroid/view/SurfaceView;->mRTLastReportedSurfaceSize:Landroid/graphics/Point;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmRtTransaction(Landroid/view/SurfaceView;)Landroid/view/SurfaceControl$Transaction;
    .registers 1

    iget-object p0, p0, Landroid/view/SurfaceView;->mRtTransaction:Landroid/view/SurfaceControl$Transaction;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mapplyOrMergeTransaction(Landroid/view/SurfaceView;Landroid/view/SurfaceControl$Transaction;J)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Landroid/view/SurfaceView;->applyOrMergeTransaction(Landroid/view/SurfaceControl$Transaction;J)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mrunOnUiThread(Landroid/view/SurfaceView;Ljava/lang/Runnable;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/view/SurfaceView;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .registers 11

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IIZ)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;IIZ)V
    .registers 12

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/view/SurfaceView;->mCallbacks:Ljava/util/ArrayList;

    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Landroid/view/SurfaceView;->mLocation:[I

    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Landroid/view/SurfaceView;->mSurfaceLock:Ljava/util/concurrent/locks/ReentrantLock;

    new-instance v0, Landroid/view/Surface;

    invoke-direct {v0}, Landroid/view/Surface;-><init>()V

    iput-object v0, p0, Landroid/view/SurfaceView;->mSurface:Landroid/view/Surface;

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/SurfaceView;->mDrawingStopped:Z

    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/view/SurfaceView;->mDrawFinished:Z

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Landroid/view/SurfaceView;->mScreenRect:Landroid/graphics/Rect;

    new-instance v2, Landroid/view/SurfaceSession;

    invoke-direct {v2}, Landroid/view/SurfaceSession;-><init>()V

    iput-object v2, p0, Landroid/view/SurfaceView;->mSurfaceSession:Landroid/view/SurfaceSession;

    iput-boolean v1, p0, Landroid/view/SurfaceView;->mDisableBackgroundLayer:Z

    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Landroid/view/SurfaceView;->mSurfaceControlLock:Ljava/lang/Object;

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Landroid/view/SurfaceView;->mTmpRect:Landroid/graphics/Rect;

    const/4 v2, -0x2

    iput v2, p0, Landroid/view/SurfaceView;->mSubLayer:I

    iput-boolean v1, p0, Landroid/view/SurfaceView;->mIsCreating:Z

    new-instance v2, Landroid/view/SurfaceView$$ExternalSyntheticLambda4;

    invoke-direct {v2, p0}, Landroid/view/SurfaceView$$ExternalSyntheticLambda4;-><init>(Landroid/view/SurfaceView;)V

    iput-object v2, p0, Landroid/view/SurfaceView;->mScrollChangedListener:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    new-instance v2, Landroid/view/SurfaceView$$ExternalSyntheticLambda5;

    invoke-direct {v2, p0}, Landroid/view/SurfaceView$$ExternalSyntheticLambda5;-><init>(Landroid/view/SurfaceView;)V

    iput-object v2, p0, Landroid/view/SurfaceView;->mDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    iput-boolean v1, p0, Landroid/view/SurfaceView;->mRequestedVisible:Z

    iput-boolean v1, p0, Landroid/view/SurfaceView;->mWindowVisibility:Z

    iput-boolean v1, p0, Landroid/view/SurfaceView;->mLastWindowVisibility:Z

    iput-boolean v1, p0, Landroid/view/SurfaceView;->mViewVisibility:Z

    iput-boolean v1, p0, Landroid/view/SurfaceView;->mWindowStopped:Z

    const/4 v2, -0x1

    iput v2, p0, Landroid/view/SurfaceView;->mRequestedWidth:I

    iput v2, p0, Landroid/view/SurfaceView;->mRequestedHeight:I

    const/4 v3, 0x4

    iput v3, p0, Landroid/view/SurfaceView;->mRequestedFormat:I

    iput-boolean v1, p0, Landroid/view/SurfaceView;->mUseAlpha:Z

    const/high16 v4, 0x3f800000  # 1.0f

    iput v4, p0, Landroid/view/SurfaceView;->mSurfaceAlpha:F

    const/high16 v4, -0x1000000

    iput v4, p0, Landroid/view/SurfaceView;->mBackgroundColor:I

    iput-boolean v1, p0, Landroid/view/SurfaceView;->mHaveFrame:Z

    iput-boolean v1, p0, Landroid/view/SurfaceView;->mSurfaceCreated:Z

    const-wide/16 v4, 0x0

    iput-wide v4, p0, Landroid/view/SurfaceView;->mLastLockTime:J

    iput-boolean v1, p0, Landroid/view/SurfaceView;->mVisible:Z

    iput v2, p0, Landroid/view/SurfaceView;->mWindowSpaceLeft:I

    iput v2, p0, Landroid/view/SurfaceView;->mWindowSpaceTop:I

    iput v2, p0, Landroid/view/SurfaceView;->mSurfaceWidth:I

    iput v2, p0, Landroid/view/SurfaceView;->mSurfaceHeight:I

    iput v2, p0, Landroid/view/SurfaceView;->mFormat:I

    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    iput-object v4, p0, Landroid/view/SurfaceView;->mSurfaceFrame:Landroid/graphics/Rect;

    iput v2, p0, Landroid/view/SurfaceView;->mLastSurfaceWidth:I

    iput v2, p0, Landroid/view/SurfaceView;->mLastSurfaceHeight:I

    iput v1, p0, Landroid/view/SurfaceView;->mTransformHint:I

    iput-boolean v1, p0, Landroid/view/SurfaceView;->lastCastModeOpen:Z

    iput-boolean v1, p0, Landroid/view/SurfaceView;->mIsAddCastProjectionCallback:Z

    iput v3, p0, Landroid/view/SurfaceView;->mSurfaceFlags:I

    new-instance v1, Landroid/window/SurfaceSyncer;

    invoke-direct {v1}, Landroid/window/SurfaceSyncer;-><init>()V

    iput-object v1, p0, Landroid/view/SurfaceView;->mSurfaceSyncer:Landroid/window/SurfaceSyncer;

    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    iput-object v1, p0, Landroid/view/SurfaceView;->mSyncIds:Landroid/util/ArraySet;

    new-instance v1, Landroid/view/SurfaceControl$Transaction;

    invoke-direct {v1}, Landroid/view/SurfaceControl$Transaction;-><init>()V

    iput-object v1, p0, Landroid/view/SurfaceView;->mRtTransaction:Landroid/view/SurfaceControl$Transaction;

    new-instance v1, Landroid/view/SurfaceControl$Transaction;

    invoke-direct {v1}, Landroid/view/SurfaceControl$Transaction;-><init>()V

    iput-object v1, p0, Landroid/view/SurfaceView;->mFrameCallbackTransaction:Landroid/view/SurfaceControl$Transaction;

    new-instance v1, Landroid/view/RemoteAccessibilityController;

    invoke-direct {v1, p0}, Landroid/view/RemoteAccessibilityController;-><init>(Landroid/view/View;)V

    iput-object v1, p0, Landroid/view/SurfaceView;->mRemoteAccessibilityController:Landroid/view/RemoteAccessibilityController;

    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    iput-object v1, p0, Landroid/view/SurfaceView;->mTmpMatrix:Landroid/graphics/Matrix;

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Landroid/view/SurfaceView;->mRTLastReportedPosition:Landroid/graphics/Rect;

    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    iput-object v1, p0, Landroid/view/SurfaceView;->mRTLastReportedSurfaceSize:Landroid/graphics/Point;

    const/4 v1, 0x0

    iput-object v1, p0, Landroid/view/SurfaceView;->mPositionListener:Landroid/view/SurfaceView$SurfaceViewPositionUpdateListener;

    new-instance v1, Landroid/view/SurfaceView$1;

    invoke-direct {v1, p0}, Landroid/view/SurfaceView$1;-><init>(Landroid/view/SurfaceView;)V

    iput-object v1, p0, Landroid/view/SurfaceView;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    invoke-virtual {p0, v0}, Landroid/view/SurfaceView;->setWillNotDraw(Z)V

    iput-boolean p5, p0, Landroid/view/SurfaceView;->mDisableBackgroundLayer:Z

    return-void
.end method

.method private applyOrMergeTransaction(Landroid/view/SurfaceControl$Transaction;J)V
    .registers 5

    invoke-virtual {p0}, Landroid/view/SurfaceView;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v0

    if-eqz v0, :cond_a

    invoke-virtual {v0, p1, p2, p3}, Landroid/view/ViewRootImpl;->mergeWithNextTransaction(Landroid/view/SurfaceControl$Transaction;J)V

    goto :goto_d

    :cond_a
    invoke-virtual {p1}, Landroid/view/SurfaceControl$Transaction;->apply()V

    :goto_d
    return-void
.end method

.method private applyTransactionOnVriDraw(Landroid/view/SurfaceControl$Transaction;)V
    .registers 3

    invoke-virtual {p0}, Landroid/view/SurfaceView;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v0

    if-eqz v0, :cond_a

    invoke-virtual {v0, p1}, Landroid/view/ViewRootImpl;->applyTransactionOnDraw(Landroid/view/SurfaceControl$Transaction;)Z

    goto :goto_d

    :cond_a
    invoke-virtual {p1}, Landroid/view/SurfaceControl$Transaction;->apply()V

    :goto_d
    return-void
.end method

.method private clearSurfaceViewPort(Landroid/graphics/Canvas;)V
    .registers 10

    iget v0, p0, Landroid/view/SurfaceView;->mCornerRadius:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_37

    iget-object v0, p0, Landroid/view/SurfaceView;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->getClipBounds(Landroid/graphics/Rect;)Z

    iget-boolean v0, p0, Landroid/view/SurfaceView;->mClipSurfaceToBounds:Z

    if-eqz v0, :cond_1b

    iget-object v0, p0, Landroid/view/SurfaceView;->mClipBounds:Landroid/graphics/Rect;

    if-eqz v0, :cond_1b

    iget-object v0, p0, Landroid/view/SurfaceView;->mTmpRect:Landroid/graphics/Rect;

    iget-object v1, p0, Landroid/view/SurfaceView;->mClipBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->intersect(Landroid/graphics/Rect;)Z

    :cond_1b
    iget-object v0, p0, Landroid/view/SurfaceView;->mTmpRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    int-to-float v2, v0

    iget-object v0, p0, Landroid/view/SurfaceView;->mTmpRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    int-to-float v3, v0

    iget-object v0, p0, Landroid/view/SurfaceView;->mTmpRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    int-to-float v4, v0

    iget-object v0, p0, Landroid/view/SurfaceView;->mTmpRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    int-to-float v5, v0

    iget v7, p0, Landroid/view/SurfaceView;->mCornerRadius:F

    move-object v1, p1

    move v6, v7

    invoke-virtual/range {v1 .. v7}, Landroid/graphics/Canvas;->punchHole(FFFFFF)V

    goto :goto_49

    :cond_37
    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {p0}, Landroid/view/SurfaceView;->getWidth()I

    move-result v0

    int-to-float v4, v0

    invoke-virtual {p0}, Landroid/view/SurfaceView;->getHeight()I

    move-result v0

    int-to-float v5, v0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v1, p1

    invoke-virtual/range {v1 .. v7}, Landroid/graphics/Canvas;->punchHole(FFFFFF)V

    :goto_49
    return-void
.end method

.method private copySurface(ZZ)V
    .registers 6

    if-eqz p2, :cond_12

    invoke-virtual {p0}, Landroid/view/SurfaceView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v1, 0x1a

    if-ge v0, v1, :cond_12

    const/4 v0, 0x1

    goto :goto_13

    :cond_12
    const/4 v0, 0x0

    :goto_13
    if-nez p1, :cond_18

    if-nez v0, :cond_18

    return-void

    :cond_18
    iget-object v1, p0, Landroid/view/SurfaceView;->mSurfaceLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    if-eqz p1, :cond_29

    :try_start_1f
    iget-object v1, p0, Landroid/view/SurfaceView;->mSurface:Landroid/view/Surface;

    iget-object v2, p0, Landroid/view/SurfaceView;->mBlastBufferQueue:Landroid/graphics/BLASTBufferQueue;

    invoke-virtual {v1, v2}, Landroid/view/Surface;->copyFrom(Landroid/graphics/BLASTBufferQueue;)V

    goto :goto_29

    :catchall_27
    move-exception v1

    goto :goto_39

    :cond_29
    :goto_29
    if-eqz v0, :cond_3f

    iget-object v1, p0, Landroid/view/SurfaceView;->mBlastBufferQueue:Landroid/graphics/BLASTBufferQueue;

    if-eqz v1, :cond_3f

    iget-object v2, p0, Landroid/view/SurfaceView;->mSurface:Landroid/view/Surface;

    invoke-virtual {v1}, Landroid/graphics/BLASTBufferQueue;->createSurfaceWithHandle()Landroid/view/Surface;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/view/Surface;->transferFrom(Landroid/view/Surface;)V
    :try_end_38
    .catchall {:try_start_1f .. :try_end_38} :catchall_27

    goto :goto_3f

    :goto_39
    iget-object v2, p0, Landroid/view/SurfaceView;->mSurfaceLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v1

    :cond_3f
    :goto_3f
    iget-object v1, p0, Landroid/view/SurfaceView;->mSurfaceLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    nop

    return-void
.end method

.method private createBlastSurfaceControls(Landroid/view/ViewRootImpl;Ljava/lang/String;Landroid/view/SurfaceControl$Transaction;)V
    .registers 10

    iget-object v0, p0, Landroid/view/SurfaceView;->mSurfaceControl:Landroid/view/SurfaceControl;

    const-string v1, "SurfaceView.updateSurface"

    if-nez v0, :cond_2b

    new-instance v0, Landroid/view/SurfaceControl$Builder;

    iget-object v2, p0, Landroid/view/SurfaceView;->mSurfaceSession:Landroid/view/SurfaceSession;

    invoke-direct {v0, v2}, Landroid/view/SurfaceControl$Builder;-><init>(Landroid/view/SurfaceSession;)V

    invoke-virtual {v0, p2}, Landroid/view/SurfaceControl$Builder;->setName(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/SurfaceControl$Builder;->setLocalOwnerView(Landroid/view/View;)Landroid/view/SurfaceControl$Builder;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/ViewRootImpl;->getBoundsLayer()Landroid/view/SurfaceControl;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/view/SurfaceControl$Builder;->setParent(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Builder;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/SurfaceControl$Builder;->setCallsite(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/SurfaceControl$Builder;->setContainerLayer()Landroid/view/SurfaceControl$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/SurfaceControl$Builder;->build()Landroid/view/SurfaceControl;

    move-result-object v0

    iput-object v0, p0, Landroid/view/SurfaceView;->mSurfaceControl:Landroid/view/SurfaceControl;

    :cond_2b
    iget-object v0, p0, Landroid/view/SurfaceView;->mBlastSurfaceControl:Landroid/view/SurfaceControl;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v0, :cond_72

    new-instance v0, Landroid/view/SurfaceControl$Builder;

    iget-object v4, p0, Landroid/view/SurfaceView;->mSurfaceSession:Landroid/view/SurfaceSession;

    invoke-direct {v0, v4}, Landroid/view/SurfaceControl$Builder;-><init>(Landroid/view/SurfaceSession;)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "(BLAST)"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/view/SurfaceControl$Builder;->setName(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/SurfaceControl$Builder;->setLocalOwnerView(Landroid/view/View;)Landroid/view/SurfaceControl$Builder;

    move-result-object v0

    iget-object v4, p0, Landroid/view/SurfaceView;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v0, v4}, Landroid/view/SurfaceControl$Builder;->setParent(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Builder;

    move-result-object v0

    iget v4, p0, Landroid/view/SurfaceView;->mSurfaceFlags:I

    invoke-virtual {v0, v4}, Landroid/view/SurfaceControl$Builder;->setFlags(I)Landroid/view/SurfaceControl$Builder;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/SurfaceControl$Builder;->setHidden(Z)Landroid/view/SurfaceControl$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/SurfaceControl$Builder;->setBLASTLayer()Landroid/view/SurfaceControl$Builder;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/SurfaceControl$Builder;->setCallsite(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/SurfaceControl$Builder;->build()Landroid/view/SurfaceControl;

    move-result-object v0

    iput-object v0, p0, Landroid/view/SurfaceView;->mBlastSurfaceControl:Landroid/view/SurfaceControl;

    goto :goto_93

    :cond_72
    iget v4, p0, Landroid/view/SurfaceView;->mSurfaceFlags:I

    and-int/lit16 v4, v4, 0x400

    if-eqz v4, :cond_7a

    move v4, v2

    goto :goto_7b

    :cond_7a
    move v4, v3

    :goto_7b
    invoke-virtual {p3, v0, v4}, Landroid/view/SurfaceControl$Transaction;->setOpaque(Landroid/view/SurfaceControl;Z)Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    iget-object v4, p0, Landroid/view/SurfaceView;->mBlastSurfaceControl:Landroid/view/SurfaceControl;

    iget v5, p0, Landroid/view/SurfaceView;->mSurfaceFlags:I

    and-int/lit16 v5, v5, 0x80

    if-eqz v5, :cond_89

    move v5, v2

    goto :goto_8a

    :cond_89
    move v5, v3

    :goto_8a
    invoke-virtual {v0, v4, v5}, Landroid/view/SurfaceControl$Transaction;->setSecure(Landroid/view/SurfaceControl;Z)Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    iget-object v4, p0, Landroid/view/SurfaceView;->mBlastSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v0, v4}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    :goto_93
    iget-object v0, p0, Landroid/view/SurfaceView;->mBackgroundControl:Landroid/view/SurfaceControl;

    if-nez v0, :cond_d1

    new-instance v0, Landroid/view/SurfaceControl$Builder;

    iget-object v4, p0, Landroid/view/SurfaceView;->mSurfaceSession:Landroid/view/SurfaceSession;

    invoke-direct {v0, v4}, Landroid/view/SurfaceControl$Builder;-><init>(Landroid/view/SurfaceSession;)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Background for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/view/SurfaceControl$Builder;->setName(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/SurfaceControl$Builder;->setLocalOwnerView(Landroid/view/View;)Landroid/view/SurfaceControl$Builder;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/SurfaceControl$Builder;->setOpaque(Z)Landroid/view/SurfaceControl$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/SurfaceControl$Builder;->setColorLayer()Landroid/view/SurfaceControl$Builder;

    move-result-object v0

    iget-object v2, p0, Landroid/view/SurfaceView;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v0, v2}, Landroid/view/SurfaceControl$Builder;->setParent(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Builder;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/SurfaceControl$Builder;->setCallsite(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/SurfaceControl$Builder;->build()Landroid/view/SurfaceControl;

    move-result-object v0

    iput-object v0, p0, Landroid/view/SurfaceView;->mBackgroundControl:Landroid/view/SurfaceControl;

    :cond_d1
    iget-object v0, p0, Landroid/view/SurfaceView;->mBlastBufferQueue:Landroid/graphics/BLASTBufferQueue;

    if-eqz v0, :cond_d8

    invoke-virtual {v0}, Landroid/graphics/BLASTBufferQueue;->destroy()V

    :cond_d8
    invoke-virtual {p1}, Landroid/view/ViewRootImpl;->getBufferTransformHint()I

    move-result v0

    iput v0, p0, Landroid/view/SurfaceView;->mTransformHint:I

    iget-object v1, p0, Landroid/view/SurfaceView;->mBlastSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v1, v0}, Landroid/view/SurfaceControl;->setTransformHint(I)V

    new-instance v0, Landroid/graphics/BLASTBufferQueue;

    invoke-direct {v0, p2, v3}, Landroid/graphics/BLASTBufferQueue;-><init>(Ljava/lang/String;Z)V

    iput-object v0, p0, Landroid/view/SurfaceView;->mBlastBufferQueue:Landroid/graphics/BLASTBufferQueue;

    iget-object v1, p0, Landroid/view/SurfaceView;->mBlastSurfaceControl:Landroid/view/SurfaceControl;

    iget v2, p0, Landroid/view/SurfaceView;->mSurfaceWidth:I

    iget v3, p0, Landroid/view/SurfaceView;->mSurfaceHeight:I

    iget v4, p0, Landroid/view/SurfaceView;->mFormat:I

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/BLASTBufferQueue;->update(Landroid/view/SurfaceControl;III)V

    iget-object v0, p0, Landroid/view/SurfaceView;->mBlastBufferQueue:Landroid/graphics/BLASTBufferQueue;

    sget-object v1, Landroid/view/ViewRootImpl;->sTransactionHangCallback:Landroid/graphics/BLASTBufferQueue$TransactionHangCallback;

    invoke-virtual {v0, v1}, Landroid/graphics/BLASTBufferQueue;->setTransactionHangCallback(Landroid/graphics/BLASTBufferQueue$TransactionHangCallback;)V

    return-void
.end method

.method private getFixedAlpha()F
    .registers 3

    invoke-virtual {p0}, Landroid/view/SurfaceView;->getAlpha()F

    move-result v0

    iget-boolean v1, p0, Landroid/view/SurfaceView;->mUseAlpha:Z

    if-eqz v1, :cond_13

    iget v1, p0, Landroid/view/SurfaceView;->mSubLayer:I

    if-gtz v1, :cond_11

    const/4 v1, 0x0

    cmpl-float v1, v0, v1

    if-nez v1, :cond_13

    :cond_11
    move v1, v0

    goto :goto_15

    :cond_13
    const/high16 v1, 0x3f800000  # 1.0f

    :goto_15
    return v1
.end method

.method private getSurfaceCallbacks()[Landroid/view/SurfaceHolder$Callback;
    .registers 4

    iget-object v0, p0, Landroid/view/SurfaceView;->mCallbacks:Ljava/util/ArrayList;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Landroid/view/SurfaceView;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Landroid/view/SurfaceHolder$Callback;

    iget-object v2, p0, Landroid/view/SurfaceView;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    monitor-exit v0

    return-object v1

    :catchall_12
    move-exception v1

    monitor-exit v0
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_12

    throw v1
.end method

.method private handleSyncBufferCallback([Landroid/view/SurfaceHolder$Callback;Landroid/view/SurfaceView$SyncBufferTransactionCallback;)V
    .registers 5

    invoke-virtual {p0}, Landroid/view/SurfaceView;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v0

    new-instance v1, Landroid/view/SurfaceView$$ExternalSyntheticLambda6;

    invoke-direct {v1, p0, p1, p2}, Landroid/view/SurfaceView$$ExternalSyntheticLambda6;-><init>(Landroid/view/SurfaceView;[Landroid/view/SurfaceHolder$Callback;Landroid/view/SurfaceView$SyncBufferTransactionCallback;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewRootImpl;->addToSync(Landroid/window/SurfaceSyncer$SyncTarget;)V

    return-void
.end method

.method private handleSyncNoBuffer([Landroid/view/SurfaceHolder$Callback;)V
    .registers 6

    iget-object v0, p0, Landroid/view/SurfaceView;->mSurfaceSyncer:Landroid/window/SurfaceSyncer;

    new-instance v1, Landroid/view/SurfaceView$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Landroid/view/SurfaceView$$ExternalSyntheticLambda1;-><init>(Landroid/view/SurfaceView;)V

    invoke-virtual {v0, v1}, Landroid/window/SurfaceSyncer;->setupSync(Ljava/lang/Runnable;)I

    move-result v0

    iget-object v1, p0, Landroid/view/SurfaceView;->mSurfaceSyncer:Landroid/window/SurfaceSyncer;

    new-instance v2, Landroid/view/SurfaceView$$ExternalSyntheticLambda2;

    invoke-direct {v2, p0, p1, v0}, Landroid/view/SurfaceView$$ExternalSyntheticLambda2;-><init>(Landroid/view/SurfaceView;[Landroid/view/SurfaceHolder$Callback;I)V

    invoke-virtual {v1, v0, v2}, Landroid/window/SurfaceSyncer;->addToSync(ILandroid/window/SurfaceSyncer$SyncTarget;)Z

    iget-object v1, p0, Landroid/view/SurfaceView;->mSurfaceSyncer:Landroid/window/SurfaceSyncer;

    invoke-virtual {v1, v0}, Landroid/window/SurfaceSyncer;->markSyncReady(I)V

    iget-object v1, p0, Landroid/view/SurfaceView;->mSyncIds:Landroid/util/ArraySet;

    monitor-enter v1

    :try_start_1d
    iget-object v2, p0, Landroid/view/SurfaceView;->mSyncIds:Landroid/util/ArraySet;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    monitor-exit v1

    return-void

    :catchall_28
    move-exception v2

    monitor-exit v1
    :try_end_2a
    .catchall {:try_start_1d .. :try_end_2a} :catchall_28

    throw v2
.end method

.method private initEmbeddedHierarchyForAccessibility(Landroid/view/SurfaceControlViewHost$SurfacePackage;)V
    .registers 6

    invoke-virtual {p1}, Landroid/view/SurfaceControlViewHost$SurfacePackage;->getAccessibilityEmbeddedConnection()Landroid/view/accessibility/IAccessibilityEmbeddedConnection;

    move-result-object v0

    iget-object v1, p0, Landroid/view/SurfaceView;->mRemoteAccessibilityController:Landroid/view/RemoteAccessibilityController;

    invoke-virtual {v1, v0}, Landroid/view/RemoteAccessibilityController;->alreadyAssociated(Landroid/view/accessibility/IAccessibilityEmbeddedConnection;)Z

    move-result v1

    if-eqz v1, :cond_d

    return-void

    :cond_d
    iget-object v1, p0, Landroid/view/SurfaceView;->mRemoteAccessibilityController:Landroid/view/RemoteAccessibilityController;

    invoke-virtual {p0}, Landroid/view/SurfaceView;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v2

    iget-object v2, v2, Landroid/view/ViewRootImpl;->mLeashToken:Landroid/os/IBinder;

    invoke-virtual {p0}, Landroid/view/SurfaceView;->getAccessibilityViewId()I

    move-result v3

    invoke-virtual {v1, v0, v2, v3}, Landroid/view/RemoteAccessibilityController;->assosciateHierarchy(Landroid/view/accessibility/IAccessibilityEmbeddedConnection;Landroid/os/IBinder;I)V

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Landroid/view/SurfaceView;->updateEmbeddedAccessibilityMatrix(Z)V

    return-void
.end method

.method private isAboveParent()Z
    .registers 2

    iget v0, p0, Landroid/view/SurfaceView;->mSubLayer:I

    if-ltz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method private notifySurfaceDestroyed()V
    .registers 6

    iget-object v0, p0, Landroid/view/SurfaceView;->mSurface:Landroid/view/Surface;

    invoke-virtual {v0}, Landroid/view/Surface;->isValid()Z

    move-result v0

    if-eqz v0, :cond_27

    invoke-direct {p0}, Landroid/view/SurfaceView;->getSurfaceCallbacks()[Landroid/view/SurfaceHolder$Callback;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_e
    if-ge v2, v1, :cond_1a

    aget-object v3, v0, v2

    iget-object v4, p0, Landroid/view/SurfaceView;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    invoke-interface {v3, v4}, Landroid/view/SurfaceHolder$Callback;->surfaceDestroyed(Landroid/view/SurfaceHolder;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_e

    :cond_1a
    iget-object v1, p0, Landroid/view/SurfaceView;->mSurface:Landroid/view/Surface;

    invoke-virtual {v1}, Landroid/view/Surface;->isValid()Z

    move-result v1

    if-eqz v1, :cond_27

    iget-object v1, p0, Landroid/view/SurfaceView;->mSurface:Landroid/view/Surface;

    invoke-virtual {v1}, Landroid/view/Surface;->forceScopedDisconnect()V

    :cond_27
    return-void
.end method

.method private onDrawFinished()V
    .registers 2

    new-instance v0, Landroid/view/SurfaceView$$ExternalSyntheticLambda8;

    invoke-direct {v0, p0}, Landroid/view/SurfaceView$$ExternalSyntheticLambda8;-><init>(Landroid/view/SurfaceView;)V

    invoke-direct {p0, v0}, Landroid/view/SurfaceView;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private performDrawFinished()V
    .registers 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/SurfaceView;->mDrawFinished:Z

    iget-boolean v0, p0, Landroid/view/SurfaceView;->mAttachedToWindow:Z

    if-eqz v0, :cond_f

    iget-object v0, p0, Landroid/view/SurfaceView;->mParent:Landroid/view/ViewParent;

    invoke-interface {v0, p0}, Landroid/view/ViewParent;->requestTransparentRegion(Landroid/view/View;)V

    invoke-virtual {p0}, Landroid/view/SurfaceView;->invalidate()V

    :cond_f
    return-void
.end method

.method private performSurfaceTransaction(Landroid/view/ViewRootImpl;Landroid/content/res/CompatibilityInfo$Translator;ZZZLandroid/view/SurfaceControl$Transaction;)Z
    .registers 19

    move-object v7, p0

    move-object v8, p2

    move-object/from16 v9, p6

    const/4 v10, 0x0

    iget-boolean v0, v7, Landroid/view/SurfaceView;->mVisible:Z

    const/4 v11, 0x1

    xor-int/2addr v0, v11

    iput-boolean v0, v7, Landroid/view/SurfaceView;->mDrawingStopped:Z

    if-eqz p3, :cond_17

    invoke-direct {p0, v9}, Landroid/view/SurfaceView;->updateRelativeZ(Landroid/view/SurfaceControl$Transaction;)V

    iget-object v0, v7, Landroid/view/SurfaceView;->mSurfacePackage:Landroid/view/SurfaceControlViewHost$SurfacePackage;

    if-eqz v0, :cond_17

    invoke-direct {p0, v9, v0}, Landroid/view/SurfaceView;->reparentSurfacePackage(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControlViewHost$SurfacePackage;)V

    :cond_17
    invoke-virtual {p1}, Landroid/view/ViewRootImpl;->getSurfaceSequenceId()I

    move-result v0

    iput v0, v7, Landroid/view/SurfaceView;->mParentSurfaceSequenceId:I

    iget-boolean v0, v7, Landroid/view/SurfaceView;->mViewVisibility:Z

    if-eqz v0, :cond_27

    iget-object v0, v7, Landroid/view/SurfaceView;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v9, v0}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    goto :goto_2c

    :cond_27
    iget-object v0, v7, Landroid/view/SurfaceView;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v9, v0}, Landroid/view/SurfaceControl$Transaction;->hide(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    :goto_2c
    invoke-direct {p0, v9}, Landroid/view/SurfaceView;->updateBackgroundVisibility(Landroid/view/SurfaceControl$Transaction;)V

    invoke-direct {p0, v9}, Landroid/view/SurfaceView;->updateBackgroundColor(Landroid/view/SurfaceControl$Transaction;)Landroid/view/SurfaceControl$Transaction;

    iget-boolean v0, v7, Landroid/view/SurfaceView;->mUseAlpha:Z

    if-eqz v0, :cond_41

    invoke-direct {p0}, Landroid/view/SurfaceView;->getFixedAlpha()F

    move-result v0

    iget-object v1, v7, Landroid/view/SurfaceView;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v9, v1, v0}, Landroid/view/SurfaceControl$Transaction;->setAlpha(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    iput v0, v7, Landroid/view/SurfaceView;->mSurfaceAlpha:F

    :cond_41
    iget-object v0, v7, Landroid/view/SurfaceView;->mSurfaceControl:Landroid/view/SurfaceControl;

    iget v1, v7, Landroid/view/SurfaceView;->mCornerRadius:F

    invoke-virtual {v9, v0, v1}, Landroid/view/SurfaceControl$Transaction;->setCornerRadius(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    if-nez p4, :cond_4c

    if-eqz p5, :cond_51

    :cond_4c
    if-nez p3, :cond_51

    invoke-direct {p0, v9}, Landroid/view/SurfaceView;->setBufferSize(Landroid/view/SurfaceControl$Transaction;)V

    :cond_51
    if-nez p4, :cond_5b

    if-nez p3, :cond_5b

    invoke-virtual {p0}, Landroid/view/SurfaceView;->isHardwareAccelerated()Z

    move-result v0

    if-nez v0, :cond_b3

    :cond_5b
    iget-boolean v0, v7, Landroid/view/SurfaceView;->mClipSurfaceToBounds:Z

    if-eqz v0, :cond_6b

    iget-object v0, v7, Landroid/view/SurfaceView;->mClipBounds:Landroid/graphics/Rect;

    if-eqz v0, :cond_6b

    iget-object v0, v7, Landroid/view/SurfaceView;->mSurfaceControl:Landroid/view/SurfaceControl;

    iget-object v1, v7, Landroid/view/SurfaceView;->mClipBounds:Landroid/graphics/Rect;

    invoke-virtual {v9, v0, v1}, Landroid/view/SurfaceControl$Transaction;->setWindowCrop(Landroid/view/SurfaceControl;Landroid/graphics/Rect;)Landroid/view/SurfaceControl$Transaction;

    goto :goto_74

    :cond_6b
    iget-object v0, v7, Landroid/view/SurfaceView;->mSurfaceControl:Landroid/view/SurfaceControl;

    iget v1, v7, Landroid/view/SurfaceView;->mSurfaceWidth:I

    iget v2, v7, Landroid/view/SurfaceView;->mSurfaceHeight:I

    invoke-virtual {v9, v0, v1, v2}, Landroid/view/SurfaceControl$Transaction;->setWindowCrop(Landroid/view/SurfaceControl;II)Landroid/view/SurfaceControl$Transaction;

    :goto_74
    iget-object v0, v7, Landroid/view/SurfaceView;->mBlastSurfaceControl:Landroid/view/SurfaceControl;

    iget v1, v7, Landroid/view/SurfaceView;->mSurfaceWidth:I

    iget v2, v7, Landroid/view/SurfaceView;->mSurfaceHeight:I

    invoke-virtual {v9, v0, v1, v2}, Landroid/view/SurfaceControl$Transaction;->setDesintationFrame(Landroid/view/SurfaceControl;II)Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {p0}, Landroid/view/SurfaceView;->isHardwareAccelerated()Z

    move-result v0

    if-eqz v0, :cond_8b

    iget v0, v7, Landroid/view/SurfaceView;->mSurfaceWidth:I

    iget v1, v7, Landroid/view/SurfaceView;->mSurfaceHeight:I

    invoke-direct {p0, v0, v1}, Landroid/view/SurfaceView;->replacePositionUpdateListener(II)V

    goto :goto_b3

    :cond_8b
    iget-object v2, v7, Landroid/view/SurfaceView;->mSurfaceControl:Landroid/view/SurfaceControl;

    iget-object v0, v7, Landroid/view/SurfaceView;->mScreenRect:Landroid/graphics/Rect;

    iget v3, v0, Landroid/graphics/Rect;->left:I

    iget-object v0, v7, Landroid/view/SurfaceView;->mScreenRect:Landroid/graphics/Rect;

    iget v4, v0, Landroid/graphics/Rect;->top:I

    iget-object v0, v7, Landroid/view/SurfaceView;->mScreenRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v0, v0

    iget v1, v7, Landroid/view/SurfaceView;->mSurfaceWidth:I

    int-to-float v1, v1

    div-float v5, v0, v1

    iget-object v0, v7, Landroid/view/SurfaceView;->mScreenRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    int-to-float v0, v0

    iget v1, v7, Landroid/view/SurfaceView;->mSurfaceHeight:I

    int-to-float v1, v1

    div-float v6, v0, v1

    move-object v0, p0

    move-object/from16 v1, p6

    invoke-virtual/range {v0 .. v6}, Landroid/view/SurfaceView;->onSetSurfacePositionAndScale(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;IIFF)V

    :cond_b3
    :goto_b3
    invoke-direct {p0, v9}, Landroid/view/SurfaceView;->applyTransactionOnVriDraw(Landroid/view/SurfaceControl$Transaction;)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/SurfaceView;->updateEmbeddedAccessibilityMatrix(Z)V

    iget-object v1, v7, Landroid/view/SurfaceView;->mSurfaceFrame:Landroid/graphics/Rect;

    iput v0, v1, Landroid/graphics/Rect;->left:I

    iget-object v1, v7, Landroid/view/SurfaceView;->mSurfaceFrame:Landroid/graphics/Rect;

    iput v0, v1, Landroid/graphics/Rect;->top:I

    if-nez v8, :cond_d1

    iget-object v1, v7, Landroid/view/SurfaceView;->mSurfaceFrame:Landroid/graphics/Rect;

    iget v2, v7, Landroid/view/SurfaceView;->mSurfaceWidth:I

    iput v2, v1, Landroid/graphics/Rect;->right:I

    iget-object v1, v7, Landroid/view/SurfaceView;->mSurfaceFrame:Landroid/graphics/Rect;

    iget v2, v7, Landroid/view/SurfaceView;->mSurfaceHeight:I

    iput v2, v1, Landroid/graphics/Rect;->bottom:I

    goto :goto_e9

    :cond_d1
    iget v1, v8, Landroid/content/res/CompatibilityInfo$Translator;->applicationInvertedScale:F

    iget-object v2, v7, Landroid/view/SurfaceView;->mSurfaceFrame:Landroid/graphics/Rect;

    iget v3, v7, Landroid/view/SurfaceView;->mSurfaceWidth:I

    int-to-float v3, v3

    mul-float/2addr v3, v1

    const/high16 v4, 0x3f000000  # 0.5f

    add-float/2addr v3, v4

    float-to-int v3, v3

    iput v3, v2, Landroid/graphics/Rect;->right:I

    iget-object v2, v7, Landroid/view/SurfaceView;->mSurfaceFrame:Landroid/graphics/Rect;

    iget v3, v7, Landroid/view/SurfaceView;->mSurfaceHeight:I

    int-to-float v3, v3

    mul-float/2addr v3, v1

    add-float/2addr v3, v4

    float-to-int v3, v3

    iput v3, v2, Landroid/graphics/Rect;->bottom:I

    :goto_e9
    iget-object v1, v7, Landroid/view/SurfaceView;->mSurfaceFrame:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    iget-object v2, v7, Landroid/view/SurfaceView;->mSurfaceFrame:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    iget v3, v7, Landroid/view/SurfaceView;->mLastSurfaceWidth:I

    if-ne v3, v1, :cond_fb

    iget v3, v7, Landroid/view/SurfaceView;->mLastSurfaceHeight:I

    if-eq v3, v2, :cond_fa

    goto :goto_fb

    :cond_fa
    move v11, v0

    :cond_fb
    :goto_fb
    move v0, v11

    iput v1, v7, Landroid/view/SurfaceView;->mLastSurfaceWidth:I

    iput v2, v7, Landroid/view/SurfaceView;->mLastSurfaceHeight:I

    return v0
.end method

.method private redrawNeededAsync([Landroid/view/SurfaceHolder$Callback;Ljava/lang/Runnable;)V
    .registers 5

    new-instance v0, Lcom/android/internal/view/SurfaceCallbackHelper;

    invoke-direct {v0, p2}, Lcom/android/internal/view/SurfaceCallbackHelper;-><init>(Ljava/lang/Runnable;)V

    iget-object v1, p0, Landroid/view/SurfaceView;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    invoke-virtual {v0, v1, p1}, Lcom/android/internal/view/SurfaceCallbackHelper;->dispatchSurfaceRedrawNeededAsync(Landroid/view/SurfaceHolder;[Landroid/view/SurfaceHolder$Callback;)V

    return-void
.end method

.method private releaseSurfaces(Z)V
    .registers 6

    const/high16 v0, 0x3f800000  # 1.0f

    iput v0, p0, Landroid/view/SurfaceView;->mSurfaceAlpha:F

    iget-object v0, p0, Landroid/view/SurfaceView;->mSurface:Landroid/view/Surface;

    invoke-virtual {v0}, Landroid/view/Surface;->destroy()V

    iget-object v0, p0, Landroid/view/SurfaceView;->mSurfaceControlLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_c
    iget-object v1, p0, Landroid/view/SurfaceView;->mBlastBufferQueue:Landroid/graphics/BLASTBufferQueue;

    const/4 v2, 0x0

    if-eqz v1, :cond_16

    invoke-virtual {v1}, Landroid/graphics/BLASTBufferQueue;->destroy()V

    iput-object v2, p0, Landroid/view/SurfaceView;->mBlastBufferQueue:Landroid/graphics/BLASTBufferQueue;

    :cond_16
    new-instance v1, Landroid/view/SurfaceControl$Transaction;

    invoke-direct {v1}, Landroid/view/SurfaceControl$Transaction;-><init>()V

    const/4 v3, 0x0

    iput-boolean v3, p0, Landroid/view/SurfaceView;->mAlreadySetProjectionMode:Z

    iget-object v3, p0, Landroid/view/SurfaceView;->mSurfaceControl:Landroid/view/SurfaceControl;

    if-eqz v3, :cond_27

    invoke-virtual {v1, v3}, Landroid/view/SurfaceControl$Transaction;->remove(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    iput-object v2, p0, Landroid/view/SurfaceView;->mSurfaceControl:Landroid/view/SurfaceControl;

    :cond_27
    iget-object v3, p0, Landroid/view/SurfaceView;->mBackgroundControl:Landroid/view/SurfaceControl;

    if-eqz v3, :cond_30

    invoke-virtual {v1, v3}, Landroid/view/SurfaceControl$Transaction;->remove(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    iput-object v2, p0, Landroid/view/SurfaceView;->mBackgroundControl:Landroid/view/SurfaceControl;

    :cond_30
    iget-object v3, p0, Landroid/view/SurfaceView;->mBlastSurfaceControl:Landroid/view/SurfaceControl;

    if-eqz v3, :cond_39

    invoke-virtual {v1, v3}, Landroid/view/SurfaceControl$Transaction;->remove(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    iput-object v2, p0, Landroid/view/SurfaceView;->mBlastSurfaceControl:Landroid/view/SurfaceControl;

    :cond_39
    if-eqz p1, :cond_44

    iget-object v3, p0, Landroid/view/SurfaceView;->mSurfacePackage:Landroid/view/SurfaceControlViewHost$SurfacePackage;

    if-eqz v3, :cond_44

    invoke-virtual {v3}, Landroid/view/SurfaceControlViewHost$SurfacePackage;->release()V

    iput-object v2, p0, Landroid/view/SurfaceView;->mSurfacePackage:Landroid/view/SurfaceControlViewHost$SurfacePackage;

    :cond_44
    invoke-direct {p0, v1}, Landroid/view/SurfaceView;->applyTransactionOnVriDraw(Landroid/view/SurfaceControl$Transaction;)V

    monitor-exit v0

    return-void

    :catchall_49
    move-exception v1

    monitor-exit v0
    :try_end_4b
    .catchall {:try_start_c .. :try_end_4b} :catchall_49

    throw v1
.end method

.method private reparentSurfacePackage(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControlViewHost$SurfacePackage;)V
    .registers 5

    invoke-virtual {p2}, Landroid/view/SurfaceControlViewHost$SurfacePackage;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v0

    if-eqz v0, :cond_1a

    invoke-virtual {v0}, Landroid/view/SurfaceControl;->isValid()Z

    move-result v1

    if-nez v1, :cond_d

    goto :goto_1a

    :cond_d
    invoke-direct {p0, p2}, Landroid/view/SurfaceView;->initEmbeddedHierarchyForAccessibility(Landroid/view/SurfaceControlViewHost$SurfacePackage;)V

    iget-object v1, p0, Landroid/view/SurfaceView;->mBlastSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {p1, v0, v1}, Landroid/view/SurfaceControl$Transaction;->reparent(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    return-void

    :cond_1a
    :goto_1a
    return-void
.end method

.method private replacePositionUpdateListener(II)V
    .registers 5

    iget-object v0, p0, Landroid/view/SurfaceView;->mPositionListener:Landroid/view/SurfaceView$SurfaceViewPositionUpdateListener;

    if-eqz v0, :cond_b

    iget-object v0, p0, Landroid/view/SurfaceView;->mRenderNode:Landroid/graphics/RenderNode;

    iget-object v1, p0, Landroid/view/SurfaceView;->mPositionListener:Landroid/view/SurfaceView$SurfaceViewPositionUpdateListener;

    invoke-virtual {v0, v1}, Landroid/graphics/RenderNode;->removePositionUpdateListener(Landroid/graphics/RenderNode$PositionUpdateListener;)V

    :cond_b
    new-instance v0, Landroid/view/SurfaceView$SurfaceViewPositionUpdateListener;

    invoke-direct {v0, p0, p1, p2}, Landroid/view/SurfaceView$SurfaceViewPositionUpdateListener;-><init>(Landroid/view/SurfaceView;II)V

    iput-object v0, p0, Landroid/view/SurfaceView;->mPositionListener:Landroid/view/SurfaceView$SurfaceViewPositionUpdateListener;

    iget-object v0, p0, Landroid/view/SurfaceView;->mRenderNode:Landroid/graphics/RenderNode;

    iget-object v1, p0, Landroid/view/SurfaceView;->mPositionListener:Landroid/view/SurfaceView$SurfaceViewPositionUpdateListener;

    invoke-virtual {v0, v1}, Landroid/graphics/RenderNode;->addPositionUpdateListener(Landroid/graphics/RenderNode$PositionUpdateListener;)V

    return-void
.end method

.method private runOnUiThread(Ljava/lang/Runnable;)V
    .registers 5

    invoke-virtual {p0}, Landroid/view/SurfaceView;->getHandler()Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_14

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v2

    if-eq v1, v2, :cond_14

    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_17

    :cond_14
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    :goto_17
    return-void
.end method

.method private setBufferSize(Landroid/view/SurfaceControl$Transaction;)V
    .registers 7

    iget-object v0, p0, Landroid/view/SurfaceView;->mBlastSurfaceControl:Landroid/view/SurfaceControl;

    iget v1, p0, Landroid/view/SurfaceView;->mTransformHint:I

    invoke-virtual {v0, v1}, Landroid/view/SurfaceControl;->setTransformHint(I)V

    iget-object v0, p0, Landroid/view/SurfaceView;->mBlastBufferQueue:Landroid/graphics/BLASTBufferQueue;

    if-eqz v0, :cond_16

    iget-object v1, p0, Landroid/view/SurfaceView;->mBlastSurfaceControl:Landroid/view/SurfaceControl;

    iget v2, p0, Landroid/view/SurfaceView;->mSurfaceWidth:I

    iget v3, p0, Landroid/view/SurfaceView;->mSurfaceHeight:I

    iget v4, p0, Landroid/view/SurfaceView;->mFormat:I

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/BLASTBufferQueue;->update(Landroid/view/SurfaceControl;III)V

    :cond_16
    return-void
.end method

.method private setWindowStopped(Z)V
    .registers 2

    iput-boolean p1, p0, Landroid/view/SurfaceView;->mWindowStopped:Z

    invoke-direct {p0}, Landroid/view/SurfaceView;->updateRequestedVisibility()V

    invoke-virtual {p0}, Landroid/view/SurfaceView;->updateSurface()V

    return-void
.end method

.method private updateBackgroundColor(Landroid/view/SurfaceControl$Transaction;)Landroid/view/SurfaceControl$Transaction;
    .registers 6

    const/4 v0, 0x3

    new-array v0, v0, [F

    iget v1, p0, Landroid/view/SurfaceView;->mBackgroundColor:I

    invoke-static {v1}, Landroid/graphics/Color;->red(I)I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x437f0000  # 255.0f

    div-float/2addr v1, v2

    const/4 v3, 0x0

    aput v1, v0, v3

    iget v1, p0, Landroid/view/SurfaceView;->mBackgroundColor:I

    invoke-static {v1}, Landroid/graphics/Color;->green(I)I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v2

    const/4 v3, 0x1

    aput v1, v0, v3

    iget v1, p0, Landroid/view/SurfaceView;->mBackgroundColor:I

    invoke-static {v1}, Landroid/graphics/Color;->blue(I)I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v2

    const/4 v2, 0x2

    aput v1, v0, v2

    iget-object v1, p0, Landroid/view/SurfaceView;->mBackgroundControl:Landroid/view/SurfaceControl;

    invoke-virtual {p1, v1, v0}, Landroid/view/SurfaceControl$Transaction;->setColor(Landroid/view/SurfaceControl;[F)Landroid/view/SurfaceControl$Transaction;

    return-object p1
.end method

.method private updateBackgroundVisibility(Landroid/view/SurfaceControl$Transaction;)V
    .registers 4

    iget-object v0, p0, Landroid/view/SurfaceView;->mBackgroundControl:Landroid/view/SurfaceControl;

    if-nez v0, :cond_5

    return-void

    :cond_5
    iget v1, p0, Landroid/view/SurfaceView;->mSubLayer:I

    if-gez v1, :cond_17

    iget v1, p0, Landroid/view/SurfaceView;->mSurfaceFlags:I

    and-int/lit16 v1, v1, 0x400

    if-eqz v1, :cond_17

    iget-boolean v1, p0, Landroid/view/SurfaceView;->mDisableBackgroundLayer:Z

    if-nez v1, :cond_17

    invoke-virtual {p1, v0}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    goto :goto_1a

    :cond_17
    invoke-virtual {p1, v0}, Landroid/view/SurfaceControl$Transaction;->hide(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    :goto_1a
    return-void
.end method

.method private updateOpaqueFlag()V
    .registers 2

    iget v0, p0, Landroid/view/SurfaceView;->mRequestedFormat:I

    invoke-static {v0}, Landroid/graphics/PixelFormat;->formatHasAlpha(I)Z

    move-result v0

    if-nez v0, :cond_f

    iget v0, p0, Landroid/view/SurfaceView;->mSurfaceFlags:I

    or-int/lit16 v0, v0, 0x400

    iput v0, p0, Landroid/view/SurfaceView;->mSurfaceFlags:I

    goto :goto_15

    :cond_f
    iget v0, p0, Landroid/view/SurfaceView;->mSurfaceFlags:I

    and-int/lit16 v0, v0, -0x401

    iput v0, p0, Landroid/view/SurfaceView;->mSurfaceFlags:I

    :goto_15
    return-void
.end method

.method private updateRelativeZ(Landroid/view/SurfaceControl$Transaction;)V
    .registers 6

    invoke-virtual {p0}, Landroid/view/SurfaceView;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v0

    if-nez v0, :cond_7

    return-void

    :cond_7
    invoke-virtual {v0}, Landroid/view/ViewRootImpl;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v1

    iget-object v2, p0, Landroid/view/SurfaceView;->mBackgroundControl:Landroid/view/SurfaceControl;

    const/high16 v3, -0x80000000

    invoke-virtual {p1, v2, v1, v3}, Landroid/view/SurfaceControl$Transaction;->setRelativeLayer(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    iget-object v2, p0, Landroid/view/SurfaceView;->mSurfaceControl:Landroid/view/SurfaceControl;

    iget v3, p0, Landroid/view/SurfaceView;->mSubLayer:I

    invoke-virtual {p1, v2, v1, v3}, Landroid/view/SurfaceControl$Transaction;->setRelativeLayer(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    return-void
.end method

.method private updateRequestedVisibility()V
    .registers 2

    iget-boolean v0, p0, Landroid/view/SurfaceView;->mViewVisibility:Z

    if-eqz v0, :cond_e

    iget-boolean v0, p0, Landroid/view/SurfaceView;->mWindowVisibility:Z

    if-eqz v0, :cond_e

    iget-boolean v0, p0, Landroid/view/SurfaceView;->mWindowStopped:Z

    if-nez v0, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    iput-boolean v0, p0, Landroid/view/SurfaceView;->mRequestedVisible:Z

    return-void
.end method

.method private updateSurfaceAlpha()V
    .registers 6

    iget-boolean v0, p0, Landroid/view/SurfaceView;->mUseAlpha:Z

    if-eqz v0, :cond_60

    iget-boolean v0, p0, Landroid/view/SurfaceView;->mHaveFrame:Z

    if-eqz v0, :cond_60

    iget-object v0, p0, Landroid/view/SurfaceView;->mSurfaceControl:Landroid/view/SurfaceControl;

    if-nez v0, :cond_d

    goto :goto_60

    :cond_d
    invoke-virtual {p0}, Landroid/view/SurfaceView;->getAlpha()F

    move-result v0

    iget v1, p0, Landroid/view/SurfaceView;->mSubLayer:I

    if-gez v1, :cond_3c

    const/4 v1, 0x0

    cmpg-float v1, v1, v0

    if-gez v1, :cond_3c

    const/high16 v1, 0x3f800000  # 1.0f

    cmpg-float v1, v0, v1

    if-gez v1, :cond_3c

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " updateSurfaceAlpha: translucent color is not supported for a surface placed z-below."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SurfaceView"

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3c
    invoke-virtual {p0}, Landroid/view/SurfaceView;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v1

    if-nez v1, :cond_43

    return-void

    :cond_43
    invoke-direct {p0}, Landroid/view/SurfaceView;->getFixedAlpha()F

    move-result v2

    iget v3, p0, Landroid/view/SurfaceView;->mSurfaceAlpha:F

    cmpl-float v3, v2, v3

    if-eqz v3, :cond_5f

    new-instance v3, Landroid/view/SurfaceControl$Transaction;

    invoke-direct {v3}, Landroid/view/SurfaceControl$Transaction;-><init>()V

    iget-object v4, p0, Landroid/view/SurfaceView;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v3, v4, v2}, Landroid/view/SurfaceControl$Transaction;->setAlpha(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {v1, v3}, Landroid/view/ViewRootImpl;->applyTransactionOnDraw(Landroid/view/SurfaceControl$Transaction;)Z

    invoke-virtual {p0}, Landroid/view/SurfaceView;->damageInParent()V

    iput v2, p0, Landroid/view/SurfaceView;->mSurfaceAlpha:F

    :cond_5f
    return-void

    :cond_60
    :goto_60
    return-void
.end method


# virtual methods
.method public castModeChanged()V
    .registers 1

    invoke-virtual {p0}, Landroid/view/SurfaceView;->updateSurface()V

    return-void
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .registers 4

    iget-boolean v0, p0, Landroid/view/SurfaceView;->mDrawFinished:Z

    if-eqz v0, :cond_14

    invoke-direct {p0}, Landroid/view/SurfaceView;->isAboveParent()Z

    move-result v0

    if-nez v0, :cond_14

    iget v0, p0, Landroid/view/SurfaceView;->mPrivateFlags:I

    const/16 v1, 0x80

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_14

    invoke-direct {p0, p1}, Landroid/view/SurfaceView;->clearSurfaceViewPort(Landroid/graphics/Canvas;)V

    :cond_14
    invoke-super {p0, p1}, Landroid/view/View;->dispatchDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .registers 3

    iget-boolean v0, p0, Landroid/view/SurfaceView;->mDrawFinished:Z

    if-eqz v0, :cond_13

    invoke-direct {p0}, Landroid/view/SurfaceView;->isAboveParent()Z

    move-result v0

    if-nez v0, :cond_13

    iget v0, p0, Landroid/view/SurfaceView;->mPrivateFlags:I

    and-int/lit16 v0, v0, 0x80

    if-nez v0, :cond_13

    invoke-direct {p0, p1}, Landroid/view/SurfaceView;->clearSurfaceViewPort(Landroid/graphics/Canvas;)V

    :cond_13
    invoke-super {p0, p1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public gatherTransparentRegion(Landroid/graphics/Region;)Z
    .registers 13

    invoke-direct {p0}, Landroid/view/SurfaceView;->isAboveParent()Z

    move-result v0

    if-nez v0, :cond_48

    iget-boolean v0, p0, Landroid/view/SurfaceView;->mDrawFinished:Z

    if-nez v0, :cond_b

    goto :goto_48

    :cond_b
    const/4 v0, 0x1

    iget v1, p0, Landroid/view/SurfaceView;->mPrivateFlags:I

    and-int/lit16 v1, v1, 0x80

    if-nez v1, :cond_17

    invoke-super {p0, p1}, Landroid/view/View;->gatherTransparentRegion(Landroid/graphics/Region;)Z

    move-result v0

    goto :goto_3e

    :cond_17
    if-eqz p1, :cond_3e

    invoke-virtual {p0}, Landroid/view/SurfaceView;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/SurfaceView;->getHeight()I

    move-result v2

    if-lez v1, :cond_3e

    if-lez v2, :cond_3e

    iget-object v3, p0, Landroid/view/SurfaceView;->mLocation:[I

    invoke-virtual {p0, v3}, Landroid/view/SurfaceView;->getLocationInWindow([I)V

    iget-object v3, p0, Landroid/view/SurfaceView;->mLocation:[I

    const/4 v4, 0x0

    aget v4, v3, v4

    const/4 v5, 0x1

    aget v3, v3, v5

    add-int v8, v4, v1

    add-int v9, v3, v2

    sget-object v10, Landroid/graphics/Region$Op;->UNION:Landroid/graphics/Region$Op;

    move-object v5, p1

    move v6, v4

    move v7, v3

    invoke-virtual/range {v5 .. v10}, Landroid/graphics/Region;->op(IIIILandroid/graphics/Region$Op;)Z

    :cond_3e
    :goto_3e
    iget v1, p0, Landroid/view/SurfaceView;->mRequestedFormat:I

    invoke-static {v1}, Landroid/graphics/PixelFormat;->formatHasAlpha(I)Z

    move-result v1

    if-eqz v1, :cond_47

    const/4 v0, 0x0

    :cond_47
    return v0

    :cond_48
    :goto_48
    invoke-super {p0, p1}, Landroid/view/View;->gatherTransparentRegion(Landroid/graphics/Region;)Z

    move-result v0

    return v0
.end method

.method public getCornerRadius()F
    .registers 2

    iget v0, p0, Landroid/view/SurfaceView;->mCornerRadius:F

    return v0
.end method

.method public getHolder()Landroid/view/SurfaceHolder;
    .registers 2

    iget-object v0, p0, Landroid/view/SurfaceView;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    return-object v0
.end method

.method public getHostToken()Landroid/os/IBinder;
    .registers 3

    invoke-virtual {p0}, Landroid/view/SurfaceView;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v0

    if-nez v0, :cond_8

    const/4 v1, 0x0

    return-object v1

    :cond_8
    invoke-virtual {v0}, Landroid/view/ViewRootImpl;->getInputToken()Landroid/os/IBinder;

    move-result-object v1

    return-object v1
.end method

.method public getImportantForAccessibility()I
    .registers 3

    invoke-super {p0}, Landroid/view/View;->getImportantForAccessibility()I

    move-result v0

    iget-object v1, p0, Landroid/view/SurfaceView;->mRemoteAccessibilityController:Landroid/view/RemoteAccessibilityController;

    if-eqz v1, :cond_e

    invoke-virtual {v1}, Landroid/view/RemoteAccessibilityController;->connected()Z

    move-result v1

    if-eqz v1, :cond_10

    :cond_e
    if-eqz v0, :cond_11

    :cond_10
    return v0

    :cond_11
    const/4 v1, 0x1

    return v1
.end method

.method public getSurfaceControl()Landroid/view/SurfaceControl;
    .registers 2

    iget-object v0, p0, Landroid/view/SurfaceView;->mSurfaceControl:Landroid/view/SurfaceControl;

    return-object v0
.end method

.method public getSurfaceRenderPosition()Landroid/graphics/Rect;
    .registers 2

    iget-object v0, p0, Landroid/view/SurfaceView;->mRTLastReportedPosition:Landroid/graphics/Rect;

    return-object v0
.end method

.method public isFixedSize()Z
    .registers 3

    iget v0, p0, Landroid/view/SurfaceView;->mRequestedWidth:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_c

    iget v0, p0, Landroid/view/SurfaceView;->mRequestedHeight:I

    if-eq v0, v1, :cond_a

    goto :goto_c

    :cond_a
    const/4 v0, 0x0

    goto :goto_d

    :cond_c
    :goto_c
    const/4 v0, 0x1

    :goto_d
    return v0
.end method

.method public isZOrderedOnTop()Z
    .registers 2

    iget v0, p0, Landroid/view/SurfaceView;->mSubLayer:I

    if-lez v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method synthetic lambda$handleSyncBufferCallback$1$android-view-SurfaceView(Landroid/view/SurfaceView$SyncBufferTransactionCallback;Landroid/window/SurfaceSyncer$SyncBufferCallback;)V
    .registers 5

    const/4 v0, 0x0

    iget-object v1, p0, Landroid/view/SurfaceView;->mBlastBufferQueue:Landroid/graphics/BLASTBufferQueue;

    if-eqz v1, :cond_c

    invoke-virtual {v1}, Landroid/graphics/BLASTBufferQueue;->stopContinuousSyncTransaction()V

    invoke-virtual {p1}, Landroid/view/SurfaceView$SyncBufferTransactionCallback;->waitForTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    :cond_c
    invoke-interface {p2, v0}, Landroid/window/SurfaceSyncer$SyncBufferCallback;->onBufferReady(Landroid/view/SurfaceControl$Transaction;)V

    invoke-direct {p0}, Landroid/view/SurfaceView;->onDrawFinished()V

    return-void
.end method

.method synthetic lambda$handleSyncBufferCallback$2$android-view-SurfaceView([Landroid/view/SurfaceHolder$Callback;Landroid/view/SurfaceView$SyncBufferTransactionCallback;Landroid/window/SurfaceSyncer$SyncBufferCallback;)V
    .registers 5

    new-instance v0, Landroid/view/SurfaceView$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p2, p3}, Landroid/view/SurfaceView$$ExternalSyntheticLambda0;-><init>(Landroid/view/SurfaceView;Landroid/view/SurfaceView$SyncBufferTransactionCallback;Landroid/window/SurfaceSyncer$SyncBufferCallback;)V

    invoke-direct {p0, p1, v0}, Landroid/view/SurfaceView;->redrawNeededAsync([Landroid/view/SurfaceHolder$Callback;Ljava/lang/Runnable;)V

    return-void
.end method

.method synthetic lambda$handleSyncNoBuffer$3$android-view-SurfaceView(Landroid/window/SurfaceSyncer$SyncBufferCallback;I)V
    .registers 6

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Landroid/window/SurfaceSyncer$SyncBufferCallback;->onBufferReady(Landroid/view/SurfaceControl$Transaction;)V

    iget-object v0, p0, Landroid/view/SurfaceView;->mSyncIds:Landroid/util/ArraySet;

    monitor-enter v0

    :try_start_7
    iget-object v1, p0, Landroid/view/SurfaceView;->mSyncIds:Landroid/util/ArraySet;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    monitor-exit v0

    return-void

    :catchall_12
    move-exception v1

    monitor-exit v0
    :try_end_14
    .catchall {:try_start_7 .. :try_end_14} :catchall_12

    throw v1
.end method

.method synthetic lambda$handleSyncNoBuffer$4$android-view-SurfaceView([Landroid/view/SurfaceHolder$Callback;ILandroid/window/SurfaceSyncer$SyncBufferCallback;)V
    .registers 5

    new-instance v0, Landroid/view/SurfaceView$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0, p3, p2}, Landroid/view/SurfaceView$$ExternalSyntheticLambda3;-><init>(Landroid/view/SurfaceView;Landroid/window/SurfaceSyncer$SyncBufferCallback;I)V

    invoke-direct {p0, p1, v0}, Landroid/view/SurfaceView;->redrawNeededAsync([Landroid/view/SurfaceHolder$Callback;Ljava/lang/Runnable;)V

    return-void
.end method

.method synthetic lambda$new$0$android-view-SurfaceView()Z
    .registers 3

    invoke-virtual {p0}, Landroid/view/SurfaceView;->getWidth()I

    move-result v0

    const/4 v1, 0x1

    if-lez v0, :cond_f

    invoke-virtual {p0}, Landroid/view/SurfaceView;->getHeight()I

    move-result v0

    if-lez v0, :cond_f

    move v0, v1

    goto :goto_10

    :cond_f
    const/4 v0, 0x0

    :goto_10
    iput-boolean v0, p0, Landroid/view/SurfaceView;->mHaveFrame:Z

    invoke-virtual {p0}, Landroid/view/SurfaceView;->updateSurface()V

    return v1
.end method

.method protected onAttachedToWindow()V
    .registers 4

    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    invoke-virtual {p0}, Landroid/view/SurfaceView;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewRootImpl;->addSurfaceChangedCallback(Landroid/view/ViewRootImpl$SurfaceChangedCallback;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/view/SurfaceView;->mWindowStopped:Z

    iget-boolean v1, p0, Landroid/view/SurfaceView;->mIsAddCastProjectionCallback:Z

    const/4 v2, 0x1

    if-nez v1, :cond_1f

    invoke-virtual {p0}, Landroid/view/SurfaceView;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/ViewRootImpl;->addCastProjectionCallback(Landroid/view/ViewRootImpl$CastProjectionCallback;)V

    iput-boolean v0, p0, Landroid/view/SurfaceView;->mAlreadySetCastMode:Z

    iput-boolean v0, p0, Landroid/view/SurfaceView;->mAlreadySetProjectionMode:Z

    iput-boolean v2, p0, Landroid/view/SurfaceView;->mIsAddCastProjectionCallback:Z

    :cond_1f
    invoke-virtual {p0}, Landroid/view/SurfaceView;->getVisibility()I

    move-result v1

    if-nez v1, :cond_26

    move v0, v2

    :cond_26
    iput-boolean v0, p0, Landroid/view/SurfaceView;->mViewVisibility:Z

    invoke-direct {p0}, Landroid/view/SurfaceView;->updateRequestedVisibility()V

    iput-boolean v2, p0, Landroid/view/SurfaceView;->mAttachedToWindow:Z

    iget-object v0, p0, Landroid/view/SurfaceView;->mParent:Landroid/view/ViewParent;

    invoke-interface {v0, p0}, Landroid/view/ViewParent;->requestTransparentRegion(Landroid/view/View;)V

    iget-boolean v0, p0, Landroid/view/SurfaceView;->mGlobalListenersAdded:Z

    if-nez v0, :cond_46

    invoke-virtual {p0}, Landroid/view/SurfaceView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Landroid/view/SurfaceView;->mScrollChangedListener:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnScrollChangedListener(Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V

    iget-object v1, p0, Landroid/view/SurfaceView;->mDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    iput-boolean v2, p0, Landroid/view/SurfaceView;->mGlobalListenersAdded:Z

    :cond_46
    return-void
.end method

.method protected onDetachedFromWindow()V
    .registers 5

    invoke-virtual {p0}, Landroid/view/SurfaceView;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_13

    invoke-virtual {v0, p0}, Landroid/view/ViewRootImpl;->removeSurfaceChangedCallback(Landroid/view/ViewRootImpl$SurfaceChangedCallback;)V

    iget-boolean v2, p0, Landroid/view/SurfaceView;->mIsAddCastProjectionCallback:Z

    if-eqz v2, :cond_13

    invoke-virtual {v0, p0}, Landroid/view/ViewRootImpl;->removeCastProjectionCallback(Landroid/view/ViewRootImpl$CastProjectionCallback;)V

    iput-boolean v1, p0, Landroid/view/SurfaceView;->mIsAddCastProjectionCallback:Z

    :cond_13
    iput-boolean v1, p0, Landroid/view/SurfaceView;->mAlreadySetCastMode:Z

    iput-boolean v1, p0, Landroid/view/SurfaceView;->mAlreadySetProjectionMode:Z

    iput-boolean v1, p0, Landroid/view/SurfaceView;->mAttachedToWindow:Z

    iget-boolean v2, p0, Landroid/view/SurfaceView;->mGlobalListenersAdded:Z

    if-eqz v2, :cond_2d

    invoke-virtual {p0}, Landroid/view/SurfaceView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v2

    iget-object v3, p0, Landroid/view/SurfaceView;->mScrollChangedListener:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    invoke-virtual {v2, v3}, Landroid/view/ViewTreeObserver;->removeOnScrollChangedListener(Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V

    iget-object v3, p0, Landroid/view/SurfaceView;->mDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    invoke-virtual {v2, v3}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    iput-boolean v1, p0, Landroid/view/SurfaceView;->mGlobalListenersAdded:Z

    :cond_2d
    iput-boolean v1, p0, Landroid/view/SurfaceView;->mRequestedVisible:Z

    invoke-virtual {p0}, Landroid/view/SurfaceView;->updateSurface()V

    const/4 v2, 0x1

    invoke-direct {p0, v2}, Landroid/view/SurfaceView;->releaseSurfaces(Z)V

    iput-boolean v1, p0, Landroid/view/SurfaceView;->mHaveFrame:Z

    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    return-void
.end method

.method protected onFocusChanged(ZILandroid/graphics/Rect;)V
    .registers 8

    invoke-super {p0, p1, p2, p3}, Landroid/view/View;->onFocusChanged(ZILandroid/graphics/Rect;)V

    invoke-virtual {p0}, Landroid/view/SurfaceView;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v0

    iget-object v1, p0, Landroid/view/SurfaceView;->mSurfacePackage:Landroid/view/SurfaceControlViewHost$SurfacePackage;

    if-eqz v1, :cond_3a

    if-nez v0, :cond_e

    goto :goto_3a

    :cond_e
    :try_start_e
    iget-object v1, v0, Landroid/view/ViewRootImpl;->mWindowSession:Landroid/view/IWindowSession;

    iget-object v2, v0, Landroid/view/ViewRootImpl;->mWindow:Landroid/view/ViewRootImpl$W;

    iget-object v3, p0, Landroid/view/SurfaceView;->mSurfacePackage:Landroid/view/SurfaceControlViewHost$SurfacePackage;

    invoke-virtual {v3}, Landroid/view/SurfaceControlViewHost$SurfacePackage;->getInputToken()Landroid/os/IBinder;

    move-result-object v3

    invoke-interface {v1, v2, v3, p1}, Landroid/view/IWindowSession;->grantEmbeddedWindowFocus(Landroid/view/IWindow;Landroid/os/IBinder;Z)V
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_1b} :catch_1c

    goto :goto_39

    :catch_1c
    move-exception v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "Exception requesting focus on embedded window"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "SurfaceView"

    invoke-static {v3, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_39
    return-void

    :cond_3a
    :goto_3a
    return-void
.end method

.method public onInitializeAccessibilityNodeInfoInternal(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .registers 3

    invoke-super {p0, p1}, Landroid/view/View;->onInitializeAccessibilityNodeInfoInternal(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    iget-object v0, p0, Landroid/view/SurfaceView;->mRemoteAccessibilityController:Landroid/view/RemoteAccessibilityController;

    invoke-virtual {v0}, Landroid/view/RemoteAccessibilityController;->connected()Z

    move-result v0

    if-nez v0, :cond_c

    return-void

    :cond_c
    iget-object v0, p0, Landroid/view/SurfaceView;->mRemoteAccessibilityController:Landroid/view/RemoteAccessibilityController;

    invoke-virtual {v0}, Landroid/view/RemoteAccessibilityController;->getLeashToken()Landroid/os/IBinder;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addChild(Landroid/os/IBinder;)V

    return-void
.end method

.method protected onMeasure(II)V
    .registers 6

    iget v0, p0, Landroid/view/SurfaceView;->mRequestedWidth:I

    const/4 v1, 0x0

    if-ltz v0, :cond_a

    invoke-static {v0, p1, v1}, Landroid/view/SurfaceView;->resolveSizeAndState(III)I

    move-result v0

    goto :goto_e

    :cond_a
    invoke-static {v1, p1}, Landroid/view/SurfaceView;->getDefaultSize(II)I

    move-result v0

    :goto_e
    nop

    iget v2, p0, Landroid/view/SurfaceView;->mRequestedHeight:I

    if-ltz v2, :cond_18

    invoke-static {v2, p2, v1}, Landroid/view/SurfaceView;->resolveSizeAndState(III)I

    move-result v1

    goto :goto_1c

    :cond_18
    invoke-static {v1, p2}, Landroid/view/SurfaceView;->getDefaultSize(II)I

    move-result v1

    :goto_1c
    nop

    invoke-virtual {p0, v0, v1}, Landroid/view/SurfaceView;->setMeasuredDimension(II)V

    return-void
.end method

.method protected onSetSurfacePositionAndScale(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;IIFF)V
    .registers 15

    int-to-float v0, p3

    int-to-float v1, p4

    invoke-virtual {p1, p2, v0, v1}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v2, p1

    move-object v3, p2

    move v4, p5

    move v7, p6

    invoke-virtual/range {v2 .. v7}, Landroid/view/SurfaceControl$Transaction;->setMatrix(Landroid/view/SurfaceControl;FFFF)Landroid/view/SurfaceControl$Transaction;

    return-void
.end method

.method protected onWindowVisibilityChanged(I)V
    .registers 3

    invoke-super {p0, p1}, Landroid/view/View;->onWindowVisibilityChanged(I)V

    if-nez p1, :cond_7

    const/4 v0, 0x1

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    iput-boolean v0, p0, Landroid/view/SurfaceView;->mWindowVisibility:Z

    invoke-direct {p0}, Landroid/view/SurfaceView;->updateRequestedVisibility()V

    invoke-virtual {p0}, Landroid/view/SurfaceView;->updateSurface()V

    return-void
.end method

.method public projectionModeChanged()V
    .registers 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/view/SurfaceView;->mAlreadySetProjectionMode:Z

    invoke-virtual {p0}, Landroid/view/SurfaceView;->updateSurface()V

    return-void
.end method

.method public requestUpdateSurfacePositionAndScale()V
    .registers 9

    iget-object v0, p0, Landroid/view/SurfaceView;->mSurfaceControl:Landroid/view/SurfaceControl;

    if-nez v0, :cond_5

    return-void

    :cond_5
    new-instance v0, Landroid/view/SurfaceControl$Transaction;

    invoke-direct {v0}, Landroid/view/SurfaceControl$Transaction;-><init>()V

    iget-object v3, p0, Landroid/view/SurfaceView;->mSurfaceControl:Landroid/view/SurfaceControl;

    iget-object v1, p0, Landroid/view/SurfaceView;->mScreenRect:Landroid/graphics/Rect;

    iget v4, v1, Landroid/graphics/Rect;->left:I

    iget-object v1, p0, Landroid/view/SurfaceView;->mScreenRect:Landroid/graphics/Rect;

    iget v5, v1, Landroid/graphics/Rect;->top:I

    iget-object v1, p0, Landroid/view/SurfaceView;->mScreenRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-float v1, v1

    iget v2, p0, Landroid/view/SurfaceView;->mSurfaceWidth:I

    int-to-float v2, v2

    div-float v6, v1, v2

    iget-object v1, p0, Landroid/view/SurfaceView;->mScreenRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    int-to-float v1, v1

    iget v2, p0, Landroid/view/SurfaceView;->mSurfaceHeight:I

    int-to-float v2, v2

    div-float v7, v1, v2

    move-object v1, p0

    move-object v2, v0

    invoke-virtual/range {v1 .. v7}, Landroid/view/SurfaceView;->onSetSurfacePositionAndScale(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;IIFF)V

    invoke-direct {p0, v0}, Landroid/view/SurfaceView;->applyTransactionOnVriDraw(Landroid/view/SurfaceControl$Transaction;)V

    invoke-virtual {p0}, Landroid/view/SurfaceView;->invalidate()V

    return-void
.end method

.method public setAlpha(F)V
    .registers 2

    invoke-super {p0, p1}, Landroid/view/View;->setAlpha(F)V

    invoke-direct {p0}, Landroid/view/SurfaceView;->updateSurfaceAlpha()V

    return-void
.end method

.method public setChildSurfacePackage(Landroid/view/SurfaceControlViewHost$SurfacePackage;)V
    .registers 6

    iget-object v0, p0, Landroid/view/SurfaceView;->mSurfacePackage:Landroid/view/SurfaceControlViewHost$SurfacePackage;

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Landroid/view/SurfaceControlViewHost$SurfacePackage;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v0

    goto :goto_b

    :cond_a
    move-object v0, v1

    :goto_b
    new-instance v2, Landroid/view/SurfaceControl$Transaction;

    invoke-direct {v2}, Landroid/view/SurfaceControl$Transaction;-><init>()V

    iget-object v3, p0, Landroid/view/SurfaceView;->mSurfaceControl:Landroid/view/SurfaceControl;

    if-eqz v3, :cond_24

    if-eqz v0, :cond_1e

    invoke-virtual {v2, v0, v1}, Landroid/view/SurfaceControl$Transaction;->reparent(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    iget-object v1, p0, Landroid/view/SurfaceView;->mSurfacePackage:Landroid/view/SurfaceControlViewHost$SurfacePackage;

    invoke-virtual {v1}, Landroid/view/SurfaceControlViewHost$SurfacePackage;->release()V

    :cond_1e
    invoke-direct {p0, v2, p1}, Landroid/view/SurfaceView;->reparentSurfacePackage(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControlViewHost$SurfacePackage;)V

    invoke-direct {p0, v2}, Landroid/view/SurfaceView;->applyTransactionOnVriDraw(Landroid/view/SurfaceControl$Transaction;)V

    :cond_24
    iput-object p1, p0, Landroid/view/SurfaceView;->mSurfacePackage:Landroid/view/SurfaceControlViewHost$SurfacePackage;

    invoke-virtual {p0}, Landroid/view/SurfaceView;->invalidate()V

    return-void
.end method

.method public setClipBounds(Landroid/graphics/Rect;)V
    .registers 6

    invoke-super {p0, p1}, Landroid/view/View;->setClipBounds(Landroid/graphics/Rect;)V

    iget-boolean v0, p0, Landroid/view/SurfaceView;->mClipSurfaceToBounds:Z

    if-eqz v0, :cond_45

    iget-object v0, p0, Landroid/view/SurfaceView;->mSurfaceControl:Landroid/view/SurfaceControl;

    if-nez v0, :cond_c

    goto :goto_45

    :cond_c
    iget v0, p0, Landroid/view/SurfaceView;->mCornerRadius:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1c

    invoke-direct {p0}, Landroid/view/SurfaceView;->isAboveParent()Z

    move-result v0

    if-nez v0, :cond_1c

    invoke-virtual {p0}, Landroid/view/SurfaceView;->invalidate()V

    :cond_1c
    iget-object v0, p0, Landroid/view/SurfaceView;->mClipBounds:Landroid/graphics/Rect;

    if-eqz v0, :cond_28

    iget-object v0, p0, Landroid/view/SurfaceView;->mTmpRect:Landroid/graphics/Rect;

    iget-object v1, p0, Landroid/view/SurfaceView;->mClipBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto :goto_32

    :cond_28
    iget-object v0, p0, Landroid/view/SurfaceView;->mTmpRect:Landroid/graphics/Rect;

    iget v1, p0, Landroid/view/SurfaceView;->mSurfaceWidth:I

    iget v2, p0, Landroid/view/SurfaceView;->mSurfaceHeight:I

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/Rect;->set(IIII)V

    :goto_32
    new-instance v0, Landroid/view/SurfaceControl$Transaction;

    invoke-direct {v0}, Landroid/view/SurfaceControl$Transaction;-><init>()V

    iget-object v1, p0, Landroid/view/SurfaceView;->mSurfaceControl:Landroid/view/SurfaceControl;

    iget-object v2, p0, Landroid/view/SurfaceView;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1, v2}, Landroid/view/SurfaceControl$Transaction;->setWindowCrop(Landroid/view/SurfaceControl;Landroid/graphics/Rect;)Landroid/view/SurfaceControl$Transaction;

    invoke-direct {p0, v0}, Landroid/view/SurfaceView;->applyTransactionOnVriDraw(Landroid/view/SurfaceControl$Transaction;)V

    invoke-virtual {p0}, Landroid/view/SurfaceView;->invalidate()V

    return-void

    :cond_45
    :goto_45
    return-void
.end method

.method public setCornerRadius(F)V
    .registers 4

    iput p1, p0, Landroid/view/SurfaceView;->mCornerRadius:F

    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-lez v0, :cond_1e

    iget-object v0, p0, Landroid/view/SurfaceView;->mRoundedViewportPaint:Landroid/graphics/Paint;

    if-nez v0, :cond_1e

    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Landroid/view/SurfaceView;->mRoundedViewportPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/BlendMode;->CLEAR:Landroid/graphics/BlendMode;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setBlendMode(Landroid/graphics/BlendMode;)V

    iget-object v0, p0, Landroid/view/SurfaceView;->mRoundedViewportPaint:Landroid/graphics/Paint;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    :cond_1e
    invoke-virtual {p0}, Landroid/view/SurfaceView;->invalidate()V

    return-void
.end method

.method public setEnableSurfaceClipping(Z)V
    .registers 2

    iput-boolean p1, p0, Landroid/view/SurfaceView;->mClipSurfaceToBounds:Z

    invoke-virtual {p0}, Landroid/view/SurfaceView;->invalidate()V

    return-void
.end method

.method protected setFrame(IIII)Z
    .registers 6

    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->setFrame(IIII)Z

    move-result v0

    invoke-virtual {p0}, Landroid/view/SurfaceView;->updateSurface()V

    return v0
.end method

.method public setProtected(Z)V
    .registers 3

    if-eqz p1, :cond_9

    iget v0, p0, Landroid/view/SurfaceView;->mSurfaceFlags:I

    or-int/lit16 v0, v0, 0x800

    iput v0, p0, Landroid/view/SurfaceView;->mSurfaceFlags:I

    goto :goto_f

    :cond_9
    iget v0, p0, Landroid/view/SurfaceView;->mSurfaceFlags:I

    and-int/lit16 v0, v0, -0x801

    iput v0, p0, Landroid/view/SurfaceView;->mSurfaceFlags:I

    :goto_f
    return-void
.end method

.method public setResizeBackgroundColor(I)V
    .registers 3

    new-instance v0, Landroid/view/SurfaceControl$Transaction;

    invoke-direct {v0}, Landroid/view/SurfaceControl$Transaction;-><init>()V

    invoke-virtual {p0, v0, p1}, Landroid/view/SurfaceView;->setResizeBackgroundColor(Landroid/view/SurfaceControl$Transaction;I)V

    invoke-direct {p0, v0}, Landroid/view/SurfaceView;->applyTransactionOnVriDraw(Landroid/view/SurfaceControl$Transaction;)V

    invoke-virtual {p0}, Landroid/view/SurfaceView;->invalidate()V

    return-void
.end method

.method public setResizeBackgroundColor(Landroid/view/SurfaceControl$Transaction;I)V
    .registers 4

    iget-object v0, p0, Landroid/view/SurfaceView;->mBackgroundControl:Landroid/view/SurfaceControl;

    if-nez v0, :cond_5

    return-void

    :cond_5
    iput p2, p0, Landroid/view/SurfaceView;->mBackgroundColor:I

    invoke-direct {p0, p1}, Landroid/view/SurfaceView;->updateBackgroundColor(Landroid/view/SurfaceControl$Transaction;)Landroid/view/SurfaceControl$Transaction;

    return-void
.end method

.method public setSecure(Z)V
    .registers 3

    if-eqz p1, :cond_9

    iget v0, p0, Landroid/view/SurfaceView;->mSurfaceFlags:I

    or-int/lit16 v0, v0, 0x80

    iput v0, p0, Landroid/view/SurfaceView;->mSurfaceFlags:I

    goto :goto_f

    :cond_9
    iget v0, p0, Landroid/view/SurfaceView;->mSurfaceFlags:I

    and-int/lit16 v0, v0, -0x81

    iput v0, p0, Landroid/view/SurfaceView;->mSurfaceFlags:I

    :goto_f
    return-void
.end method

.method public setUseAlpha()V
    .registers 2

    iget-boolean v0, p0, Landroid/view/SurfaceView;->mUseAlpha:Z

    if-nez v0, :cond_a

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/SurfaceView;->mUseAlpha:Z

    invoke-direct {p0}, Landroid/view/SurfaceView;->updateSurfaceAlpha()V

    :cond_a
    return-void
.end method

.method public setVisibility(I)V
    .registers 6

    invoke-super {p0, p1}, Landroid/view/View;->setVisibility(I)V

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p1, :cond_9

    move v2, v0

    goto :goto_a

    :cond_9
    move v2, v1

    :goto_a
    iput-boolean v2, p0, Landroid/view/SurfaceView;->mViewVisibility:Z

    iget-boolean v3, p0, Landroid/view/SurfaceView;->mWindowVisibility:Z

    if-eqz v3, :cond_17

    if-eqz v2, :cond_17

    iget-boolean v2, p0, Landroid/view/SurfaceView;->mWindowStopped:Z

    if-nez v2, :cond_17

    goto :goto_18

    :cond_17
    move v0, v1

    :goto_18
    iget-boolean v1, p0, Landroid/view/SurfaceView;->mRequestedVisible:Z

    if-eq v0, v1, :cond_1f

    invoke-virtual {p0}, Landroid/view/SurfaceView;->requestLayout()V

    :cond_1f
    iput-boolean v0, p0, Landroid/view/SurfaceView;->mRequestedVisible:Z

    invoke-virtual {p0}, Landroid/view/SurfaceView;->updateSurface()V

    return-void
.end method

.method public setZOrderMediaOverlay(Z)V
    .registers 3

    if-eqz p1, :cond_4

    const/4 v0, -0x1

    goto :goto_5

    :cond_4
    const/4 v0, -0x2

    :goto_5
    iput v0, p0, Landroid/view/SurfaceView;->mSubLayer:I

    return-void
.end method

.method public setZOrderOnTop(Z)V
    .registers 4

    invoke-virtual {p0}, Landroid/view/SurfaceView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v1, 0x1d

    if-le v0, v1, :cond_10

    const/4 v0, 0x1

    goto :goto_11

    :cond_10
    const/4 v0, 0x0

    :goto_11
    invoke-virtual {p0, p1, v0}, Landroid/view/SurfaceView;->setZOrderedOnTop(ZZ)Z

    return-void
.end method

.method public setZOrderedOnTop(ZZ)Z
    .registers 7

    if-eqz p1, :cond_4

    const/4 v0, 0x1

    goto :goto_5

    :cond_4
    const/4 v0, -0x2

    :goto_5
    iget v1, p0, Landroid/view/SurfaceView;->mSubLayer:I

    const/4 v2, 0x0

    if-ne v1, v0, :cond_b

    return v2

    :cond_b
    iput v0, p0, Landroid/view/SurfaceView;->mSubLayer:I

    if-nez p2, :cond_10

    return v2

    :cond_10
    iget-object v1, p0, Landroid/view/SurfaceView;->mSurfaceControl:Landroid/view/SurfaceControl;

    const/4 v2, 0x1

    if-nez v1, :cond_16

    return v2

    :cond_16
    invoke-virtual {p0}, Landroid/view/SurfaceView;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v1

    if-nez v1, :cond_1d

    return v2

    :cond_1d
    new-instance v3, Landroid/view/SurfaceControl$Transaction;

    invoke-direct {v3}, Landroid/view/SurfaceControl$Transaction;-><init>()V

    invoke-direct {p0, v3}, Landroid/view/SurfaceView;->updateRelativeZ(Landroid/view/SurfaceControl$Transaction;)V

    invoke-virtual {v1, v3}, Landroid/view/ViewRootImpl;->applyTransactionOnDraw(Landroid/view/SurfaceControl$Transaction;)Z

    invoke-virtual {p0}, Landroid/view/SurfaceView;->invalidate()V

    return v2
.end method

.method public surfaceCreated(Landroid/view/SurfaceControl$Transaction;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/view/SurfaceView;->setWindowStopped(Z)V

    return-void
.end method

.method public surfaceDestroyed()V
    .registers 2

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/view/SurfaceView;->setWindowStopped(Z)V

    iget-object v0, p0, Landroid/view/SurfaceView;->mRemoteAccessibilityController:Landroid/view/RemoteAccessibilityController;

    invoke-virtual {v0}, Landroid/view/RemoteAccessibilityController;->disassosciateHierarchy()V

    return-void
.end method

.method public surfaceReplaced(Landroid/view/SurfaceControl$Transaction;)V
    .registers 3

    iget-object v0, p0, Landroid/view/SurfaceView;->mSurfaceControl:Landroid/view/SurfaceControl;

    if-eqz v0, :cond_b

    iget-object v0, p0, Landroid/view/SurfaceView;->mBackgroundControl:Landroid/view/SurfaceControl;

    if-eqz v0, :cond_b

    invoke-direct {p0, p1}, Landroid/view/SurfaceView;->updateRelativeZ(Landroid/view/SurfaceControl$Transaction;)V

    :cond_b
    return-void
.end method

.method public surfaceSyncStarted()V
    .registers 6

    invoke-virtual {p0}, Landroid/view/SurfaceView;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v0

    if-eqz v0, :cond_2a

    iget-object v1, p0, Landroid/view/SurfaceView;->mSyncIds:Landroid/util/ArraySet;

    monitor-enter v1

    :try_start_9
    iget-object v2, p0, Landroid/view/SurfaceView;->mSyncIds:Landroid/util/ArraySet;

    invoke-virtual {v2}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_f
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_25

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iget-object v4, p0, Landroid/view/SurfaceView;->mSurfaceSyncer:Landroid/window/SurfaceSyncer;

    invoke-virtual {v0, v3, v4}, Landroid/view/ViewRootImpl;->mergeSync(ILandroid/window/SurfaceSyncer;)V

    goto :goto_f

    :cond_25
    monitor-exit v1

    goto :goto_2a

    :catchall_27
    move-exception v2

    monitor-exit v1
    :try_end_29
    .catchall {:try_start_9 .. :try_end_29} :catchall_27

    throw v2

    :cond_2a
    :goto_2a
    return-void
.end method

.method public syncNextFrame(Ljava/util/function/Consumer;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Landroid/view/SurfaceControl$Transaction;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Landroid/view/SurfaceView;->mBlastBufferQueue:Landroid/graphics/BLASTBufferQueue;

    invoke-virtual {v0, p1}, Landroid/graphics/BLASTBufferQueue;->syncNextTransaction(Ljava/util/function/Consumer;)V

    return-void
.end method

.method updateEmbeddedAccessibilityMatrix(Z)V
    .registers 6

    iget-object v0, p0, Landroid/view/SurfaceView;->mRemoteAccessibilityController:Landroid/view/RemoteAccessibilityController;

    invoke-virtual {v0}, Landroid/view/RemoteAccessibilityController;->connected()Z

    move-result v0

    if-nez v0, :cond_9

    return-void

    :cond_9
    iget-object v0, p0, Landroid/view/SurfaceView;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v0}, Landroid/view/SurfaceView;->getBoundsOnScreen(Landroid/graphics/Rect;)V

    iget-object v0, p0, Landroid/view/SurfaceView;->mTmpRect:Landroid/graphics/Rect;

    iget-object v1, p0, Landroid/view/SurfaceView;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget v1, v1, Landroid/view/View$AttachInfo;->mWindowLeft:I

    neg-int v1, v1

    iget-object v2, p0, Landroid/view/SurfaceView;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget v2, v2, Landroid/view/View$AttachInfo;->mWindowTop:I

    neg-int v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Rect;->offset(II)V

    iget-object v0, p0, Landroid/view/SurfaceView;->mTmpMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    iget-object v0, p0, Landroid/view/SurfaceView;->mTmpMatrix:Landroid/graphics/Matrix;

    iget-object v1, p0, Landroid/view/SurfaceView;->mTmpRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    iget-object v2, p0, Landroid/view/SurfaceView;->mTmpRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->setTranslate(FF)V

    iget-object v0, p0, Landroid/view/SurfaceView;->mTmpMatrix:Landroid/graphics/Matrix;

    iget-object v1, p0, Landroid/view/SurfaceView;->mScreenRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-float v1, v1

    iget v2, p0, Landroid/view/SurfaceView;->mSurfaceWidth:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    iget-object v2, p0, Landroid/view/SurfaceView;->mScreenRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    int-to-float v2, v2

    iget v3, p0, Landroid/view/SurfaceView;->mSurfaceHeight:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->postScale(FF)Z

    iget-object v0, p0, Landroid/view/SurfaceView;->mRemoteAccessibilityController:Landroid/view/RemoteAccessibilityController;

    iget-object v1, p0, Landroid/view/SurfaceView;->mTmpMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1, p1}, Landroid/view/RemoteAccessibilityController;->setWindowMatrix(Landroid/graphics/Matrix;Z)V

    return-void
.end method

.method protected updateSurface()V
    .registers 31

    move-object/from16 v8, p0

    iget-boolean v0, v8, Landroid/view/SurfaceView;->mHaveFrame:Z

    if-nez v0, :cond_7

    return-void

    :cond_7
    invoke-virtual/range {p0 .. p0}, Landroid/view/SurfaceView;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v9

    if-nez v9, :cond_e

    return-void

    :cond_e
    iget-object v0, v9, Landroid/view/ViewRootImpl;->mSurface:Landroid/view/Surface;

    const/4 v10, 0x0

    if-eqz v0, :cond_388

    iget-object v0, v9, Landroid/view/ViewRootImpl;->mSurface:Landroid/view/Surface;

    invoke-virtual {v0}, Landroid/view/Surface;->isValid()Z

    move-result v0

    if-nez v0, :cond_1d

    goto/16 :goto_388

    :cond_1d
    iget-object v11, v9, Landroid/view/ViewRootImpl;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    if-eqz v11, :cond_26

    iget-object v0, v8, Landroid/view/SurfaceView;->mSurface:Landroid/view/Surface;

    invoke-virtual {v0, v11}, Landroid/view/Surface;->setCompatibilityTranslator(Landroid/content/res/CompatibilityInfo$Translator;)V

    :cond_26
    iget-boolean v0, v8, Landroid/view/SurfaceView;->mAlreadySetCastMode:Z

    const-string v1, "UPDATE "

    const-string v12, "SurfaceView"

    const/4 v13, 0x1

    if-eqz v0, :cond_35

    iget-boolean v0, v9, Landroid/view/ViewRootImpl;->mIsCastMode:Z

    iget-boolean v2, v8, Landroid/view/SurfaceView;->lastCastModeOpen:Z

    if-eq v0, v2, :cond_6f

    :cond_35
    iget-boolean v0, v9, Landroid/view/ViewRootImpl;->mIsCastMode:Z

    iput-boolean v0, v8, Landroid/view/SurfaceView;->lastCastModeOpen:Z

    iput-boolean v13, v8, Landroid/view/SurfaceView;->mAlreadySetCastMode:Z

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, v8, Landroid/view/SurfaceView;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", mIsCastMode = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v2, v9, Landroid/view/ViewRootImpl;->mIsCastMode:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v12, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, v8, Landroid/view/SurfaceView;->mSurfaceControl:Landroid/view/SurfaceControl;

    if-eqz v0, :cond_66

    iget-boolean v2, v9, Landroid/view/ViewRootImpl;->mIsCastMode:Z

    invoke-virtual {v0, v2}, Landroid/view/SurfaceControl;->setCastLayer(Z)V

    :cond_66
    iget-object v0, v8, Landroid/view/SurfaceView;->mBackgroundControl:Landroid/view/SurfaceControl;

    if-eqz v0, :cond_6f

    iget-boolean v2, v9, Landroid/view/ViewRootImpl;->mIsCastMode:Z

    invoke-virtual {v0, v2}, Landroid/view/SurfaceControl;->setCastLayer(Z)V

    :cond_6f
    iget-object v0, v8, Landroid/view/SurfaceView;->mSurfaceControl:Landroid/view/SurfaceControl;

    if-eqz v0, :cond_fa

    iget-boolean v0, v8, Landroid/view/SurfaceView;->mAlreadySetProjectionMode:Z

    if-eqz v0, :cond_7f

    invoke-virtual {v9}, Landroid/view/ViewRootImpl;->getIsProjectionMode()Z

    move-result v0

    iget-boolean v2, v8, Landroid/view/SurfaceView;->lastProjectionModeOpen:Z

    if-eq v0, v2, :cond_fa

    :cond_7f
    invoke-virtual {v9}, Landroid/view/ViewRootImpl;->getIsProjectionMode()Z

    move-result v0

    iput-boolean v0, v8, Landroid/view/SurfaceView;->lastProjectionModeOpen:Z

    iput-boolean v13, v8, Landroid/view/SurfaceView;->mAlreadySetProjectionMode:Z

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, v8, Landroid/view/SurfaceView;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mIsProjectionMode = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v9}, Landroid/view/ViewRootImpl;->getIsProjectionMode()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v12, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/xiaomi/screenprojection/IMiuiScreenProjectionStub;->getInstance()Lcom/xiaomi/screenprojection/IMiuiScreenProjectionStub;

    move-result-object v0

    iget-object v1, v8, Landroid/view/SurfaceView;->mSurfaceControl:Landroid/view/SurfaceControl;

    if-eqz v1, :cond_c8

    invoke-virtual {v9}, Landroid/view/ViewRootImpl;->getIsProjectionMode()Z

    move-result v1

    if-eqz v1, :cond_c3

    iget-object v1, v8, Landroid/view/SurfaceView;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-interface {v0}, Lcom/xiaomi/screenprojection/IMiuiScreenProjectionStub;->getExtraScreenProjectFlag()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/SurfaceControl;->setScreenProjection(I)V

    goto :goto_c8

    :cond_c3
    iget-object v1, v8, Landroid/view/SurfaceView;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v1, v10}, Landroid/view/SurfaceControl;->setScreenProjection(I)V

    :cond_c8
    :goto_c8
    iget-object v1, v8, Landroid/view/SurfaceView;->mBackgroundControl:Landroid/view/SurfaceControl;

    if-eqz v1, :cond_e1

    invoke-virtual {v9}, Landroid/view/ViewRootImpl;->getIsProjectionMode()Z

    move-result v1

    if-eqz v1, :cond_dc

    iget-object v1, v8, Landroid/view/SurfaceView;->mBackgroundControl:Landroid/view/SurfaceControl;

    invoke-interface {v0}, Lcom/xiaomi/screenprojection/IMiuiScreenProjectionStub;->getExtraScreenProjectFlag()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/SurfaceControl;->setScreenProjection(I)V

    goto :goto_e1

    :cond_dc
    iget-object v1, v8, Landroid/view/SurfaceView;->mBackgroundControl:Landroid/view/SurfaceControl;

    invoke-virtual {v1, v10}, Landroid/view/SurfaceControl;->setScreenProjection(I)V

    :cond_e1
    :goto_e1
    iget-object v1, v8, Landroid/view/SurfaceView;->mBlastSurfaceControl:Landroid/view/SurfaceControl;

    if-eqz v1, :cond_fa

    invoke-virtual {v9}, Landroid/view/ViewRootImpl;->getIsProjectionMode()Z

    move-result v1

    if-eqz v1, :cond_f5

    iget-object v1, v8, Landroid/view/SurfaceView;->mBlastSurfaceControl:Landroid/view/SurfaceControl;

    invoke-interface {v0}, Lcom/xiaomi/screenprojection/IMiuiScreenProjectionStub;->getExtraScreenProjectFlag()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/SurfaceControl;->setScreenProjection(I)V

    goto :goto_fa

    :cond_f5
    iget-object v1, v8, Landroid/view/SurfaceView;->mBlastSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v1, v10}, Landroid/view/SurfaceControl;->setScreenProjection(I)V

    :cond_fa
    :goto_fa
    iget v0, v8, Landroid/view/SurfaceView;->mRequestedWidth:I

    if-gtz v0, :cond_102

    invoke-virtual/range {p0 .. p0}, Landroid/view/SurfaceView;->getWidth()I

    move-result v0

    :cond_102
    move v14, v0

    iget v0, v8, Landroid/view/SurfaceView;->mRequestedHeight:I

    if-gtz v0, :cond_10b

    invoke-virtual/range {p0 .. p0}, Landroid/view/SurfaceView;->getHeight()I

    move-result v0

    :cond_10b
    move v15, v0

    invoke-direct/range {p0 .. p0}, Landroid/view/SurfaceView;->getFixedAlpha()F

    move-result v16

    iget v0, v8, Landroid/view/SurfaceView;->mFormat:I

    iget v1, v8, Landroid/view/SurfaceView;->mRequestedFormat:I

    if-eq v0, v1, :cond_118

    move v0, v13

    goto :goto_119

    :cond_118
    move v0, v10

    :goto_119
    move/from16 v17, v0

    invoke-virtual/range {p0 .. p0}, Landroid/view/SurfaceView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget v1, v8, Landroid/view/SurfaceView;->mSubLayer:I

    invoke-virtual/range {p0 .. p0}, Landroid/view/SurfaceView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v8, v0, v1, v2}, Landroid/util/MiuiFreeformUtils;->getSurfaceViewVisable(Landroid/view/SurfaceView;Landroid/content/res/Resources;ILjava/lang/String;)V

    iget-boolean v0, v8, Landroid/view/SurfaceView;->mVisible:Z

    iget-boolean v1, v8, Landroid/view/SurfaceView;->mRequestedVisible:Z

    if-eq v0, v1, :cond_134

    move v0, v13

    goto :goto_135

    :cond_134
    move v0, v10

    :goto_135
    move/from16 v18, v0

    iget v0, v8, Landroid/view/SurfaceView;->mSurfaceAlpha:F

    cmpl-float v0, v0, v16

    if-eqz v0, :cond_13f

    move v0, v13

    goto :goto_140

    :cond_13f
    move v0, v10

    :goto_140
    move/from16 v19, v0

    iget-object v0, v8, Landroid/view/SurfaceView;->mSurfaceControl:Landroid/view/SurfaceControl;

    if-eqz v0, :cond_14a

    if-nez v17, :cond_14a

    if-eqz v18, :cond_14e

    :cond_14a
    if-eqz v1, :cond_14e

    move v0, v13

    goto :goto_14f

    :cond_14e
    move v0, v10

    :goto_14f
    move v7, v0

    iget v0, v8, Landroid/view/SurfaceView;->mSurfaceWidth:I

    if-ne v0, v14, :cond_15b

    iget v0, v8, Landroid/view/SurfaceView;->mSurfaceHeight:I

    if-eq v0, v15, :cond_159

    goto :goto_15b

    :cond_159
    move v0, v10

    goto :goto_15c

    :cond_15b
    :goto_15b
    move v0, v13

    :goto_15c
    move v6, v0

    iget-boolean v0, v8, Landroid/view/SurfaceView;->mWindowVisibility:Z

    iget-boolean v1, v8, Landroid/view/SurfaceView;->mLastWindowVisibility:Z

    if-eq v0, v1, :cond_165

    move v0, v13

    goto :goto_166

    :cond_165
    move v0, v10

    :goto_166
    move/from16 v20, v0

    iget-object v0, v8, Landroid/view/SurfaceView;->mLocation:[I

    invoke-virtual {v8, v0}, Landroid/view/SurfaceView;->getLocationInSurface([I)V

    iget v0, v8, Landroid/view/SurfaceView;->mWindowSpaceLeft:I

    iget-object v1, v8, Landroid/view/SurfaceView;->mLocation:[I

    aget v2, v1, v10

    if-ne v0, v2, :cond_17e

    iget v0, v8, Landroid/view/SurfaceView;->mWindowSpaceTop:I

    aget v1, v1, v13

    if-eq v0, v1, :cond_17c

    goto :goto_17e

    :cond_17c
    move v0, v10

    goto :goto_17f

    :cond_17e
    :goto_17e
    move v0, v13

    :goto_17f
    move/from16 v21, v0

    invoke-virtual/range {p0 .. p0}, Landroid/view/SurfaceView;->getWidth()I

    move-result v0

    iget-object v1, v8, Landroid/view/SurfaceView;->mScreenRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    if-ne v0, v1, :cond_19c

    invoke-virtual/range {p0 .. p0}, Landroid/view/SurfaceView;->getHeight()I

    move-result v0

    iget-object v1, v8, Landroid/view/SurfaceView;->mScreenRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    if-eq v0, v1, :cond_19a

    goto :goto_19c

    :cond_19a
    move v0, v10

    goto :goto_19d

    :cond_19c
    :goto_19c
    move v0, v13

    :goto_19d
    move/from16 v22, v0

    invoke-virtual {v9}, Landroid/view/ViewRootImpl;->getBufferTransformHint()I

    move-result v0

    iget v1, v8, Landroid/view/SurfaceView;->mTransformHint:I

    if-eq v0, v1, :cond_1ad

    iget-boolean v0, v8, Landroid/view/SurfaceView;->mRequestedVisible:Z

    if-eqz v0, :cond_1ad

    move v0, v13

    goto :goto_1ae

    :cond_1ad
    move v0, v10

    :goto_1ae
    move/from16 v23, v0

    if-nez v7, :cond_1cb

    if-nez v17, :cond_1cb

    if-nez v6, :cond_1cb

    if-nez v18, :cond_1cb

    iget-boolean v0, v8, Landroid/view/SurfaceView;->mUseAlpha:Z

    if-eqz v0, :cond_1be

    if-nez v19, :cond_1cb

    :cond_1be
    if-nez v20, :cond_1cb

    if-nez v21, :cond_1cb

    if-nez v22, :cond_1cb

    if-eqz v23, :cond_1c7

    goto :goto_1cb

    :cond_1c7
    move v13, v6

    move v4, v7

    goto/16 :goto_387

    :cond_1cb
    :goto_1cb
    iget-object v0, v8, Landroid/view/SurfaceView;->mLocation:[I

    invoke-virtual {v8, v0}, Landroid/view/SurfaceView;->getLocationInWindow([I)V

    :try_start_1d0
    iget-boolean v0, v8, Landroid/view/SurfaceView;->mRequestedVisible:Z

    iput-boolean v0, v8, Landroid/view/SurfaceView;->mVisible:Z

    iget-object v0, v8, Landroid/view/SurfaceView;->mLocation:[I

    aget v1, v0, v10

    iput v1, v8, Landroid/view/SurfaceView;->mWindowSpaceLeft:I

    aget v0, v0, v13

    iput v0, v8, Landroid/view/SurfaceView;->mWindowSpaceTop:I

    iput v14, v8, Landroid/view/SurfaceView;->mSurfaceWidth:I

    iput v15, v8, Landroid/view/SurfaceView;->mSurfaceHeight:I

    iget v0, v8, Landroid/view/SurfaceView;->mRequestedFormat:I

    iput v0, v8, Landroid/view/SurfaceView;->mFormat:I

    iget-boolean v0, v8, Landroid/view/SurfaceView;->mWindowVisibility:Z

    iput-boolean v0, v8, Landroid/view/SurfaceView;->mLastWindowVisibility:Z

    invoke-virtual {v9}, Landroid/view/ViewRootImpl;->getBufferTransformHint()I

    move-result v0

    iput v0, v8, Landroid/view/SurfaceView;->mTransformHint:I

    iget-object v0, v8, Landroid/view/SurfaceView;->mScreenRect:Landroid/graphics/Rect;

    iget v1, v8, Landroid/view/SurfaceView;->mWindowSpaceLeft:I

    iput v1, v0, Landroid/graphics/Rect;->left:I

    iget-object v0, v8, Landroid/view/SurfaceView;->mScreenRect:Landroid/graphics/Rect;

    iget v1, v8, Landroid/view/SurfaceView;->mWindowSpaceTop:I

    iput v1, v0, Landroid/graphics/Rect;->top:I

    iget-object v0, v8, Landroid/view/SurfaceView;->mScreenRect:Landroid/graphics/Rect;

    iget v1, v8, Landroid/view/SurfaceView;->mWindowSpaceLeft:I

    invoke-virtual/range {p0 .. p0}, Landroid/view/SurfaceView;->getWidth()I

    move-result v2

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->right:I

    iget-object v0, v8, Landroid/view/SurfaceView;->mScreenRect:Landroid/graphics/Rect;

    iget v1, v8, Landroid/view/SurfaceView;->mWindowSpaceTop:I

    invoke-virtual/range {p0 .. p0}, Landroid/view/SurfaceView;->getHeight()I

    move-result v2

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->bottom:I
    :try_end_212
    .catch Ljava/lang/Exception; {:try_start_1d0 .. :try_end_212} :catch_37f

    if-eqz v11, :cond_21f

    :try_start_214
    iget-object v0, v8, Landroid/view/SurfaceView;->mScreenRect:Landroid/graphics/Rect;

    invoke-virtual {v11, v0}, Landroid/content/res/CompatibilityInfo$Translator;->translateRectInAppWindowToScreen(Landroid/graphics/Rect;)V
    :try_end_219
    .catch Ljava/lang/Exception; {:try_start_214 .. :try_end_219} :catch_21a

    goto :goto_21f

    :catch_21a
    move-exception v0

    move v13, v6

    move v4, v7

    goto/16 :goto_382

    :cond_21f
    :goto_21f
    :try_start_21f
    iget-object v0, v9, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget-object v0, v0, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    move-object v5, v0

    iget-object v0, v8, Landroid/view/SurfaceView;->mScreenRect:Landroid/graphics/Rect;

    iget v1, v5, Landroid/graphics/Rect;->left:I

    iget v2, v5, Landroid/graphics/Rect;->top:I

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Rect;->offset(II)V

    new-instance v0, Landroid/view/SurfaceControl$Transaction;

    invoke-direct {v0}, Landroid/view/SurfaceControl$Transaction;-><init>()V
    :try_end_232
    .catch Ljava/lang/Exception; {:try_start_21f .. :try_end_232} :catch_37f

    move-object v4, v0

    if-eqz v7, :cond_25d

    :try_start_235
    invoke-direct/range {p0 .. p0}, Landroid/view/SurfaceView;->updateOpaqueFlag()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SurfaceView["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v9}, Landroid/view/ViewRootImpl;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v8, v9, v0, v4}, Landroid/view/SurfaceView;->createBlastSurfaceControls(Landroid/view/ViewRootImpl;Ljava/lang/String;Landroid/view/SurfaceControl$Transaction;)V
    :try_end_25c
    .catch Ljava/lang/Exception; {:try_start_235 .. :try_end_25c} :catch_21a

    goto :goto_262

    :cond_25d
    :try_start_25d
    iget-object v0, v8, Landroid/view/SurfaceView;->mSurfaceControl:Landroid/view/SurfaceControl;
    :try_end_25f
    .catch Ljava/lang/Exception; {:try_start_25d .. :try_end_25f} :catch_37f

    if-nez v0, :cond_262

    return-void

    :cond_262
    :goto_262
    nop

    if-nez v6, :cond_274

    if-nez v7, :cond_274

    if-nez v23, :cond_274

    :try_start_269
    iget-boolean v0, v8, Landroid/view/SurfaceView;->mVisible:Z

    if-eqz v0, :cond_272

    iget-boolean v0, v8, Landroid/view/SurfaceView;->mDrawFinished:Z

    if-nez v0, :cond_272

    goto :goto_274

    :cond_272
    move v0, v10

    goto :goto_275

    :cond_274
    :goto_274
    move v0, v13

    :goto_275
    move/from16 v24, v0

    if-eqz v24, :cond_287

    invoke-virtual {v9}, Landroid/view/ViewRootImpl;->wasRelayoutRequested()Z

    move-result v0

    if-eqz v0, :cond_287

    invoke-virtual {v9}, Landroid/view/ViewRootImpl;->isInLocalSync()Z

    move-result v0

    if-eqz v0, :cond_287

    move v0, v13

    goto :goto_288

    :cond_287
    move v0, v10

    :goto_288
    move/from16 v25, v0

    const/4 v0, 0x0

    if-eqz v25, :cond_2a3

    new-instance v1, Landroid/view/SurfaceView$SyncBufferTransactionCallback;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Landroid/view/SurfaceView$SyncBufferTransactionCallback;-><init>(Landroid/view/SurfaceView$SyncBufferTransactionCallback-IA;)V

    move-object v0, v1

    iget-object v1, v8, Landroid/view/SurfaceView;->mBlastBufferQueue:Landroid/graphics/BLASTBufferQueue;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Landroid/view/SurfaceView$$ExternalSyntheticLambda7;

    invoke-direct {v2, v0}, Landroid/view/SurfaceView$$ExternalSyntheticLambda7;-><init>(Landroid/view/SurfaceView$SyncBufferTransactionCallback;)V

    invoke-virtual {v1, v10, v2}, Landroid/graphics/BLASTBufferQueue;->syncNextTransaction(ZLjava/util/function/Consumer;)V
    :try_end_2a1
    .catch Ljava/lang/Exception; {:try_start_269 .. :try_end_2a1} :catch_21a

    move-object v3, v0

    goto :goto_2a4

    :cond_2a3
    move-object v3, v0

    :goto_2a4
    move-object/from16 v1, p0

    move-object v2, v9

    move-object/from16 v26, v3

    move-object v3, v11

    move-object/from16 v27, v4

    move v4, v7

    move-object/from16 v28, v5

    move v5, v6

    move v13, v6

    move/from16 v6, v23

    move/from16 v29, v7

    move-object/from16 v7, v27

    :try_start_2b7
    invoke-direct/range {v1 .. v7}, Landroid/view/SurfaceView;->performSurfaceTransaction(Landroid/view/ViewRootImpl;Landroid/content/res/CompatibilityInfo$Translator;ZZZLandroid/view/SurfaceControl$Transaction;)Z

    move-result v1
    :try_end_2bb
    .catch Ljava/lang/Exception; {:try_start_2b7 .. :try_end_2bb} :catch_37b

    const/4 v2, 0x0

    move/from16 v3, v29

    :try_start_2be
    iget-boolean v4, v8, Landroid/view/SurfaceView;->mSurfaceCreated:Z
    :try_end_2c0
    .catchall {:try_start_2be .. :try_end_2c0} :catchall_363

    if-eqz v4, :cond_2d7

    if-nez v3, :cond_2ca

    :try_start_2c4
    iget-boolean v4, v8, Landroid/view/SurfaceView;->mVisible:Z

    if-nez v4, :cond_2d7

    if-eqz v18, :cond_2d7

    :cond_2ca
    iput-boolean v10, v8, Landroid/view/SurfaceView;->mSurfaceCreated:Z

    invoke-direct/range {p0 .. p0}, Landroid/view/SurfaceView;->notifySurfaceDestroyed()V
    :try_end_2cf
    .catchall {:try_start_2c4 .. :try_end_2cf} :catchall_2d0

    goto :goto_2d7

    :catchall_2d0
    move-exception v0

    move-object/from16 v5, v26

    move/from16 v4, v29

    goto/16 :goto_368

    :cond_2d7
    :goto_2d7
    move/from16 v4, v29

    :try_start_2d9
    invoke-direct {v8, v4, v13}, Landroid/view/SurfaceView;->copySurface(ZZ)V

    iget-boolean v5, v8, Landroid/view/SurfaceView;->mVisible:Z

    if-eqz v5, :cond_34d

    iget-object v5, v8, Landroid/view/SurfaceView;->mSurface:Landroid/view/Surface;

    invoke-virtual {v5}, Landroid/view/Surface;->isValid()Z

    move-result v5

    if-eqz v5, :cond_34d

    iget-boolean v5, v8, Landroid/view/SurfaceView;->mSurfaceCreated:Z
    :try_end_2ea
    .catchall {:try_start_2d9 .. :try_end_2ea} :catchall_35f

    if-nez v5, :cond_30d

    if-nez v3, :cond_2f0

    if-eqz v18, :cond_30d

    :cond_2f0
    const/4 v0, 0x1

    :try_start_2f1
    iput-boolean v0, v8, Landroid/view/SurfaceView;->mSurfaceCreated:Z

    iput-boolean v0, v8, Landroid/view/SurfaceView;->mIsCreating:Z

    invoke-direct/range {p0 .. p0}, Landroid/view/SurfaceView;->getSurfaceCallbacks()[Landroid/view/SurfaceHolder$Callback;

    move-result-object v0

    move-object v2, v0

    array-length v0, v2

    move v5, v10

    :goto_2fc
    if-ge v5, v0, :cond_30d

    aget-object v6, v2, v5

    iget-object v7, v8, Landroid/view/SurfaceView;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    invoke-interface {v6, v7}, Landroid/view/SurfaceHolder$Callback;->surfaceCreated(Landroid/view/SurfaceHolder;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_2fc

    :catchall_308
    move-exception v0

    move-object/from16 v5, v26

    goto/16 :goto_368

    :cond_30d
    if-nez v4, :cond_319

    if-nez v17, :cond_319

    if-nez v13, :cond_319

    if-nez v23, :cond_319

    if-nez v18, :cond_319

    if-eqz v1, :cond_331

    :cond_319
    if-nez v2, :cond_320

    invoke-direct/range {p0 .. p0}, Landroid/view/SurfaceView;->getSurfaceCallbacks()[Landroid/view/SurfaceHolder$Callback;

    move-result-object v0
    :try_end_31f
    .catchall {:try_start_2f1 .. :try_end_31f} :catchall_308

    move-object v2, v0

    :cond_320
    :try_start_320
    array-length v0, v2
    :try_end_321
    .catchall {:try_start_320 .. :try_end_321} :catchall_35f

    move v5, v10

    :goto_322
    if-ge v5, v0, :cond_331

    :try_start_324
    aget-object v6, v2, v5

    iget-object v7, v8, Landroid/view/SurfaceView;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    iget v10, v8, Landroid/view/SurfaceView;->mFormat:I

    invoke-interface {v6, v7, v10, v14, v15}, Landroid/view/SurfaceHolder$Callback;->surfaceChanged(Landroid/view/SurfaceHolder;III)V

    add-int/lit8 v5, v5, 0x1

    const/4 v10, 0x0

    goto :goto_322

    :cond_331
    if-eqz v24, :cond_34a

    if-nez v2, :cond_33a

    invoke-direct/range {p0 .. p0}, Landroid/view/SurfaceView;->getSurfaceCallbacks()[Landroid/view/SurfaceHolder$Callback;

    move-result-object v0
    :try_end_339
    .catchall {:try_start_324 .. :try_end_339} :catchall_308

    move-object v2, v0

    :cond_33a
    if-eqz v25, :cond_342

    move-object/from16 v5, v26

    :try_start_33e
    invoke-direct {v8, v2, v5}, Landroid/view/SurfaceView;->handleSyncBufferCallback([Landroid/view/SurfaceHolder$Callback;Landroid/view/SurfaceView$SyncBufferTransactionCallback;)V

    goto :goto_34f

    :cond_342
    move-object/from16 v5, v26

    invoke-direct {v8, v2}, Landroid/view/SurfaceView;->handleSyncNoBuffer([Landroid/view/SurfaceHolder$Callback;)V
    :try_end_347
    .catchall {:try_start_33e .. :try_end_347} :catchall_348

    goto :goto_34f

    :catchall_348
    move-exception v0

    goto :goto_368

    :cond_34a
    move-object/from16 v5, v26

    goto :goto_34f

    :cond_34d
    move-object/from16 v5, v26

    :goto_34f
    const/4 v2, 0x0

    :try_start_350
    iput-boolean v2, v8, Landroid/view/SurfaceView;->mIsCreating:Z

    iget-object v0, v8, Landroid/view/SurfaceView;->mSurfaceControl:Landroid/view/SurfaceControl;

    if-eqz v0, :cond_35e

    iget-boolean v0, v8, Landroid/view/SurfaceView;->mSurfaceCreated:Z

    if-nez v0, :cond_35e

    const/4 v2, 0x0

    invoke-direct {v8, v2}, Landroid/view/SurfaceView;->releaseSurfaces(Z)V

    :cond_35e
    goto :goto_387

    :catchall_35f
    move-exception v0

    move-object/from16 v5, v26

    goto :goto_368

    :catchall_363
    move-exception v0

    move-object/from16 v5, v26

    move/from16 v4, v29

    :goto_368
    const/4 v2, 0x0

    iput-boolean v2, v8, Landroid/view/SurfaceView;->mIsCreating:Z

    iget-object v2, v8, Landroid/view/SurfaceView;->mSurfaceControl:Landroid/view/SurfaceControl;

    if-eqz v2, :cond_377

    iget-boolean v2, v8, Landroid/view/SurfaceView;->mSurfaceCreated:Z

    if-nez v2, :cond_377

    const/4 v2, 0x0

    invoke-direct {v8, v2}, Landroid/view/SurfaceView;->releaseSurfaces(Z)V

    :cond_377
    nop

    throw v0
    :try_end_379
    .catch Ljava/lang/Exception; {:try_start_350 .. :try_end_379} :catch_379

    :catch_379
    move-exception v0

    goto :goto_382

    :catch_37b
    move-exception v0

    move/from16 v4, v29

    goto :goto_382

    :catch_37f
    move-exception v0

    move v13, v6

    move v4, v7

    :goto_382
    const-string v1, "Exception configuring surface"

    invoke-static {v12, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_387
    return-void

    :cond_388
    :goto_388
    invoke-direct/range {p0 .. p0}, Landroid/view/SurfaceView;->notifySurfaceDestroyed()V

    const/4 v1, 0x0

    invoke-direct {v8, v1}, Landroid/view/SurfaceView;->releaseSurfaces(Z)V

    return-void
.end method

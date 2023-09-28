# classes3.dex

.class public final Landroid/view/ViewRootImpl;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/ViewParent;
.implements Landroid/view/View$AttachInfo$Callbacks;
.implements Landroid/view/ThreadedRenderer$DrawCallbacks;
.implements Landroid/view/AttachedSurfaceControl;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/ViewRootImpl$IDragEndInformation;,
        Landroid/view/ViewRootImpl$UnhandledKeyManager;,
        Landroid/view/ViewRootImpl$SendWindowContentChangedAccessibilityEvent;,
        Landroid/view/ViewRootImpl$AccessibilityInteractionConnection;,
        Landroid/view/ViewRootImpl$HighContrastTextManager;,
        Landroid/view/ViewRootImpl$AccessibilityInteractionConnectionManager;,
        Landroid/view/ViewRootImpl$CalledFromWrongThreadException;,
        Landroid/view/ViewRootImpl$W;,
        Landroid/view/ViewRootImpl$TakenSurfaceHolder;,
        Landroid/view/ViewRootImpl$InvalidateOnAnimationRunnable;,
        Landroid/view/ViewRootImpl$ConsumeBatchedInputImmediatelyRunnable;,
        Landroid/view/ViewRootImpl$ConsumeBatchedInputRunnable;,
        Landroid/view/ViewRootImpl$InputMetricsListener;,
        Landroid/view/ViewRootImpl$WindowInputEventReceiver;,
        Landroid/view/ViewRootImpl$TraversalRunnable;,
        Landroid/view/ViewRootImpl$QueuedInputEvent;,
        Landroid/view/ViewRootImpl$GfxInfo;,
        Landroid/view/ViewRootImpl$SyntheticKeyboardHandler;,
        Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;,
        Landroid/view/ViewRootImpl$SyntheticJoystickHandler;,
        Landroid/view/ViewRootImpl$TrackballAxis;,
        Landroid/view/ViewRootImpl$SyntheticTrackballHandler;,
        Landroid/view/ViewRootImpl$SyntheticInputStage;,
        Landroid/view/ViewRootImpl$ViewPostImeInputStage;,
        Landroid/view/ViewRootImpl$NativePostImeInputStage;,
        Landroid/view/ViewRootImpl$EarlyPostImeInputStage;,
        Landroid/view/ViewRootImpl$ImeInputStage;,
        Landroid/view/ViewRootImpl$ViewPreImeInputStage;,
        Landroid/view/ViewRootImpl$NativePreImeInputStage;,
        Landroid/view/ViewRootImpl$AsyncInputStage;,
        Landroid/view/ViewRootImpl$InputStage;,
        Landroid/view/ViewRootImpl$ViewRootHandler;,
        Landroid/view/ViewRootImpl$SurfaceChangedCallback;,
        Landroid/view/ViewRootImpl$CastProjectionCallback;,
        Landroid/view/ViewRootImpl$SystemUiVisibilityInfo;,
        Landroid/view/ViewRootImpl$ActivityConfigCallback;,
        Landroid/view/ViewRootImpl$ConfigChangedCallback;
    }
.end annotation


# static fields
.field public static final CAPTION_ON_SHELL:Z

.field private static final CONTENT_CAPTURE_ENABLED_FALSE:I = 0x2

.field private static final CONTENT_CAPTURE_ENABLED_NOT_CHECKED:I = 0x0

.field private static final CONTENT_CAPTURE_ENABLED_TRUE:I = 0x1

.field private static final DBG:Z = false

.field private static final DEBUG_BLAST:Z = false

.field private static final DEBUG_CONFIGURATION:Z = false

.field private static final DEBUG_CONTENT_CAPTURE:Z = false

.field private static final DEBUG_DIALOG:Z = false

.field private static final DEBUG_DRAW:Z = false

.field private static final DEBUG_FPS:Z = false

.field private static final DEBUG_IMF:Z = false

.field private static final DEBUG_INPUT_RESIZE:Z = false

.field private static final DEBUG_INPUT_STAGES:Z = false

.field private static final DEBUG_KEEP_SCREEN_ON:Z = false

.field private static final DEBUG_LAYOUT:Z = false

.field private static final DEBUG_ORIENTATION:Z = false

.field private static final DEBUG_SCROLL_CAPTURE:Z = false

.field private static final DEBUG_TRACKBALL:Z = false

.field private static final ENABLE_INPUT_LATENCY_TRACKING:Z = true

.field private static final KEEP_CLEAR_AREA_REPORT_RATE_MILLIS:I = 0x64

.field public static final LOCAL_LAYOUT:Z

.field private static final LOCAL_LOGV:Z = false

.field private static final MAX_QUEUED_INPUT_EVENT_POOL_SIZE:I = 0xa

.field static final MAX_TRACKBALL_DELAY:I = 0xfa

.field private static final MSG_CAST_MODE:I = 0x3e8

.field private static final MSG_CHECK_FOCUS:I = 0xd

.field private static final MSG_CLEAR_ACCESSIBILITY_FOCUS_HOST:I = 0x15

.field private static final MSG_CLOSE_SYSTEM_DIALOGS:I = 0xe

.field private static final MSG_DIE:I = 0x3

.field private static final MSG_DISPATCH_APP_VISIBILITY:I = 0x8

.field private static final MSG_DISPATCH_DRAG_EVENT:I = 0xf

.field private static final MSG_DISPATCH_DRAG_LOCATION_EVENT:I = 0x10

.field private static final MSG_DISPATCH_GET_NEW_SURFACE:I = 0x9

.field private static final MSG_DISPATCH_INPUT_EVENT:I = 0x7

.field private static final MSG_DISPATCH_KEY_FROM_AUTOFILL:I = 0xc

.field private static final MSG_DISPATCH_KEY_FROM_IME:I = 0xb

.field private static final MSG_DISPATCH_SYSTEM_UI_VISIBILITY:I = 0x11

.field private static final MSG_DISPATCH_WINDOW_SHOWN:I = 0x19

.field private static final MSG_FREEFORMSTACK_MODE:I = 0x3ea

.field private static final MSG_FREEFORM_DRAG_AREA:I = 0x3eb

.field private static final MSG_HIDE_INSETS:I = 0x20

.field private static final MSG_INSETS_CONTROL_CHANGED:I = 0x1d

.field private static final MSG_INVALIDATE:I = 0x1

.field private static final MSG_INVALIDATE_RECT:I = 0x2

.field private static final MSG_INVALIDATE_WORLD:I = 0x16

.field private static final MSG_KEEP_CLEAR_RECTS_CHANGED:I = 0x23

.field private static final MSG_POINTER_CAPTURE_CHANGED:I = 0x1c

.field private static final MSG_PROCESS_INPUT_EVENTS:I = 0x13

.field private static final MSG_PROJECTTION_MODE:I = 0x3e9

.field private static final MSG_REPORT_KEEP_CLEAR_RECTS:I = 0x24

.field private static final MSG_REQUEST_KEYBOARD_SHORTCUTS:I = 0x1a

.field private static final MSG_REQUEST_SCROLL_CAPTURE:I = 0x21

.field private static final MSG_RESIZED:I = 0x4

.field private static final MSG_RESIZED_REPORT:I = 0x5

.field private static final MSG_SHOW_INSETS:I = 0x1f

.field private static final MSG_SYNTHESIZE_INPUT_EVENT:I = 0x18

.field private static final MSG_SYSTEM_GESTURE_EXCLUSION_CHANGED:I = 0x1e

.field private static final MSG_UPDATE_CONFIGURATION:I = 0x12

.field private static final MSG_UPDATE_POINTER_ICON:I = 0x1b

.field private static final MSG_WINDOW_FOCUS_CHANGED:I = 0x6

.field private static final MSG_WINDOW_MOVED:I = 0x17

.field private static final MSG_WINDOW_TOUCH_MODE_CHANGED:I = 0x22

.field private static final MT_RENDERER_AVAILABLE:Z = true

.field private static final PROPERTY_PROFILE_RENDERING:Ljava/lang/String; = "viewroot.profile_rendering"

.field private static final SCROLL_CAPTURE_REQUEST_TIMEOUT_MILLIS:I = 0x9c4

.field private static final TAG:Ljava/lang/String; = "ViewRootImpl"

.field private static final UNSET_SYNC_ID:I = -0x1

.field public static final USE_FIREST_FRAME_ACCELERATES:Z

.field private static final mCastProjectionCallbacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/ViewRootImpl$CastProjectionCallback;",
            ">;"
        }
    .end annotation
.end field

.field static final mResizeInterpolator:Landroid/view/animation/Interpolator;

.field private static sAlwaysAssignFocus:Z

.field private static volatile sAnrReported:Z

.field private static sCompatibilityDone:Z

.field private static final sConfigCallbacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/ViewRootImpl$ConfigChangedCallback;",
            ">;"
        }
    .end annotation
.end field

.field static sDrawLockPoked:Z

.field static sFirstDrawComplete:Z

.field static final sFirstDrawHandlers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field static sLastNewDisplayState:I

.field static sLastOldDisplayState:I

.field static final sRunQueues:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Landroid/view/HandlerActionQueue;",
            ">;"
        }
    .end annotation
.end field

.field static sTransactionHangCallback:Landroid/graphics/BLASTBufferQueue$TransactionHangCallback;


# instance fields
.field private mAccessibilityEmbeddedConnection:Landroid/view/accessibility/IAccessibilityEmbeddedConnection;

.field mAccessibilityFocusedHost:Landroid/view/View;

.field mAccessibilityFocusedVirtualView:Landroid/view/accessibility/AccessibilityNodeInfo;

.field final mAccessibilityInteractionConnectionManager:Landroid/view/ViewRootImpl$AccessibilityInteractionConnectionManager;

.field mAccessibilityInteractionController:Landroid/view/AccessibilityInteractionController;

.field final mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

.field private mActivityConfigCallback:Landroid/view/ViewRootImpl$ActivityConfigCallback;

.field private mActivityRelaunched:Z

.field mAdded:Z

.field mAddedTouchMode:Z

.field private mAppVisibilityChanged:Z

.field mAppVisible:Z

.field mApplyInsetsRequested:Z

.field final mAttachInfo:Landroid/view/View$AttachInfo;

.field mAudioManager:Landroid/media/AudioManager;

.field final mBasePackageName:Ljava/lang/String;

.field private mBlastBufferQueue:Landroid/graphics/BLASTBufferQueue;

.field private final mBlurRegionAggregator:Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable$Aggregator;

.field private mBoundsLayer:Landroid/view/SurfaceControl;

.field private mCanvasOffsetX:I

.field private mCanvasOffsetY:I

.field final mChoreographer:Landroid/view/Choreographer;

.field mClientWindowLayoutFlags:I

.field private mCompatOnBackInvokedCallback:Landroid/window/CompatOnBackInvokedCallback;

.field final mCompatibleVisibilityInfo:Landroid/view/ViewRootImpl$SystemUiVisibilityInfo;

.field final mConsumeBatchedInputImmediatelyRunnable:Landroid/view/ViewRootImpl$ConsumeBatchedInputImmediatelyRunnable;

.field mConsumeBatchedInputImmediatelyScheduled:Z

.field mConsumeBatchedInputScheduled:Z

.field final mConsumedBatchedInputRunnable:Landroid/view/ViewRootImpl$ConsumeBatchedInputRunnable;

.field mContentCaptureEnabled:I

.field public final mContext:Landroid/content/Context;

.field mCurScrollY:I

.field mCurrentDragView:Landroid/view/View;

.field private mCustomPointerIcon:Landroid/view/PointerIcon;

.field private final mDensity:I

.field public mDetectedFlag:I

.field private mDirty:Landroid/graphics/Rect;

.field mDispatchedSystemBarAppearance:I

.field mDispatchedSystemUiVisibility:I

.field mDisplay:Landroid/view/Display;

.field mDisplayDecorationCached:Z

.field private mDisplayInstallOrientation:I

.field private final mDisplayListener:Landroid/hardware/display/DisplayManager$DisplayListener;

.field final mDisplayManager:Landroid/hardware/display/DisplayManager;

.field mDragDescription:Landroid/content/ClipDescription;

.field final mDragPoint:Landroid/graphics/PointF;

.field private mDragResizing:Z

.field mDrawingAllowed:Z

.field private mDynamicBufferInfo:Landroid/view/animation/ChoreographerInjectorStub$DynamicBufferInfoStub;

.field private mDynamicLog:Z

.field mFallbackEventHandler:Landroid/view/FallbackEventHandler;

.field private mFastScrollSoundEffectsEnabled:Z

.field mFirst:Z

.field private mFirstFrame:Z

.field mFirstInputStage:Landroid/view/ViewRootImpl$InputStage;

.field mFirstPostImeInputStage:Landroid/view/ViewRootImpl$InputStage;

.field private mForceDecorViewVisibility:Z

.field private mForceDisableBLAST:Z

.field private mForceNextConfigUpdate:Z

.field mForceNextWindowRelayout:Z

.field private mFpsNumFrames:I

.field private mFpsPrevTime:J

.field private mFpsStartTime:J

.field mFullRedrawNeeded:Z

.field private final mGestureExclusionTracker:Landroid/view/ViewRootRectTracker;

.field mHadWindowFocus:Z

.field private mHandWritingStub:Landroid/view/HandWritingStub;

.field final mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

.field mHandlingLayoutInLayoutRequest:Z

.field private final mHandwritingInitiator:Landroid/view/HandwritingInitiator;

.field mHardwareRendererObserver:Landroid/graphics/HardwareRendererObserver;

.field mHardwareXOffset:I

.field mHardwareYOffset:I

.field private mHasPendingKeepClearAreaChange:Z

.field mHasPendingTransactions:Z

.field mHaveMoveEvent:Z

.field private mHdrBrightRegions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/util/Pair<",
            "Landroid/graphics/RectF;",
            "[F>;>;"
        }
    .end annotation
.end field

.field private mHdrDimRegions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/util/Pair<",
            "Landroid/graphics/RectF;",
            "[F>;>;"
        }
    .end annotation
.end field

.field private mHdrDimmerEnabled:Z

.field private mHdrDimmerSupported:Z

.field mHeight:I

.field final mHighContrastTextManager:Landroid/view/ViewRootImpl$HighContrastTextManager;

.field private final mImeFocusController:Landroid/view/ImeFocusController;

.field private mInLayout:Z

.field private final mInputCompatProcessor:Landroid/view/InputEventCompatProcessor;

.field private final mInputEventAssigner:Landroid/view/InputEventAssigner;

.field protected final mInputEventConsistencyVerifier:Landroid/view/InputEventConsistencyVerifier;

.field private mInputEventReceiver:Landroid/view/ViewRootImpl$WindowInputEventReceiver;

.field mInputQueue:Landroid/view/InputQueue;

.field mInputQueueCallback:Landroid/view/InputQueue$Callback;

.field private final mInsetsController:Landroid/view/InsetsController;

.field final mInvalidateOnAnimationRunnable:Landroid/view/ViewRootImpl$InvalidateOnAnimationRunnable;

.field private mInvalidateRootRequested:Z

.field mIsAmbientMode:Z

.field public mIsAnimating:Z

.field mIsCastMode:Z

.field mIsCastModeRotationChanged:Z

.field mIsCreating:Z

.field mIsDrawing:Z

.field mIsInTraversal:Z

.field mIsProjectionMode:Z

.field private mIsSurfaceOpaque:Z

.field private final mKeepClearRectsTracker:Landroid/view/ViewRootRectTracker;

.field private final mLastConfigurationFromResources:Landroid/content/res/Configuration;

.field final mLastGivenInsets:Landroid/view/ViewTreeObserver$InternalInsetsInfo;

.field mLastInCompatMode:Z

.field private final mLastReportedMergedConfiguration:Landroid/util/MergedConfiguration;

.field mLastScrolledFocus:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private final mLastSurfaceSize:Landroid/graphics/Point;

.field mLastSyncSeqId:I

.field mLastSystemUiVisibility:I

.field private mLastTouchDeviceId:I

.field final mLastTouchPoint:Landroid/graphics/PointF;

.field mLastTouchSource:I

.field private mLastTransformHint:I

.field private mLastWindowInsets:Landroid/view/WindowInsets;

.field mLayoutRequested:Z

.field mLayoutRequesters:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field final mLeashToken:Landroid/os/IBinder;

.field volatile mLocalDragState:Ljava/lang/Object;

.field final mLocation:Landroid/view/WindowLeaked;

.field mLostWindowFocus:Z

.field private mNeedsRendererSetup:Z

.field mNewSurfaceNeeded:Z

.field private final mNoncompatDensity:I

.field private mNumSyncsInProgress:I

.field private mOffsetTimer:Ljava/util/Timer;

.field private final mOnBackInvokedDispatcher:Landroid/window/WindowOnBackInvokedDispatcher;

.field mOrigWindowType:I

.field mOverrideInsetsFrame:Landroid/graphics/Rect;

.field private mParentViewRoot:Landroid/view/ViewRootImpl;

.field mPausedForTransition:Z

.field mPendingAlwaysConsumeSystemBars:Z

.field final mPendingBackDropFrame:Landroid/graphics/Rect;

.field private mPendingDragResizing:Z

.field mPendingInputEventCount:I

.field mPendingInputEventHead:Landroid/view/ViewRootImpl$QueuedInputEvent;

.field mPendingInputEventQueueLengthCounterName:Ljava/lang/String;

.field mPendingInputEventTail:Landroid/view/ViewRootImpl$QueuedInputEvent;

.field private final mPendingMergedConfiguration:Landroid/util/MergedConfiguration;

.field private mPendingTransitions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/animation/LayoutTransition;",
            ">;"
        }
    .end annotation
.end field

.field mPerformContentCapture:Z

.field mPointerCapture:Z

.field private mPointerIconType:I

.field mPreviousTouchableRegion:Landroid/graphics/Region;

.field private mPreviousTransformHint:I

.field final mPreviousTransparentRegion:Landroid/graphics/Region;

.field mProcessInputEventsScheduled:Z

.field private mProfile:Z

.field private mProfileRendering:Z

.field mProjectionModeChanged:Z

.field private mPropDynamicLog:Z

.field private mQueuedInputEventPool:Landroid/view/ViewRootImpl$QueuedInputEvent;

.field private mQueuedInputEventPoolSize:I

.field private mRelayoutBundle:Landroid/os/Bundle;

.field private mRelayoutRequested:Z

.field private mRemoved:Z

.field private mRenderProfiler:Landroid/view/Choreographer$FrameCallback;

.field private mRenderProfilingEnabled:Z

.field mReportNextDraw:Z

.field private mResizeMode:I

.field private mRootScrollCaptureCallbacks:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Landroid/view/ScrollCaptureCallback;",
            ">;"
        }
    .end annotation
.end field

.field private mScreenAntiBurnDimRatio:F

.field private mScreenAntiBurnEnableOffset:Z

.field private mScreenAntiBurnEnabled:Z

.field private mScreenAntiBurnLayout:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mScreenAntiBurnLocation:[I

.field private mScreenAntiBurnMode:I

.field private mScreenAntiBurnTolerance:I

.field private mScrollCaptureRequestTimeout:J

.field mScrollMayChange:Z

.field mScrollY:I

.field mScroller:Landroid/widget/Scroller;

.field mSendWindowContentChangedAccessibilityEvent:Landroid/view/ViewRootImpl$SendWindowContentChangedAccessibilityEvent;

.field mSoftInputMode:I

.field mStartedDragViewForA11y:Landroid/view/View;

.field mStopped:Z

.field private final mSupportHDRAppList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final mSurface:Landroid/view/Surface;

.field private final mSurfaceChangedCallbacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/ViewRootImpl$SurfaceChangedCallback;",
            ">;"
        }
    .end annotation
.end field

.field private final mSurfaceChangedTransaction:Landroid/view/SurfaceControl$Transaction;

.field private final mSurfaceControl:Landroid/view/SurfaceControl;

.field mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

.field mSurfaceHolderCallback:Landroid/view/SurfaceHolder$Callback2;

.field private mSurfaceSequenceId:I

.field private final mSurfaceSession:Landroid/view/SurfaceSession;

.field private final mSurfaceSize:Landroid/graphics/Point;

.field private final mSurfaceSyncer:Landroid/window/SurfaceSyncer;

.field private mSurfaceViewCount:I

.field private mSyncBuffer:Z

.field private mSyncBufferCallback:Landroid/window/SurfaceSyncer$SyncBufferCallback;

.field private mSyncId:I

.field mSyncSeqId:I

.field public final mSyncTarget:Landroid/window/SurfaceSyncer$SyncTarget;

.field mSyntheticInputStage:Landroid/view/ViewRootImpl$InputStage;

.field private mTag:Ljava/lang/String;

.field final mTargetSdkVersion:I

.field private final mTempControls:[Landroid/view/InsetsSourceControl;

.field mTempHashSet:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private final mTempInsets:Landroid/view/InsetsState;

.field private final mTempRect:Landroid/graphics/Rect;

.field final mThread:Ljava/lang/Thread;

.field private final mTmpFrames:Landroid/window/ClientWindowFrames;

.field final mTmpLocation:[I

.field final mTmpValue:Landroid/util/TypedValue;

.field mTouchableRegion:Landroid/graphics/Region;

.field private final mTransaction:Landroid/view/SurfaceControl$Transaction;

.field private mTransformHintListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/AttachedSurfaceControl$OnBufferTransformHintChangedListener;",
            ">;"
        }
    .end annotation
.end field

.field mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

.field final mTransparentRegion:Landroid/graphics/Region;

.field mTraversalBarrier:I

.field final mTraversalRunnable:Landroid/view/ViewRootImpl$TraversalRunnable;

.field public mTraversalScheduled:Z

.field private mTypesHiddenByFlags:I

.field mUnbufferedInputDispatch:Z

.field mUnbufferedInputSource:I

.field private final mUnhandledKeyManager:Landroid/view/ViewRootImpl$UnhandledKeyManager;

.field private final mUnrestrictedKeepClearRectsTracker:Landroid/view/ViewRootRectTracker;

.field mUpcomingInTouchMode:Z

.field mUpcomingWindowFocus:Z

.field private mUseBLASTAdapter:Z

.field private mUseMTRenderer:Z

.field mView:Landroid/view/View;

.field final mViewConfiguration:Landroid/view/ViewConfiguration;

.field public mViewCount:I

.field protected final mViewFrameInfo:Landroid/view/ViewFrameInfo;

.field private mViewLayoutDirectionInitial:I

.field private final mViewRootMonitor:Landroid/os/perfdebug/ViewRootMonitor;

.field mViewVisibility:I

.field private final mVisRect:Landroid/graphics/Rect;

.field mWidth:I

.field mWillDrawSoon:Z

.field final mWinFrame:Landroid/graphics/Rect;

.field final mWindow:Landroid/view/ViewRootImpl$W;

.field public final mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

.field mWindowAttributesChanged:Z

.field final mWindowCallbacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/WindowCallbacks;",
            ">;"
        }
    .end annotation
.end field

.field mWindowDrawCountDown:Ljava/util/concurrent/CountDownLatch;

.field mWindowFocusChanged:Z

.field private final mWindowLayout:Landroid/view/WindowLayout;

.field final mWindowSession:Landroid/view/IWindowSession;


# direct methods
.method static bridge synthetic -$$Nest$fgetmBlastBufferQueue(Landroid/view/ViewRootImpl;)Landroid/graphics/BLASTBufferQueue;
    .registers 1

    iget-object p0, p0, Landroid/view/ViewRootImpl;->mBlastBufferQueue:Landroid/graphics/BLASTBufferQueue;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmDirty(Landroid/view/ViewRootImpl;)Landroid/graphics/Rect;
    .registers 1

    iget-object p0, p0, Landroid/view/ViewRootImpl;->mDirty:Landroid/graphics/Rect;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmHandWritingStub(Landroid/view/ViewRootImpl;)Landroid/view/HandWritingStub;
    .registers 1

    iget-object p0, p0, Landroid/view/ViewRootImpl;->mHandWritingStub:Landroid/view/HandWritingStub;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmHandwritingInitiator(Landroid/view/ViewRootImpl;)Landroid/view/HandwritingInitiator;
    .registers 1

    iget-object p0, p0, Landroid/view/ViewRootImpl;->mHandwritingInitiator:Landroid/view/HandwritingInitiator;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmImeFocusController(Landroid/view/ViewRootImpl;)Landroid/view/ImeFocusController;
    .registers 1

    iget-object p0, p0, Landroid/view/ViewRootImpl;->mImeFocusController:Landroid/view/ImeFocusController;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmInputCompatProcessor(Landroid/view/ViewRootImpl;)Landroid/view/InputEventCompatProcessor;
    .registers 1

    iget-object p0, p0, Landroid/view/ViewRootImpl;->mInputCompatProcessor:Landroid/view/InputEventCompatProcessor;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmInputEventReceiver(Landroid/view/ViewRootImpl;)Landroid/view/ViewRootImpl$WindowInputEventReceiver;
    .registers 1

    iget-object p0, p0, Landroid/view/ViewRootImpl;->mInputEventReceiver:Landroid/view/ViewRootImpl$WindowInputEventReceiver;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmInsetsController(Landroid/view/ViewRootImpl;)Landroid/view/InsetsController;
    .registers 1

    iget-object p0, p0, Landroid/view/ViewRootImpl;->mInsetsController:Landroid/view/InsetsController;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmLastReportedMergedConfiguration(Landroid/view/ViewRootImpl;)Landroid/util/MergedConfiguration;
    .registers 1

    iget-object p0, p0, Landroid/view/ViewRootImpl;->mLastReportedMergedConfiguration:Landroid/util/MergedConfiguration;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmNumSyncsInProgress(Landroid/view/ViewRootImpl;)I
    .registers 1

    iget p0, p0, Landroid/view/ViewRootImpl;->mNumSyncsInProgress:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmPendingMergedConfiguration(Landroid/view/ViewRootImpl;)Landroid/util/MergedConfiguration;
    .registers 1

    iget-object p0, p0, Landroid/view/ViewRootImpl;->mPendingMergedConfiguration:Landroid/util/MergedConfiguration;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmRenderProfiler(Landroid/view/ViewRootImpl;)Landroid/view/Choreographer$FrameCallback;
    .registers 1

    iget-object p0, p0, Landroid/view/ViewRootImpl;->mRenderProfiler:Landroid/view/Choreographer$FrameCallback;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmRenderProfilingEnabled(Landroid/view/ViewRootImpl;)Z
    .registers 1

    iget-boolean p0, p0, Landroid/view/ViewRootImpl;->mRenderProfilingEnabled:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmTag(Landroid/view/ViewRootImpl;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Landroid/view/ViewRootImpl;->mTag:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmTempRect(Landroid/view/ViewRootImpl;)Landroid/graphics/Rect;
    .registers 1

    iget-object p0, p0, Landroid/view/ViewRootImpl;->mTempRect:Landroid/graphics/Rect;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmTmpFrames(Landroid/view/ViewRootImpl;)Landroid/window/ClientWindowFrames;
    .registers 1

    iget-object p0, p0, Landroid/view/ViewRootImpl;->mTmpFrames:Landroid/window/ClientWindowFrames;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmUnhandledKeyManager(Landroid/view/ViewRootImpl;)Landroid/view/ViewRootImpl$UnhandledKeyManager;
    .registers 1

    iget-object p0, p0, Landroid/view/ViewRootImpl;->mUnhandledKeyManager:Landroid/view/ViewRootImpl$UnhandledKeyManager;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmLastTouchDeviceId(Landroid/view/ViewRootImpl;I)V
    .registers 2

    iput p1, p0, Landroid/view/ViewRootImpl;->mLastTouchDeviceId:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmNumSyncsInProgress(Landroid/view/ViewRootImpl;I)V
    .registers 2

    iput p1, p0, Landroid/view/ViewRootImpl;->mNumSyncsInProgress:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmPointerIconType(Landroid/view/ViewRootImpl;I)V
    .registers 2

    iput p1, p0, Landroid/view/ViewRootImpl;->mPointerIconType:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmProfileRendering(Landroid/view/ViewRootImpl;Z)V
    .registers 2

    iput-boolean p1, p0, Landroid/view/ViewRootImpl;->mProfileRendering:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$mcheckForLeavingTouchModeAndConsume(Landroid/view/ViewRootImpl;Landroid/view/KeyEvent;)Z
    .registers 2

    invoke-direct {p0, p1}, Landroid/view/ViewRootImpl;->checkForLeavingTouchModeAndConsume(Landroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mclearLowProfileModeIfNeeded(Landroid/view/ViewRootImpl;IZ)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/view/ViewRootImpl;->clearLowProfileModeIfNeeded(IZ)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mdispatchInsetsControlChanged(Landroid/view/ViewRootImpl;Landroid/view/InsetsState;[Landroid/view/InsetsSourceControl;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/view/ViewRootImpl;->dispatchInsetsControlChanged(Landroid/view/InsetsState;[Landroid/view/InsetsSourceControl;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mdispatchPointerCaptureChanged(Landroid/view/ViewRootImpl;Z)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/view/ViewRootImpl;->dispatchPointerCaptureChanged(Z)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mdispatchResized(Landroid/view/ViewRootImpl;Landroid/window/ClientWindowFrames;ZLandroid/util/MergedConfiguration;Landroid/view/InsetsState;ZZIII)V
    .registers 10

    invoke-direct/range {p0 .. p9}, Landroid/view/ViewRootImpl;->dispatchResized(Landroid/window/ClientWindowFrames;ZLandroid/util/MergedConfiguration;Landroid/view/InsetsState;ZZIII)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mfinishInputEvent(Landroid/view/ViewRootImpl;Landroid/view/ViewRootImpl$QueuedInputEvent;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/view/ViewRootImpl;->finishInputEvent(Landroid/view/ViewRootImpl$QueuedInputEvent;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mgetAutofillManager(Landroid/view/ViewRootImpl;)Landroid/view/autofill/AutofillManager;
    .registers 1

    invoke-direct {p0}, Landroid/view/ViewRootImpl;->getAutofillManager()Landroid/view/autofill/AutofillManager;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mgetCommonPredecessor(Landroid/view/ViewRootImpl;Landroid/view/View;Landroid/view/View;)Landroid/view/View;
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/view/ViewRootImpl;->getCommonPredecessor(Landroid/view/View;Landroid/view/View;)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mhandleDispatchSystemUiVisibilityChanged(Landroid/view/ViewRootImpl;Landroid/view/ViewRootImpl$SystemUiVisibilityInfo;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/view/ViewRootImpl;->handleDispatchSystemUiVisibilityChanged(Landroid/view/ViewRootImpl$SystemUiVisibilityInfo;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mhandleDragEvent(Landroid/view/ViewRootImpl;Landroid/view/DragEvent;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/view/ViewRootImpl;->handleDragEvent(Landroid/view/DragEvent;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mhandlePointerCaptureChanged(Landroid/view/ViewRootImpl;Z)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/view/ViewRootImpl;->handlePointerCaptureChanged(Z)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mhandleResized(Landroid/view/ViewRootImpl;ILcom/android/internal/os/SomeArgs;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/view/ViewRootImpl;->handleResized(ILcom/android/internal/os/SomeArgs;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mhandleWindowFocusChanged(Landroid/view/ViewRootImpl;)V
    .registers 1

    invoke-direct {p0}, Landroid/view/ViewRootImpl;->handleWindowFocusChanged()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mhandleWindowTouchModeChanged(Landroid/view/ViewRootImpl;)V
    .registers 1

    invoke-direct {p0}, Landroid/view/ViewRootImpl;->handleWindowTouchModeChanged()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mhideInsets(Landroid/view/ViewRootImpl;IZ)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/view/ViewRootImpl;->hideInsets(IZ)V

    return-void
.end method

.method static bridge synthetic -$$Nest$misAutofillUiShowing(Landroid/view/ViewRootImpl;)Z
    .registers 1

    invoke-direct {p0}, Landroid/view/ViewRootImpl;->isAutofillUiShowing()Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$misDynamicLog(Landroid/view/ViewRootImpl;)Z
    .registers 1

    invoke-direct {p0}, Landroid/view/ViewRootImpl;->isDynamicLog()Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mmaybeHandleWindowMove(Landroid/view/ViewRootImpl;Landroid/graphics/Rect;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/view/ViewRootImpl;->maybeHandleWindowMove(Landroid/graphics/Rect;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mmaybeUpdateTooltip(Landroid/view/ViewRootImpl;Landroid/view/MotionEvent;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/view/ViewRootImpl;->maybeUpdateTooltip(Landroid/view/MotionEvent;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mperformConfigurationChange(Landroid/view/ViewRootImpl;Landroid/util/MergedConfiguration;ZI)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewRootImpl;->performConfigurationChange(Landroid/util/MergedConfiguration;ZI)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mprofileRendering(Landroid/view/ViewRootImpl;Z)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/view/ViewRootImpl;->profileRendering(Z)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mreadyToSync(Landroid/view/ViewRootImpl;Landroid/window/SurfaceSyncer$SyncBufferCallback;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/view/ViewRootImpl;->readyToSync(Landroid/window/SurfaceSyncer$SyncBufferCallback;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mresetPointerIcon(Landroid/view/ViewRootImpl;Landroid/view/MotionEvent;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/view/ViewRootImpl;->resetPointerIcon(Landroid/view/MotionEvent;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$msetFrame(Landroid/view/ViewRootImpl;Landroid/graphics/Rect;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/view/ViewRootImpl;->setFrame(Landroid/graphics/Rect;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mshowInsets(Landroid/view/ViewRootImpl;IZ)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/view/ViewRootImpl;->showInsets(IZ)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdatePointerIcon(Landroid/view/ViewRootImpl;Landroid/view/MotionEvent;)Z
    .registers 2

    invoke-direct {p0, p1}, Landroid/view/ViewRootImpl;->updatePointerIcon(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$sfgetsAnrReported()Z
    .registers 1

    sget-boolean v0, Landroid/view/ViewRootImpl;->sAnrReported:Z

    return v0
.end method

.method static bridge synthetic -$$Nest$sfputsAnrReported(Z)V
    .registers 1

    sput-boolean p0, Landroid/view/ViewRootImpl;->sAnrReported:Z

    return-void
.end method

.method static constructor <clinit>()V
    .registers 2

    const-string/jumbo v0, "persist.sys.first.frame.accelerates"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Landroid/view/ViewRootImpl;->USE_FIREST_FRAME_ACCELERATES:Z

    nop

    const-string/jumbo v0, "persist.debug.caption_on_shell"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Landroid/view/ViewRootImpl;->CAPTION_ON_SHELL:Z

    nop

    const-string/jumbo v0, "persist.debug.local_layout"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Landroid/view/ViewRootImpl;->LOCAL_LAYOUT:Z

    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Landroid/view/ViewRootImpl;->sRunQueues:Ljava/lang/ThreadLocal;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Landroid/view/ViewRootImpl;->sFirstDrawHandlers:Ljava/util/ArrayList;

    sput-boolean v1, Landroid/view/ViewRootImpl;->sFirstDrawComplete:Z

    sput-boolean v1, Landroid/view/ViewRootImpl;->sDrawLockPoked:Z

    sput v1, Landroid/view/ViewRootImpl;->sLastOldDisplayState:I

    sput v1, Landroid/view/ViewRootImpl;->sLastNewDisplayState:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Landroid/view/ViewRootImpl;->sConfigCallbacks:Ljava/util/ArrayList;

    sput-boolean v1, Landroid/view/ViewRootImpl;->sCompatibilityDone:Z

    new-instance v0, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    sput-object v0, Landroid/view/ViewRootImpl;->mResizeInterpolator:Landroid/view/animation/Interpolator;

    sput-boolean v1, Landroid/view/ViewRootImpl;->sAnrReported:Z

    new-instance v0, Landroid/view/ViewRootImpl$1;

    invoke-direct {v0}, Landroid/view/ViewRootImpl$1;-><init>()V

    sput-object v0, Landroid/view/ViewRootImpl;->sTransactionHangCallback:Landroid/graphics/BLASTBufferQueue$TransactionHangCallback;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Landroid/view/ViewRootImpl;->mCastProjectionCallbacks:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/Display;)V
    .registers 5

    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowSession()Landroid/view/IWindowSession;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v0, v1}, Landroid/view/ViewRootImpl;-><init>(Landroid/content/Context;Landroid/view/Display;Landroid/view/IWindowSession;Z)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/Display;Landroid/view/IWindowSession;)V
    .registers 5

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/view/ViewRootImpl;-><init>(Landroid/content/Context;Landroid/view/Display;Landroid/view/IWindowSession;Z)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/Display;Landroid/view/IWindowSession;Z)V
    .registers 21

    move-object/from16 v9, p0

    move-object/from16 v10, p1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, v9, Landroid/view/ViewRootImpl;->mTransformHintListeners:Ljava/util/ArrayList;

    const/4 v11, 0x0

    iput v11, v9, Landroid/view/ViewRootImpl;->mPreviousTransformHint:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, v9, Landroid/view/ViewRootImpl;->mWindowCallbacks:Ljava/util/ArrayList;

    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, v9, Landroid/view/ViewRootImpl;->mTmpLocation:[I

    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    iput-object v0, v9, Landroid/view/ViewRootImpl;->mTmpValue:Landroid/util/TypedValue;

    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v0}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    iput-object v0, v9, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    const/4 v12, 0x1

    iput-boolean v12, v9, Landroid/view/ViewRootImpl;->mAppVisible:Z

    iput-boolean v11, v9, Landroid/view/ViewRootImpl;->mForceDecorViewVisibility:Z

    const/4 v0, -0x1

    iput v0, v9, Landroid/view/ViewRootImpl;->mOrigWindowType:I

    iput-boolean v11, v9, Landroid/view/ViewRootImpl;->mStopped:Z

    iput-boolean v11, v9, Landroid/view/ViewRootImpl;->mIsAmbientMode:Z

    iput-boolean v11, v9, Landroid/view/ViewRootImpl;->mPausedForTransition:Z

    iput-boolean v11, v9, Landroid/view/ViewRootImpl;->mLastInCompatMode:Z

    iput v0, v9, Landroid/view/ViewRootImpl;->mResizeMode:I

    new-instance v1, Landroid/view/ViewFrameInfo;

    invoke-direct {v1}, Landroid/view/ViewFrameInfo;-><init>()V

    iput-object v1, v9, Landroid/view/ViewRootImpl;->mViewFrameInfo:Landroid/view/ViewFrameInfo;

    new-instance v1, Landroid/view/InputEventAssigner;

    invoke-direct {v1}, Landroid/view/InputEventAssigner;-><init>()V

    iput-object v1, v9, Landroid/view/ViewRootImpl;->mInputEventAssigner:Landroid/view/InputEventAssigner;

    iput-boolean v11, v9, Landroid/view/ViewRootImpl;->mDisplayDecorationCached:Z

    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    iput-object v1, v9, Landroid/view/ViewRootImpl;->mSurfaceSize:Landroid/graphics/Point;

    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    iput-object v1, v9, Landroid/view/ViewRootImpl;->mLastSurfaceSize:Landroid/graphics/Point;

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, v9, Landroid/view/ViewRootImpl;->mVisRect:Landroid/graphics/Rect;

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, v9, Landroid/view/ViewRootImpl;->mTempRect:Landroid/graphics/Rect;

    new-instance v1, Landroid/view/WindowLayout;

    invoke-direct {v1}, Landroid/view/WindowLayout;-><init>()V

    iput-object v1, v9, Landroid/view/ViewRootImpl;->mWindowLayout:Landroid/view/WindowLayout;

    iput-boolean v11, v9, Landroid/view/ViewRootImpl;->mIsProjectionMode:Z

    iput-boolean v11, v9, Landroid/view/ViewRootImpl;->mIsCastMode:Z

    iput-boolean v11, v9, Landroid/view/ViewRootImpl;->mIsCastModeRotationChanged:Z

    iput-boolean v11, v9, Landroid/view/ViewRootImpl;->mProjectionModeChanged:Z

    iput v11, v9, Landroid/view/ViewRootImpl;->mContentCaptureEnabled:I

    iput-boolean v11, v9, Landroid/view/ViewRootImpl;->mSyncBuffer:Z

    iput v11, v9, Landroid/view/ViewRootImpl;->mSyncSeqId:I

    iput v11, v9, Landroid/view/ViewRootImpl;->mLastSyncSeqId:I

    iput v11, v9, Landroid/view/ViewRootImpl;->mUnbufferedInputSource:I

    const-string/jumbo v1, "pq"

    iput-object v1, v9, Landroid/view/ViewRootImpl;->mPendingInputEventQueueLengthCounterName:Ljava/lang/String;

    new-instance v1, Landroid/view/ViewRootImpl$UnhandledKeyManager;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Landroid/view/ViewRootImpl$UnhandledKeyManager;-><init>(Landroid/view/ViewRootImpl$UnhandledKeyManager-IA;)V

    iput-object v1, v9, Landroid/view/ViewRootImpl;->mUnhandledKeyManager:Landroid/view/ViewRootImpl$UnhandledKeyManager;

    iput-boolean v11, v9, Landroid/view/ViewRootImpl;->mWindowAttributesChanged:Z

    new-instance v1, Landroid/view/Surface;

    invoke-direct {v1}, Landroid/view/Surface;-><init>()V

    iput-object v1, v9, Landroid/view/ViewRootImpl;->mSurface:Landroid/view/Surface;

    new-instance v1, Landroid/view/SurfaceControl;

    invoke-direct {v1}, Landroid/view/SurfaceControl;-><init>()V

    iput-object v1, v9, Landroid/view/ViewRootImpl;->mSurfaceControl:Landroid/view/SurfaceControl;

    new-instance v1, Landroid/view/SurfaceControl$Transaction;

    invoke-direct {v1}, Landroid/view/SurfaceControl$Transaction;-><init>()V

    iput-object v1, v9, Landroid/view/ViewRootImpl;->mSurfaceChangedTransaction:Landroid/view/SurfaceControl$Transaction;

    new-instance v1, Landroid/view/SurfaceSession;

    invoke-direct {v1}, Landroid/view/SurfaceSession;-><init>()V

    iput-object v1, v9, Landroid/view/ViewRootImpl;->mSurfaceSession:Landroid/view/SurfaceSession;

    new-instance v1, Landroid/view/SurfaceControl$Transaction;

    invoke-direct {v1}, Landroid/view/SurfaceControl$Transaction;-><init>()V

    iput-object v1, v9, Landroid/view/ViewRootImpl;->mTransaction:Landroid/view/SurfaceControl$Transaction;

    new-instance v1, Landroid/window/ClientWindowFrames;

    invoke-direct {v1}, Landroid/window/ClientWindowFrames;-><init>()V

    iput-object v1, v9, Landroid/view/ViewRootImpl;->mTmpFrames:Landroid/window/ClientWindowFrames;

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, v9, Landroid/view/ViewRootImpl;->mPendingBackDropFrame:Landroid/graphics/Rect;

    new-instance v1, Landroid/view/InsetsState;

    invoke-direct {v1}, Landroid/view/InsetsState;-><init>()V

    iput-object v1, v9, Landroid/view/ViewRootImpl;->mTempInsets:Landroid/view/InsetsState;

    const/16 v1, 0x18

    new-array v1, v1, [Landroid/view/InsetsSourceControl;

    iput-object v1, v9, Landroid/view/ViewRootImpl;->mTempControls:[Landroid/view/InsetsSourceControl;

    new-instance v1, Landroid/view/ViewTreeObserver$InternalInsetsInfo;

    invoke-direct {v1}, Landroid/view/ViewTreeObserver$InternalInsetsInfo;-><init>()V

    iput-object v1, v9, Landroid/view/ViewRootImpl;->mLastGivenInsets:Landroid/view/ViewTreeObserver$InternalInsetsInfo;

    iput v11, v9, Landroid/view/ViewRootImpl;->mTypesHiddenByFlags:I

    new-instance v1, Landroid/content/res/Configuration;

    invoke-direct {v1}, Landroid/content/res/Configuration;-><init>()V

    iput-object v1, v9, Landroid/view/ViewRootImpl;->mLastConfigurationFromResources:Landroid/content/res/Configuration;

    new-instance v1, Landroid/util/MergedConfiguration;

    invoke-direct {v1}, Landroid/util/MergedConfiguration;-><init>()V

    iput-object v1, v9, Landroid/view/ViewRootImpl;->mLastReportedMergedConfiguration:Landroid/util/MergedConfiguration;

    new-instance v1, Landroid/util/MergedConfiguration;

    invoke-direct {v1}, Landroid/util/MergedConfiguration;-><init>()V

    iput-object v1, v9, Landroid/view/ViewRootImpl;->mPendingMergedConfiguration:Landroid/util/MergedConfiguration;

    new-instance v1, Landroid/graphics/PointF;

    invoke-direct {v1}, Landroid/graphics/PointF;-><init>()V

    iput-object v1, v9, Landroid/view/ViewRootImpl;->mDragPoint:Landroid/graphics/PointF;

    new-instance v1, Landroid/graphics/PointF;

    invoke-direct {v1}, Landroid/graphics/PointF;-><init>()V

    iput-object v1, v9, Landroid/view/ViewRootImpl;->mLastTouchPoint:Landroid/graphics/PointF;

    iput-boolean v12, v9, Landroid/view/ViewRootImpl;->mFirstFrame:Z

    const-wide/16 v3, -0x1

    iput-wide v3, v9, Landroid/view/ViewRootImpl;->mFpsStartTime:J

    iput-wide v3, v9, Landroid/view/ViewRootImpl;->mFpsPrevTime:J

    iput v12, v9, Landroid/view/ViewRootImpl;->mPointerIconType:I

    iput-object v2, v9, Landroid/view/ViewRootImpl;->mCustomPointerIcon:Landroid/view/PointerIcon;

    new-instance v1, Landroid/view/ViewRootImpl$AccessibilityInteractionConnectionManager;

    invoke-direct {v1, v9}, Landroid/view/ViewRootImpl$AccessibilityInteractionConnectionManager;-><init>(Landroid/view/ViewRootImpl;)V

    iput-object v1, v9, Landroid/view/ViewRootImpl;->mAccessibilityInteractionConnectionManager:Landroid/view/ViewRootImpl$AccessibilityInteractionConnectionManager;

    iput-boolean v11, v9, Landroid/view/ViewRootImpl;->mInLayout:Z

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v9, Landroid/view/ViewRootImpl;->mLayoutRequesters:Ljava/util/ArrayList;

    iput-boolean v11, v9, Landroid/view/ViewRootImpl;->mHandlingLayoutInLayoutRequest:Z

    iput v11, v9, Landroid/view/ViewRootImpl;->mSurfaceViewCount:I

    invoke-static {}, Landroid/os/perfdebug/ViewRootMonitor;->newViewRootMonitor()Landroid/os/perfdebug/ViewRootMonitor;

    move-result-object v1

    iput-object v1, v9, Landroid/view/ViewRootImpl;->mViewRootMonitor:Landroid/os/perfdebug/ViewRootMonitor;

    nop

    invoke-static {}, Landroid/view/InputEventConsistencyVerifier;->isInstrumentationEnabled()Z

    move-result v1

    if-eqz v1, :cond_12e

    new-instance v1, Landroid/view/InputEventConsistencyVerifier;

    invoke-direct {v1, v9, v11}, Landroid/view/InputEventConsistencyVerifier;-><init>(Ljava/lang/Object;I)V

    goto :goto_12f

    :cond_12e
    move-object v1, v2

    :goto_12f
    iput-object v1, v9, Landroid/view/ViewRootImpl;->mInputEventConsistencyVerifier:Landroid/view/InputEventConsistencyVerifier;

    new-instance v1, Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable$Aggregator;

    invoke-direct {v1, v9}, Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable$Aggregator;-><init>(Landroid/view/ViewRootImpl;)V

    iput-object v1, v9, Landroid/view/ViewRootImpl;->mBlurRegionAggregator:Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable$Aggregator;

    new-instance v1, Landroid/view/ViewRootRectTracker;

    new-instance v3, Landroid/view/ViewRootImpl$$ExternalSyntheticLambda10;

    invoke-direct {v3}, Landroid/view/ViewRootImpl$$ExternalSyntheticLambda10;-><init>()V

    invoke-direct {v1, v3}, Landroid/view/ViewRootRectTracker;-><init>(Ljava/util/function/Function;)V

    iput-object v1, v9, Landroid/view/ViewRootImpl;->mGestureExclusionTracker:Landroid/view/ViewRootRectTracker;

    new-instance v1, Landroid/view/ViewRootRectTracker;

    new-instance v3, Landroid/view/ViewRootImpl$$ExternalSyntheticLambda11;

    invoke-direct {v3}, Landroid/view/ViewRootImpl$$ExternalSyntheticLambda11;-><init>()V

    invoke-direct {v1, v3}, Landroid/view/ViewRootRectTracker;-><init>(Ljava/util/function/Function;)V

    iput-object v1, v9, Landroid/view/ViewRootImpl;->mKeepClearRectsTracker:Landroid/view/ViewRootRectTracker;

    new-instance v1, Landroid/view/ViewRootRectTracker;

    new-instance v3, Landroid/view/ViewRootImpl$$ExternalSyntheticLambda12;

    invoke-direct {v3}, Landroid/view/ViewRootImpl$$ExternalSyntheticLambda12;-><init>()V

    invoke-direct {v1, v3}, Landroid/view/ViewRootRectTracker;-><init>(Ljava/util/function/Function;)V

    iput-object v1, v9, Landroid/view/ViewRootImpl;->mUnrestrictedKeepClearRectsTracker:Landroid/view/ViewRootRectTracker;

    new-instance v1, Landroid/window/SurfaceSyncer;

    invoke-direct {v1}, Landroid/window/SurfaceSyncer;-><init>()V

    iput-object v1, v9, Landroid/view/ViewRootImpl;->mSurfaceSyncer:Landroid/window/SurfaceSyncer;

    iput v0, v9, Landroid/view/ViewRootImpl;->mSyncId:I

    iput v11, v9, Landroid/view/ViewRootImpl;->mNumSyncsInProgress:I

    const-wide/16 v13, 0x9c4

    iput-wide v13, v9, Landroid/view/ViewRootImpl;->mScrollCaptureRequestTimeout:J

    iput v11, v9, Landroid/view/ViewRootImpl;->mSurfaceSequenceId:I

    const/high16 v1, -0x80000000

    iput v1, v9, Landroid/view/ViewRootImpl;->mLastTransformHint:I

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    iput-object v1, v9, Landroid/view/ViewRootImpl;->mRelayoutBundle:Landroid/os/Bundle;

    const-string v15, "ViewRootImpl"

    iput-object v15, v9, Landroid/view/ViewRootImpl;->mTag:Ljava/lang/String;

    iput-boolean v11, v9, Landroid/view/ViewRootImpl;->mHaveMoveEvent:Z

    iput-boolean v11, v9, Landroid/view/ViewRootImpl;->mProfile:Z

    new-instance v1, Landroid/view/ViewRootImpl$3;

    invoke-direct {v1, v9}, Landroid/view/ViewRootImpl$3;-><init>(Landroid/view/ViewRootImpl;)V

    iput-object v1, v9, Landroid/view/ViewRootImpl;->mDisplayListener:Landroid/hardware/display/DisplayManager$DisplayListener;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v9, Landroid/view/ViewRootImpl;->mSurfaceChangedCallbacks:Ljava/util/ArrayList;

    new-instance v6, Landroid/view/ViewRootImpl$ViewRootHandler;

    invoke-direct {v6, v9}, Landroid/view/ViewRootImpl$ViewRootHandler;-><init>(Landroid/view/ViewRootImpl;)V

    iput-object v6, v9, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    new-instance v1, Landroid/view/ViewRootImpl$TraversalRunnable;

    invoke-direct {v1, v9}, Landroid/view/ViewRootImpl$TraversalRunnable;-><init>(Landroid/view/ViewRootImpl;)V

    iput-object v1, v9, Landroid/view/ViewRootImpl;->mTraversalRunnable:Landroid/view/ViewRootImpl$TraversalRunnable;

    new-instance v1, Landroid/view/ViewRootImpl$ConsumeBatchedInputRunnable;

    invoke-direct {v1, v9}, Landroid/view/ViewRootImpl$ConsumeBatchedInputRunnable;-><init>(Landroid/view/ViewRootImpl;)V

    iput-object v1, v9, Landroid/view/ViewRootImpl;->mConsumedBatchedInputRunnable:Landroid/view/ViewRootImpl$ConsumeBatchedInputRunnable;

    new-instance v1, Landroid/view/ViewRootImpl$ConsumeBatchedInputImmediatelyRunnable;

    invoke-direct {v1, v9}, Landroid/view/ViewRootImpl$ConsumeBatchedInputImmediatelyRunnable;-><init>(Landroid/view/ViewRootImpl;)V

    iput-object v1, v9, Landroid/view/ViewRootImpl;->mConsumeBatchedInputImmediatelyRunnable:Landroid/view/ViewRootImpl$ConsumeBatchedInputImmediatelyRunnable;

    new-instance v1, Landroid/view/ViewRootImpl$InvalidateOnAnimationRunnable;

    invoke-direct {v1, v9}, Landroid/view/ViewRootImpl$InvalidateOnAnimationRunnable;-><init>(Landroid/view/ViewRootImpl;)V

    iput-object v1, v9, Landroid/view/ViewRootImpl;->mInvalidateOnAnimationRunnable:Landroid/view/ViewRootImpl$InvalidateOnAnimationRunnable;

    new-instance v1, Landroid/view/ViewRootImpl$9;

    invoke-direct {v1, v9}, Landroid/view/ViewRootImpl$9;-><init>(Landroid/view/ViewRootImpl;)V

    iput-object v1, v9, Landroid/view/ViewRootImpl;->mSyncTarget:Landroid/window/SurfaceSyncer$SyncTarget;

    iput-boolean v11, v9, Landroid/view/ViewRootImpl;->mHdrDimmerSupported:Z

    new-instance v1, Landroid/view/ViewRootImpl$10;

    invoke-direct {v1, v9}, Landroid/view/ViewRootImpl$10;-><init>(Landroid/view/ViewRootImpl;)V

    iput-object v1, v9, Landroid/view/ViewRootImpl;->mSupportHDRAppList:Ljava/util/ArrayList;

    iput-boolean v11, v9, Landroid/view/ViewRootImpl;->mHdrDimmerEnabled:Z

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v9, Landroid/view/ViewRootImpl;->mHdrBrightRegions:Ljava/util/List;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v9, Landroid/view/ViewRootImpl;->mHdrDimRegions:Ljava/util/List;

    iput-boolean v11, v9, Landroid/view/ViewRootImpl;->mDynamicLog:Z

    const-string/jumbo v1, "persist.sys.sf.dynamic.log"

    invoke-static {v1, v11}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, v9, Landroid/view/ViewRootImpl;->mPropDynamicLog:Z

    iput-boolean v11, v9, Landroid/view/ViewRootImpl;->mScreenAntiBurnEnabled:Z

    iput v11, v9, Landroid/view/ViewRootImpl;->mScreenAntiBurnMode:I

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v9, Landroid/view/ViewRootImpl;->mScreenAntiBurnLayout:Ljava/util/ArrayList;

    const/4 v1, 0x3

    new-array v1, v1, [I

    iput-object v1, v9, Landroid/view/ViewRootImpl;->mScreenAntiBurnLocation:[I

    const/16 v1, 0x1e

    iput v1, v9, Landroid/view/ViewRootImpl;->mScreenAntiBurnTolerance:I

    const/high16 v1, 0x3f800000  # 1.0f

    iput v1, v9, Landroid/view/ViewRootImpl;->mScreenAntiBurnDimRatio:F

    iput-boolean v11, v9, Landroid/view/ViewRootImpl;->mScreenAntiBurnEnableOffset:Z

    iput-object v10, v9, Landroid/view/ViewRootImpl;->mContext:Landroid/content/Context;

    move-object/from16 v8, p3

    iput-object v8, v9, Landroid/view/ViewRootImpl;->mWindowSession:Landroid/view/IWindowSession;

    move-object/from16 v7, p2

    iput-object v7, v9, Landroid/view/ViewRootImpl;->mDisplay:Landroid/view/Display;

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getBasePackageName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v9, Landroid/view/ViewRootImpl;->mBasePackageName:Ljava/lang/String;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    iput-object v1, v9, Landroid/view/ViewRootImpl;->mThread:Ljava/lang/Thread;

    new-instance v1, Landroid/view/WindowLeaked;

    invoke-direct {v1, v2}, Landroid/view/WindowLeaked;-><init>(Ljava/lang/String;)V

    iput-object v1, v9, Landroid/view/ViewRootImpl;->mLocation:Landroid/view/WindowLeaked;

    invoke-virtual {v1}, Landroid/view/WindowLeaked;->fillInStackTrace()Ljava/lang/Throwable;

    iput v0, v9, Landroid/view/ViewRootImpl;->mWidth:I

    iput v0, v9, Landroid/view/ViewRootImpl;->mHeight:I

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, v9, Landroid/view/ViewRootImpl;->mDirty:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, v9, Landroid/view/ViewRootImpl;->mWinFrame:Landroid/graphics/Rect;

    new-instance v3, Landroid/view/ViewRootImpl$W;

    invoke-direct {v3, v9}, Landroid/view/ViewRootImpl$W;-><init>(Landroid/view/ViewRootImpl;)V

    iput-object v3, v9, Landroid/view/ViewRootImpl;->mWindow:Landroid/view/ViewRootImpl$W;

    new-instance v0, Landroid/os/Binder;

    invoke-direct {v0}, Landroid/os/Binder;-><init>()V

    iput-object v0, v9, Landroid/view/ViewRootImpl;->mLeashToken:Landroid/os/IBinder;

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    iput v0, v9, Landroid/view/ViewRootImpl;->mTargetSdkVersion:I

    const/16 v0, 0x8

    iput v0, v9, Landroid/view/ViewRootImpl;->mViewVisibility:I

    new-instance v0, Landroid/graphics/Region;

    invoke-direct {v0}, Landroid/graphics/Region;-><init>()V

    iput-object v0, v9, Landroid/view/ViewRootImpl;->mTransparentRegion:Landroid/graphics/Region;

    new-instance v0, Landroid/graphics/Region;

    invoke-direct {v0}, Landroid/graphics/Region;-><init>()V

    iput-object v0, v9, Landroid/view/ViewRootImpl;->mPreviousTransparentRegion:Landroid/graphics/Region;

    iput-boolean v12, v9, Landroid/view/ViewRootImpl;->mFirst:Z

    iput-boolean v12, v9, Landroid/view/ViewRootImpl;->mPerformContentCapture:Z

    iput-boolean v11, v9, Landroid/view/ViewRootImpl;->mAdded:Z

    new-instance v0, Landroid/view/View$AttachInfo;

    move-object v1, v0

    move-object/from16 v2, p3

    move-object/from16 v4, p2

    move-object/from16 v5, p0

    move-object/from16 v7, p0

    move-object/from16 v8, p1

    invoke-direct/range {v1 .. v8}, Landroid/view/View$AttachInfo;-><init>(Landroid/view/IWindowSession;Landroid/view/IWindow;Landroid/view/Display;Landroid/view/ViewRootImpl;Landroid/os/Handler;Landroid/view/View$AttachInfo$Callbacks;Landroid/content/Context;)V

    iput-object v0, v9, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    new-instance v0, Landroid/view/ViewRootImpl$SystemUiVisibilityInfo;

    invoke-direct {v0}, Landroid/view/ViewRootImpl$SystemUiVisibilityInfo;-><init>()V

    iput-object v0, v9, Landroid/view/ViewRootImpl;->mCompatibleVisibilityInfo:Landroid/view/ViewRootImpl$SystemUiVisibilityInfo;

    invoke-static/range {p1 .. p1}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v0

    iput-object v0, v9, Landroid/view/ViewRootImpl;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    new-instance v0, Landroid/view/ViewRootImpl$HighContrastTextManager;

    invoke-direct {v0, v9}, Landroid/view/ViewRootImpl$HighContrastTextManager;-><init>(Landroid/view/ViewRootImpl;)V

    iput-object v0, v9, Landroid/view/ViewRootImpl;->mHighContrastTextManager:Landroid/view/ViewRootImpl$HighContrastTextManager;

    invoke-static/range {p1 .. p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    iput-object v0, v9, Landroid/view/ViewRootImpl;->mViewConfiguration:Landroid/view/ViewConfiguration;

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->densityDpi:I

    iput v1, v9, Landroid/view/ViewRootImpl;->mDensity:I

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->noncompatDensityDpi:I

    iput v1, v9, Landroid/view/ViewRootImpl;->mNoncompatDensity:I

    new-instance v1, Lcom/android/internal/policy/PhoneFallbackEventHandler;

    invoke-direct {v1, v10}, Lcom/android/internal/policy/PhoneFallbackEventHandler;-><init>(Landroid/content/Context;)V

    iput-object v1, v9, Landroid/view/ViewRootImpl;->mFallbackEventHandler:Landroid/view/FallbackEventHandler;

    if-eqz p4, :cond_2a8

    invoke-static {}, Landroid/view/Choreographer;->getSfInstance()Landroid/view/Choreographer;

    move-result-object v1

    goto :goto_2ac

    :cond_2a8
    invoke-static {}, Landroid/view/Choreographer;->getInstance()Landroid/view/Choreographer;

    move-result-object v1

    :goto_2ac
    iput-object v1, v9, Landroid/view/ViewRootImpl;->mChoreographer:Landroid/view/Choreographer;

    const-string v1, "display"

    invoke-virtual {v10, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/display/DisplayManager;

    iput-object v1, v9, Landroid/view/ViewRootImpl;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    new-instance v1, Landroid/view/InsetsController;

    new-instance v2, Landroid/view/ViewRootInsetsControllerHost;

    invoke-direct {v2, v9}, Landroid/view/ViewRootInsetsControllerHost;-><init>(Landroid/view/ViewRootImpl;)V

    invoke-direct {v1, v2}, Landroid/view/InsetsController;-><init>(Landroid/view/InsetsController$Host;)V

    iput-object v1, v9, Landroid/view/ViewRootImpl;->mInsetsController:Landroid/view/InsetsController;

    new-instance v1, Landroid/view/HandwritingInitiator;

    const-class v2, Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {v10, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/inputmethod/InputMethodManager;

    invoke-direct {v1, v0, v2}, Landroid/view/HandwritingInitiator;-><init>(Landroid/view/ViewConfiguration;Landroid/view/inputmethod/InputMethodManager;)V

    iput-object v1, v9, Landroid/view/ViewRootImpl;->mHandwritingInitiator:Landroid/view/HandwritingInitiator;

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x104028d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2ec

    new-instance v0, Landroid/view/InputEventCompatProcessor;

    invoke-direct {v0, v10}, Landroid/view/InputEventCompatProcessor;-><init>(Landroid/content/Context;)V

    iput-object v0, v9, Landroid/view/ViewRootImpl;->mInputCompatProcessor:Landroid/view/InputEventCompatProcessor;

    goto :goto_317

    :cond_2ec
    const/4 v2, 0x0

    nop

    :try_start_2ee
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    new-array v3, v12, [Ljava/lang/Class;

    const-class v4, Landroid/content/Context;

    aput-object v4, v3, v11

    invoke-virtual {v0, v3}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v3

    new-array v4, v12, [Ljava/lang/Object;

    aput-object v10, v4, v11

    invoke-virtual {v3, v4}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/InputEventCompatProcessor;
    :try_end_306
    .catch Ljava/lang/Exception; {:try_start_2ee .. :try_end_306} :catch_30d
    .catchall {:try_start_2ee .. :try_end_306} :catchall_30a

    move-object v0, v3

    iput-object v0, v9, Landroid/view/ViewRootImpl;->mInputCompatProcessor:Landroid/view/InputEventCompatProcessor;

    goto :goto_317

    :catchall_30a
    move-exception v0

    goto/16 :goto_37f

    :catch_30d
    move-exception v0

    :try_start_30e
    const-string v3, "Unable to create the InputEventCompatProcessor. "

    invoke-static {v15, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_313
    .catchall {:try_start_30e .. :try_end_313} :catchall_30a

    nop

    iput-object v2, v9, Landroid/view/ViewRootImpl;->mInputCompatProcessor:Landroid/view/InputEventCompatProcessor;

    nop

    :goto_317
    sget-boolean v0, Landroid/view/ViewRootImpl;->sCompatibilityDone:Z

    if-nez v0, :cond_328

    iget v0, v9, Landroid/view/ViewRootImpl;->mTargetSdkVersion:I

    const/16 v2, 0x1c

    if-ge v0, v2, :cond_323

    move v0, v12

    goto :goto_324

    :cond_323
    move v0, v11

    :goto_324
    sput-boolean v0, Landroid/view/ViewRootImpl;->sAlwaysAssignFocus:Z

    sput-boolean v12, Landroid/view/ViewRootImpl;->sCompatibilityDone:Z

    :cond_328
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewRootImpl;->loadSystemProperties()V

    invoke-static {}, Landroid/view/ForceDarkHelperStub;->getInstance()Landroid/view/ForceDarkHelperStub;

    move-result-object v0

    iget-object v2, v9, Landroid/view/ViewRootImpl;->mContext:Landroid/content/Context;

    invoke-interface {v0, v2}, Landroid/view/ForceDarkHelperStub;->registerAppDarkModeObserver(Landroid/content/Context;)V

    new-instance v0, Landroid/view/ImeFocusController;

    invoke-direct {v0, v9}, Landroid/view/ImeFocusController;-><init>(Landroid/view/ViewRootImpl;)V

    iput-object v0, v9, Landroid/view/ViewRootImpl;->mImeFocusController:Landroid/view/ImeFocusController;

    iget-object v0, v9, Landroid/view/ViewRootImpl;->mContext:Landroid/content/Context;

    const-class v2, Landroid/media/AudioManager;

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->areNavigationRepeatSoundEffectsEnabled()Z

    move-result v2

    iput-boolean v2, v9, Landroid/view/ViewRootImpl;->mFastScrollSoundEffectsEnabled:Z

    iput-wide v13, v9, Landroid/view/ViewRootImpl;->mScrollCaptureRequestTimeout:J

    new-instance v2, Landroid/window/WindowOnBackInvokedDispatcher;

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/pm/ApplicationInfo;->isOnBackInvokedCallbackEnabled()Z

    move-result v3

    invoke-direct {v2, v3}, Landroid/window/WindowOnBackInvokedDispatcher;-><init>(Z)V

    iput-object v2, v9, Landroid/view/ViewRootImpl;->mOnBackInvokedDispatcher:Landroid/window/WindowOnBackInvokedDispatcher;

    invoke-static {}, Landroid/view/HandWritingStub;->newInstance()Landroid/view/HandWritingStub;

    move-result-object v2

    iput-object v2, v9, Landroid/view/ViewRootImpl;->mHandWritingStub:Landroid/view/HandWritingStub;

    nop

    const-string/jumbo v2, "persist.sys.hdr_dimmer_supported"

    invoke-static {v2, v11}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_378

    iget-object v2, v9, Landroid/view/ViewRootImpl;->mSupportHDRAppList:Ljava/util/ArrayList;

    iget-object v3, v9, Landroid/view/ViewRootImpl;->mBasePackageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_378

    move v11, v12

    goto :goto_379

    :cond_378
    nop

    :goto_379
    iput-boolean v11, v9, Landroid/view/ViewRootImpl;->mHdrDimmerSupported:Z

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewRootImpl;->initScreenAntiBurn()V

    return-void

    :goto_37f
    iput-object v2, v9, Landroid/view/ViewRootImpl;->mInputCompatProcessor:Landroid/view/InputEventCompatProcessor;

    throw v0
.end method

.method public static addConfigCallback(Landroid/view/ViewRootImpl$ConfigChangedCallback;)V
    .registers 3

    sget-object v0, Landroid/view/ViewRootImpl;->sConfigCallbacks:Ljava/util/ArrayList;

    monitor-enter v0

    :try_start_3
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    monitor-exit v0

    return-void

    :catchall_8
    move-exception v1

    monitor-exit v0
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_8

    throw v1
.end method

.method public static addFirstDrawHandler(Ljava/lang/Runnable;)V
    .registers 3

    sget-object v0, Landroid/view/ViewRootImpl;->sFirstDrawHandlers:Ljava/util/ArrayList;

    monitor-enter v0

    :try_start_3
    sget-boolean v1, Landroid/view/ViewRootImpl;->sFirstDrawComplete:Z

    if-nez v1, :cond_a

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_a
    monitor-exit v0

    return-void

    :catchall_c
    move-exception v1

    monitor-exit v0
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_c

    throw v1
.end method

.method private addFrameCommitCallbackIfNeeded()V
    .registers 5

    invoke-virtual {p0}, Landroid/view/ViewRootImpl;->isHardwareEnabled()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    :cond_7
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v0, Landroid/view/View$AttachInfo;->mTreeObserver:Landroid/view/ViewTreeObserver;

    invoke-virtual {v0}, Landroid/view/ViewTreeObserver;->captureFrameCommitCallbacks()Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_19

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_19

    const/4 v1, 0x1

    goto :goto_1a

    :cond_19
    const/4 v1, 0x0

    :goto_1a
    if-nez v1, :cond_1d

    return-void

    :cond_1d
    iget-object v2, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v2, v2, Landroid/view/View$AttachInfo;->mThreadedRenderer:Landroid/view/ThreadedRenderer;

    new-instance v3, Landroid/view/ViewRootImpl$$ExternalSyntheticLambda8;

    invoke-direct {v3, p0, v0}, Landroid/view/ViewRootImpl$$ExternalSyntheticLambda8;-><init>(Landroid/view/ViewRootImpl;Ljava/util/ArrayList;)V

    invoke-virtual {v2, v3}, Landroid/view/ThreadedRenderer;->setFrameCommitCallback(Landroid/graphics/HardwareRenderer$FrameCommitCallback;)V

    return-void
.end method

.method private addFrameDroppedCallbackIfNeeded()V
    .registers 2

    iget-object v0, p0, Landroid/view/ViewRootImpl;->mDynamicBufferInfo:Landroid/view/animation/ChoreographerInjectorStub$DynamicBufferInfoStub;

    if-eqz v0, :cond_7

    invoke-interface {v0}, Landroid/view/animation/ChoreographerInjectorStub$DynamicBufferInfoStub;->addFrameDroppedCallbackIfNeeded()V

    :cond_7
    return-void
.end method

.method private addHdrDimmerFramDrawingCallback()V
    .registers 2

    new-instance v0, Landroid/view/ViewRootImpl$$ExternalSyntheticLambda4;

    invoke-direct {v0, p0}, Landroid/view/ViewRootImpl$$ExternalSyntheticLambda4;-><init>(Landroid/view/ViewRootImpl;)V

    invoke-virtual {p0, v0}, Landroid/view/ViewRootImpl;->registerRtFrameCallback(Landroid/graphics/HardwareRenderer$FrameDrawingCallback;)V

    return-void
.end method

.method public static adjustLayoutParamsForCompatibility(Landroid/view/WindowManager$LayoutParams;)V
    .registers 11

    iget v0, p0, Landroid/view/WindowManager$LayoutParams;->systemUiVisibility:I

    iget v1, p0, Landroid/view/WindowManager$LayoutParams;->subtreeSystemUiVisibility:I

    or-int/2addr v0, v1

    iget v1, p0, Landroid/view/WindowManager$LayoutParams;->flags:I

    iget v2, p0, Landroid/view/WindowManager$LayoutParams;->type:I

    iget v3, p0, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    and-int/lit16 v3, v3, 0xf0

    iget v4, p0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    const/high16 v5, 0x4000000

    and-int/2addr v4, v5

    const/16 v6, 0x10

    if-nez v4, :cond_3e

    iget-object v4, p0, Landroid/view/WindowManager$LayoutParams;->insetsFlags:Landroid/view/InsetsFlags;

    const/4 v7, 0x0

    iput v7, v4, Landroid/view/InsetsFlags;->appearance:I

    and-int/lit8 v4, v0, 0x1

    if-eqz v4, :cond_27

    iget-object v4, p0, Landroid/view/WindowManager$LayoutParams;->insetsFlags:Landroid/view/InsetsFlags;

    iget v7, v4, Landroid/view/InsetsFlags;->appearance:I

    or-int/lit8 v7, v7, 0x4

    iput v7, v4, Landroid/view/InsetsFlags;->appearance:I

    :cond_27
    and-int/lit16 v4, v0, 0x2000

    if-eqz v4, :cond_33

    iget-object v4, p0, Landroid/view/WindowManager$LayoutParams;->insetsFlags:Landroid/view/InsetsFlags;

    iget v7, v4, Landroid/view/InsetsFlags;->appearance:I

    or-int/lit8 v7, v7, 0x8

    iput v7, v4, Landroid/view/InsetsFlags;->appearance:I

    :cond_33
    and-int/lit8 v4, v0, 0x10

    if-eqz v4, :cond_3e

    iget-object v4, p0, Landroid/view/WindowManager$LayoutParams;->insetsFlags:Landroid/view/InsetsFlags;

    iget v7, v4, Landroid/view/InsetsFlags;->appearance:I

    or-int/2addr v7, v6

    iput v7, v4, Landroid/view/InsetsFlags;->appearance:I

    :cond_3e
    iget v4, p0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    const/high16 v7, 0x8000000

    and-int/2addr v4, v7

    if-nez v4, :cond_59

    and-int/lit16 v4, v0, 0x1000

    if-nez v4, :cond_54

    and-int/lit16 v4, v1, 0x400

    if-eqz v4, :cond_4e

    goto :goto_54

    :cond_4e
    iget-object v4, p0, Landroid/view/WindowManager$LayoutParams;->insetsFlags:Landroid/view/InsetsFlags;

    const/4 v8, 0x1

    iput v8, v4, Landroid/view/InsetsFlags;->behavior:I

    goto :goto_59

    :cond_54
    :goto_54
    iget-object v4, p0, Landroid/view/WindowManager$LayoutParams;->insetsFlags:Landroid/view/InsetsFlags;

    const/4 v8, 0x2

    iput v8, v4, Landroid/view/InsetsFlags;->behavior:I

    :cond_59
    :goto_59
    iget v4, p0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    const v8, -0x40000001  # -1.9999999f

    and-int/2addr v4, v8

    iput v4, p0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    iget v4, p0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    const/high16 v8, 0x10000000

    and-int/2addr v4, v8

    if-eqz v4, :cond_69

    return-void

    :cond_69
    invoke-virtual {p0}, Landroid/view/WindowManager$LayoutParams;->getFitInsetsTypes()I

    move-result v4

    invoke-virtual {p0}, Landroid/view/WindowManager$LayoutParams;->isFitInsetsIgnoringVisibility()Z

    move-result v8

    and-int/lit16 v9, v0, 0x400

    if-nez v9, :cond_7c

    and-int/lit16 v9, v1, 0x100

    if-nez v9, :cond_7c

    and-int/2addr v5, v1

    if-eqz v5, :cond_82

    :cond_7c
    invoke-static {}, Landroid/view/WindowInsets$Type;->statusBars()I

    move-result v5

    not-int v5, v5

    and-int/2addr v4, v5

    :cond_82
    and-int/lit16 v5, v0, 0x200

    if-nez v5, :cond_8a

    and-int v5, v1, v7

    if-eqz v5, :cond_90

    :cond_8a
    invoke-static {}, Landroid/view/WindowInsets$Type;->systemBars()I

    move-result v5

    not-int v5, v5

    and-int/2addr v4, v5

    :cond_90
    const/16 v5, 0x7d5

    if-eq v2, v5, :cond_b4

    const/16 v5, 0x7d3

    if-ne v2, v5, :cond_99

    goto :goto_b4

    :cond_99
    invoke-static {}, Landroid/view/WindowInsets$Type;->systemBars()I

    move-result v5

    and-int/2addr v5, v4

    invoke-static {}, Landroid/view/WindowInsets$Type;->systemBars()I

    move-result v7

    if-ne v5, v7, :cond_b5

    if-ne v3, v6, :cond_ac

    invoke-static {}, Landroid/view/WindowInsets$Type;->ime()I

    move-result v5

    or-int/2addr v4, v5

    goto :goto_b5

    :cond_ac
    iget v5, p0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    const/high16 v6, 0x40000000  # 2.0f

    or-int/2addr v5, v6

    iput v5, p0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    goto :goto_b5

    :cond_b4
    :goto_b4
    const/4 v8, 0x1

    :cond_b5
    :goto_b5
    invoke-virtual {p0, v4}, Landroid/view/WindowManager$LayoutParams;->setFitInsetsTypes(I)V

    invoke-virtual {p0, v8}, Landroid/view/WindowManager$LayoutParams;->setFitInsetsIgnoringVisibility(Z)V

    iget v5, p0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    const v6, -0x10000001

    and-int/2addr v5, v6

    iput v5, p0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    return-void
.end method

.method private static appendGfxInfo(Landroid/view/View;Landroid/view/ViewRootImpl$GfxInfo;)V
    .registers 6

    iget v0, p1, Landroid/view/ViewRootImpl$GfxInfo;->viewCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p1, Landroid/view/ViewRootImpl$GfxInfo;->viewCount:I

    iget-object v0, p0, Landroid/view/View;->mRenderNode:Landroid/graphics/RenderNode;

    invoke-static {v0, p1}, Landroid/view/ViewRootImpl;->computeRenderNodeUsage(Landroid/graphics/RenderNode;Landroid/view/ViewRootImpl$GfxInfo;)V

    iget-object v0, p0, Landroid/view/View;->mBackgroundRenderNode:Landroid/graphics/RenderNode;

    invoke-static {v0, p1}, Landroid/view/ViewRootImpl;->computeRenderNodeUsage(Landroid/graphics/RenderNode;Landroid/view/ViewRootImpl$GfxInfo;)V

    instance-of v0, p0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_28

    move-object v0, p0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    const/4 v2, 0x0

    :goto_1c
    if-ge v2, v1, :cond_28

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-static {v3, p1}, Landroid/view/ViewRootImpl;->appendGfxInfo(Landroid/view/View;Landroid/view/ViewRootImpl$GfxInfo;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1c

    :cond_28
    return-void
.end method

.method private applyKeepScreenOnFlag(Landroid/view/WindowManager$LayoutParams;)V
    .registers 4

    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-boolean v0, v0, Landroid/view/View$AttachInfo;->mKeepScreenOn:Z

    if-eqz v0, :cond_d

    iget v0, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit16 v0, v0, 0x80

    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    goto :goto_18

    :cond_d
    iget v0, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit16 v0, v0, -0x81

    iget v1, p0, Landroid/view/ViewRootImpl;->mClientWindowLayoutFlags:I

    and-int/lit16 v1, v1, 0x80

    or-int/2addr v0, v1

    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    :goto_18
    return-void
.end method

.method private checkForLeavingTouchModeAndConsume(Landroid/view/KeyEvent;)Z
    .registers 5

    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-boolean v0, v0, Landroid/view/View$AttachInfo;->mInTouchMode:Z

    const/4 v1, 0x0

    if-nez v0, :cond_8

    return v1

    :cond_8
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-eqz v0, :cond_12

    const/4 v2, 0x2

    if-eq v0, v2, :cond_12

    return v1

    :cond_12
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getFlags()I

    move-result v2

    and-int/lit8 v2, v2, 0x4

    if-eqz v2, :cond_1b

    return v1

    :cond_1b
    invoke-virtual {p1}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v2

    if-eqz v2, :cond_2c

    invoke-static {p1}, Landroid/view/ViewRootImpl;->isNavigationKey(Landroid/view/KeyEvent;)Z

    move-result v2

    if-eqz v2, :cond_2c

    invoke-virtual {p0, v1}, Landroid/view/ViewRootImpl;->ensureTouchMode(Z)Z

    move-result v1

    return v1

    :cond_2c
    invoke-static {p1}, Landroid/view/ViewRootImpl;->isTypingKey(Landroid/view/KeyEvent;)Z

    move-result v2

    if-eqz v2, :cond_36

    invoke-virtual {p0, v1}, Landroid/view/ViewRootImpl;->ensureTouchMode(Z)Z

    return v1

    :cond_36
    return v1
.end method

.method private clearLowProfileModeIfNeeded(IZ)V
    .registers 5

    iget-object v0, p0, Landroid/view/ViewRootImpl;->mCompatibleVisibilityInfo:Landroid/view/ViewRootImpl$SystemUiVisibilityInfo;

    invoke-static {}, Landroid/view/WindowInsets$Type;->systemBars()I

    move-result v1

    and-int/2addr v1, p1

    if-eqz v1, :cond_20

    if-nez p2, :cond_20

    iget v1, v0, Landroid/view/ViewRootImpl$SystemUiVisibilityInfo;->globalVisibility:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_20

    iget v1, v0, Landroid/view/ViewRootImpl$SystemUiVisibilityInfo;->globalVisibility:I

    and-int/lit8 v1, v1, -0x2

    iput v1, v0, Landroid/view/ViewRootImpl$SystemUiVisibilityInfo;->globalVisibility:I

    iget v1, v0, Landroid/view/ViewRootImpl$SystemUiVisibilityInfo;->localChanges:I

    or-int/lit8 v1, v1, 0x1

    iput v1, v0, Landroid/view/ViewRootImpl$SystemUiVisibilityInfo;->localChanges:I

    invoke-direct {p0, v0}, Landroid/view/ViewRootImpl;->dispatchDispatchSystemUiVisibilityChanged(Landroid/view/ViewRootImpl$SystemUiVisibilityInfo;)V

    :cond_20
    return-void
.end method

.method private collectRootScrollCaptureTargets(Landroid/view/ScrollCaptureSearchResults;)V
    .registers 9

    iget-object v0, p0, Landroid/view/ViewRootImpl;->mRootScrollCaptureCallbacks:Ljava/util/HashSet;

    if-nez v0, :cond_5

    return-void

    :cond_5
    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_9
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_43

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/ScrollCaptureCallback;

    new-instance v2, Landroid/graphics/Point;

    iget-object v3, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    move-result v3

    iget-object v4, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v4

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    new-instance v3, Landroid/graphics/Rect;

    iget-object v4, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v4

    iget-object v5, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getHeight()I

    move-result v5

    const/4 v6, 0x0

    invoke-direct {v3, v6, v6, v4, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v4, Landroid/view/ScrollCaptureTarget;

    iget-object v5, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-direct {v4, v5, v3, v2, v1}, Landroid/view/ScrollCaptureTarget;-><init>(Landroid/view/View;Landroid/graphics/Rect;Landroid/graphics/Point;Landroid/view/ScrollCaptureCallback;)V

    invoke-virtual {p1, v4}, Landroid/view/ScrollCaptureSearchResults;->addTarget(Landroid/view/ScrollCaptureTarget;)V

    goto :goto_9

    :cond_43
    return-void
.end method

.method private collectViewAttributes()Z
    .registers 8

    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-boolean v0, v0, Landroid/view/View$AttachInfo;->mRecomputeGlobalAttributes:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_7e

    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iput-boolean v1, v0, Landroid/view/View$AttachInfo;->mRecomputeGlobalAttributes:Z

    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-boolean v0, v0, Landroid/view/View$AttachInfo;->mKeepScreenOn:Z

    iget-object v2, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iput-boolean v1, v2, Landroid/view/View$AttachInfo;->mKeepScreenOn:Z

    iget-object v2, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iput v1, v2, Landroid/view/View$AttachInfo;->mSystemUiVisibility:I

    iget-object v2, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iput-boolean v1, v2, Landroid/view/View$AttachInfo;->mHasSystemUiListeners:Z

    iget-object v2, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    iget-object v3, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    invoke-virtual {v2, v3, v1}, Landroid/view/View;->dispatchCollectViewAttributes(Landroid/view/View$AttachInfo;I)V

    iget-object v2, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget v3, v2, Landroid/view/View$AttachInfo;->mSystemUiVisibility:I

    iget-object v4, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget v4, v4, Landroid/view/View$AttachInfo;->mDisabledSystemUiVisibility:I

    not-int v4, v4

    and-int/2addr v3, v4

    iput v3, v2, Landroid/view/View$AttachInfo;->mSystemUiVisibility:I

    iget-object v2, p0, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget-object v3, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget v4, v3, Landroid/view/View$AttachInfo;->mSystemUiVisibility:I

    invoke-direct {p0, v2}, Landroid/view/ViewRootImpl;->getImpliedSystemUiVisibility(Landroid/view/WindowManager$LayoutParams;)I

    move-result v5

    or-int/2addr v4, v5

    iput v4, v3, Landroid/view/View$AttachInfo;->mSystemUiVisibility:I

    iget-object v3, p0, Landroid/view/ViewRootImpl;->mCompatibleVisibilityInfo:Landroid/view/ViewRootImpl$SystemUiVisibilityInfo;

    iget v4, v3, Landroid/view/ViewRootImpl$SystemUiVisibilityInfo;->globalVisibility:I

    and-int/lit8 v4, v4, -0x2

    iget-object v5, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget v5, v5, Landroid/view/View$AttachInfo;->mSystemUiVisibility:I

    const/4 v6, 0x1

    and-int/2addr v5, v6

    or-int/2addr v4, v5

    iput v4, v3, Landroid/view/ViewRootImpl$SystemUiVisibilityInfo;->globalVisibility:I

    iget-object v3, p0, Landroid/view/ViewRootImpl;->mCompatibleVisibilityInfo:Landroid/view/ViewRootImpl$SystemUiVisibilityInfo;

    invoke-direct {p0, v3}, Landroid/view/ViewRootImpl;->dispatchDispatchSystemUiVisibilityChanged(Landroid/view/ViewRootImpl$SystemUiVisibilityInfo;)V

    iget-object v3, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-boolean v3, v3, Landroid/view/View$AttachInfo;->mKeepScreenOn:Z

    if-ne v3, v0, :cond_65

    iget-object v3, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget v3, v3, Landroid/view/View$AttachInfo;->mSystemUiVisibility:I

    iget v4, v2, Landroid/view/WindowManager$LayoutParams;->subtreeSystemUiVisibility:I

    if-ne v3, v4, :cond_65

    iget-object v3, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-boolean v3, v3, Landroid/view/View$AttachInfo;->mHasSystemUiListeners:Z

    iget-boolean v4, v2, Landroid/view/WindowManager$LayoutParams;->hasSystemUiListeners:Z

    if-eq v3, v4, :cond_7e

    :cond_65
    invoke-direct {p0, v2}, Landroid/view/ViewRootImpl;->applyKeepScreenOnFlag(Landroid/view/WindowManager$LayoutParams;)V

    iget-object v1, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget v1, v1, Landroid/view/View$AttachInfo;->mSystemUiVisibility:I

    iput v1, v2, Landroid/view/WindowManager$LayoutParams;->subtreeSystemUiVisibility:I

    iget-object v1, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-boolean v1, v1, Landroid/view/View$AttachInfo;->mHasSystemUiListeners:Z

    iput-boolean v1, v2, Landroid/view/WindowManager$LayoutParams;->hasSystemUiListeners:Z

    iget-object v1, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    iget-object v3, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget v3, v3, Landroid/view/View$AttachInfo;->mSystemUiVisibility:I

    invoke-virtual {v1, v3}, Landroid/view/View;->dispatchWindowSystemUiVisiblityChanged(I)V

    return v6

    :cond_7e
    return v1
.end method

.method private static computeRenderNodeUsage(Landroid/graphics/RenderNode;Landroid/view/ViewRootImpl$GfxInfo;)V
    .registers 6

    if-nez p0, :cond_3

    return-void

    :cond_3
    iget-wide v0, p1, Landroid/view/ViewRootImpl$GfxInfo;->renderNodeMemoryUsage:J

    invoke-virtual {p0}, Landroid/graphics/RenderNode;->computeApproximateMemoryUsage()J

    move-result-wide v2

    add-long/2addr v0, v2

    iput-wide v0, p1, Landroid/view/ViewRootImpl$GfxInfo;->renderNodeMemoryUsage:J

    iget-wide v0, p1, Landroid/view/ViewRootImpl$GfxInfo;->renderNodeMemoryAllocated:J

    invoke-virtual {p0}, Landroid/graphics/RenderNode;->computeApproximateMemoryAllocated()J

    move-result-wide v2

    add-long/2addr v0, v2

    iput-wide v0, p1, Landroid/view/ViewRootImpl$GfxInfo;->renderNodeMemoryAllocated:J

    return-void
.end method

.method private controlInsetsForCompatibility(Landroid/view/WindowManager$LayoutParams;)V
    .registers 14

    iget v0, p1, Landroid/view/WindowManager$LayoutParams;->systemUiVisibility:I

    iget v1, p1, Landroid/view/WindowManager$LayoutParams;->subtreeSystemUiVisibility:I

    or-int/2addr v0, v1

    iget v1, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    iget v2, p1, Landroid/view/WindowManager$LayoutParams;->width:I

    const/4 v3, -0x1

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-ne v2, v3, :cond_14

    iget v2, p1, Landroid/view/WindowManager$LayoutParams;->height:I

    if-ne v2, v3, :cond_14

    move v2, v5

    goto :goto_15

    :cond_14
    move v2, v4

    :goto_15
    iget v3, p1, Landroid/view/WindowManager$LayoutParams;->type:I

    if-lt v3, v5, :cond_21

    iget v3, p1, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v6, 0x63

    if-gt v3, v6, :cond_21

    move v3, v5

    goto :goto_22

    :cond_21
    move v3, v4

    :goto_22
    iget v6, p0, Landroid/view/ViewRootImpl;->mTypesHiddenByFlags:I

    invoke-static {}, Landroid/view/WindowInsets$Type;->statusBars()I

    move-result v7

    and-int/2addr v6, v7

    if-eqz v6, :cond_2d

    move v6, v5

    goto :goto_2e

    :cond_2d
    move v6, v4

    :goto_2e
    and-int/lit8 v7, v0, 0x4

    if-nez v7, :cond_3d

    and-int/lit16 v7, v1, 0x400

    if-eqz v7, :cond_3b

    if-eqz v2, :cond_3b

    if-eqz v3, :cond_3b

    goto :goto_3d

    :cond_3b
    move v7, v4

    goto :goto_3e

    :cond_3d
    :goto_3d
    move v7, v5

    :goto_3e
    iget v8, p0, Landroid/view/ViewRootImpl;->mTypesHiddenByFlags:I

    invoke-static {}, Landroid/view/WindowInsets$Type;->navigationBars()I

    move-result v9

    and-int/2addr v8, v9

    if-eqz v8, :cond_49

    move v8, v5

    goto :goto_4a

    :cond_49
    move v8, v4

    :goto_4a
    and-int/lit8 v9, v0, 0x2

    if-eqz v9, :cond_4f

    move v4, v5

    :cond_4f
    const/4 v5, 0x0

    const/4 v9, 0x0

    if-eqz v7, :cond_59

    invoke-static {}, Landroid/view/WindowInsets$Type;->statusBars()I

    move-result v10

    or-int/2addr v5, v10

    goto :goto_62

    :cond_59
    if-nez v7, :cond_62

    if-eqz v6, :cond_62

    invoke-static {}, Landroid/view/WindowInsets$Type;->statusBars()I

    move-result v10

    or-int/2addr v9, v10

    :cond_62
    :goto_62
    if-eqz v4, :cond_6c

    if-nez v8, :cond_6c

    invoke-static {}, Landroid/view/WindowInsets$Type;->navigationBars()I

    move-result v10

    or-int/2addr v5, v10

    goto :goto_75

    :cond_6c
    if-nez v4, :cond_75

    if-eqz v8, :cond_75

    invoke-static {}, Landroid/view/WindowInsets$Type;->navigationBars()I

    move-result v10

    or-int/2addr v9, v10

    :cond_75
    :goto_75
    if-eqz v5, :cond_7e

    invoke-virtual {p0}, Landroid/view/ViewRootImpl;->getInsetsController()Landroid/view/InsetsController;

    move-result-object v10

    invoke-virtual {v10, v5}, Landroid/view/InsetsController;->hide(I)V

    :cond_7e
    if-eqz v9, :cond_87

    invoke-virtual {p0}, Landroid/view/ViewRootImpl;->getInsetsController()Landroid/view/InsetsController;

    move-result-object v10

    invoke-virtual {v10, v9}, Landroid/view/InsetsController;->show(I)V

    :cond_87
    iget v10, p0, Landroid/view/ViewRootImpl;->mTypesHiddenByFlags:I

    or-int/2addr v10, v5

    iput v10, p0, Landroid/view/ViewRootImpl;->mTypesHiddenByFlags:I

    not-int v11, v9

    and-int/2addr v10, v11

    iput v10, p0, Landroid/view/ViewRootImpl;->mTypesHiddenByFlags:I

    return-void
.end method

.method private createSyncIfNeeded()V
    .registers 5

    invoke-virtual {p0}, Landroid/view/ViewRootImpl;->isInLocalSync()Z

    move-result v0

    if-nez v0, :cond_25

    iget-boolean v0, p0, Landroid/view/ViewRootImpl;->mReportNextDraw:Z

    if-nez v0, :cond_b

    goto :goto_25

    :cond_b
    iget v0, p0, Landroid/view/ViewRootImpl;->mSyncSeqId:I

    iget-object v1, p0, Landroid/view/ViewRootImpl;->mSurfaceSyncer:Landroid/window/SurfaceSyncer;

    new-instance v2, Landroid/view/ViewRootImpl$$ExternalSyntheticLambda9;

    invoke-direct {v2, p0, v0}, Landroid/view/ViewRootImpl$$ExternalSyntheticLambda9;-><init>(Landroid/view/ViewRootImpl;I)V

    invoke-virtual {v1, v2}, Landroid/window/SurfaceSyncer;->setupSync(Ljava/util/function/Consumer;)I

    move-result v1

    iput v1, p0, Landroid/view/ViewRootImpl;->mSyncId:I

    iget-object v2, p0, Landroid/view/ViewRootImpl;->mSurfaceSyncer:Landroid/window/SurfaceSyncer;

    iget-object v3, p0, Landroid/view/ViewRootImpl;->mSyncTarget:Landroid/window/SurfaceSyncer$SyncTarget;

    invoke-virtual {v2, v1, v3}, Landroid/window/SurfaceSyncer;->addToSync(ILandroid/window/SurfaceSyncer$SyncTarget;)Z

    invoke-direct {p0}, Landroid/view/ViewRootImpl;->notifySurfaceSyncStarted()V

    return-void

    :cond_25
    :goto_25
    return-void
.end method

.method private deliverInputEvent(Landroid/view/ViewRootImpl$QueuedInputEvent;)V
    .registers 7

    iget-object v0, p1, Landroid/view/ViewRootImpl$QueuedInputEvent;->mEvent:Landroid/view/InputEvent;

    invoke-virtual {v0}, Landroid/view/InputEvent;->getId()I

    move-result v0

    const-wide/16 v1, 0x8

    const-string v3, "deliverInputEvent"

    invoke-static {v1, v2, v3, v0}, Landroid/os/Trace;->asyncTraceBegin(JLjava/lang/String;I)V

    invoke-static {v1, v2}, Landroid/os/Trace;->isTagEnabled(J)Z

    move-result v0

    if-eqz v0, :cond_57

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "deliverInputEvent src=0x"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p1, Landroid/view/ViewRootImpl$QueuedInputEvent;->mEvent:Landroid/view/InputEvent;

    invoke-virtual {v3}, Landroid/view/InputEvent;->getSource()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " eventTimeNano="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p1, Landroid/view/ViewRootImpl$QueuedInputEvent;->mEvent:Landroid/view/InputEvent;

    invoke-virtual {v3}, Landroid/view/InputEvent;->getEventTimeNano()J

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " id=0x"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p1, Landroid/view/ViewRootImpl$QueuedInputEvent;->mEvent:Landroid/view/InputEvent;

    invoke-virtual {v3}, Landroid/view/InputEvent;->getId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    :cond_57
    :try_start_57
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mInputEventConsistencyVerifier:Landroid/view/InputEventConsistencyVerifier;

    if-eqz v0, :cond_73

    const-string/jumbo v0, "verifyEventConsistency"

    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V
    :try_end_61
    .catchall {:try_start_57 .. :try_end_61} :catchall_b7

    :try_start_61
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mInputEventConsistencyVerifier:Landroid/view/InputEventConsistencyVerifier;

    iget-object v3, p1, Landroid/view/ViewRootImpl$QueuedInputEvent;->mEvent:Landroid/view/InputEvent;

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Landroid/view/InputEventConsistencyVerifier;->onInputEvent(Landroid/view/InputEvent;I)V
    :try_end_69
    .catchall {:try_start_61 .. :try_end_69} :catchall_6d

    :try_start_69
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    goto :goto_73

    :catchall_6d
    move-exception v0

    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    nop

    throw v0

    :cond_73
    :goto_73
    invoke-virtual {p1}, Landroid/view/ViewRootImpl$QueuedInputEvent;->shouldSendToSynthesizer()Z

    move-result v0

    if-eqz v0, :cond_7c

    iget-object v0, p0, Landroid/view/ViewRootImpl;->mSyntheticInputStage:Landroid/view/ViewRootImpl$InputStage;

    goto :goto_87

    :cond_7c
    invoke-virtual {p1}, Landroid/view/ViewRootImpl$QueuedInputEvent;->shouldSkipIme()Z

    move-result v0

    if-eqz v0, :cond_85

    iget-object v0, p0, Landroid/view/ViewRootImpl;->mFirstPostImeInputStage:Landroid/view/ViewRootImpl$InputStage;

    goto :goto_87

    :cond_85
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mFirstInputStage:Landroid/view/ViewRootImpl$InputStage;

    :goto_87
    iget-object v3, p1, Landroid/view/ViewRootImpl$QueuedInputEvent;->mEvent:Landroid/view/InputEvent;

    instance-of v3, v3, Landroid/view/KeyEvent;

    if-eqz v3, :cond_a6

    const-string/jumbo v3, "preDispatchToUnhandledKeyManager"

    invoke-static {v1, v2, v3}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V
    :try_end_93
    .catchall {:try_start_69 .. :try_end_93} :catchall_b7

    :try_start_93
    iget-object v3, p0, Landroid/view/ViewRootImpl;->mUnhandledKeyManager:Landroid/view/ViewRootImpl$UnhandledKeyManager;

    iget-object v4, p1, Landroid/view/ViewRootImpl$QueuedInputEvent;->mEvent:Landroid/view/InputEvent;

    check-cast v4, Landroid/view/KeyEvent;

    invoke-virtual {v3, v4}, Landroid/view/ViewRootImpl$UnhandledKeyManager;->preDispatch(Landroid/view/KeyEvent;)V
    :try_end_9c
    .catchall {:try_start_93 .. :try_end_9c} :catchall_a0

    :try_start_9c
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    goto :goto_a6

    :catchall_a0
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    nop

    throw v3

    :cond_a6
    :goto_a6
    if-eqz v0, :cond_af

    invoke-direct {p0}, Landroid/view/ViewRootImpl;->handleWindowFocusChanged()V

    invoke-virtual {v0, p1}, Landroid/view/ViewRootImpl$InputStage;->deliver(Landroid/view/ViewRootImpl$QueuedInputEvent;)V

    goto :goto_b2

    :cond_af
    invoke-direct {p0, p1}, Landroid/view/ViewRootImpl;->finishInputEvent(Landroid/view/ViewRootImpl$QueuedInputEvent;)V
    :try_end_b2
    .catchall {:try_start_9c .. :try_end_b2} :catchall_b7

    :goto_b2
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    nop

    return-void

    :catchall_b7
    move-exception v0

    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    throw v0
.end method

.method private destroyHardwareRenderer()V
    .registers 5

    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v0, Landroid/view/View$AttachInfo;->mThreadedRenderer:Landroid/view/ThreadedRenderer;

    if-eqz v0, :cond_24

    iget-object v1, p0, Landroid/view/ViewRootImpl;->mHardwareRendererObserver:Landroid/graphics/HardwareRendererObserver;

    if-eqz v1, :cond_d

    invoke-virtual {v0, v1}, Landroid/view/ThreadedRenderer;->removeObserver(Landroid/graphics/HardwareRendererObserver;)V

    :cond_d
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    if-eqz v1, :cond_14

    invoke-virtual {v0, v1}, Landroid/view/ThreadedRenderer;->destroyHardwareResources(Landroid/view/View;)V

    :cond_14
    invoke-virtual {v0}, Landroid/view/ThreadedRenderer;->destroy()V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ThreadedRenderer;->setRequested(Z)V

    iget-object v2, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    const/4 v3, 0x0

    iput-object v3, v2, Landroid/view/View$AttachInfo;->mThreadedRenderer:Landroid/view/ThreadedRenderer;

    iget-object v2, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iput-boolean v1, v2, Landroid/view/View$AttachInfo;->mHardwareAccelerated:Z

    :cond_24
    return-void
.end method

.method private destroySurface()V
    .registers 4

    iget-object v0, p0, Landroid/view/ViewRootImpl;->mBoundsLayer:Landroid/view/SurfaceControl;

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Landroid/view/SurfaceControl;->release()V

    iput-object v1, p0, Landroid/view/ViewRootImpl;->mBoundsLayer:Landroid/view/SurfaceControl;

    :cond_a
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mViewRootMonitor:Landroid/os/perfdebug/ViewRootMonitor;

    iget-object v2, p0, Landroid/view/ViewRootImpl;->mSurface:Landroid/view/Surface;

    invoke-virtual {v0, v2}, Landroid/os/perfdebug/ViewRootMonitor;->onSurfaceDestroy(Landroid/view/Surface;)V

    iget-object v0, p0, Landroid/view/ViewRootImpl;->mSupportHDRAppList:Ljava/util/ArrayList;

    monitor-enter v0

    :try_start_14
    iget-object v2, p0, Landroid/view/ViewRootImpl;->mSurface:Landroid/view/Surface;

    invoke-virtual {v2}, Landroid/view/Surface;->release()V

    iget-object v2, p0, Landroid/view/ViewRootImpl;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v2}, Landroid/view/SurfaceControl;->release()V

    iget-object v2, p0, Landroid/view/ViewRootImpl;->mBlastBufferQueue:Landroid/graphics/BLASTBufferQueue;

    if-eqz v2, :cond_27

    invoke-virtual {v2}, Landroid/graphics/BLASTBufferQueue;->destroy()V

    iput-object v1, p0, Landroid/view/ViewRootImpl;->mBlastBufferQueue:Landroid/graphics/BLASTBufferQueue;

    :cond_27
    monitor-exit v0
    :try_end_28
    .catchall {:try_start_14 .. :try_end_28} :catchall_46

    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v0, Landroid/view/View$AttachInfo;->mThreadedRenderer:Landroid/view/ThreadedRenderer;

    if-eqz v0, :cond_3c

    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v0, Landroid/view/View$AttachInfo;->mThreadedRenderer:Landroid/view/ThreadedRenderer;

    invoke-virtual {v0, v1}, Landroid/view/ThreadedRenderer;->setSurfaceControl(Landroid/view/SurfaceControl;)V

    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v0, Landroid/view/View$AttachInfo;->mThreadedRenderer:Landroid/view/ThreadedRenderer;

    invoke-virtual {v0, v1}, Landroid/view/ThreadedRenderer;->setBlastBufferQueue(Landroid/graphics/BLASTBufferQueue;)V

    :cond_3c
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mDynamicBufferInfo:Landroid/view/animation/ChoreographerInjectorStub$DynamicBufferInfoStub;

    if-eqz v0, :cond_45

    invoke-interface {v0}, Landroid/view/animation/ChoreographerInjectorStub$DynamicBufferInfoStub;->destroy()V

    iput-object v1, p0, Landroid/view/ViewRootImpl;->mDynamicBufferInfo:Landroid/view/animation/ChoreographerInjectorStub$DynamicBufferInfoStub;

    :cond_45
    return-void

    :catchall_46
    move-exception v1

    :try_start_47
    monitor-exit v0
    :try_end_48
    .catchall {:try_start_47 .. :try_end_48} :catchall_46

    throw v1
.end method

.method private dispatchDispatchSystemUiVisibilityChanged(Landroid/view/ViewRootImpl$SystemUiVisibilityInfo;)V
    .registers 4

    iget v0, p0, Landroid/view/ViewRootImpl;->mDispatchedSystemUiVisibility:I

    iget v1, p1, Landroid/view/ViewRootImpl$SystemUiVisibilityInfo;->globalVisibility:I

    if-eq v0, v1, :cond_16

    iget-object v0, p0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/view/ViewRootImpl$ViewRootHandler;->removeMessages(I)V

    iget-object v0, p0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    invoke-virtual {v0, v1, p1}, Landroid/view/ViewRootImpl$ViewRootHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/ViewRootImpl$ViewRootHandler;->sendMessage(Landroid/os/Message;)Z

    :cond_16
    return-void
.end method

.method private dispatchInsetsControlChanged(Landroid/view/InsetsState;[Landroid/view/InsetsSourceControl;)V
    .registers 7

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    if-ne v0, v1, :cond_23

    new-instance v0, Landroid/view/InsetsState;

    const/4 v1, 0x1

    invoke-direct {v0, p1, v1}, Landroid/view/InsetsState;-><init>(Landroid/view/InsetsState;Z)V

    move-object p1, v0

    if-eqz p2, :cond_23

    array-length v0, p2

    sub-int/2addr v0, v1

    :goto_15
    if-ltz v0, :cond_23

    new-instance v1, Landroid/view/InsetsSourceControl;

    aget-object v2, p2, v0

    invoke-direct {v1, v2}, Landroid/view/InsetsSourceControl;-><init>(Landroid/view/InsetsSourceControl;)V

    aput-object v1, p2, v0

    add-int/lit8 v0, v0, -0x1

    goto :goto_15

    :cond_23
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    if-eqz v0, :cond_2f

    invoke-virtual {v0, p1}, Landroid/content/res/CompatibilityInfo$Translator;->translateInsetsStateInScreenToAppWindow(Landroid/view/InsetsState;)V

    iget-object v0, p0, Landroid/view/ViewRootImpl;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    invoke-virtual {v0, p2}, Landroid/content/res/CompatibilityInfo$Translator;->translateSourceControlsInScreenToAppWindow([Landroid/view/InsetsSourceControl;)V

    :cond_2f
    if-eqz p1, :cond_4f

    const/16 v0, 0x13

    invoke-virtual {p1, v0}, Landroid/view/InsetsState;->getSourceOrDefaultVisibility(I)Z

    move-result v0

    if-eqz v0, :cond_4f

    invoke-static {}, Lcom/android/internal/inputmethod/ImeTracing;->getInstance()Lcom/android/internal/inputmethod/ImeTracing;

    move-result-object v0

    invoke-virtual {p0}, Landroid/view/ViewRootImpl;->getInsetsController()Landroid/view/InsetsController;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/InsetsController;->getHost()Landroid/view/InsetsController$Host;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/InsetsController$Host;->getInputMethodManager()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v1

    const/4 v2, 0x0

    const-string v3, "ViewRootImpl#dispatchInsetsControlChanged"

    invoke-virtual {v0, v3, v1, v2}, Lcom/android/internal/inputmethod/ImeTracing;->triggerClientDump(Ljava/lang/String;Landroid/view/inputmethod/InputMethodManager;[B)V

    :cond_4f
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v0

    iput-object p1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    iput-object p2, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    iget-object v1, p0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    const/16 v2, 0x1d

    invoke-virtual {v1, v2, v0}, Landroid/view/ViewRootImpl$ViewRootHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method private dispatchPointerCaptureChanged(Z)V
    .registers 5

    const/16 v0, 0x1c

    iget-object v1, p0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    const/16 v2, 0x1c

    invoke-virtual {v1, v2}, Landroid/view/ViewRootImpl$ViewRootHandler;->removeMessages(I)V

    iget-object v1, p0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    invoke-virtual {v1, v2}, Landroid/view/ViewRootImpl$ViewRootHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    iput p1, v1, Landroid/os/Message;->arg1:I

    iget-object v2, p0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    invoke-virtual {v2, v1}, Landroid/view/ViewRootImpl$ViewRootHandler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method private dispatchResized(Landroid/window/ClientWindowFrames;ZLandroid/util/MergedConfiguration;Landroid/view/InsetsState;ZZIII)V
    .registers 23

    move-object v0, p0

    move-object/from16 v1, p3

    iget-object v2, v0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    if-eqz p2, :cond_9

    const/4 v3, 0x5

    goto :goto_a

    :cond_9
    const/4 v3, 0x4

    :goto_a
    invoke-virtual {v2, v3}, Landroid/view/ViewRootImpl$ViewRootHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v3

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v4

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v5

    const/4 v6, 0x1

    if-ne v4, v5, :cond_1f

    move v4, v6

    goto :goto_20

    :cond_1f
    const/4 v4, 0x0

    :goto_20
    if-eqz v4, :cond_2b

    new-instance v5, Landroid/view/InsetsState;

    move-object/from16 v7, p4

    invoke-direct {v5, v7, v6}, Landroid/view/InsetsState;-><init>(Landroid/view/InsetsState;Z)V

    move-object v7, v5

    goto :goto_2d

    :cond_2b
    move-object/from16 v7, p4

    :goto_2d
    iget-object v5, v0, Landroid/view/ViewRootImpl;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    if-eqz v5, :cond_34

    invoke-virtual {v5, v7}, Landroid/content/res/CompatibilityInfo$Translator;->translateInsetsStateInScreenToAppWindow(Landroid/view/InsetsState;)V

    :cond_34
    const/16 v5, 0x13

    invoke-virtual {v7, v5}, Landroid/view/InsetsState;->getSourceOrDefaultVisibility(I)Z

    move-result v5

    if-eqz v5, :cond_52

    invoke-static {}, Lcom/android/internal/inputmethod/ImeTracing;->getInstance()Lcom/android/internal/inputmethod/ImeTracing;

    move-result-object v5

    invoke-virtual {p0}, Landroid/view/ViewRootImpl;->getInsetsController()Landroid/view/InsetsController;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/InsetsController;->getHost()Landroid/view/InsetsController$Host;

    move-result-object v6

    invoke-interface {v6}, Landroid/view/InsetsController$Host;->getInputMethodManager()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v6

    const/4 v8, 0x0

    const-string v9, "ViewRootImpl#dispatchResized"

    invoke-virtual {v5, v9, v6, v8}, Lcom/android/internal/inputmethod/ImeTracing;->triggerClientDump(Ljava/lang/String;Landroid/view/inputmethod/InputMethodManager;[B)V

    :cond_52
    if-eqz v4, :cond_5b

    new-instance v5, Landroid/window/ClientWindowFrames;

    move-object v6, p1

    invoke-direct {v5, p1}, Landroid/window/ClientWindowFrames;-><init>(Landroid/window/ClientWindowFrames;)V

    goto :goto_5d

    :cond_5b
    move-object v6, p1

    move-object v5, v6

    :goto_5d
    iput-object v5, v3, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    if-eqz v4, :cond_69

    if-eqz v1, :cond_69

    new-instance v5, Landroid/util/MergedConfiguration;

    invoke-direct {v5, v1}, Landroid/util/MergedConfiguration;-><init>(Landroid/util/MergedConfiguration;)V

    goto :goto_6a

    :cond_69
    move-object v5, v1

    :goto_6a
    iput-object v5, v3, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    iput-object v7, v3, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    move/from16 v5, p5

    iput v5, v3, Lcom/android/internal/os/SomeArgs;->argi1:I

    move/from16 v8, p6

    iput v8, v3, Lcom/android/internal/os/SomeArgs;->argi2:I

    move/from16 v9, p7

    iput v9, v3, Lcom/android/internal/os/SomeArgs;->argi3:I

    move/from16 v10, p8

    iput v10, v3, Lcom/android/internal/os/SomeArgs;->argi4:I

    move/from16 v11, p9

    iput v11, v3, Lcom/android/internal/os/SomeArgs;->argi5:I

    iput-object v3, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v12, v0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    invoke-virtual {v12, v2}, Landroid/view/ViewRootImpl$ViewRootHandler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method private dispatchScrollCaptureSearchResponse(Landroid/view/IScrollCaptureResponseListener;Landroid/view/ScrollCaptureSearchResults;)V
    .registers 14

    invoke-virtual {p2}, Landroid/view/ScrollCaptureSearchResults;->getTopResult()Landroid/view/ScrollCaptureTarget;

    move-result-object v0

    new-instance v1, Landroid/view/ScrollCaptureResponse$Builder;

    invoke-direct {v1}, Landroid/view/ScrollCaptureResponse$Builder;-><init>()V

    invoke-virtual {p0}, Landroid/view/ViewRootImpl;->getTitle()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/ScrollCaptureResponse$Builder;->setWindowTitle(Ljava/lang/String;)Landroid/view/ScrollCaptureResponse$Builder;

    iget-object v2, p0, Landroid/view/ViewRootImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/ScrollCaptureResponse$Builder;->setPackageName(Ljava/lang/String;)Landroid/view/ScrollCaptureResponse$Builder;

    new-instance v2, Ljava/io/StringWriter;

    invoke-direct {v2}, Ljava/io/StringWriter;-><init>()V

    new-instance v3, Landroid/util/IndentingPrintWriter;

    invoke-direct {v3, v2}, Landroid/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;)V

    invoke-virtual {p2, v3}, Landroid/view/ScrollCaptureSearchResults;->dump(Landroid/util/IndentingPrintWriter;)V

    invoke-virtual {v3}, Landroid/util/IndentingPrintWriter;->flush()V

    invoke-virtual {v2}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/view/ScrollCaptureResponse$Builder;->addMessage(Ljava/lang/String;)Landroid/view/ScrollCaptureResponse$Builder;

    if-nez v0, :cond_4c

    const-string v4, "No scrollable targets found in window"

    invoke-virtual {v1, v4}, Landroid/view/ScrollCaptureResponse$Builder;->setDescription(Ljava/lang/String;)Landroid/view/ScrollCaptureResponse$Builder;

    :try_start_3b
    invoke-virtual {v1}, Landroid/view/ScrollCaptureResponse$Builder;->build()Landroid/view/ScrollCaptureResponse;

    move-result-object v4

    invoke-interface {p1, v4}, Landroid/view/IScrollCaptureResponseListener;->onScrollCaptureResponse(Landroid/view/ScrollCaptureResponse;)V
    :try_end_42
    .catch Landroid/os/RemoteException; {:try_start_3b .. :try_end_42} :catch_43

    goto :goto_4b

    :catch_43
    move-exception v4

    const-string v5, "ViewRootImpl"

    const-string v6, "Failed to send scroll capture search result"

    invoke-static {v5, v6, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_4b
    return-void

    :cond_4c
    const-string v4, "Connected"

    invoke-virtual {v1, v4}, Landroid/view/ScrollCaptureResponse$Builder;->setDescription(Ljava/lang/String;)Landroid/view/ScrollCaptureResponse$Builder;

    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {v0}, Landroid/view/ScrollCaptureTarget;->getContainingView()Landroid/view/View;

    move-result-object v5

    iget-object v6, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v6, v6, Landroid/view/View$AttachInfo;->mTmpLocation:[I

    invoke-virtual {v5, v6}, Landroid/view/View;->getLocationInWindow([I)V

    invoke-virtual {v0}, Landroid/view/ScrollCaptureTarget;->getScrollBounds()Landroid/graphics/Rect;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object v6, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v6, v6, Landroid/view/View$AttachInfo;->mTmpLocation:[I

    const/4 v7, 0x0

    aget v6, v6, v7

    iget-object v8, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v8, v8, Landroid/view/View$AttachInfo;->mTmpLocation:[I

    const/4 v9, 0x1

    aget v8, v8, v9

    invoke-virtual {v4, v6, v8}, Landroid/graphics/Rect;->offset(II)V

    invoke-virtual {v1, v4}, Landroid/view/ScrollCaptureResponse$Builder;->setBoundsInWindow(Landroid/graphics/Rect;)Landroid/view/ScrollCaptureResponse$Builder;

    new-instance v6, Landroid/graphics/Rect;

    invoke-direct {v6}, Landroid/graphics/Rect;-><init>()V

    iget-object v8, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    iget-object v10, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v10, v10, Landroid/view/View$AttachInfo;->mTmpLocation:[I

    invoke-virtual {v8, v10}, Landroid/view/View;->getLocationOnScreen([I)V

    iget-object v8, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->getWidth()I

    move-result v8

    iget-object v10, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v10}, Landroid/view/View;->getHeight()I

    move-result v10

    invoke-virtual {v6, v7, v7, v8, v10}, Landroid/graphics/Rect;->set(IIII)V

    iget-object v8, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v8, v8, Landroid/view/View$AttachInfo;->mTmpLocation:[I

    aget v7, v8, v7

    iget-object v8, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v8, v8, Landroid/view/View$AttachInfo;->mTmpLocation:[I

    aget v8, v8, v9

    invoke-virtual {v6, v7, v8}, Landroid/graphics/Rect;->offset(II)V

    invoke-virtual {v1, v6}, Landroid/view/ScrollCaptureResponse$Builder;->setWindowBounds(Landroid/graphics/Rect;)Landroid/view/ScrollCaptureResponse$Builder;

    new-instance v7, Landroid/view/ScrollCaptureConnection;

    iget-object v8, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getMainExecutor()Ljava/util/concurrent/Executor;

    move-result-object v8

    invoke-direct {v7, v8, v0}, Landroid/view/ScrollCaptureConnection;-><init>(Ljava/util/concurrent/Executor;Landroid/view/ScrollCaptureTarget;)V

    invoke-virtual {v1, v7}, Landroid/view/ScrollCaptureResponse$Builder;->setConnection(Landroid/view/IScrollCaptureConnection;)Landroid/view/ScrollCaptureResponse$Builder;

    :try_start_bd
    invoke-virtual {v1}, Landroid/view/ScrollCaptureResponse$Builder;->build()Landroid/view/ScrollCaptureResponse;

    move-result-object v8

    invoke-interface {p1, v8}, Landroid/view/IScrollCaptureResponseListener;->onScrollCaptureResponse(Landroid/view/ScrollCaptureResponse;)V
    :try_end_c4
    .catch Landroid/os/RemoteException; {:try_start_bd .. :try_end_c4} :catch_c5

    goto :goto_c9

    :catch_c5
    move-exception v8

    invoke-virtual {v7}, Landroid/view/ScrollCaptureConnection;->close()V

    :goto_c9
    return-void
.end method

.method private dispatchTransformHintChanged(I)V
    .registers 5

    iget-object v0, p0, Landroid/view/ViewRootImpl;->mTransformHintListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_9

    return-void

    :cond_9
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mTransformHintListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    const/4 v1, 0x0

    :goto_12
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_24

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/AttachedSurfaceControl$OnBufferTransformHintChangedListener;

    invoke-interface {v2, p1}, Landroid/view/AttachedSurfaceControl$OnBufferTransformHintChangedListener;->onBufferTransformHintChanged(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_12

    :cond_24
    return-void
.end method

.method private draw(ZZ)Z
    .registers 28

    move-object/from16 v9, p0

    iget-object v10, v9, Landroid/view/ViewRootImpl;->mSurface:Landroid/view/Surface;

    invoke-virtual {v10}, Landroid/view/Surface;->isValid()Z

    move-result v0

    const/4 v11, 0x0

    if-nez v0, :cond_c

    return v11

    :cond_c
    sget-boolean v0, Landroid/view/ViewRootImpl;->sFirstDrawComplete:Z

    const/4 v12, 0x1

    if-nez v0, :cond_32

    sget-object v1, Landroid/view/ViewRootImpl;->sFirstDrawHandlers:Ljava/util/ArrayList;

    monitor-enter v1

    :try_start_14
    sput-boolean v12, Landroid/view/ViewRootImpl;->sFirstDrawComplete:Z

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v2, 0x0

    :goto_1b
    if-ge v2, v0, :cond_2d

    iget-object v3, v9, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    sget-object v4, Landroid/view/ViewRootImpl;->sFirstDrawHandlers:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Runnable;

    invoke-virtual {v3, v4}, Landroid/view/ViewRootImpl$ViewRootHandler;->post(Ljava/lang/Runnable;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_1b

    :cond_2d
    monitor-exit v1

    goto :goto_32

    :catchall_2f
    move-exception v0

    monitor-exit v1
    :try_end_31
    .catchall {:try_start_14 .. :try_end_31} :catchall_2f

    throw v0

    :cond_32
    :goto_32
    const/4 v0, 0x0

    invoke-virtual {v9, v0, v11}, Landroid/view/ViewRootImpl;->scrollToRectOrFocus(Landroid/graphics/Rect;Z)Z

    iget-object v1, v9, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-boolean v1, v1, Landroid/view/View$AttachInfo;->mViewScrollChanged:Z

    if-eqz v1, :cond_47

    iget-object v1, v9, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iput-boolean v11, v1, Landroid/view/View$AttachInfo;->mViewScrollChanged:Z

    iget-object v1, v9, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v1, v1, Landroid/view/View$AttachInfo;->mTreeObserver:Landroid/view/ViewTreeObserver;

    invoke-virtual {v1}, Landroid/view/ViewTreeObserver;->dispatchOnScrollChanged()V

    :cond_47
    iget-object v1, v9, Landroid/view/ViewRootImpl;->mScroller:Landroid/widget/Scroller;

    if-eqz v1, :cond_53

    invoke-virtual {v1}, Landroid/widget/Scroller;->computeScrollOffset()Z

    move-result v1

    if-eqz v1, :cond_53

    move v1, v12

    goto :goto_54

    :cond_53
    move v1, v11

    :goto_54
    move v13, v1

    if-eqz v13, :cond_5f

    iget-object v1, v9, Landroid/view/ViewRootImpl;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->getCurrY()I

    move-result v1

    move v14, v1

    goto :goto_62

    :cond_5f
    iget v1, v9, Landroid/view/ViewRootImpl;->mScrollY:I

    move v14, v1

    :goto_62
    iget v1, v9, Landroid/view/ViewRootImpl;->mCurScrollY:I

    if-eq v1, v14, :cond_76

    iput v14, v9, Landroid/view/ViewRootImpl;->mCurScrollY:I

    const/4 v1, 0x1

    iget-object v2, v9, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    instance-of v3, v2, Lcom/android/internal/view/RootViewSurfaceTaker;

    if-eqz v3, :cond_74

    check-cast v2, Lcom/android/internal/view/RootViewSurfaceTaker;

    invoke-interface {v2, v14}, Lcom/android/internal/view/RootViewSurfaceTaker;->onRootViewScrollYChanged(I)V

    :cond_74
    move v15, v1

    goto :goto_78

    :cond_76
    move/from16 v15, p1

    :goto_78
    iget-object v1, v9, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget v8, v1, Landroid/view/View$AttachInfo;->mApplicationScale:F

    iget-object v1, v9, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-boolean v7, v1, Landroid/view/View$AttachInfo;->mScalingRequired:Z

    iget-object v6, v9, Landroid/view/ViewRootImpl;->mDirty:Landroid/graphics/Rect;

    iget-object v1, v9, Landroid/view/ViewRootImpl;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    if-eqz v1, :cond_99

    invoke-virtual {v6}, Landroid/graphics/Rect;->setEmpty()V

    if-eqz v13, :cond_92

    iget-object v0, v9, Landroid/view/ViewRootImpl;->mScroller:Landroid/widget/Scroller;

    if-eqz v0, :cond_92

    invoke-virtual {v0}, Landroid/widget/Scroller;->abortAnimation()V

    :cond_92
    iget-object v0, v9, Landroid/view/ViewRootImpl;->mViewRootMonitor:Landroid/os/perfdebug/ViewRootMonitor;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/perfdebug/ViewRootMonitor;->setDrawMode(I)V

    return v11

    :cond_99
    if-eqz v15, :cond_ac

    iget v1, v9, Landroid/view/ViewRootImpl;->mWidth:I

    int-to-float v1, v1

    mul-float/2addr v1, v8

    const/high16 v2, 0x3f000000  # 0.5f

    add-float/2addr v1, v2

    float-to-int v1, v1

    iget v3, v9, Landroid/view/ViewRootImpl;->mHeight:I

    int-to-float v3, v3

    mul-float/2addr v3, v8

    add-float/2addr v3, v2

    float-to-int v2, v3

    invoke-virtual {v6, v11, v11, v1, v2}, Landroid/graphics/Rect;->set(IIII)V

    :cond_ac
    iget-object v1, v9, Landroid/view/ViewRootImpl;->mViewRootMonitor:Landroid/os/perfdebug/ViewRootMonitor;

    invoke-virtual {v1}, Landroid/os/perfdebug/ViewRootMonitor;->monitorViewTreeDrawBegin()V

    iget-object v1, v9, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v1, v1, Landroid/view/View$AttachInfo;->mTreeObserver:Landroid/view/ViewTreeObserver;

    invoke-virtual {v1}, Landroid/view/ViewTreeObserver;->dispatchOnDraw()V

    iget-object v1, v9, Landroid/view/ViewRootImpl;->mViewRootMonitor:Landroid/os/perfdebug/ViewRootMonitor;

    invoke-virtual {v1}, Landroid/os/perfdebug/ViewRootMonitor;->monitorViewTreeDrawEnd()V

    iget v1, v9, Landroid/view/ViewRootImpl;->mCanvasOffsetX:I

    neg-int v1, v1

    iget v2, v9, Landroid/view/ViewRootImpl;->mCanvasOffsetY:I

    neg-int v2, v2

    add-int/2addr v2, v14

    iget-object v5, v9, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    if-eqz v5, :cond_ca

    iget-object v0, v5, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    :cond_ca
    move-object v4, v0

    if-eqz v4, :cond_dc

    iget v0, v4, Landroid/graphics/Rect;->left:I

    sub-int/2addr v1, v0

    iget v0, v4, Landroid/graphics/Rect;->top:I

    sub-int/2addr v2, v0

    iget v0, v4, Landroid/graphics/Rect;->left:I

    iget v3, v4, Landroid/graphics/Rect;->top:I

    invoke-virtual {v6, v0, v3}, Landroid/graphics/Rect;->offset(II)V

    move v3, v1

    goto :goto_dd

    :cond_dc
    move v3, v1

    :goto_dd
    const/4 v0, 0x0

    iget-object v1, v9, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v1, v1, Landroid/view/View$AttachInfo;->mAccessibilityFocusDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_fe

    iget-object v12, v9, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v12, v12, Landroid/view/View$AttachInfo;->mTmpInvalRect:Landroid/graphics/Rect;

    invoke-direct {v9, v12}, Landroid/view/ViewRootImpl;->getAccessibilityFocusedRect(Landroid/graphics/Rect;)Z

    move-result v16

    if-nez v16, :cond_f1

    invoke-virtual {v12}, Landroid/graphics/Rect;->setEmpty()V

    :cond_f1
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v11

    invoke-virtual {v12, v11}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_fe

    const/4 v0, 0x1

    move v11, v0

    goto :goto_ff

    :cond_fe
    move v11, v0

    :goto_ff
    iget-object v0, v9, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v12, v9, Landroid/view/ViewRootImpl;->mChoreographer:Landroid/view/Choreographer;

    invoke-virtual {v12}, Landroid/view/Choreographer;->getFrameTimeNanos()J

    move-result-wide v16

    const-wide/32 v18, 0xf4240

    move v12, v14

    move/from16 p1, v15

    div-long v14, v16, v18

    iput-wide v14, v0, Landroid/view/View$AttachInfo;->mDrawingTime:J

    const/4 v14, 0x0

    invoke-virtual {v6}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_130

    iget-boolean v0, v9, Landroid/view/ViewRootImpl;->mIsAnimating:Z

    if-nez v0, :cond_130

    if-eqz v11, :cond_11f

    goto :goto_130

    :cond_11f
    move-object v15, v1

    move/from16 v16, v2

    move/from16 v17, v3

    move-object/from16 v18, v4

    move-object/from16 v19, v5

    move-object/from16 v20, v6

    move/from16 v21, v7

    move/from16 v22, v8

    goto/16 :goto_236

    :cond_130
    :goto_130
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewRootImpl;->isHardwareEnabled()Z

    move-result v0

    if-eqz v0, :cond_1a9

    if-nez v11, :cond_13f

    iget-boolean v0, v9, Landroid/view/ViewRootImpl;->mInvalidateRootRequested:Z

    if-eqz v0, :cond_13d

    goto :goto_13f

    :cond_13d
    const/4 v0, 0x0

    goto :goto_140

    :cond_13f
    :goto_13f
    const/4 v0, 0x1

    :goto_140
    const/4 v15, 0x0

    iput-boolean v15, v9, Landroid/view/ViewRootImpl;->mInvalidateRootRequested:Z

    iput-boolean v15, v9, Landroid/view/ViewRootImpl;->mIsAnimating:Z

    iget v15, v9, Landroid/view/ViewRootImpl;->mHardwareYOffset:I

    if-ne v15, v2, :cond_14d

    iget v15, v9, Landroid/view/ViewRootImpl;->mHardwareXOffset:I

    if-eq v15, v3, :cond_152

    :cond_14d
    iput v2, v9, Landroid/view/ViewRootImpl;->mHardwareYOffset:I

    iput v3, v9, Landroid/view/ViewRootImpl;->mHardwareXOffset:I

    const/4 v0, 0x1

    :cond_152
    if-eqz v0, :cond_15b

    iget-object v15, v9, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v15, v15, Landroid/view/View$AttachInfo;->mThreadedRenderer:Landroid/view/ThreadedRenderer;

    invoke-virtual {v15}, Landroid/view/ThreadedRenderer;->invalidateRoot()V

    :cond_15b
    invoke-virtual {v6}, Landroid/graphics/Rect;->setEmpty()V

    invoke-direct/range {p0 .. p0}, Landroid/view/ViewRootImpl;->updateContentDrawBounds()Z

    move-result v15

    move/from16 v16, v0

    iget-boolean v0, v9, Landroid/view/ViewRootImpl;->mReportNextDraw:Z

    if-eqz v0, :cond_173

    iget-object v0, v9, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v0, Landroid/view/View$AttachInfo;->mThreadedRenderer:Landroid/view/ThreadedRenderer;

    move-object/from16 v22, v1

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ThreadedRenderer;->setStopped(Z)V

    goto :goto_175

    :cond_173
    move-object/from16 v22, v1

    :goto_175
    if-eqz v15, :cond_17a

    invoke-direct/range {p0 .. p0}, Landroid/view/ViewRootImpl;->requestDrawWindow()V

    :cond_17a
    const/4 v14, 0x1

    if-eqz p2, :cond_184

    iget-object v0, v9, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v0, Landroid/view/View$AttachInfo;->mThreadedRenderer:Landroid/view/ThreadedRenderer;

    invoke-virtual {v0}, Landroid/view/ThreadedRenderer;->forceDrawNextFrame()V

    :cond_184
    iget-object v0, v9, Landroid/view/ViewRootImpl;->mViewRootMonitor:Landroid/os/perfdebug/ViewRootMonitor;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/perfdebug/ViewRootMonitor;->setDrawMode(I)V

    iget-object v0, v9, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v0, Landroid/view/View$AttachInfo;->mThreadedRenderer:Landroid/view/ThreadedRenderer;

    iget-object v1, v9, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    move/from16 v23, v2

    iget-object v2, v9, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    invoke-virtual {v0, v1, v2, v9}, Landroid/view/ThreadedRenderer;->draw(Landroid/view/View;Landroid/view/View$AttachInfo;Landroid/view/ThreadedRenderer$DrawCallbacks;)V

    move/from16 v17, v3

    move-object/from16 v18, v4

    move-object/from16 v19, v5

    move-object/from16 v20, v6

    move/from16 v21, v7

    move-object/from16 v15, v22

    move/from16 v16, v23

    move/from16 v22, v8

    goto/16 :goto_236

    :cond_1a9
    move-object/from16 v22, v1

    move/from16 v23, v2

    iget-object v0, v9, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v0, Landroid/view/View$AttachInfo;->mThreadedRenderer:Landroid/view/ThreadedRenderer;

    if-eqz v0, :cond_208

    iget-object v0, v9, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v0, Landroid/view/View$AttachInfo;->mThreadedRenderer:Landroid/view/ThreadedRenderer;

    invoke-virtual {v0}, Landroid/view/ThreadedRenderer;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_205

    iget-object v0, v9, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v0, Landroid/view/View$AttachInfo;->mThreadedRenderer:Landroid/view/ThreadedRenderer;

    invoke-virtual {v0}, Landroid/view/ThreadedRenderer;->isRequested()Z

    move-result v0

    if-eqz v0, :cond_202

    iget-object v0, v9, Landroid/view/ViewRootImpl;->mSurface:Landroid/view/Surface;

    invoke-virtual {v0}, Landroid/view/Surface;->isValid()Z

    move-result v0

    if-eqz v0, :cond_1ff

    :try_start_1cf
    iget-object v0, v9, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v0, Landroid/view/View$AttachInfo;->mThreadedRenderer:Landroid/view/ThreadedRenderer;

    iget v1, v9, Landroid/view/ViewRootImpl;->mWidth:I

    iget v2, v9, Landroid/view/ViewRootImpl;->mHeight:I

    iget-object v15, v9, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;
    :try_end_1d9
    .catch Landroid/view/Surface$OutOfResourcesException; {:try_start_1cf .. :try_end_1d9} :catch_1f7

    move/from16 v24, v3

    :try_start_1db
    iget-object v3, v9, Landroid/view/ViewRootImpl;->mSurface:Landroid/view/Surface;

    move-object/from16 v16, v0

    move/from16 v17, v1

    move/from16 v18, v2

    move-object/from16 v19, v15

    move-object/from16 v20, v3

    move-object/from16 v21, v4

    invoke-virtual/range {v16 .. v21}, Landroid/view/ThreadedRenderer;->initializeIfNeeded(IILandroid/view/View$AttachInfo;Landroid/view/Surface;Landroid/graphics/Rect;)Z
    :try_end_1ec
    .catch Landroid/view/Surface$OutOfResourcesException; {:try_start_1db .. :try_end_1ec} :catch_1f5

    nop

    const/4 v0, 0x1

    iput-boolean v0, v9, Landroid/view/ViewRootImpl;->mFullRedrawNeeded:Z

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewRootImpl;->scheduleTraversals()V

    const/4 v1, 0x0

    return v1

    :catch_1f5
    move-exception v0

    goto :goto_1fa

    :catch_1f7
    move-exception v0

    move/from16 v24, v3

    :goto_1fa
    invoke-direct {v9, v0}, Landroid/view/ViewRootImpl;->handleOutOfResourcesException(Landroid/view/Surface$OutOfResourcesException;)V

    const/4 v1, 0x0

    return v1

    :cond_1ff
    move/from16 v24, v3

    goto :goto_20a

    :cond_202
    move/from16 v24, v3

    goto :goto_20a

    :cond_205
    move/from16 v24, v3

    goto :goto_20a

    :cond_208
    move/from16 v24, v3

    :goto_20a
    iget-object v0, v9, Landroid/view/ViewRootImpl;->mViewRootMonitor:Landroid/os/perfdebug/ViewRootMonitor;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/perfdebug/ViewRootMonitor;->setDrawMode(I)V

    iget-object v3, v9, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    move-object/from16 v15, v22

    move-object/from16 v1, p0

    move/from16 v16, v23

    move-object v2, v10

    move/from16 v17, v24

    move-object/from16 v18, v4

    move/from16 v4, v17

    move-object/from16 v19, v5

    move/from16 v5, v16

    move-object/from16 v20, v6

    move v6, v7

    move/from16 v21, v7

    move-object/from16 v7, v20

    move/from16 v22, v8

    move-object/from16 v8, v18

    invoke-direct/range {v1 .. v8}, Landroid/view/ViewRootImpl;->drawSoftware(Landroid/view/Surface;Landroid/view/View$AttachInfo;IIZLandroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result v0

    if-nez v0, :cond_236

    const/4 v1, 0x0

    return v1

    :cond_236
    :goto_236
    if-eqz v13, :cond_23e

    const/4 v0, 0x1

    iput-boolean v0, v9, Landroid/view/ViewRootImpl;->mFullRedrawNeeded:Z

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewRootImpl;->scheduleTraversals()V

    :cond_23e
    return v14
.end method

.method private drawAccessibilityFocusedDrawableIfNeeded(Landroid/graphics/Canvas;)V
    .registers 5

    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v0, Landroid/view/View$AttachInfo;->mTmpInvalRect:Landroid/graphics/Rect;

    invoke-direct {p0, v0}, Landroid/view/ViewRootImpl;->getAccessibilityFocusedRect(Landroid/graphics/Rect;)Z

    move-result v1

    if-eqz v1, :cond_17

    invoke-direct {p0}, Landroid/view/ViewRootImpl;->getAccessibilityFocusedDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_26

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_26

    :cond_17
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v1, v1, Landroid/view/View$AttachInfo;->mAccessibilityFocusDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_26

    iget-object v1, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v1, v1, Landroid/view/View$AttachInfo;->mAccessibilityFocusDrawable:Landroid/graphics/drawable/Drawable;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v2, v2, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    goto :goto_27

    :cond_26
    :goto_26
    nop

    :goto_27
    return-void
.end method

.method private drawSoftware(Landroid/view/Surface;Landroid/view/View$AttachInfo;IIZLandroid/graphics/Rect;Landroid/graphics/Rect;)Z
    .registers 24

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v3, p3

    move/from16 v4, p4

    move-object/from16 v5, p6

    move-object/from16 v6, p7

    const-string v7, "Could not unlock surface"

    move/from16 v0, p3

    move/from16 v8, p4

    if-eqz v6, :cond_1d

    iget v9, v6, Landroid/graphics/Rect;->left:I

    add-int/2addr v0, v9

    iget v9, v6, Landroid/graphics/Rect;->top:I

    add-int/2addr v8, v9

    move v9, v8

    move v8, v0

    goto :goto_1f

    :cond_1d
    move v9, v8

    move v8, v0

    :goto_1f
    neg-int v0, v8

    neg-int v10, v9

    :try_start_21
    invoke-virtual {v5, v0, v10}, Landroid/graphics/Rect;->offset(II)V

    iget v0, v5, Landroid/graphics/Rect;->left:I

    iget v10, v5, Landroid/graphics/Rect;->top:I

    iget v13, v5, Landroid/graphics/Rect;->right:I

    iget v14, v5, Landroid/graphics/Rect;->bottom:I

    const-string v15, "drawSoftware lockCanvas"

    const-wide/16 v11, 0x8

    invoke-static {v11, v12, v15}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    iget-object v15, v1, Landroid/view/ViewRootImpl;->mSurface:Landroid/view/Surface;

    invoke-virtual {v15, v5}, Landroid/view/Surface;->lockCanvas(Landroid/graphics/Rect;)Landroid/graphics/Canvas;

    move-result-object v15

    invoke-static {v11, v12}, Landroid/os/Trace;->traceEnd(J)V

    iget v11, v1, Landroid/view/ViewRootImpl;->mDensity:I

    invoke-virtual {v15, v11}, Landroid/graphics/Canvas;->setDensity(I)V
    :try_end_41
    .catch Landroid/view/Surface$OutOfResourcesException; {:try_start_21 .. :try_end_41} :catch_cb
    .catch Ljava/lang/IllegalArgumentException; {:try_start_21 .. :try_end_41} :catch_ba
    .catchall {:try_start_21 .. :try_end_41} :catchall_b8

    invoke-virtual {v5, v8, v9}, Landroid/graphics/Rect;->offset(II)V

    nop

    :try_start_45
    iget-object v0, v1, Landroid/view/ViewRootImpl;->mViewRootMonitor:Landroid/os/perfdebug/ViewRootMonitor;

    invoke-virtual {v0}, Landroid/os/perfdebug/ViewRootMonitor;->monitorViewDrawBegin()V

    invoke-virtual {v15}, Landroid/graphics/Canvas;->isOpaque()Z

    move-result v0

    if-eqz v0, :cond_57

    if-nez v4, :cond_57

    if-eqz v3, :cond_55

    goto :goto_57

    :cond_55
    const/4 v10, 0x0

    goto :goto_5d

    :cond_57
    :goto_57
    sget-object v0, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    const/4 v10, 0x0

    invoke-virtual {v15, v10, v0}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    :goto_5d
    invoke-virtual/range {p6 .. p6}, Landroid/graphics/Rect;->setEmpty()V

    iput-boolean v10, v1, Landroid/view/ViewRootImpl;->mIsAnimating:Z

    iget-object v0, v1, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    iget v10, v0, Landroid/view/View;->mPrivateFlags:I

    or-int/lit8 v10, v10, 0x20

    iput v10, v0, Landroid/view/View;->mPrivateFlags:I

    neg-int v0, v3

    int-to-float v0, v0

    neg-int v10, v4

    int-to-float v10, v10

    invoke-virtual {v15, v0, v10}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v0, v1, Landroid/view/ViewRootImpl;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    if-eqz v0, :cond_78

    invoke-virtual {v0, v15}, Landroid/content/res/CompatibilityInfo$Translator;->translateCanvas(Landroid/graphics/Canvas;)V

    :cond_78
    if-eqz p5, :cond_7d

    iget v0, v1, Landroid/view/ViewRootImpl;->mNoncompatDensity:I

    goto :goto_7e

    :cond_7d
    const/4 v0, 0x0

    :goto_7e
    invoke-virtual {v15, v0}, Landroid/graphics/Canvas;->setScreenDensity(I)V

    iget-object v0, v1, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v0, v15}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    invoke-direct {v1, v15}, Landroid/view/ViewRootImpl;->drawAccessibilityFocusedDrawableIfNeeded(Landroid/graphics/Canvas;)V
    :try_end_89
    .catchall {:try_start_45 .. :try_end_89} :catchall_a1

    iget-object v0, v1, Landroid/view/ViewRootImpl;->mViewRootMonitor:Landroid/os/perfdebug/ViewRootMonitor;

    invoke-virtual {v0}, Landroid/os/perfdebug/ViewRootMonitor;->monitorViewDrawEnd()V

    :try_start_8e
    invoke-virtual {v2, v15}, Landroid/view/Surface;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V
    :try_end_91
    .catch Ljava/lang/IllegalArgumentException; {:try_start_8e .. :try_end_91} :catch_94

    nop

    const/4 v10, 0x1

    return v10

    :catch_94
    move-exception v0

    const/4 v10, 0x1

    move-object v11, v0

    move-object v0, v11

    iget-object v11, v1, Landroid/view/ViewRootImpl;->mTag:Ljava/lang/String;

    invoke-static {v11, v7, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iput-boolean v10, v1, Landroid/view/ViewRootImpl;->mLayoutRequested:Z

    :goto_9f
    const/4 v7, 0x0

    return v7

    :catchall_a1
    move-exception v0

    iget-object v10, v1, Landroid/view/ViewRootImpl;->mViewRootMonitor:Landroid/os/perfdebug/ViewRootMonitor;

    invoke-virtual {v10}, Landroid/os/perfdebug/ViewRootMonitor;->monitorViewDrawEnd()V

    :try_start_a7
    invoke-virtual {v2, v15}, Landroid/view/Surface;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V
    :try_end_aa
    .catch Ljava/lang/IllegalArgumentException; {:try_start_a7 .. :try_end_aa} :catch_ac

    nop

    throw v0

    :catch_ac
    move-exception v0

    move-object v10, v0

    move-object v0, v10

    iget-object v10, v1, Landroid/view/ViewRootImpl;->mTag:Ljava/lang/String;

    invoke-static {v10, v7, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v7, 0x1

    iput-boolean v7, v1, Landroid/view/ViewRootImpl;->mLayoutRequested:Z

    goto :goto_9f

    :catchall_b8
    move-exception v0

    goto :goto_d5

    :catch_ba
    move-exception v0

    :try_start_bb
    iget-object v7, v1, Landroid/view/ViewRootImpl;->mTag:Ljava/lang/String;

    const-string v10, "Could not lock surface"

    invoke-static {v7, v10, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v7, 0x1

    iput-boolean v7, v1, Landroid/view/ViewRootImpl;->mLayoutRequested:Z
    :try_end_c5
    .catchall {:try_start_bb .. :try_end_c5} :catchall_b8

    nop

    invoke-virtual {v5, v8, v9}, Landroid/graphics/Rect;->offset(II)V

    const/4 v7, 0x0

    return v7

    :catch_cb
    move-exception v0

    :try_start_cc
    invoke-direct {v1, v0}, Landroid/view/ViewRootImpl;->handleOutOfResourcesException(Landroid/view/Surface$OutOfResourcesException;)V
    :try_end_cf
    .catchall {:try_start_cc .. :try_end_cf} :catchall_b8

    nop

    invoke-virtual {v5, v8, v9}, Landroid/graphics/Rect;->offset(II)V

    const/4 v7, 0x0

    return v7

    :goto_d5
    invoke-virtual {v5, v8, v9}, Landroid/graphics/Rect;->offset(II)V

    throw v0
.end method

.method private dumpViewHierarchy(Ljava/lang/String;Ljava/io/PrintWriter;Landroid/view/View;)V
    .registers 8

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    if-nez p3, :cond_c

    const-string/jumbo v0, "null"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void

    :cond_c
    invoke-virtual {p3}, Landroid/view/View;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    instance-of v0, p3, Landroid/view/ViewGroup;

    if-nez v0, :cond_18

    return-void

    :cond_18
    move-object v0, p3

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-gtz v1, :cond_22

    return-void

    :cond_22
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v2, 0x0

    :goto_36
    if-ge v2, v1, :cond_42

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-direct {p0, p1, p2, v3}, Landroid/view/ViewRootImpl;->dumpViewHierarchy(Ljava/lang/String;Ljava/io/PrintWriter;Landroid/view/View;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_36

    :cond_42
    return-void
.end method

.method private enableHardwareAcceleration(Landroid/view/WindowManager$LayoutParams;)V
    .registers 11

    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    const/4 v1, 0x0

    iput-boolean v1, v0, Landroid/view/View$AttachInfo;->mHardwareAccelerated:Z

    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iput-boolean v1, v0, Landroid/view/View$AttachInfo;->mHardwareAccelerationRequested:Z

    iget-object v0, p0, Landroid/view/ViewRootImpl;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    if-eqz v0, :cond_e

    return-void

    :cond_e
    invoke-static {}, Landroid/view/ForceDarkHelperStub;->getInstance()Landroid/view/ForceDarkHelperStub;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/view/ForceDarkHelperStub;->enableHardwareAccelerationIfNeeded(Landroid/view/WindowManager$LayoutParams;)Z

    move-result v0

    if-eqz v0, :cond_a4

    iget v2, p1, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    and-int/lit8 v2, v2, 0x2

    const/4 v3, 0x1

    if-eqz v2, :cond_21

    move v2, v3

    goto :goto_22

    :cond_21
    move v2, v1

    :goto_22
    sget-boolean v4, Landroid/view/ThreadedRenderer;->sRendererEnabled:Z

    if-nez v4, :cond_28

    if-eqz v2, :cond_a4

    :cond_28
    iget-object v4, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v4, v4, Landroid/view/View$AttachInfo;->mThreadedRenderer:Landroid/view/ThreadedRenderer;

    if-eqz v4, :cond_35

    iget-object v4, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v4, v4, Landroid/view/View$AttachInfo;->mThreadedRenderer:Landroid/view/ThreadedRenderer;

    invoke-virtual {v4}, Landroid/view/ThreadedRenderer;->destroy()V

    :cond_35
    iget-object v4, p1, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    iget v5, v4, Landroid/graphics/Rect;->left:I

    if-nez v5, :cond_4a

    iget v5, v4, Landroid/graphics/Rect;->right:I

    if-nez v5, :cond_4a

    iget v5, v4, Landroid/graphics/Rect;->top:I

    if-nez v5, :cond_4a

    iget v5, v4, Landroid/graphics/Rect;->bottom:I

    if-eqz v5, :cond_48

    goto :goto_4a

    :cond_48
    move v5, v1

    goto :goto_4b

    :cond_4a
    :goto_4a
    move v5, v3

    :goto_4b
    iget v6, p1, Landroid/view/WindowManager$LayoutParams;->format:I

    const/4 v7, -0x1

    if-ne v6, v7, :cond_52

    if-eqz v5, :cond_53

    :cond_52
    move v1, v3

    :cond_53
    iget-object v6, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v7, p0, Landroid/view/ViewRootImpl;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/view/WindowManager$LayoutParams;->getTitle()Ljava/lang/CharSequence;

    move-result-object v8

    invoke-interface {v8}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v1, v8}, Landroid/view/ThreadedRenderer;->create(Landroid/content/Context;ZLjava/lang/String;)Landroid/view/ThreadedRenderer;

    move-result-object v7

    iput-object v7, v6, Landroid/view/View$AttachInfo;->mThreadedRenderer:Landroid/view/ThreadedRenderer;

    invoke-virtual {p1}, Landroid/view/WindowManager$LayoutParams;->getColorMode()I

    move-result v6

    invoke-direct {p0, v6}, Landroid/view/ViewRootImpl;->updateColorModeIfNeeded(I)V

    invoke-static {}, Landroid/view/ForceDarkHelperStub;->getInstance()Landroid/view/ForceDarkHelperStub;

    move-result-object v6

    invoke-interface {v6, p0}, Landroid/view/ForceDarkHelperStub;->updateForceDarkMode(Landroid/view/ViewRootImpl;)Z

    move-result v6

    if-nez v6, :cond_79

    invoke-direct {p0}, Landroid/view/ViewRootImpl;->updateForceDarkMode()V

    :cond_79
    iget-object v6, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v6, v6, Landroid/view/View$AttachInfo;->mThreadedRenderer:Landroid/view/ThreadedRenderer;

    if-eqz v6, :cond_a4

    iget-object v6, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iput-boolean v3, v6, Landroid/view/View$AttachInfo;->mHardwareAccelerationRequested:Z

    iput-boolean v3, v6, Landroid/view/View$AttachInfo;->mHardwareAccelerated:Z

    iget-object v3, p0, Landroid/view/ViewRootImpl;->mHardwareRendererObserver:Landroid/graphics/HardwareRendererObserver;

    if-eqz v3, :cond_92

    iget-object v3, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v3, v3, Landroid/view/View$AttachInfo;->mThreadedRenderer:Landroid/view/ThreadedRenderer;

    iget-object v6, p0, Landroid/view/ViewRootImpl;->mHardwareRendererObserver:Landroid/graphics/HardwareRendererObserver;

    invoke-virtual {v3, v6}, Landroid/view/ThreadedRenderer;->addObserver(Landroid/graphics/HardwareRendererObserver;)V

    :cond_92
    iget-object v3, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v3, v3, Landroid/view/View$AttachInfo;->mThreadedRenderer:Landroid/view/ThreadedRenderer;

    iget-object v6, p0, Landroid/view/ViewRootImpl;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v3, v6}, Landroid/view/ThreadedRenderer;->setSurfaceControl(Landroid/view/SurfaceControl;)V

    iget-object v3, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v3, v3, Landroid/view/View$AttachInfo;->mThreadedRenderer:Landroid/view/ThreadedRenderer;

    iget-object v6, p0, Landroid/view/ViewRootImpl;->mBlastBufferQueue:Landroid/graphics/BLASTBufferQueue;

    invoke-virtual {v3, v6}, Landroid/view/ThreadedRenderer;->setBlastBufferQueue(Landroid/graphics/BLASTBufferQueue;)V

    :cond_a4
    return-void
.end method

.method private endDragResizing()V
    .registers 4

    iget-boolean v0, p0, Landroid/view/ViewRootImpl;->mDragResizing:Z

    if-eqz v0, :cond_25

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/view/ViewRootImpl;->mDragResizing:Z

    iget-boolean v0, p0, Landroid/view/ViewRootImpl;->mUseMTRenderer:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_23

    iget-object v0, p0, Landroid/view/ViewRootImpl;->mWindowCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    sub-int/2addr v0, v1

    :goto_13
    if-ltz v0, :cond_23

    iget-object v2, p0, Landroid/view/ViewRootImpl;->mWindowCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/WindowCallbacks;

    invoke-interface {v2}, Landroid/view/WindowCallbacks;->onWindowDragResizeEnd()V

    add-int/lit8 v0, v0, -0x1

    goto :goto_13

    :cond_23
    iput-boolean v1, p0, Landroid/view/ViewRootImpl;->mFullRedrawNeeded:Z

    :cond_25
    return-void
.end method

.method private ensureTouchModeLocally(Z)Z
    .registers 3

    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-boolean v0, v0, Landroid/view/View$AttachInfo;->mInTouchMode:Z

    if-ne v0, p1, :cond_8

    const/4 v0, 0x0

    return v0

    :cond_8
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iput-boolean p1, v0, Landroid/view/View$AttachInfo;->mInTouchMode:Z

    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v0, Landroid/view/View$AttachInfo;->mTreeObserver:Landroid/view/ViewTreeObserver;

    invoke-virtual {v0, p1}, Landroid/view/ViewTreeObserver;->dispatchOnTouchModeChanged(Z)V

    if-eqz p1, :cond_1a

    invoke-direct {p0}, Landroid/view/ViewRootImpl;->enterTouchMode()Z

    move-result v0

    goto :goto_1e

    :cond_1a
    invoke-direct {p0}, Landroid/view/ViewRootImpl;->leaveTouchMode()Z

    move-result v0

    :goto_1e
    return v0
.end method

.method private enterTouchMode()Z
    .registers 6

    iget-object v0, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    const/4 v1, 0x0

    if-eqz v0, :cond_2a

    invoke-virtual {v0}, Landroid/view/View;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_2a

    iget-object v0, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->findFocus()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_2a

    invoke-virtual {v0}, Landroid/view/View;->isFocusableInTouchMode()Z

    move-result v2

    if-nez v2, :cond_2a

    invoke-static {v0}, Landroid/view/ViewRootImpl;->findAncestorToTakeFocusInTouchMode(Landroid/view/View;)Landroid/view/ViewGroup;

    move-result-object v2

    if-eqz v2, :cond_24

    invoke-virtual {v2}, Landroid/view/ViewGroup;->requestFocus()Z

    move-result v1

    return v1

    :cond_24
    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-virtual {v0, v3, v4, v1}, Landroid/view/View;->clearFocusInternal(Landroid/view/View;ZZ)V

    return v4

    :cond_2a
    return v1
.end method

.method private static findAncestorToTakeFocusInTouchMode(Landroid/view/View;)Landroid/view/ViewGroup;
    .registers 6

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    :goto_4
    instance-of v1, v0, Landroid/view/ViewGroup;

    const/4 v2, 0x0

    if-eqz v1, :cond_27

    move-object v1, v0

    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getDescendantFocusability()I

    move-result v3

    const/high16 v4, 0x40000

    if-ne v3, v4, :cond_1b

    invoke-virtual {v1}, Landroid/view/ViewGroup;->isFocusableInTouchMode()Z

    move-result v3

    if-eqz v3, :cond_1b

    return-object v1

    :cond_1b
    invoke-virtual {v1}, Landroid/view/ViewGroup;->isRootNamespace()Z

    move-result v3

    if-eqz v3, :cond_22

    return-object v2

    :cond_22
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    goto :goto_4

    :cond_27
    return-object v2
.end method

.method private findFocusedVirtualNode(Landroid/view/accessibility/AccessibilityNodeProvider;)Landroid/view/accessibility/AccessibilityNodeInfo;
    .registers 12

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeProvider;->findFocus(I)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v0

    if-eqz v0, :cond_8

    return-object v0

    :cond_8
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->isAutofillCompatibilityEnabled()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_12

    return-object v2

    :cond_12
    const/4 v1, -0x1

    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityNodeProvider;->createAccessibilityNodeInfo(I)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->isFocused()Z

    move-result v3

    if-eqz v3, :cond_1e

    return-object v1

    :cond_1e
    new-instance v3, Ljava/util/ArrayDeque;

    invoke-direct {v3}, Ljava/util/ArrayDeque;-><init>()V

    invoke-interface {v3, v1}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    :cond_26
    :goto_26
    invoke-interface {v3}, Ljava/util/Queue;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_67

    invoke-interface {v3}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v4

    move-object v1, v4

    check-cast v1, Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getChildNodeIds()Landroid/util/LongArray;

    move-result-object v4

    if-eqz v4, :cond_26

    invoke-virtual {v4}, Landroid/util/LongArray;->size()I

    move-result v5

    if-gtz v5, :cond_40

    goto :goto_26

    :cond_40
    invoke-virtual {v4}, Landroid/util/LongArray;->size()I

    move-result v5

    const/4 v6, 0x0

    :goto_45
    if-ge v6, v5, :cond_63

    nop

    invoke-virtual {v4, v6}, Landroid/util/LongArray;->get(I)J

    move-result-wide v7

    invoke-static {v7, v8}, Landroid/view/accessibility/AccessibilityNodeInfo;->getVirtualDescendantId(J)I

    move-result v7

    invoke-virtual {p1, v7}, Landroid/view/accessibility/AccessibilityNodeProvider;->createAccessibilityNodeInfo(I)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v8

    if-eqz v8, :cond_60

    invoke-virtual {v8}, Landroid/view/accessibility/AccessibilityNodeInfo;->isFocused()Z

    move-result v9

    if-eqz v9, :cond_5d

    return-object v8

    :cond_5d
    invoke-interface {v3, v8}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    :cond_60
    add-int/lit8 v6, v6, 0x1

    goto :goto_45

    :cond_63
    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->recycle()V

    goto :goto_26

    :cond_67
    return-object v2
.end method

.method private finishInputEvent(Landroid/view/ViewRootImpl$QueuedInputEvent;)V
    .registers 8

    iget-object v0, p1, Landroid/view/ViewRootImpl$QueuedInputEvent;->mEvent:Landroid/view/InputEvent;

    invoke-virtual {v0}, Landroid/view/InputEvent;->getId()I

    move-result v0

    const-wide/16 v1, 0x8

    const-string v3, "deliverInputEvent"

    invoke-static {v1, v2, v3, v0}, Landroid/os/Trace;->asyncTraceEnd(JLjava/lang/String;I)V

    iget-object v0, p0, Landroid/view/ViewRootImpl;->mDynamicBufferInfo:Landroid/view/animation/ChoreographerInjectorStub$DynamicBufferInfoStub;

    if-eqz v0, :cond_16

    iget-object v3, p1, Landroid/view/ViewRootImpl$QueuedInputEvent;->mEvent:Landroid/view/InputEvent;

    invoke-interface {v0, v3}, Landroid/view/animation/ChoreographerInjectorStub$DynamicBufferInfoStub;->finishInputEvent(Landroid/view/InputEvent;)V

    :cond_16
    iget-object v0, p1, Landroid/view/ViewRootImpl$QueuedInputEvent;->mReceiver:Landroid/view/InputEventReceiver;

    if-eqz v0, :cond_56

    iget v0, p1, Landroid/view/ViewRootImpl$QueuedInputEvent;->mFlags:I

    and-int/lit8 v0, v0, 0x8

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v0, :cond_24

    move v0, v3

    goto :goto_25

    :cond_24
    move v0, v4

    :goto_25
    iget v5, p1, Landroid/view/ViewRootImpl$QueuedInputEvent;->mFlags:I

    and-int/lit8 v5, v5, 0x40

    if-eqz v5, :cond_2c

    goto :goto_2d

    :cond_2c
    move v3, v4

    :goto_2d
    if-eqz v3, :cond_4e

    const-string/jumbo v4, "processInputEventBeforeFinish"

    invoke-static {v1, v2, v4}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    :try_start_35
    iget-object v4, p0, Landroid/view/ViewRootImpl;->mInputCompatProcessor:Landroid/view/InputEventCompatProcessor;

    iget-object v5, p1, Landroid/view/ViewRootImpl$QueuedInputEvent;->mEvent:Landroid/view/InputEvent;

    invoke-virtual {v4, v5}, Landroid/view/InputEventCompatProcessor;->processInputEventBeforeFinish(Landroid/view/InputEvent;)Landroid/view/InputEvent;

    move-result-object v4
    :try_end_3d
    .catchall {:try_start_35 .. :try_end_3d} :catchall_49

    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    nop

    if-eqz v4, :cond_48

    iget-object v1, p1, Landroid/view/ViewRootImpl$QueuedInputEvent;->mReceiver:Landroid/view/InputEventReceiver;

    invoke-virtual {v1, v4, v0}, Landroid/view/InputEventReceiver;->finishInputEvent(Landroid/view/InputEvent;Z)V

    :cond_48
    goto :goto_55

    :catchall_49
    move-exception v4

    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    throw v4

    :cond_4e
    iget-object v1, p1, Landroid/view/ViewRootImpl$QueuedInputEvent;->mReceiver:Landroid/view/InputEventReceiver;

    iget-object v2, p1, Landroid/view/ViewRootImpl$QueuedInputEvent;->mEvent:Landroid/view/InputEvent;

    invoke-virtual {v1, v2, v0}, Landroid/view/InputEventReceiver;->finishInputEvent(Landroid/view/InputEvent;Z)V

    :goto_55
    goto :goto_5b

    :cond_56
    iget-object v0, p1, Landroid/view/ViewRootImpl$QueuedInputEvent;->mEvent:Landroid/view/InputEvent;

    invoke-virtual {v0}, Landroid/view/InputEvent;->recycleIfNeededAfterDispatch()V

    :goto_5b
    invoke-direct {p0, p1}, Landroid/view/ViewRootImpl;->recycleQueuedInputEvent(Landroid/view/ViewRootImpl$QueuedInputEvent;)V

    return-void
.end method

.method private fireAccessibilityFocusEventIfHasFocusedNode()V
    .registers 8

    iget-object v0, p0, Landroid/view/ViewRootImpl;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_d

    return-void

    :cond_d
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->findFocus()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_16

    return-void

    :cond_16
    invoke-virtual {v0}, Landroid/view/View;->getAccessibilityNodeProvider()Landroid/view/accessibility/AccessibilityNodeProvider;

    move-result-object v1

    const/16 v2, 0x8

    if-nez v1, :cond_22

    invoke-virtual {v0, v2}, Landroid/view/View;->sendAccessibilityEvent(I)V

    goto :goto_70

    :cond_22
    invoke-direct {p0, v1}, Landroid/view/ViewRootImpl;->findFocusedVirtualNode(Landroid/view/accessibility/AccessibilityNodeProvider;)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v3

    if-eqz v3, :cond_70

    nop

    invoke-virtual {v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->getSourceNodeId()J

    move-result-wide v4

    invoke-static {v4, v5}, Landroid/view/accessibility/AccessibilityNodeInfo;->getVirtualDescendantId(J)I

    move-result v4

    invoke-static {v2}, Landroid/view/accessibility/AccessibilityEvent;->obtain(I)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v2

    invoke-virtual {v2, v0, v4}, Landroid/view/accessibility/AccessibilityEvent;->setSource(Landroid/view/View;I)V

    invoke-virtual {v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->getPackageName()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/view/accessibility/AccessibilityEvent;->setPackageName(Ljava/lang/CharSequence;)V

    invoke-virtual {v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->isChecked()Z

    move-result v5

    invoke-virtual {v2, v5}, Landroid/view/accessibility/AccessibilityEvent;->setChecked(Z)V

    invoke-virtual {v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/view/accessibility/AccessibilityEvent;->setContentDescription(Ljava/lang/CharSequence;)V

    invoke-virtual {v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->isPassword()Z

    move-result v5

    invoke-virtual {v2, v5}, Landroid/view/accessibility/AccessibilityEvent;->setPassword(Z)V

    invoke-virtual {v2}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v5

    invoke-virtual {v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->getText()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->isEnabled()Z

    move-result v5

    invoke-virtual {v2, v5}, Landroid/view/accessibility/AccessibilityEvent;->setEnabled(Z)V

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    invoke-interface {v5, v0, v2}, Landroid/view/ViewParent;->requestSendAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    invoke-virtual {v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->recycle()V

    :cond_70
    :goto_70
    return-void
.end method

.method private static forceLayout(Landroid/view/View;)V
    .registers 5

    invoke-virtual {p0}, Landroid/view/View;->forceLayout()V

    instance-of v0, p0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_1b

    move-object v0, p0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    const/4 v2, 0x0

    :goto_f
    if-ge v2, v1, :cond_1b

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-static {v3}, Landroid/view/ViewRootImpl;->forceLayout(Landroid/view/View;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_f

    :cond_1b
    return-void
.end method

.method private getAccessibilityFocusedDrawable()Landroid/graphics/drawable/Drawable;
    .registers 6

    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v0, Landroid/view/View$AttachInfo;->mAccessibilityFocusDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_2b

    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    iget-object v1, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    iget-object v1, v1, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    const v2, 0x1120007

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v0, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    move-result v1

    if-eqz v1, :cond_2b

    iget-object v2, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v3, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    iget-object v3, v3, Landroid/view/View;->mContext:Landroid/content/Context;

    iget v4, v0, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {v3, v4}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, v2, Landroid/view/View$AttachInfo;->mAccessibilityFocusDrawable:Landroid/graphics/drawable/Drawable;

    :cond_2b
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v0, Landroid/view/View$AttachInfo;->mAccessibilityFocusDrawable:Landroid/graphics/drawable/Drawable;

    instance-of v0, v0, Landroid/graphics/drawable/GradientDrawable;

    if-eqz v0, :cond_48

    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v0, Landroid/view/View$AttachInfo;->mAccessibilityFocusDrawable:Landroid/graphics/drawable/Drawable;

    check-cast v0, Landroid/graphics/drawable/GradientDrawable;

    iget-object v1, p0, Landroid/view/ViewRootImpl;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityManager;->getAccessibilityFocusStrokeWidth()I

    move-result v1

    iget-object v2, p0, Landroid/view/ViewRootImpl;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v2}, Landroid/view/accessibility/AccessibilityManager;->getAccessibilityFocusColor()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    :cond_48
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v0, Landroid/view/View$AttachInfo;->mAccessibilityFocusDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method private getAccessibilityFocusedRect(Landroid/graphics/Rect;)Z
    .registers 10

    iget-object v0, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    iget-object v0, v0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_5c

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result v1

    if-nez v1, :cond_16

    goto :goto_5c

    :cond_16
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mAccessibilityFocusedHost:Landroid/view/View;

    if-eqz v1, :cond_5b

    iget-object v3, v1, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-nez v3, :cond_1f

    goto :goto_5b

    :cond_1f
    invoke-virtual {v1}, Landroid/view/View;->getAccessibilityNodeProvider()Landroid/view/accessibility/AccessibilityNodeProvider;

    move-result-object v3

    const/4 v4, 0x1

    if-nez v3, :cond_2a

    invoke-virtual {v1, p1, v4}, Landroid/view/View;->getBoundsOnScreen(Landroid/graphics/Rect;Z)V

    goto :goto_31

    :cond_2a
    iget-object v5, p0, Landroid/view/ViewRootImpl;->mAccessibilityFocusedVirtualView:Landroid/view/accessibility/AccessibilityNodeInfo;

    if-eqz v5, :cond_5a

    invoke-virtual {v5, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getBoundsInScreen(Landroid/graphics/Rect;)V

    :goto_31
    iget-object v5, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v6, v5, Landroid/view/View$AttachInfo;->mViewRootImpl:Landroid/view/ViewRootImpl;

    iget v6, v6, Landroid/view/ViewRootImpl;->mScrollY:I

    invoke-virtual {p1, v2, v6}, Landroid/graphics/Rect;->offset(II)V

    iget v6, v5, Landroid/view/View$AttachInfo;->mWindowLeft:I

    neg-int v6, v6

    iget v7, v5, Landroid/view/View$AttachInfo;->mWindowTop:I

    neg-int v7, v7

    invoke-virtual {p1, v6, v7}, Landroid/graphics/Rect;->offset(II)V

    iget-object v6, v5, Landroid/view/View$AttachInfo;->mViewRootImpl:Landroid/view/ViewRootImpl;

    iget v6, v6, Landroid/view/ViewRootImpl;->mWidth:I

    iget-object v7, v5, Landroid/view/View$AttachInfo;->mViewRootImpl:Landroid/view/ViewRootImpl;

    iget v7, v7, Landroid/view/ViewRootImpl;->mHeight:I

    invoke-virtual {p1, v2, v2, v6, v7}, Landroid/graphics/Rect;->intersect(IIII)Z

    move-result v2

    if-nez v2, :cond_54

    invoke-virtual {p1}, Landroid/graphics/Rect;->setEmpty()V

    :cond_54
    invoke-virtual {p1}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v2

    xor-int/2addr v2, v4

    return v2

    :cond_5a
    return v2

    :cond_5b
    :goto_5b
    return v2

    :cond_5c
    :goto_5c
    return v2
.end method

.method private getAttachedWindowFrame()Landroid/graphics/Rect;
    .registers 4

    iget-object v0, p0, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    iget-object v1, p0, Landroid/view/ViewRootImpl;->mParentViewRoot:Landroid/view/ViewRootImpl;

    if-eqz v1, :cond_16

    const/16 v2, 0x3e8

    if-lt v0, v2, :cond_16

    const/16 v2, 0x7cf

    if-gt v0, v2, :cond_16

    const/16 v2, 0x3eb

    if-eq v0, v2, :cond_16

    const/4 v2, 0x1

    goto :goto_17

    :cond_16
    const/4 v2, 0x0

    :goto_17
    if-eqz v2, :cond_1c

    iget-object v1, v1, Landroid/view/ViewRootImpl;->mWinFrame:Landroid/graphics/Rect;

    goto :goto_1d

    :cond_1c
    const/4 v1, 0x0

    :goto_1d
    return-object v1
.end method

.method private getAudioManager()Landroid/media/AudioManager;
    .registers 3

    iget-object v0, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    if-eqz v0, :cond_19

    iget-object v1, p0, Landroid/view/ViewRootImpl;->mAudioManager:Landroid/media/AudioManager;

    if-nez v1, :cond_16

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Landroid/view/ViewRootImpl;->mAudioManager:Landroid/media/AudioManager;

    :cond_16
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAudioManager:Landroid/media/AudioManager;

    return-object v0

    :cond_19
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "getAudioManager called when there is no mView"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private getAutofillManager()Landroid/view/autofill/AutofillManager;
    .registers 4

    iget-object v0, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    instance-of v1, v0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_20

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-lez v1, :cond_20

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Landroid/view/autofill/AutofillManager;

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/autofill/AutofillManager;

    return-object v1

    :cond_20
    const/4 v0, 0x0

    return-object v0
.end method

.method private getCommonPredecessor(Landroid/view/View;Landroid/view/View;)Landroid/view/View;
    .registers 8

    iget-object v0, p0, Landroid/view/ViewRootImpl;->mTempHashSet:Ljava/util/HashSet;

    if-nez v0, :cond_b

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Landroid/view/ViewRootImpl;->mTempHashSet:Ljava/util/HashSet;

    :cond_b
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mTempHashSet:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    move-object v1, p1

    :goto_11
    if-eqz v1, :cond_22

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    iget-object v2, v1, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    instance-of v3, v2, Landroid/view/View;

    if-eqz v3, :cond_20

    move-object v1, v2

    check-cast v1, Landroid/view/View;

    goto :goto_21

    :cond_20
    const/4 v1, 0x0

    :goto_21
    goto :goto_11

    :cond_22
    move-object v2, p2

    :goto_23
    if-eqz v2, :cond_3b

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2f

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    return-object v2

    :cond_2f
    iget-object v3, v2, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    instance-of v4, v3, Landroid/view/View;

    if-eqz v4, :cond_39

    move-object v2, v3

    check-cast v2, Landroid/view/View;

    goto :goto_3a

    :cond_39
    const/4 v2, 0x0

    :goto_3a
    goto :goto_23

    :cond_3b
    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    const/4 v3, 0x0

    return-object v3
.end method

.method private getConfiguration()Landroid/content/res/Configuration;
    .registers 2

    iget-object v0, p0, Landroid/view/ViewRootImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    return-object v0
.end method

.method private getFocusedViewOrNull()Landroid/view/View;
    .registers 2

    iget-object v0, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Landroid/view/View;->findFocus()Landroid/view/View;

    move-result-object v0

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return-object v0
.end method

.method private getImpliedSystemUiVisibility(Landroid/view/WindowManager$LayoutParams;)I
    .registers 5

    const/4 v0, 0x0

    iget v1, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v2, 0x4000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_a

    or-int/lit16 v0, v0, 0x500

    :cond_a
    iget v1, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v2, 0x8000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_13

    or-int/lit16 v0, v0, 0x300

    :cond_13
    return v0
.end method

.method private getNavBarMode()I
    .registers 3

    iget-object v0, p0, Landroid/view/ViewRootImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10e00ae

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    return v0
.end method

.method private getNightMode()I
    .registers 2

    invoke-direct {p0}, Landroid/view/ViewRootImpl;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v0, v0, 0x30

    return v0
.end method

.method private static getRootMeasureSpec(III)I
    .registers 5

    and-int/lit16 v0, p2, 0x2000

    if-eqz v0, :cond_6

    const/4 v0, -0x1

    goto :goto_7

    :cond_6
    move v0, p1

    :goto_7
    const/high16 v1, 0x40000000  # 2.0f

    packed-switch v0, :pswitch_data_1e

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    goto :goto_1d

    :pswitch_11  #0xffffffff
    invoke-static {p0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    goto :goto_1d

    :pswitch_16  #0xfffffffe
    const/high16 v1, -0x80000000

    invoke-static {p0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    nop

    :goto_1d
    return v1

    :pswitch_data_1e
    .packed-switch -0x2
        :pswitch_16  #fffffffe
        :pswitch_11  #ffffffff
    .end packed-switch
.end method

.method static getRunQueue()Landroid/view/HandlerActionQueue;
    .registers 3

    sget-object v0, Landroid/view/ViewRootImpl;->sRunQueues:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/HandlerActionQueue;

    if-eqz v1, :cond_b

    return-object v1

    :cond_b
    new-instance v2, Landroid/view/HandlerActionQueue;

    invoke-direct {v2}, Landroid/view/HandlerActionQueue;-><init>()V

    move-object v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    return-object v1
.end method

.method private getSourceForAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Landroid/view/View;
    .registers 6

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getSourceNodeId()J

    move-result-wide v0

    invoke-static {v0, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getAccessibilityViewId(J)I

    move-result v2

    invoke-static {}, Landroid/view/accessibility/AccessibilityNodeIdManager;->getInstance()Landroid/view/accessibility/AccessibilityNodeIdManager;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/view/accessibility/AccessibilityNodeIdManager;->findView(I)Landroid/view/View;

    move-result-object v3

    return-object v3
.end method

.method private getValidLayoutRequesters(Ljava/util/ArrayList;Z)Ljava/util/ArrayList;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;Z)",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_6
    const/16 v3, 0x1000

    if-ge v2, v0, :cond_4d

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    if-eqz v4, :cond_4a

    iget-object v5, v4, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v5, :cond_4a

    iget-object v5, v4, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    if-eqz v5, :cond_4a

    if-nez p2, :cond_21

    iget v5, v4, Landroid/view/View;->mPrivateFlags:I

    and-int/2addr v5, v3

    if-ne v5, v3, :cond_4a

    :cond_21
    const/4 v3, 0x0

    move-object v5, v4

    :goto_23
    if-eqz v5, :cond_3d

    iget v6, v5, Landroid/view/View;->mViewFlags:I

    and-int/lit8 v6, v6, 0xc

    const/16 v7, 0x8

    if-ne v6, v7, :cond_2f

    const/4 v3, 0x1

    goto :goto_3d

    :cond_2f
    iget-object v6, v5, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    instance-of v6, v6, Landroid/view/View;

    if-eqz v6, :cond_3b

    iget-object v6, v5, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    move-object v5, v6

    check-cast v5, Landroid/view/View;

    goto :goto_23

    :cond_3b
    const/4 v5, 0x0

    goto :goto_23

    :cond_3d
    :goto_3d
    if-nez v3, :cond_4a

    if-nez v1, :cond_47

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    move-object v1, v6

    :cond_47
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4a
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    :cond_4d
    if-nez p2, :cond_76

    const/4 v2, 0x0

    :goto_50
    if-ge v2, v0, :cond_76

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    :goto_58
    if-eqz v4, :cond_73

    iget v5, v4, Landroid/view/View;->mPrivateFlags:I

    and-int/2addr v5, v3

    if-eqz v5, :cond_73

    iget v5, v4, Landroid/view/View;->mPrivateFlags:I

    and-int/lit16 v5, v5, -0x1001

    iput v5, v4, Landroid/view/View;->mPrivateFlags:I

    iget-object v5, v4, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    instance-of v5, v5, Landroid/view/View;

    if-eqz v5, :cond_71

    iget-object v5, v4, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    move-object v4, v5

    check-cast v4, Landroid/view/View;

    goto :goto_58

    :cond_71
    const/4 v4, 0x0

    goto :goto_58

    :cond_73
    add-int/lit8 v2, v2, 0x1

    goto :goto_50

    :cond_76
    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    return-object v1
.end method

.method private getWindowBoundsInsetSystemBars()Landroid/graphics/Rect;
    .registers 5

    new-instance v0, Landroid/graphics/Rect;

    iget-object v1, p0, Landroid/view/ViewRootImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget-object v1, v1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v1}, Landroid/app/WindowConfiguration;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iget-object v1, p0, Landroid/view/ViewRootImpl;->mInsetsController:Landroid/view/InsetsController;

    invoke-virtual {v1}, Landroid/view/InsetsController;->getState()Landroid/view/InsetsState;

    move-result-object v1

    invoke-static {}, Landroid/view/WindowInsets$Type;->systemBars()I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v2, v3}, Landroid/view/InsetsState;->calculateInsets(Landroid/graphics/Rect;IZ)Landroid/graphics/Insets;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->inset(Landroid/graphics/Insets;)V

    return-object v0
.end method

.method private handleContentCaptureFlush()V
    .registers 6

    const-wide/16 v0, 0x8

    invoke-static {v0, v1}, Landroid/os/Trace;->isTagEnabled(J)Z

    move-result v2

    if-eqz v2, :cond_26

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "flushContentCapture for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    :cond_26
    :try_start_26
    invoke-direct {p0}, Landroid/view/ViewRootImpl;->isContentCaptureEnabled()Z

    move-result v2
    :try_end_2a
    .catchall {:try_start_26 .. :try_end_2a} :catchall_4a

    if-nez v2, :cond_30

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    return-void

    :cond_30
    :try_start_30
    iget-object v2, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v2, v2, Landroid/view/View$AttachInfo;->mContentCaptureManager:Landroid/view/contentcapture/ContentCaptureManager;

    if-nez v2, :cond_41

    const-string v3, "ViewRootImpl"

    const-string v4, "No ContentCapture on AttachInfo"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3d
    .catchall {:try_start_30 .. :try_end_3d} :catchall_4a

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    return-void

    :cond_41
    const/4 v3, 0x2

    :try_start_42
    invoke-virtual {v2, v3}, Landroid/view/contentcapture/ContentCaptureManager;->flush(I)V
    :try_end_45
    .catchall {:try_start_42 .. :try_end_45} :catchall_4a

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    nop

    return-void

    :catchall_4a
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    throw v2
.end method

.method private handleDispatchSystemUiVisibilityChanged(Landroid/view/ViewRootImpl$SystemUiVisibilityInfo;)V
    .registers 5

    iget-object v0, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    if-nez v0, :cond_5

    return-void

    :cond_5
    iget v0, p1, Landroid/view/ViewRootImpl$SystemUiVisibilityInfo;->localChanges:I

    if-eqz v0, :cond_15

    iget-object v0, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    iget v1, p1, Landroid/view/ViewRootImpl$SystemUiVisibilityInfo;->localValue:I

    iget v2, p1, Landroid/view/ViewRootImpl$SystemUiVisibilityInfo;->localChanges:I

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->updateLocalSystemUiVisibility(II)Z

    const/4 v0, 0x0

    iput v0, p1, Landroid/view/ViewRootImpl$SystemUiVisibilityInfo;->localChanges:I

    :cond_15
    iget v0, p1, Landroid/view/ViewRootImpl$SystemUiVisibilityInfo;->globalVisibility:I

    and-int/lit8 v0, v0, 0x7

    iget v1, p0, Landroid/view/ViewRootImpl;->mDispatchedSystemUiVisibility:I

    if-eq v1, v0, :cond_24

    iput v0, p0, Landroid/view/ViewRootImpl;->mDispatchedSystemUiVisibility:I

    iget-object v1, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->dispatchSystemUiVisibilityChanged(I)V

    :cond_24
    return-void
.end method

.method private handleDragEvent(Landroid/view/DragEvent;)V
    .registers 11

    iget-object v0, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    if-eqz v0, :cond_12c

    iget-boolean v0, p0, Landroid/view/ViewRootImpl;->mAdded:Z

    if-eqz v0, :cond_12c

    iget v0, p1, Landroid/view/DragEvent;->mAction:I

    const/4 v1, 0x1

    const/4 v2, 0x4

    const/4 v3, 0x0

    if-ne v0, v1, :cond_1f

    iput-object v3, p0, Landroid/view/ViewRootImpl;->mCurrentDragView:Landroid/view/View;

    iget-object v1, p1, Landroid/view/DragEvent;->mClipDescription:Landroid/content/ClipDescription;

    iput-object v1, p0, Landroid/view/ViewRootImpl;->mDragDescription:Landroid/content/ClipDescription;

    iget-object v1, p0, Landroid/view/ViewRootImpl;->mStartedDragViewForA11y:Landroid/view/View;

    if-eqz v1, :cond_27

    const/16 v4, 0x80

    invoke-virtual {v1, v4}, Landroid/view/View;->sendWindowContentChangedAccessibilityEvent(I)V

    goto :goto_27

    :cond_1f
    if-ne v0, v2, :cond_23

    iput-object v3, p0, Landroid/view/ViewRootImpl;->mDragDescription:Landroid/content/ClipDescription;

    :cond_23
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mDragDescription:Landroid/content/ClipDescription;

    iput-object v1, p1, Landroid/view/DragEvent;->mClipDescription:Landroid/content/ClipDescription;

    :cond_27
    :goto_27
    const/4 v1, 0x6

    if-ne v0, v1, :cond_38

    sget-boolean v1, Landroid/view/View;->sCascadedDragDrop:Z

    if-eqz v1, :cond_33

    iget-object v1, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v1, p1}, Landroid/view/View;->dispatchDragEnterExitInPreN(Landroid/view/DragEvent;)Z

    :cond_33
    invoke-virtual {p0, v3, p1}, Landroid/view/ViewRootImpl;->setDragFocus(Landroid/view/View;Landroid/view/DragEvent;)V

    goto/16 :goto_12c

    :cond_38
    const/4 v1, 0x2

    const/4 v4, 0x3

    if-eq v0, v1, :cond_3e

    if-ne v0, v4, :cond_67

    :cond_3e
    iget-object v5, p0, Landroid/view/ViewRootImpl;->mDragPoint:Landroid/graphics/PointF;

    iget v6, p1, Landroid/view/DragEvent;->mX:F

    iget v7, p1, Landroid/view/DragEvent;->mY:F

    invoke-virtual {v5, v6, v7}, Landroid/graphics/PointF;->set(FF)V

    iget-object v5, p0, Landroid/view/ViewRootImpl;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    if-eqz v5, :cond_50

    iget-object v6, p0, Landroid/view/ViewRootImpl;->mDragPoint:Landroid/graphics/PointF;

    invoke-virtual {v5, v6}, Landroid/content/res/CompatibilityInfo$Translator;->translatePointInScreenToAppWindow(Landroid/graphics/PointF;)V

    :cond_50
    iget v5, p0, Landroid/view/ViewRootImpl;->mCurScrollY:I

    if-eqz v5, :cond_5b

    iget-object v6, p0, Landroid/view/ViewRootImpl;->mDragPoint:Landroid/graphics/PointF;

    const/4 v7, 0x0

    int-to-float v5, v5

    invoke-virtual {v6, v7, v5}, Landroid/graphics/PointF;->offset(FF)V

    :cond_5b
    iget-object v5, p0, Landroid/view/ViewRootImpl;->mDragPoint:Landroid/graphics/PointF;

    iget v5, v5, Landroid/graphics/PointF;->x:F

    iput v5, p1, Landroid/view/DragEvent;->mX:F

    iget-object v5, p0, Landroid/view/ViewRootImpl;->mDragPoint:Landroid/graphics/PointF;

    iget v5, v5, Landroid/graphics/PointF;->y:F

    iput v5, p1, Landroid/view/DragEvent;->mY:F

    :cond_67
    iget-object v5, p0, Landroid/view/ViewRootImpl;->mCurrentDragView:Landroid/view/View;

    if-ne v0, v4, :cond_7e

    iget-object v6, p1, Landroid/view/DragEvent;->mClipData:Landroid/content/ClipData;

    if-eqz v6, :cond_7e

    iget-object v6, p1, Landroid/view/DragEvent;->mClipData:Landroid/content/ClipData;

    iget-object v7, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getAttributionSource()Landroid/content/AttributionSource;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/content/ClipData;->prepareToEnterProcess(Landroid/content/AttributionSource;)V

    :cond_7e
    iget-object v6, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v6, p1}, Landroid/view/View;->dispatchDragEvent(Landroid/view/DragEvent;)Z

    move-result v6

    if-ne v0, v1, :cond_8d

    iget-boolean v1, p1, Landroid/view/DragEvent;->mEventHandlerWasCalled:Z

    if-nez v1, :cond_8d

    invoke-virtual {p0, v3, p1}, Landroid/view/ViewRootImpl;->setDragFocus(Landroid/view/View;Landroid/view/DragEvent;)V

    :cond_8d
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mCurrentDragView:Landroid/view/View;

    if-eq v5, v1, :cond_b1

    if-eqz v5, :cond_9a

    :try_start_93
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mWindowSession:Landroid/view/IWindowSession;

    iget-object v7, p0, Landroid/view/ViewRootImpl;->mWindow:Landroid/view/ViewRootImpl$W;

    invoke-interface {v1, v7}, Landroid/view/IWindowSession;->dragRecipientExited(Landroid/view/IWindow;)V

    :cond_9a
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mCurrentDragView:Landroid/view/View;

    if-eqz v1, :cond_a8

    iget-object v1, p0, Landroid/view/ViewRootImpl;->mWindowSession:Landroid/view/IWindowSession;

    iget-object v7, p0, Landroid/view/ViewRootImpl;->mWindow:Landroid/view/ViewRootImpl$W;

    invoke-interface {v1, v7}, Landroid/view/IWindowSession;->dragRecipientEntered(Landroid/view/IWindow;)V

    invoke-direct {p0}, Landroid/view/ViewRootImpl;->setPendingDragEndedLoc()V
    :try_end_a8
    .catch Landroid/os/RemoteException; {:try_start_93 .. :try_end_a8} :catch_a9

    :cond_a8
    goto :goto_b1

    :catch_a9
    move-exception v1

    iget-object v7, p0, Landroid/view/ViewRootImpl;->mTag:Ljava/lang/String;

    const-string v8, "Unable to note drag target change"

    invoke-static {v7, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_b1
    :goto_b1
    invoke-static {}, Lcom/xiaomi/mirror/MiuiMirrorStub;->getInstance()Lcom/xiaomi/mirror/MiuiMirrorStub;

    move-result-object v1

    invoke-interface {v1}, Lcom/xiaomi/mirror/MiuiMirrorStub;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_c4

    invoke-static {}, Lcom/xiaomi/mirror/MiuiMirrorStub;->getInstance()Lcom/xiaomi/mirror/MiuiMirrorStub;

    move-result-object v1

    iget-object v7, p0, Landroid/view/ViewRootImpl;->mWindow:Landroid/view/ViewRootImpl$W;

    invoke-interface {v1, v0, v7, v6}, Lcom/xiaomi/mirror/MiuiMirrorStub;->reportDragResult(ILandroid/view/IWindow;Z)V

    :cond_c4
    if-ne v0, v4, :cond_ee

    :try_start_c6
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mTag:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Reporting drop result: "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Landroid/view/ViewRootImpl;->mWindowSession:Landroid/view/IWindowSession;

    iget-object v4, p0, Landroid/view/ViewRootImpl;->mWindow:Landroid/view/ViewRootImpl$W;

    invoke-interface {v1, v4, v6}, Landroid/view/IWindowSession;->reportDropResult(Landroid/view/IWindow;Z)V
    :try_end_e5
    .catch Landroid/os/RemoteException; {:try_start_c6 .. :try_end_e5} :catch_e6

    goto :goto_ee

    :catch_e6
    move-exception v1

    iget-object v4, p0, Landroid/view/ViewRootImpl;->mTag:Ljava/lang/String;

    const-string v7, "Unable to report drop result"

    invoke-static {v4, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_ee
    :goto_ee
    if-ne v0, v2, :cond_12c

    iget-object v1, p0, Landroid/view/ViewRootImpl;->mStartedDragViewForA11y:Landroid/view/View;

    if-eqz v1, :cond_107

    invoke-virtual {p1}, Landroid/view/DragEvent;->getResult()Z

    move-result v1

    if-nez v1, :cond_101

    iget-object v1, p0, Landroid/view/ViewRootImpl;->mStartedDragViewForA11y:Landroid/view/View;

    const/16 v2, 0x200

    invoke-virtual {v1, v2}, Landroid/view/View;->sendWindowContentChangedAccessibilityEvent(I)V

    :cond_101
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mStartedDragViewForA11y:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setAccessibilityDragStarted(Z)V

    :cond_107
    iput-object v3, p0, Landroid/view/ViewRootImpl;->mStartedDragViewForA11y:Landroid/view/View;

    iput-object v3, p0, Landroid/view/ViewRootImpl;->mCurrentDragView:Landroid/view/View;

    invoke-virtual {p0, v3}, Landroid/view/ViewRootImpl;->setLocalDragState(Ljava/lang/Object;)V

    iget-object v1, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iput-object v3, v1, Landroid/view/View$AttachInfo;->mDragToken:Landroid/os/IBinder;

    invoke-static {}, Lcom/xiaomi/mirror/MiuiMirrorStub;->getInstance()Lcom/xiaomi/mirror/MiuiMirrorStub;

    move-result-object v1

    iget-object v2, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    invoke-interface {v1, v2}, Lcom/xiaomi/mirror/MiuiMirrorStub;->cleanDragToken(Ljava/lang/Object;)V

    iget-object v1, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v1, v1, Landroid/view/View$AttachInfo;->mDragSurface:Landroid/view/Surface;

    if-eqz v1, :cond_12c

    iget-object v1, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v1, v1, Landroid/view/View$AttachInfo;->mDragSurface:Landroid/view/Surface;

    invoke-virtual {v1}, Landroid/view/Surface;->release()V

    iget-object v1, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iput-object v3, v1, Landroid/view/View$AttachInfo;->mDragSurface:Landroid/view/Surface;

    :cond_12c
    :goto_12c
    invoke-virtual {p1}, Landroid/view/DragEvent;->recycle()V

    return-void
.end method

.method private handleOutOfResourcesException(Landroid/view/Surface$OutOfResourcesException;)V
    .registers 4

    iget-object v0, p0, Landroid/view/ViewRootImpl;->mTag:Ljava/lang/String;

    const-string v1, "OutOfResourcesException initializing HW surface"

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :try_start_7
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mWindowSession:Landroid/view/IWindowSession;

    iget-object v1, p0, Landroid/view/ViewRootImpl;->mWindow:Landroid/view/ViewRootImpl$W;

    invoke-interface {v0, v1}, Landroid/view/IWindowSession;->outOfMemory(Landroid/view/IWindow;)Z

    move-result v0

    if-nez v0, :cond_27

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v0

    const/16 v1, 0x3e8

    if-eq v0, v1, :cond_27

    iget-object v0, p0, Landroid/view/ViewRootImpl;->mTag:Ljava/lang/String;

    const-string v1, "No processes killed for memory; killing self"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-static {v0}, Landroid/os/Process;->killProcess(I)V
    :try_end_27
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_27} :catch_28

    :cond_27
    goto :goto_29

    :catch_28
    move-exception v0

    :goto_29
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/ViewRootImpl;->mLayoutRequested:Z

    return-void
.end method

.method private handlePointerCaptureChanged(Z)V
    .registers 3

    iget-boolean v0, p0, Landroid/view/ViewRootImpl;->mPointerCapture:Z

    if-ne v0, p1, :cond_5

    return-void

    :cond_5
    iput-boolean p1, p0, Landroid/view/ViewRootImpl;->mPointerCapture:Z

    iget-object v0, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    if-eqz v0, :cond_e

    invoke-virtual {v0, p1}, Landroid/view/View;->dispatchPointerCaptureChanged(Z)V

    :cond_e
    return-void
.end method

.method private handleResized(ILcom/android/internal/os/SomeArgs;)V
    .registers 24

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p2

    iget-boolean v3, v0, Landroid/view/ViewRootImpl;->mAdded:Z

    if-nez v3, :cond_b

    return-void

    :cond_b
    iget-object v3, v2, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v3, Landroid/window/ClientWindowFrames;

    iget-object v4, v2, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v4, Landroid/util/MergedConfiguration;

    iget v5, v2, Lcom/android/internal/os/SomeArgs;->argi1:I

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-eqz v5, :cond_1b

    move v5, v7

    goto :goto_1c

    :cond_1b
    move v5, v6

    :goto_1c
    iget v8, v2, Lcom/android/internal/os/SomeArgs;->argi3:I

    iget v9, v2, Lcom/android/internal/os/SomeArgs;->argi5:I

    iget-object v10, v3, Landroid/window/ClientWindowFrames;->frame:Landroid/graphics/Rect;

    iget-object v11, v3, Landroid/window/ClientWindowFrames;->displayFrame:Landroid/graphics/Rect;

    iget-object v12, v0, Landroid/view/ViewRootImpl;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    if-eqz v12, :cond_30

    invoke-virtual {v12, v10}, Landroid/content/res/CompatibilityInfo$Translator;->translateRectInScreenToAppWindow(Landroid/graphics/Rect;)V

    iget-object v12, v0, Landroid/view/ViewRootImpl;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    invoke-virtual {v12, v11}, Landroid/content/res/CompatibilityInfo$Translator;->translateRectInScreenToAppWindow(Landroid/graphics/Rect;)V

    :cond_30
    iget-object v12, v0, Landroid/view/ViewRootImpl;->mWinFrame:Landroid/graphics/Rect;

    invoke-virtual {v12, v10}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v12

    xor-int/2addr v12, v7

    iget-object v13, v0, Landroid/view/ViewRootImpl;->mLastReportedMergedConfiguration:Landroid/util/MergedConfiguration;

    invoke-virtual {v13, v4}, Landroid/util/MergedConfiguration;->equals(Ljava/lang/Object;)Z

    move-result v13

    xor-int/2addr v13, v7

    iget-object v14, v0, Landroid/view/ViewRootImpl;->mDisplay:Landroid/view/Display;

    invoke-virtual {v14}, Landroid/view/Display;->getDisplayId()I

    move-result v14

    if-eq v14, v8, :cond_48

    move v14, v7

    goto :goto_49

    :cond_48
    move v14, v6

    :goto_49
    iget v15, v0, Landroid/view/ViewRootImpl;->mResizeMode:I

    if-eq v15, v9, :cond_4f

    move v15, v7

    goto :goto_50

    :cond_4f
    move v15, v6

    :goto_50
    const/4 v7, 0x4

    if-ne v1, v7, :cond_5e

    if-nez v12, :cond_5e

    if-nez v13, :cond_5e

    if-nez v14, :cond_5e

    if-nez v15, :cond_5e

    if-nez v5, :cond_5e

    return-void

    :cond_5e
    const/4 v7, -0x1

    if-eq v9, v7, :cond_63

    const/4 v7, 0x1

    goto :goto_64

    :cond_63
    move v7, v6

    :goto_64
    iput-boolean v7, v0, Landroid/view/ViewRootImpl;->mPendingDragResizing:Z

    iput v9, v0, Landroid/view/ViewRootImpl;->mResizeMode:I

    if-eqz v13, :cond_74

    nop

    if-eqz v14, :cond_6f

    move v7, v8

    goto :goto_70

    :cond_6f
    const/4 v7, -0x1

    :goto_70
    invoke-direct {v0, v4, v6, v7}, Landroid/view/ViewRootImpl;->performConfigurationChange(Landroid/util/MergedConfiguration;ZI)V

    goto :goto_7b

    :cond_74
    if-eqz v14, :cond_7b

    iget-object v7, v0, Landroid/view/ViewRootImpl;->mLastConfigurationFromResources:Landroid/content/res/Configuration;

    invoke-virtual {v0, v8, v7}, Landroid/view/ViewRootImpl;->onMovedToDisplay(ILandroid/content/res/Configuration;)V

    :cond_7b
    :goto_7b
    invoke-direct {v0, v10}, Landroid/view/ViewRootImpl;->setFrame(Landroid/graphics/Rect;)V

    iget-object v7, v0, Landroid/view/ViewRootImpl;->mTmpFrames:Landroid/window/ClientWindowFrames;

    iget-object v7, v7, Landroid/window/ClientWindowFrames;->displayFrame:Landroid/graphics/Rect;

    invoke-virtual {v7, v11}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-boolean v7, v0, Landroid/view/ViewRootImpl;->mDragResizing:Z

    if-eqz v7, :cond_d0

    iget-boolean v7, v0, Landroid/view/ViewRootImpl;->mUseMTRenderer:Z

    if-eqz v7, :cond_d0

    iget-object v7, v0, Landroid/view/ViewRootImpl;->mPendingBackDropFrame:Landroid/graphics/Rect;

    invoke-virtual {v10, v7}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v7

    iget-object v6, v0, Landroid/view/ViewRootImpl;->mWindowCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    const/16 v16, 0x1

    add-int/lit8 v6, v6, -0x1

    :goto_9d
    if-ltz v6, :cond_c7

    move-object/from16 v17, v3

    iget-object v3, v0, Landroid/view/ViewRootImpl;->mWindowCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/WindowCallbacks;

    move-object/from16 v18, v4

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mPendingBackDropFrame:Landroid/graphics/Rect;

    move/from16 v19, v8

    iget-object v8, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v8, v8, Landroid/view/View$AttachInfo;->mVisibleInsets:Landroid/graphics/Rect;

    move/from16 v20, v9

    iget-object v9, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v9, v9, Landroid/view/View$AttachInfo;->mStableInsets:Landroid/graphics/Rect;

    invoke-interface {v3, v4, v7, v8, v9}, Landroid/view/WindowCallbacks;->onWindowSizeIsChanging(Landroid/graphics/Rect;ZLandroid/graphics/Rect;Landroid/graphics/Rect;)V

    add-int/lit8 v6, v6, -0x1

    move-object/from16 v3, v17

    move-object/from16 v4, v18

    move/from16 v8, v19

    move/from16 v9, v20

    goto :goto_9d

    :cond_c7
    move-object/from16 v17, v3

    move-object/from16 v18, v4

    move/from16 v19, v8

    move/from16 v20, v9

    goto :goto_da

    :cond_d0
    move-object/from16 v17, v3

    move-object/from16 v18, v4

    move/from16 v19, v8

    move/from16 v20, v9

    const/16 v16, 0x1

    :goto_da
    iput-boolean v5, v0, Landroid/view/ViewRootImpl;->mForceNextWindowRelayout:Z

    iget v3, v2, Lcom/android/internal/os/SomeArgs;->argi2:I

    if-eqz v3, :cond_e3

    move/from16 v6, v16

    goto :goto_e4

    :cond_e3
    const/4 v6, 0x0

    :goto_e4
    iput-boolean v6, v0, Landroid/view/ViewRootImpl;->mPendingAlwaysConsumeSystemBars:Z

    iget v3, v2, Lcom/android/internal/os/SomeArgs;->argi4:I

    iget v4, v0, Landroid/view/ViewRootImpl;->mSyncSeqId:I

    if-le v3, v4, :cond_ee

    iget v4, v2, Lcom/android/internal/os/SomeArgs;->argi4:I

    :cond_ee
    iput v4, v0, Landroid/view/ViewRootImpl;->mSyncSeqId:I

    const/4 v3, 0x5

    if-ne v1, v3, :cond_f6

    invoke-direct/range {p0 .. p0}, Landroid/view/ViewRootImpl;->reportNextDraw()V

    :cond_f6
    iget-object v3, v0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    if-eqz v3, :cond_101

    if-nez v12, :cond_fe

    if-eqz v13, :cond_101

    :cond_fe
    invoke-static {v3}, Landroid/view/ViewRootImpl;->forceLayout(Landroid/view/View;)V

    :cond_101
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewRootImpl;->requestLayout()V

    return-void
.end method

.method private handleWindowContentChangedEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .registers 18

    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/view/ViewRootImpl;->mAccessibilityFocusedHost:Landroid/view/View;

    if-eqz v1, :cond_8b

    iget-object v2, v0, Landroid/view/ViewRootImpl;->mAccessibilityFocusedVirtualView:Landroid/view/accessibility/AccessibilityNodeInfo;

    if-nez v2, :cond_c

    goto/16 :goto_8b

    :cond_c
    invoke-virtual {v1}, Landroid/view/View;->getAccessibilityNodeProvider()Landroid/view/accessibility/AccessibilityNodeProvider;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    if-nez v2, :cond_1c

    iput-object v4, v0, Landroid/view/ViewRootImpl;->mAccessibilityFocusedHost:Landroid/view/View;

    iput-object v4, v0, Landroid/view/ViewRootImpl;->mAccessibilityFocusedVirtualView:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {v1, v3}, Landroid/view/View;->clearAccessibilityFocusNoCallbacks(I)V

    return-void

    :cond_1c
    invoke-virtual/range {p1 .. p1}, Landroid/view/accessibility/AccessibilityEvent;->getContentChangeTypes()I

    move-result v5

    and-int/lit8 v6, v5, 0x1

    if-nez v6, :cond_27

    if-eqz v5, :cond_27

    return-void

    :cond_27
    invoke-virtual/range {p1 .. p1}, Landroid/view/accessibility/AccessibilityEvent;->getSourceNodeId()J

    move-result-wide v6

    invoke-static {v6, v7}, Landroid/view/accessibility/AccessibilityNodeInfo;->getAccessibilityViewId(J)I

    move-result v8

    const/4 v9, 0x0

    iget-object v10, v0, Landroid/view/ViewRootImpl;->mAccessibilityFocusedHost:Landroid/view/View;

    :goto_32
    if-eqz v10, :cond_4c

    if-nez v9, :cond_4c

    invoke-virtual {v10}, Landroid/view/View;->getAccessibilityViewId()I

    move-result v11

    if-ne v8, v11, :cond_3e

    const/4 v9, 0x1

    goto :goto_32

    :cond_3e
    invoke-virtual {v10}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v11

    instance-of v12, v11, Landroid/view/View;

    if-eqz v12, :cond_4a

    move-object v10, v11

    check-cast v10, Landroid/view/View;

    goto :goto_4b

    :cond_4a
    const/4 v10, 0x0

    :goto_4b
    goto :goto_32

    :cond_4c
    if-nez v9, :cond_4f

    return-void

    :cond_4f
    iget-object v11, v0, Landroid/view/ViewRootImpl;->mAccessibilityFocusedVirtualView:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {v11}, Landroid/view/accessibility/AccessibilityNodeInfo;->getSourceNodeId()J

    move-result-wide v11

    invoke-static {v11, v12}, Landroid/view/accessibility/AccessibilityNodeInfo;->getVirtualDescendantId(J)I

    move-result v13

    iget-object v14, v0, Landroid/view/ViewRootImpl;->mTempRect:Landroid/graphics/Rect;

    iget-object v15, v0, Landroid/view/ViewRootImpl;->mAccessibilityFocusedVirtualView:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {v15, v14}, Landroid/view/accessibility/AccessibilityNodeInfo;->getBoundsInScreen(Landroid/graphics/Rect;)V

    invoke-virtual {v2, v13}, Landroid/view/accessibility/AccessibilityNodeProvider;->createAccessibilityNodeInfo(I)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v15

    iput-object v15, v0, Landroid/view/ViewRootImpl;->mAccessibilityFocusedVirtualView:Landroid/view/accessibility/AccessibilityNodeInfo;

    if-nez v15, :cond_7a

    iput-object v4, v0, Landroid/view/ViewRootImpl;->mAccessibilityFocusedHost:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->clearAccessibilityFocusNoCallbacks(I)V

    sget-object v3, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_CLEAR_ACCESSIBILITY_FOCUS:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-virtual {v3}, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->getId()I

    move-result v3

    invoke-virtual {v2, v13, v3, v4}, Landroid/view/accessibility/AccessibilityNodeProvider;->performAction(IILandroid/os/Bundle;)Z

    invoke-direct {v0, v14}, Landroid/view/ViewRootImpl;->invalidateRectOnScreen(Landroid/graphics/Rect;)V

    goto :goto_8a

    :cond_7a
    invoke-virtual {v15}, Landroid/view/accessibility/AccessibilityNodeInfo;->getBoundsInScreen()Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v14, v3}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_8a

    invoke-virtual {v14, v3}, Landroid/graphics/Rect;->union(Landroid/graphics/Rect;)V

    invoke-direct {v0, v14}, Landroid/view/ViewRootImpl;->invalidateRectOnScreen(Landroid/graphics/Rect;)V

    :cond_8a
    :goto_8a
    return-void

    :cond_8b
    :goto_8b
    return-void
.end method

.method private handleWindowFocusChanged()V
    .registers 11

    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Landroid/view/ViewRootImpl;->mWindowFocusChanged:Z

    if-nez v0, :cond_7

    monitor-exit p0

    return-void

    :cond_7
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/view/ViewRootImpl;->mWindowFocusChanged:Z

    iget-boolean v1, p0, Landroid/view/ViewRootImpl;->mUpcomingWindowFocus:Z

    monitor-exit p0
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_f0

    const/4 v2, 0x1

    if-eqz v1, :cond_1f

    iget-object v3, p0, Landroid/view/ViewRootImpl;->mInsetsController:Landroid/view/InsetsController;

    invoke-direct {p0}, Landroid/view/ViewRootImpl;->getFocusedViewOrNull()Landroid/view/View;

    move-result-object v4

    if-eqz v4, :cond_1a

    move v4, v2

    goto :goto_1b

    :cond_1a
    move v4, v0

    :goto_1b
    invoke-virtual {v3, v4}, Landroid/view/InsetsController;->onWindowFocusGained(Z)V

    goto :goto_24

    :cond_1f
    iget-object v3, p0, Landroid/view/ViewRootImpl;->mInsetsController:Landroid/view/InsetsController;

    invoke-virtual {v3}, Landroid/view/InsetsController;->onWindowFocusLost()V

    :goto_24
    iget-boolean v3, p0, Landroid/view/ViewRootImpl;->mAdded:Z

    if-eqz v3, :cond_e5

    invoke-direct {p0, v1}, Landroid/view/ViewRootImpl;->profileRendering(Z)V

    if-eqz v1, :cond_81

    iget-object v3, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v3, v3, Landroid/view/View$AttachInfo;->mThreadedRenderer:Landroid/view/ThreadedRenderer;

    if-eqz v3, :cond_81

    iget-object v3, p0, Landroid/view/ViewRootImpl;->mSurface:Landroid/view/Surface;

    invoke-virtual {v3}, Landroid/view/Surface;->isValid()Z

    move-result v3

    if-eqz v3, :cond_81

    iput-boolean v2, p0, Landroid/view/ViewRootImpl;->mFullRedrawNeeded:Z

    :try_start_3d
    iget-object v3, p0, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget-object v9, v3, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    iget-object v3, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v4, v3, Landroid/view/View$AttachInfo;->mThreadedRenderer:Landroid/view/ThreadedRenderer;

    iget v5, p0, Landroid/view/ViewRootImpl;->mWidth:I

    iget v6, p0, Landroid/view/ViewRootImpl;->mHeight:I

    iget-object v7, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v8, p0, Landroid/view/ViewRootImpl;->mSurface:Landroid/view/Surface;

    invoke-virtual/range {v4 .. v9}, Landroid/view/ThreadedRenderer;->initializeIfNeeded(IILandroid/view/View$AttachInfo;Landroid/view/Surface;Landroid/graphics/Rect;)Z
    :try_end_50
    .catch Landroid/view/Surface$OutOfResourcesException; {:try_start_3d .. :try_end_50} :catch_52

    nop

    goto :goto_81

    :catch_52
    move-exception v0

    iget-object v2, p0, Landroid/view/ViewRootImpl;->mTag:Ljava/lang/String;

    const-string v3, "OutOfResourcesException locking surface"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :try_start_5a
    iget-object v2, p0, Landroid/view/ViewRootImpl;->mWindowSession:Landroid/view/IWindowSession;

    iget-object v3, p0, Landroid/view/ViewRootImpl;->mWindow:Landroid/view/ViewRootImpl$W;

    invoke-interface {v2, v3}, Landroid/view/IWindowSession;->outOfMemory(Landroid/view/IWindow;)Z

    move-result v2

    if-nez v2, :cond_72

    iget-object v2, p0, Landroid/view/ViewRootImpl;->mTag:Ljava/lang/String;

    const-string v3, "No processes killed for memory; killing self"

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v2

    invoke-static {v2}, Landroid/os/Process;->killProcess(I)V
    :try_end_72
    .catch Landroid/os/RemoteException; {:try_start_5a .. :try_end_72} :catch_73

    :cond_72
    goto :goto_74

    :catch_73
    move-exception v2

    :goto_74
    iget-object v2, p0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    const/4 v3, 0x6

    invoke-virtual {v2, v3}, Landroid/view/ViewRootImpl$ViewRootHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    const-wide/16 v4, 0x1f4

    invoke-virtual {v2, v3, v4, v5}, Landroid/view/ViewRootImpl$ViewRootHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void

    :cond_81
    :goto_81
    iget-object v3, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iput-boolean v1, v3, Landroid/view/View$AttachInfo;->mHasWindowFocus:Z

    iget-object v3, p0, Landroid/view/ViewRootImpl;->mImeFocusController:Landroid/view/ImeFocusController;

    iget-object v4, p0, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v3, v4, v2}, Landroid/view/ImeFocusController;->updateImeFocusable(Landroid/view/WindowManager$LayoutParams;Z)Z

    iget-object v2, p0, Landroid/view/ViewRootImpl;->mImeFocusController:Landroid/view/ImeFocusController;

    iget-object v3, p0, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v2, v1, v3}, Landroid/view/ImeFocusController;->onPreWindowFocus(ZLandroid/view/WindowManager$LayoutParams;)V

    iget-object v2, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    if-eqz v2, :cond_b7

    iget-object v2, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v2, v2, Landroid/view/View$AttachInfo;->mKeyDispatchState:Landroid/view/KeyEvent$DispatcherState;

    invoke-virtual {v2}, Landroid/view/KeyEvent$DispatcherState;->reset()V

    iget-object v2, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->dispatchWindowFocusChanged(Z)V

    iget-object v2, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v2, v2, Landroid/view/View$AttachInfo;->mTreeObserver:Landroid/view/ViewTreeObserver;

    invoke-virtual {v2, v1}, Landroid/view/ViewTreeObserver;->dispatchOnWindowFocusChange(Z)V

    iget-object v2, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v2, v2, Landroid/view/View$AttachInfo;->mTooltipHost:Landroid/view/View;

    if-eqz v2, :cond_b7

    iget-object v2, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v2, v2, Landroid/view/View$AttachInfo;->mTooltipHost:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->hideTooltip()V

    :cond_b7
    iget-object v2, p0, Landroid/view/ViewRootImpl;->mImeFocusController:Landroid/view/ImeFocusController;

    invoke-direct {p0}, Landroid/view/ViewRootImpl;->getFocusedViewOrNull()Landroid/view/View;

    move-result-object v3

    iget-object v4, p0, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v2, v3, v1, v4}, Landroid/view/ImeFocusController;->onPostWindowFocus(Landroid/view/View;ZLandroid/view/WindowManager$LayoutParams;)V

    if-eqz v1, :cond_de

    iget-object v0, p0, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    and-int/lit16 v2, v2, -0x101

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    iget-object v0, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager$LayoutParams;

    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    and-int/lit16 v2, v2, -0x101

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    invoke-direct {p0}, Landroid/view/ViewRootImpl;->fireAccessibilityFocusEventIfHasFocusedNode()V

    goto :goto_e5

    :cond_de
    iget-boolean v2, p0, Landroid/view/ViewRootImpl;->mPointerCapture:Z

    if-eqz v2, :cond_e5

    invoke-direct {p0, v0}, Landroid/view/ViewRootImpl;->handlePointerCaptureChanged(Z)V

    :cond_e5
    :goto_e5
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mFirstInputStage:Landroid/view/ViewRootImpl$InputStage;

    invoke-virtual {v0, v1}, Landroid/view/ViewRootImpl$InputStage;->onWindowFocusChanged(Z)V

    if-eqz v1, :cond_ef

    invoke-direct {p0}, Landroid/view/ViewRootImpl;->handleContentCaptureFlush()V

    :cond_ef
    return-void

    :catchall_f0
    move-exception v0

    :try_start_f1
    monitor-exit p0
    :try_end_f2
    .catchall {:try_start_f1 .. :try_end_f2} :catchall_f0

    throw v0
.end method

.method private handleWindowTouchModeChanged()V
    .registers 2

    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Landroid/view/ViewRootImpl;->mUpcomingInTouchMode:Z

    monitor-exit p0
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_8

    invoke-direct {p0, v0}, Landroid/view/ViewRootImpl;->ensureTouchModeLocally(Z)Z

    return-void

    :catchall_8
    move-exception v0

    :try_start_9
    monitor-exit p0
    :try_end_a
    .catchall {:try_start_9 .. :try_end_a} :catchall_8

    throw v0
.end method

.method private hideInsets(IZ)V
    .registers 5

    iget-object v0, p0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    const/16 v1, 0x20

    invoke-virtual {v0, v1, p1, p2}, Landroid/view/ViewRootImpl$ViewRootHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method private invalidateRectOnScreen(Landroid/graphics/Rect;)V
    .registers 7

    iget-object v0, p0, Landroid/view/ViewRootImpl;->mDirty:Landroid/graphics/Rect;

    iget v1, p1, Landroid/graphics/Rect;->left:I

    iget v2, p1, Landroid/graphics/Rect;->top:I

    iget v3, p1, Landroid/graphics/Rect;->right:I

    iget v4, p1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;->union(IIII)V

    iget-object v1, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget v1, v1, Landroid/view/View$AttachInfo;->mApplicationScale:F

    iget v2, p0, Landroid/view/ViewRootImpl;->mWidth:I

    int-to-float v2, v2

    mul-float/2addr v2, v1

    const/high16 v3, 0x3f000000  # 0.5f

    add-float/2addr v2, v3

    float-to-int v2, v2

    iget v4, p0, Landroid/view/ViewRootImpl;->mHeight:I

    int-to-float v4, v4

    mul-float/2addr v4, v1

    add-float/2addr v4, v3

    float-to-int v3, v4

    const/4 v4, 0x0

    invoke-virtual {v0, v4, v4, v2, v3}, Landroid/graphics/Rect;->intersect(IIII)Z

    move-result v2

    if-nez v2, :cond_29

    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    :cond_29
    iget-boolean v3, p0, Landroid/view/ViewRootImpl;->mWillDrawSoon:Z

    if-nez v3, :cond_36

    if-nez v2, :cond_33

    iget-boolean v3, p0, Landroid/view/ViewRootImpl;->mIsAnimating:Z

    if-eqz v3, :cond_36

    :cond_33
    invoke-virtual {p0}, Landroid/view/ViewRootImpl;->scheduleTraversals()V

    :cond_36
    return-void
.end method

.method public static invokeFunctor(JZ)V
    .registers 3

    return-void
.end method

.method private isAutofillUiShowing()Z
    .registers 3

    invoke-direct {p0}, Landroid/view/ViewRootImpl;->getAutofillManager()Landroid/view/autofill/AutofillManager;

    move-result-object v0

    if-nez v0, :cond_8

    const/4 v1, 0x0

    return v1

    :cond_8
    invoke-virtual {v0}, Landroid/view/autofill/AutofillManager;->isAutofillUiShowing()Z

    move-result v1

    return v1
.end method

.method private isContentCaptureEnabled()Z
    .registers 4

    iget v0, p0, Landroid/view/ViewRootImpl;->mContentCaptureEnabled:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    packed-switch v0, :pswitch_data_30

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "isContentCaptureEnabled(): invalid state "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Landroid/view/ViewRootImpl;->mContentCaptureEnabled:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "ViewRootImpl"

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :pswitch_23  #0x2
    return v1

    :pswitch_24  #0x1
    return v2

    :pswitch_25  #0x0
    invoke-direct {p0}, Landroid/view/ViewRootImpl;->isContentCaptureReallyEnabled()Z

    move-result v0

    if-eqz v0, :cond_2c

    goto :goto_2d

    :cond_2c
    const/4 v2, 0x2

    :goto_2d
    iput v2, p0, Landroid/view/ViewRootImpl;->mContentCaptureEnabled:I

    return v0

    :pswitch_data_30
    .packed-switch 0x0
        :pswitch_25  #00000000
        :pswitch_24  #00000001
        :pswitch_23  #00000002
    .end packed-switch
.end method

.method private isContentCaptureReallyEnabled()Z
    .registers 4

    iget-object v0, p0, Landroid/view/ViewRootImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentCaptureOptions()Landroid/content/ContentCaptureOptions;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_a

    return v1

    :cond_a
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v2, p0, Landroid/view/ViewRootImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v2}, Landroid/view/View$AttachInfo;->getContentCaptureManager(Landroid/content/Context;)Landroid/view/contentcapture/ContentCaptureManager;

    move-result-object v0

    if-eqz v0, :cond_1d

    invoke-virtual {v0}, Landroid/view/contentcapture/ContentCaptureManager;->isContentCaptureEnabled()Z

    move-result v2

    if-nez v2, :cond_1b

    goto :goto_1d

    :cond_1b
    const/4 v1, 0x1

    return v1

    :cond_1d
    :goto_1d
    return v1
.end method

.method private isDynamicLog()Z
    .registers 2

    iget-boolean v0, p0, Landroid/view/ViewRootImpl;->mPropDynamicLog:Z

    if-nez v0, :cond_b

    iget-boolean v0, p0, Landroid/view/ViewRootImpl;->mDynamicLog:Z

    if-eqz v0, :cond_9

    goto :goto_b

    :cond_9
    const/4 v0, 0x0

    goto :goto_c

    :cond_b
    :goto_b
    const/4 v0, 0x1

    :goto_c
    return v0
.end method

.method static isInTouchMode()Z
    .registers 2

    invoke-static {}, Landroid/view/WindowManagerGlobal;->peekWindowSession()Landroid/view/IWindowSession;

    move-result-object v0

    if-eqz v0, :cond_c

    :try_start_6
    invoke-interface {v0}, Landroid/view/IWindowSession;->getInTouchMode()Z

    move-result v1
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_a} :catch_b

    return v1

    :catch_b
    move-exception v1

    :cond_c
    const/4 v1, 0x0

    return v1
.end method

.method private static isNavigationKey(Landroid/view/KeyEvent;)Z
    .registers 2

    invoke-virtual {p0}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_c

    const/4 v0, 0x0

    return v0

    :sswitch_9
    const/4 v0, 0x1

    return v0

    nop

    :sswitch_data_c
    .sparse-switch
        0x13 -> :sswitch_9
        0x14 -> :sswitch_9
        0x15 -> :sswitch_9
        0x16 -> :sswitch_9
        0x17 -> :sswitch_9
        0x3d -> :sswitch_9
        0x3e -> :sswitch_9
        0x42 -> :sswitch_9
        0x5c -> :sswitch_9
        0x5d -> :sswitch_9
        0x7a -> :sswitch_9
        0x7b -> :sswitch_9
    .end sparse-switch
.end method

.method static isTerminalInputEvent(Landroid/view/InputEvent;)Z
    .registers 6

    instance-of v0, p0, Landroid/view/KeyEvent;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_11

    move-object v0, p0

    check-cast v0, Landroid/view/KeyEvent;

    invoke-virtual {v0}, Landroid/view/KeyEvent;->getAction()I

    move-result v3

    if-ne v3, v2, :cond_10

    move v1, v2

    :cond_10
    return v1

    :cond_11
    move-object v0, p0

    check-cast v0, Landroid/view/MotionEvent;

    invoke-virtual {v0}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    if-eq v3, v2, :cond_21

    const/4 v4, 0x3

    if-eq v3, v4, :cond_21

    const/16 v4, 0xa

    if-ne v3, v4, :cond_22

    :cond_21
    move v1, v2

    :cond_22
    return v1
.end method

.method private static isTypingKey(Landroid/view/KeyEvent;)Z
    .registers 2

    invoke-virtual {p0}, Landroid/view/KeyEvent;->getUnicodeChar()I

    move-result v0

    if-lez v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public static isViewDescendantOf(Landroid/view/View;Landroid/view/View;)Z
    .registers 5

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    instance-of v2, v1, Landroid/view/ViewGroup;

    if-eqz v2, :cond_16

    move-object v2, v1

    check-cast v2, Landroid/view/View;

    invoke-static {v2, p1}, Landroid/view/ViewRootImpl;->isViewDescendantOf(Landroid/view/View;Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_16

    goto :goto_17

    :cond_16
    const/4 v0, 0x0

    :goto_17
    return v0
.end method

.method static synthetic lambda$addFrameCommitCallbackIfNeeded$6(Ljava/util/ArrayList;)V
    .registers 3

    const/4 v0, 0x0

    :goto_1
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_13

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Runnable;

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_13
    return-void
.end method

.method static synthetic lambda$new$0(Landroid/view/View;)Ljava/util/List;
    .registers 2

    invoke-virtual {p0}, Landroid/view/View;->getSystemGestureExclusionRects()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$new$1(Landroid/view/View;)Ljava/util/List;
    .registers 2

    invoke-virtual {p0}, Landroid/view/View;->collectPreferKeepClearRects()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$new$2(Landroid/view/View;)Ljava/util/List;
    .registers 2

    invoke-virtual {p0}, Landroid/view/View;->collectUnrestrictedPreferKeepClearRects()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$performDraw$8(Landroid/window/SurfaceSyncer$SyncBufferCallback;)V
    .registers 2

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Landroid/window/SurfaceSyncer$SyncBufferCallback;->onBufferReady(Landroid/view/SurfaceControl$Transaction;)V

    return-void
.end method

.method private leaveTouchMode()Z
    .registers 5

    iget-object v0, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    const/4 v1, 0x0

    if-eqz v0, :cond_29

    invoke-virtual {v0}, Landroid/view/View;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_22

    iget-object v0, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->findFocus()Landroid/view/View;

    move-result-object v0

    instance-of v2, v0, Landroid/view/ViewGroup;

    if-nez v2, :cond_16

    return v1

    :cond_16
    move-object v2, v0

    check-cast v2, Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getDescendantFocusability()I

    move-result v2

    const/high16 v3, 0x40000

    if-eq v2, v3, :cond_22

    return v1

    :cond_22
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->restoreDefaultFocus()Z

    move-result v0

    return v0

    :cond_29
    return v1
.end method

.method private maybeHandleWindowMove(Landroid/graphics/Rect;)V
    .registers 6

    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget v0, v0, Landroid/view/View$AttachInfo;->mWindowLeft:I

    iget v1, p1, Landroid/graphics/Rect;->left:I

    const/4 v2, 0x0

    if-ne v0, v1, :cond_14

    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget v0, v0, Landroid/view/View$AttachInfo;->mWindowTop:I

    iget v1, p1, Landroid/graphics/Rect;->top:I

    if-eq v0, v1, :cond_12

    goto :goto_14

    :cond_12
    move v0, v2

    goto :goto_15

    :cond_14
    :goto_14
    const/4 v0, 0x1

    :goto_15
    if-eqz v0, :cond_23

    iget-object v1, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget v3, p1, Landroid/graphics/Rect;->left:I

    iput v3, v1, Landroid/view/View$AttachInfo;->mWindowLeft:I

    iget-object v1, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget v3, p1, Landroid/graphics/Rect;->top:I

    iput v3, v1, Landroid/view/View$AttachInfo;->mWindowTop:I

    :cond_23
    if-nez v0, :cond_2b

    iget-object v1, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-boolean v1, v1, Landroid/view/View$AttachInfo;->mNeedsUpdateLightCenter:Z

    if-eqz v1, :cond_3e

    :cond_2b
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v1, v1, Landroid/view/View$AttachInfo;->mThreadedRenderer:Landroid/view/ThreadedRenderer;

    if-eqz v1, :cond_3a

    iget-object v1, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v1, v1, Landroid/view/View$AttachInfo;->mThreadedRenderer:Landroid/view/ThreadedRenderer;

    iget-object v3, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    invoke-virtual {v1, v3}, Landroid/view/ThreadedRenderer;->setLightCenter(Landroid/view/View$AttachInfo;)V

    :cond_3a
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iput-boolean v2, v1, Landroid/view/View$AttachInfo;->mNeedsUpdateLightCenter:Z

    :cond_3e
    return-void
.end method

.method private maybeUpdateTooltip(Landroid/view/MotionEvent;)V
    .registers 6

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_8

    return-void

    :cond_8
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/16 v1, 0x9

    if-eq v0, v1, :cond_18

    const/4 v1, 0x7

    if-eq v0, v1, :cond_18

    const/16 v1, 0xa

    if-eq v0, v1, :cond_18

    return-void

    :cond_18
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_2b

    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result v2

    if-eqz v2, :cond_2b

    return-void

    :cond_2b
    iget-object v2, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    if-nez v2, :cond_38

    iget-object v2, p0, Landroid/view/ViewRootImpl;->mTag:Ljava/lang/String;

    const-string/jumbo v3, "maybeUpdateTooltip called after view was removed"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_38
    invoke-virtual {v2, p1}, Landroid/view/View;->dispatchTooltipHoverEvent(Landroid/view/MotionEvent;)Z

    return-void
.end method

.method private measureHierarchy(Landroid/view/View;Landroid/view/WindowManager$LayoutParams;Landroid/content/res/Resources;II)Z
    .registers 15

    const/4 v0, 0x0

    const/4 v1, 0x0

    iget v2, p2, Landroid/view/WindowManager$LayoutParams;->width:I

    const/4 v3, -0x2

    if-ne v2, v3, :cond_5c

    invoke-virtual {p3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    const v3, 0x10500d0

    iget-object v4, p0, Landroid/view/ViewRootImpl;->mTmpValue:Landroid/util/TypedValue;

    const/4 v5, 0x1

    invoke-virtual {p3, v3, v4, v5}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    const/4 v3, 0x0

    iget-object v4, p0, Landroid/view/ViewRootImpl;->mTmpValue:Landroid/util/TypedValue;

    iget v4, v4, Landroid/util/TypedValue;->type:I

    const/4 v5, 0x5

    if-ne v4, v5, :cond_23

    iget-object v4, p0, Landroid/view/ViewRootImpl;->mTmpValue:Landroid/util/TypedValue;

    invoke-virtual {v4, v2}, Landroid/util/TypedValue;->getDimension(Landroid/util/DisplayMetrics;)F

    move-result v4

    float-to-int v3, v4

    :cond_23
    if-eqz v3, :cond_5c

    if-le p4, v3, :cond_5c

    iget v4, p2, Landroid/view/WindowManager$LayoutParams;->width:I

    iget v5, p2, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    invoke-static {v3, v4, v5}, Landroid/view/ViewRootImpl;->getRootMeasureSpec(III)I

    move-result v4

    iget v5, p2, Landroid/view/WindowManager$LayoutParams;->height:I

    iget v6, p2, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    invoke-static {p5, v5, v6}, Landroid/view/ViewRootImpl;->getRootMeasureSpec(III)I

    move-result v5

    invoke-direct {p0, v4, v5}, Landroid/view/ViewRootImpl;->performMeasure(II)V

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidthAndState()I

    move-result v6

    const/high16 v7, 0x1000000

    and-int/2addr v6, v7

    if-nez v6, :cond_45

    const/4 v1, 0x1

    goto :goto_5c

    :cond_45
    add-int v6, v3, p4

    div-int/lit8 v6, v6, 0x2

    iget v3, p2, Landroid/view/WindowManager$LayoutParams;->width:I

    iget v8, p2, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    invoke-static {v6, v3, v8}, Landroid/view/ViewRootImpl;->getRootMeasureSpec(III)I

    move-result v3

    invoke-direct {p0, v3, v5}, Landroid/view/ViewRootImpl;->performMeasure(II)V

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidthAndState()I

    move-result v4

    and-int/2addr v4, v7

    if-nez v4, :cond_5c

    const/4 v1, 0x1

    :cond_5c
    :goto_5c
    if-nez v1, :cond_82

    iget v2, p2, Landroid/view/WindowManager$LayoutParams;->width:I

    iget v3, p2, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    invoke-static {p4, v2, v3}, Landroid/view/ViewRootImpl;->getRootMeasureSpec(III)I

    move-result v2

    iget v3, p2, Landroid/view/WindowManager$LayoutParams;->height:I

    iget v4, p2, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    invoke-static {p5, v3, v4}, Landroid/view/ViewRootImpl;->getRootMeasureSpec(III)I

    move-result v3

    invoke-direct {p0, v2, v3}, Landroid/view/ViewRootImpl;->performMeasure(II)V

    iget v4, p0, Landroid/view/ViewRootImpl;->mWidth:I

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    if-ne v4, v5, :cond_81

    iget v4, p0, Landroid/view/ViewRootImpl;->mHeight:I

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    if-eq v4, v5, :cond_82

    :cond_81
    const/4 v0, 0x1

    :cond_82
    return v0
.end method

.method private notifyContentCatpureEvents()V
    .registers 15

    const-wide/16 v0, 0x8

    const-string/jumbo v2, "notifyContentCaptureEvents"

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    :try_start_8
    iget-object v2, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v2, v2, Landroid/view/View$AttachInfo;->mContentCaptureManager:Landroid/view/contentcapture/ContentCaptureManager;

    invoke-virtual {v2}, Landroid/view/contentcapture/ContentCaptureManager;->getMainContentCaptureSession()Landroid/view/contentcapture/MainContentCaptureSession;

    move-result-object v2

    const/4 v3, 0x0

    :goto_11
    iget-object v4, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v4, v4, Landroid/view/View$AttachInfo;->mContentCaptureEvents:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v4

    if-ge v3, v4, :cond_e3

    iget-object v4, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v4, v4, Landroid/view/View$AttachInfo;->mContentCaptureEvents:Landroid/util/SparseArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v4

    const/4 v5, 0x1

    invoke-virtual {v2, v4, v5}, Landroid/view/contentcapture/MainContentCaptureSession;->notifyViewTreeEvent(IZ)V

    iget-object v5, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v5, v5, Landroid/view/View$AttachInfo;->mContentCaptureEvents:Landroid/util/SparseArray;

    invoke-virtual {v5, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/ArrayList;

    const/4 v6, 0x0

    :goto_32
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v7

    const/4 v8, 0x0

    if-ge v6, v7, :cond_dc

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    instance-of v9, v7, Landroid/view/autofill/AutofillId;

    if-eqz v9, :cond_49

    move-object v8, v7

    check-cast v8, Landroid/view/autofill/AutofillId;

    invoke-virtual {v2, v4, v8}, Landroid/view/contentcapture/MainContentCaptureSession;->notifyViewDisappeared(ILandroid/view/autofill/AutofillId;)V

    goto/16 :goto_d8

    :cond_49
    instance-of v9, v7, Landroid/view/View;

    if-eqz v9, :cond_b4

    move-object v9, v7

    check-cast v9, Landroid/view/View;

    invoke-virtual {v9}, Landroid/view/View;->getContentCaptureSession()Landroid/view/contentcapture/ContentCaptureSession;

    move-result-object v10

    if-nez v10, :cond_70

    iget-object v8, p0, Landroid/view/ViewRootImpl;->mTag:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "no content capture session on view: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v8, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_d8

    :cond_70
    invoke-virtual {v10}, Landroid/view/contentcapture/ContentCaptureSession;->getId()I

    move-result v11

    if-eq v11, v4, :cond_a9

    iget-object v8, p0, Landroid/view/ViewRootImpl;->mTag:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "content capture session mismatch for view ("

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "): was "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " before, it\'s "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " now"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v8, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_d8

    :cond_a9
    invoke-virtual {v10, v9}, Landroid/view/contentcapture/ContentCaptureSession;->newViewStructure(Landroid/view/View;)Landroid/view/ViewStructure;

    move-result-object v12

    invoke-virtual {v9, v12, v8}, Landroid/view/View;->onProvideContentCaptureStructure(Landroid/view/ViewStructure;I)V

    invoke-virtual {v10, v12}, Landroid/view/contentcapture/ContentCaptureSession;->notifyViewAppeared(Landroid/view/ViewStructure;)V

    goto :goto_d8

    :cond_b4
    instance-of v8, v7, Landroid/graphics/Insets;

    if-eqz v8, :cond_bf

    move-object v8, v7

    check-cast v8, Landroid/graphics/Insets;

    invoke-virtual {v2, v4, v8}, Landroid/view/contentcapture/MainContentCaptureSession;->notifyViewInsetsChanged(ILandroid/graphics/Insets;)V

    goto :goto_d8

    :cond_bf
    iget-object v8, p0, Landroid/view/ViewRootImpl;->mTag:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "invalid content capture event: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_d8
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_32

    :cond_dc
    invoke-virtual {v2, v4, v8}, Landroid/view/contentcapture/MainContentCaptureSession;->notifyViewTreeEvent(IZ)V

    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_11

    :cond_e3
    iget-object v3, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    const/4 v4, 0x0

    iput-object v4, v3, Landroid/view/View$AttachInfo;->mContentCaptureEvents:Landroid/util/SparseArray;
    :try_end_e8
    .catchall {:try_start_8 .. :try_end_e8} :catchall_ed

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    nop

    return-void

    :catchall_ed
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    throw v2
.end method

.method private notifyHolderSurfaceDestroyed()V
    .registers 6

    iget-object v0, p0, Landroid/view/ViewRootImpl;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    invoke-virtual {v0}, Lcom/android/internal/view/BaseSurfaceHolder;->ungetCallbacks()V

    iget-object v0, p0, Landroid/view/ViewRootImpl;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    invoke-virtual {v0}, Lcom/android/internal/view/BaseSurfaceHolder;->getCallbacks()[Landroid/view/SurfaceHolder$Callback;

    move-result-object v0

    if-eqz v0, :cond_1b

    array-length v1, v0

    const/4 v2, 0x0

    :goto_f
    if-ge v2, v1, :cond_1b

    aget-object v3, v0, v2

    iget-object v4, p0, Landroid/view/ViewRootImpl;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    invoke-interface {v3, v4}, Landroid/view/SurfaceHolder$Callback;->surfaceDestroyed(Landroid/view/SurfaceHolder;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_f

    :cond_1b
    return-void
.end method

.method private notifySurfaceCreated()V
    .registers 4

    const/4 v0, 0x0

    :goto_1
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mSurfaceChangedCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_19

    iget-object v1, p0, Landroid/view/ViewRootImpl;->mSurfaceChangedCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/ViewRootImpl$SurfaceChangedCallback;

    iget-object v2, p0, Landroid/view/ViewRootImpl;->mSurfaceChangedTransaction:Landroid/view/SurfaceControl$Transaction;

    invoke-interface {v1, v2}, Landroid/view/ViewRootImpl$SurfaceChangedCallback;->surfaceCreated(Landroid/view/SurfaceControl$Transaction;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_19
    return-void
.end method

.method private notifySurfaceDestroyed()V
    .registers 3

    const/4 v0, 0x0

    :goto_1
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mSurfaceChangedCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_17

    iget-object v1, p0, Landroid/view/ViewRootImpl;->mSurfaceChangedCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/ViewRootImpl$SurfaceChangedCallback;

    invoke-interface {v1}, Landroid/view/ViewRootImpl$SurfaceChangedCallback;->surfaceDestroyed()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_17
    return-void
.end method

.method private notifySurfaceReplaced()V
    .registers 4

    const/4 v0, 0x0

    :goto_1
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mSurfaceChangedCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_19

    iget-object v1, p0, Landroid/view/ViewRootImpl;->mSurfaceChangedCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/ViewRootImpl$SurfaceChangedCallback;

    iget-object v2, p0, Landroid/view/ViewRootImpl;->mSurfaceChangedTransaction:Landroid/view/SurfaceControl$Transaction;

    invoke-interface {v1, v2}, Landroid/view/ViewRootImpl$SurfaceChangedCallback;->surfaceReplaced(Landroid/view/SurfaceControl$Transaction;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_19
    return-void
.end method

.method private notifySurfaceSyncStarted()V
    .registers 3

    const/4 v0, 0x0

    :goto_1
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mSurfaceChangedCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_17

    iget-object v1, p0, Landroid/view/ViewRootImpl;->mSurfaceChangedCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/ViewRootImpl$SurfaceChangedCallback;

    invoke-interface {v1}, Landroid/view/ViewRootImpl$SurfaceChangedCallback;->surfaceSyncStarted()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_17
    return-void
.end method

.method private obtainQueuedInputEvent(Landroid/view/InputEvent;Landroid/view/InputEventReceiver;I)Landroid/view/ViewRootImpl$QueuedInputEvent;
    .registers 7

    iget-object v0, p0, Landroid/view/ViewRootImpl;->mQueuedInputEventPool:Landroid/view/ViewRootImpl$QueuedInputEvent;

    const/4 v1, 0x0

    if-eqz v0, :cond_12

    iget v2, p0, Landroid/view/ViewRootImpl;->mQueuedInputEventPoolSize:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Landroid/view/ViewRootImpl;->mQueuedInputEventPoolSize:I

    iget-object v2, v0, Landroid/view/ViewRootImpl$QueuedInputEvent;->mNext:Landroid/view/ViewRootImpl$QueuedInputEvent;

    iput-object v2, p0, Landroid/view/ViewRootImpl;->mQueuedInputEventPool:Landroid/view/ViewRootImpl$QueuedInputEvent;

    iput-object v1, v0, Landroid/view/ViewRootImpl$QueuedInputEvent;->mNext:Landroid/view/ViewRootImpl$QueuedInputEvent;

    goto :goto_18

    :cond_12
    new-instance v2, Landroid/view/ViewRootImpl$QueuedInputEvent;

    invoke-direct {v2, v1}, Landroid/view/ViewRootImpl$QueuedInputEvent;-><init>(Landroid/view/ViewRootImpl$QueuedInputEvent-IA;)V

    move-object v0, v2

    :goto_18
    iput-object p1, v0, Landroid/view/ViewRootImpl$QueuedInputEvent;->mEvent:Landroid/view/InputEvent;

    iput-object p2, v0, Landroid/view/ViewRootImpl$QueuedInputEvent;->mReceiver:Landroid/view/InputEventReceiver;

    iput p3, v0, Landroid/view/ViewRootImpl$QueuedInputEvent;->mFlags:I

    return-object v0
.end method

.method private performConfigurationChange(Landroid/util/MergedConfiguration;ZI)V
    .registers 10

    if-eqz p1, :cond_5f

    iget-boolean v0, p0, Landroid/view/ViewRootImpl;->mIsCastModeRotationChanged:Z

    if-eqz v0, :cond_7

    return-void

    :cond_7
    invoke-virtual {p1}, Landroid/util/MergedConfiguration;->getGlobalConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    invoke-virtual {p1}, Landroid/util/MergedConfiguration;->getOverrideConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget-object v2, p0, Landroid/view/ViewRootImpl;->mDisplay:Landroid/view/Display;

    invoke-virtual {v2}, Landroid/view/Display;->getDisplayAdjustments()Landroid/view/DisplayAdjustments;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/DisplayAdjustments;->getCompatibilityInfo()Landroid/content/res/CompatibilityInfo;

    move-result-object v2

    sget-object v3, Landroid/content/res/CompatibilityInfo;->DEFAULT_COMPATIBILITY_INFO:Landroid/content/res/CompatibilityInfo;

    invoke-virtual {v2, v3}, Landroid/content/res/CompatibilityInfo;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2c

    new-instance v3, Landroid/content/res/Configuration;

    invoke-direct {v3, v0}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    move-object v0, v3

    iget v3, p0, Landroid/view/ViewRootImpl;->mNoncompatDensity:I

    invoke-virtual {v2, v3, v0}, Landroid/content/res/CompatibilityInfo;->applyToConfiguration(ILandroid/content/res/Configuration;)V

    :cond_2c
    sget-object v3, Landroid/view/ViewRootImpl;->sConfigCallbacks:Ljava/util/ArrayList;

    monitor-enter v3

    :try_start_2f
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    :goto_35
    if-ltz v4, :cond_45

    sget-object v5, Landroid/view/ViewRootImpl;->sConfigCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/ViewRootImpl$ConfigChangedCallback;

    invoke-interface {v5, v0}, Landroid/view/ViewRootImpl$ConfigChangedCallback;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    add-int/lit8 v4, v4, -0x1

    goto :goto_35

    :cond_45
    monitor-exit v3
    :try_end_46
    .catchall {:try_start_2f .. :try_end_46} :catchall_5c

    iget-object v3, p0, Landroid/view/ViewRootImpl;->mLastReportedMergedConfiguration:Landroid/util/MergedConfiguration;

    invoke-virtual {v3, v0, v1}, Landroid/util/MergedConfiguration;->setConfiguration(Landroid/content/res/Configuration;Landroid/content/res/Configuration;)V

    iput-boolean p2, p0, Landroid/view/ViewRootImpl;->mForceNextConfigUpdate:Z

    iget-object v3, p0, Landroid/view/ViewRootImpl;->mActivityConfigCallback:Landroid/view/ViewRootImpl$ActivityConfigCallback;

    if-eqz v3, :cond_55

    invoke-interface {v3, v1, p3}, Landroid/view/ViewRootImpl$ActivityConfigCallback;->onConfigurationChanged(Landroid/content/res/Configuration;I)V

    goto :goto_58

    :cond_55
    invoke-virtual {p0, p3}, Landroid/view/ViewRootImpl;->updateConfiguration(I)V

    :goto_58
    const/4 v3, 0x0

    iput-boolean v3, p0, Landroid/view/ViewRootImpl;->mForceNextConfigUpdate:Z

    return-void

    :catchall_5c
    move-exception v4

    :try_start_5d
    monitor-exit v3
    :try_end_5e
    .catchall {:try_start_5d .. :try_end_5e} :catchall_5c

    throw v4

    :cond_5f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "No merged config provided."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private performContentCaptureInitialReport()V
    .registers 7

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/view/ViewRootImpl;->mPerformContentCapture:Z

    iget-object v0, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    const-wide/16 v1, 0x8

    invoke-static {v1, v2}, Landroid/os/Trace;->isTagEnabled(J)Z

    move-result v3

    if-eqz v3, :cond_2b

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "dispatchContentCapture() for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    :cond_2b
    :try_start_2b
    invoke-direct {p0}, Landroid/view/ViewRootImpl;->isContentCaptureEnabled()Z

    move-result v3
    :try_end_2f
    .catchall {:try_start_2b .. :try_end_2f} :catchall_5c

    if-nez v3, :cond_35

    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    return-void

    :cond_35
    :try_start_35
    iget-object v3, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v3, v3, Landroid/view/View$AttachInfo;->mContentCaptureManager:Landroid/view/contentcapture/ContentCaptureManager;

    if-eqz v3, :cond_54

    iget-object v3, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v3, v3, Landroid/view/View$AttachInfo;->mContentCaptureManager:Landroid/view/contentcapture/ContentCaptureManager;

    invoke-virtual {v3}, Landroid/view/contentcapture/ContentCaptureManager;->getMainContentCaptureSession()Landroid/view/contentcapture/MainContentCaptureSession;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/contentcapture/MainContentCaptureSession;->getId()I

    move-result v4

    invoke-direct {p0}, Landroid/view/ViewRootImpl;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v5

    iget-object v5, v5, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v5}, Landroid/app/WindowConfiguration;->getBounds()Landroid/graphics/Rect;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/view/contentcapture/MainContentCaptureSession;->notifyWindowBoundsChanged(ILandroid/graphics/Rect;)V

    :cond_54
    invoke-virtual {v0}, Landroid/view/View;->dispatchInitialProvideContentCaptureStructure()V
    :try_end_57
    .catchall {:try_start_35 .. :try_end_57} :catchall_5c

    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    nop

    return-void

    :catchall_5c
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    throw v3
.end method

.method private performDraw()Z
    .registers 10

    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget v0, v0, Landroid/view/View$AttachInfo;->mDisplayState:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_d

    iget-boolean v0, p0, Landroid/view/ViewRootImpl;->mReportNextDraw:Z

    if-nez v0, :cond_d

    return v2

    :cond_d
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    if-nez v0, :cond_12

    return v2

    :cond_12
    invoke-static {}, Landroid/view/ForceDarkHelperStub;->getInstance()Landroid/view/ForceDarkHelperStub;

    move-result-object v0

    iget-object v3, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-interface {v0, v3}, Landroid/view/ForceDarkHelperStub;->updateForceDarkDecorView(Landroid/view/View;)V

    iget-boolean v0, p0, Landroid/view/ViewRootImpl;->mFullRedrawNeeded:Z

    if-nez v0, :cond_26

    iget-object v0, p0, Landroid/view/ViewRootImpl;->mSyncBufferCallback:Landroid/window/SurfaceSyncer$SyncBufferCallback;

    if-eqz v0, :cond_24

    goto :goto_26

    :cond_24
    move v0, v2

    goto :goto_27

    :cond_26
    :goto_26
    move v0, v1

    :goto_27
    iput-boolean v2, p0, Landroid/view/ViewRootImpl;->mFullRedrawNeeded:Z

    iput-boolean v1, p0, Landroid/view/ViewRootImpl;->mIsDrawing:Z

    iget-object v3, p0, Landroid/view/ViewRootImpl;->mViewRootMonitor:Landroid/os/perfdebug/ViewRootMonitor;

    invoke-virtual {v3}, Landroid/os/perfdebug/ViewRootMonitor;->monitorPerformDrawBegin()V

    const-wide/16 v3, 0x8

    const-string v5, "draw"

    invoke-static {v3, v4, v5}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    iget-boolean v5, p0, Landroid/view/ViewRootImpl;->mHdrDimmerSupported:Z

    if-eqz v5, :cond_3e

    invoke-direct {p0}, Landroid/view/ViewRootImpl;->addHdrDimmerFramDrawingCallback()V

    :cond_3e
    invoke-direct {p0}, Landroid/view/ViewRootImpl;->addFrameCommitCallbackIfNeeded()V

    invoke-direct {p0}, Landroid/view/ViewRootImpl;->addFrameDroppedCallbackIfNeeded()V

    invoke-virtual {p0}, Landroid/view/ViewRootImpl;->isHardwareEnabled()Z

    move-result v5

    if-eqz v5, :cond_50

    iget-object v5, p0, Landroid/view/ViewRootImpl;->mSyncBufferCallback:Landroid/window/SurfaceSyncer$SyncBufferCallback;

    if-eqz v5, :cond_50

    move v5, v1

    goto :goto_51

    :cond_50
    move v5, v2

    :goto_51
    if-eqz v5, :cond_5b

    iget-boolean v6, p0, Landroid/view/ViewRootImpl;->mSyncBuffer:Z

    iget-object v7, p0, Landroid/view/ViewRootImpl;->mSyncBufferCallback:Landroid/window/SurfaceSyncer$SyncBufferCallback;

    invoke-direct {p0, v6, v7}, Landroid/view/ViewRootImpl;->registerCallbacksForSync(ZLandroid/window/SurfaceSyncer$SyncBufferCallback;)V

    goto :goto_62

    :cond_5b
    iget-boolean v6, p0, Landroid/view/ViewRootImpl;->mHasPendingTransactions:Z

    if-eqz v6, :cond_62

    invoke-direct {p0}, Landroid/view/ViewRootImpl;->registerCallbackForPendingTransactions()V

    :cond_62
    :goto_62
    iput-boolean v2, p0, Landroid/view/ViewRootImpl;->mHasPendingTransactions:Z

    if-eqz v5, :cond_6f

    :try_start_66
    iget-boolean v6, p0, Landroid/view/ViewRootImpl;->mSyncBuffer:Z

    if-eqz v6, :cond_6f

    move v6, v1

    goto :goto_70

    :catchall_6c
    move-exception v1

    goto/16 :goto_120

    :cond_6f
    move v6, v2

    :goto_70
    invoke-direct {p0, v0, v6}, Landroid/view/ViewRootImpl;->draw(ZZ)Z

    move-result v6

    const/4 v7, 0x0

    if-eqz v5, :cond_81

    if-nez v6, :cond_81

    iget-object v8, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v8, v8, Landroid/view/View$AttachInfo;->mThreadedRenderer:Landroid/view/ThreadedRenderer;

    invoke-virtual {v8, v7}, Landroid/view/ThreadedRenderer;->setFrameCallback(Landroid/graphics/HardwareRenderer$FrameDrawingCallback;)V
    :try_end_80
    .catchall {:try_start_66 .. :try_end_80} :catchall_6c

    const/4 v5, 0x0

    :cond_81
    iput-boolean v2, p0, Landroid/view/ViewRootImpl;->mIsDrawing:Z

    invoke-static {v3, v4}, Landroid/os/Trace;->traceEnd(J)V

    iget-object v2, p0, Landroid/view/ViewRootImpl;->mViewRootMonitor:Landroid/os/perfdebug/ViewRootMonitor;

    invoke-virtual {v2}, Landroid/os/perfdebug/ViewRootMonitor;->monitorPerformDrawEnd()V

    nop

    iget-object v2, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v2, v2, Landroid/view/View$AttachInfo;->mPendingAnimatingRenderNodes:Ljava/util/List;

    if-eqz v2, :cond_b4

    iget-object v2, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v2, v2, Landroid/view/View$AttachInfo;->mPendingAnimatingRenderNodes:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x0

    :goto_9b
    if-ge v3, v2, :cond_ad

    iget-object v4, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v4, v4, Landroid/view/View$AttachInfo;->mPendingAnimatingRenderNodes:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/RenderNode;

    invoke-virtual {v4}, Landroid/graphics/RenderNode;->endAllAnimators()V

    add-int/lit8 v3, v3, 0x1

    goto :goto_9b

    :cond_ad
    iget-object v3, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v3, v3, Landroid/view/View$AttachInfo;->mPendingAnimatingRenderNodes:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    :cond_b4
    iget-boolean v2, p0, Landroid/view/ViewRootImpl;->mReportNextDraw:Z

    if-eqz v2, :cond_10f

    iget-object v2, p0, Landroid/view/ViewRootImpl;->mWindowDrawCountDown:Ljava/util/concurrent/CountDownLatch;

    if-eqz v2, :cond_ca

    :try_start_bc
    invoke-virtual {v2}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_bf
    .catch Ljava/lang/InterruptedException; {:try_start_bc .. :try_end_bf} :catch_c0

    goto :goto_c8

    :catch_c0
    move-exception v2

    iget-object v3, p0, Landroid/view/ViewRootImpl;->mTag:Ljava/lang/String;

    const-string v4, "Window redraw count down interrupted!"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_c8
    iput-object v7, p0, Landroid/view/ViewRootImpl;->mWindowDrawCountDown:Ljava/util/concurrent/CountDownLatch;

    :cond_ca
    iget-object v2, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v2, v2, Landroid/view/View$AttachInfo;->mThreadedRenderer:Landroid/view/ThreadedRenderer;

    if-eqz v2, :cond_d9

    iget-object v2, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v2, v2, Landroid/view/View$AttachInfo;->mThreadedRenderer:Landroid/view/ThreadedRenderer;

    iget-boolean v3, p0, Landroid/view/ViewRootImpl;->mStopped:Z

    invoke-virtual {v2, v3}, Landroid/view/ThreadedRenderer;->setStopped(Z)V

    :cond_d9
    iget-object v2, p0, Landroid/view/ViewRootImpl;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    if-eqz v2, :cond_ff

    iget-object v2, p0, Landroid/view/ViewRootImpl;->mSurface:Landroid/view/Surface;

    invoke-virtual {v2}, Landroid/view/Surface;->isValid()Z

    move-result v2

    if-eqz v2, :cond_ff

    iget-object v2, p0, Landroid/view/ViewRootImpl;->mSyncBufferCallback:Landroid/window/SurfaceSyncer$SyncBufferCallback;

    new-instance v3, Lcom/android/internal/view/SurfaceCallbackHelper;

    new-instance v4, Landroid/view/ViewRootImpl$$ExternalSyntheticLambda13;

    invoke-direct {v4, p0, v2}, Landroid/view/ViewRootImpl$$ExternalSyntheticLambda13;-><init>(Landroid/view/ViewRootImpl;Landroid/window/SurfaceSyncer$SyncBufferCallback;)V

    invoke-direct {v3, v4}, Lcom/android/internal/view/SurfaceCallbackHelper;-><init>(Ljava/lang/Runnable;)V

    iput-object v7, p0, Landroid/view/ViewRootImpl;->mSyncBufferCallback:Landroid/window/SurfaceSyncer$SyncBufferCallback;

    iget-object v4, p0, Landroid/view/ViewRootImpl;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    invoke-virtual {v4}, Lcom/android/internal/view/BaseSurfaceHolder;->getCallbacks()[Landroid/view/SurfaceHolder$Callback;

    move-result-object v4

    iget-object v6, p0, Landroid/view/ViewRootImpl;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    invoke-virtual {v3, v6, v4}, Lcom/android/internal/view/SurfaceCallbackHelper;->dispatchSurfaceRedrawNeededAsync(Landroid/view/SurfaceHolder;[Landroid/view/SurfaceHolder$Callback;)V

    goto :goto_10f

    :cond_ff
    if-nez v5, :cond_10f

    iget-object v2, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v2, v2, Landroid/view/View$AttachInfo;->mThreadedRenderer:Landroid/view/ThreadedRenderer;

    if-eqz v2, :cond_10f

    iget-object v2, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v2, v2, Landroid/view/View$AttachInfo;->mThreadedRenderer:Landroid/view/ThreadedRenderer;

    invoke-virtual {v2}, Landroid/view/ThreadedRenderer;->fence()V

    nop

    :cond_10f
    :goto_10f
    iget-object v2, p0, Landroid/view/ViewRootImpl;->mSyncBufferCallback:Landroid/window/SurfaceSyncer$SyncBufferCallback;

    if-eqz v2, :cond_118

    if-nez v5, :cond_118

    invoke-interface {v2, v7}, Landroid/window/SurfaceSyncer$SyncBufferCallback;->onBufferReady(Landroid/view/SurfaceControl$Transaction;)V

    :cond_118
    iget-boolean v2, p0, Landroid/view/ViewRootImpl;->mPerformContentCapture:Z

    if-eqz v2, :cond_11f

    invoke-direct {p0}, Landroid/view/ViewRootImpl;->performContentCaptureInitialReport()V

    :cond_11f
    return v1

    :goto_120
    iput-boolean v2, p0, Landroid/view/ViewRootImpl;->mIsDrawing:Z

    invoke-static {v3, v4}, Landroid/os/Trace;->traceEnd(J)V

    iget-object v2, p0, Landroid/view/ViewRootImpl;->mViewRootMonitor:Landroid/os/perfdebug/ViewRootMonitor;

    invoke-virtual {v2}, Landroid/os/perfdebug/ViewRootMonitor;->monitorPerformDrawEnd()V

    throw v1
.end method

.method private performLayout(Landroid/view/WindowManager$LayoutParams;II)V
    .registers 19

    move-object v7, p0

    const/4 v0, 0x1

    iput-boolean v0, v7, Landroid/view/ViewRootImpl;->mScrollMayChange:Z

    iput-boolean v0, v7, Landroid/view/ViewRootImpl;->mInLayout:Z

    iget-object v8, v7, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    if-nez v8, :cond_b

    return-void

    :cond_b
    const-wide/16 v9, 0x8

    const-string/jumbo v1, "layout"

    invoke-static {v9, v10, v1}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    :try_start_13
    iget-object v1, v7, Landroid/view/ViewRootImpl;->mViewRootMonitor:Landroid/os/perfdebug/ViewRootMonitor;

    invoke-virtual {v1}, Landroid/os/perfdebug/ViewRootMonitor;->monitorPerformLayoutBegin()V

    invoke-virtual {v8}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    invoke-virtual {v8}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    const/4 v11, 0x0

    invoke-virtual {v8, v11, v11, v1, v2}, Landroid/view/View;->layout(IIII)V

    iput-boolean v11, v7, Landroid/view/ViewRootImpl;->mInLayout:Z

    iget-object v1, v7, Landroid/view/ViewRootImpl;->mLayoutRequesters:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    move v12, v1

    if-lez v12, :cond_a6

    iget-object v1, v7, Landroid/view/ViewRootImpl;->mLayoutRequesters:Ljava/util/ArrayList;

    invoke-direct {p0, v1, v11}, Landroid/view/ViewRootImpl;->getValidLayoutRequesters(Ljava/util/ArrayList;Z)Ljava/util/ArrayList;

    move-result-object v1

    move-object v13, v1

    if-eqz v13, :cond_a6

    iput-boolean v0, v7, Landroid/view/ViewRootImpl;->mHandlingLayoutInLayoutRequest:Z

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v1

    move v14, v1

    const/4 v1, 0x0

    :goto_40
    if-ge v1, v14, :cond_6d

    invoke-virtual {v13, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    const-string v3, "View"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "requestLayout() improperly called by "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " during layout: running second layout pass"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v2}, Landroid/view/View;->requestLayout()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_40

    :cond_6d
    iget-object v1, v7, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    move-object v1, p0

    move-object v2, v8

    move-object/from16 v3, p1

    move/from16 v5, p2

    move/from16 v6, p3

    invoke-direct/range {v1 .. v6}, Landroid/view/ViewRootImpl;->measureHierarchy(Landroid/view/View;Landroid/view/WindowManager$LayoutParams;Landroid/content/res/Resources;II)Z

    iput-boolean v0, v7, Landroid/view/ViewRootImpl;->mInLayout:Z

    invoke-virtual {v8}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    invoke-virtual {v8}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    invoke-virtual {v8, v11, v11, v1, v2}, Landroid/view/View;->layout(IIII)V

    iput-boolean v11, v7, Landroid/view/ViewRootImpl;->mHandlingLayoutInLayoutRequest:Z

    iget-object v1, v7, Landroid/view/ViewRootImpl;->mLayoutRequesters:Ljava/util/ArrayList;

    invoke-direct {p0, v1, v0}, Landroid/view/ViewRootImpl;->getValidLayoutRequesters(Ljava/util/ArrayList;Z)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_a6

    move-object v1, v0

    invoke-static {}, Landroid/view/ViewRootImpl;->getRunQueue()Landroid/view/HandlerActionQueue;

    move-result-object v2

    new-instance v3, Landroid/view/ViewRootImpl$4;

    invoke-direct {v3, p0, v1}, Landroid/view/ViewRootImpl$4;-><init>(Landroid/view/ViewRootImpl;Ljava/util/ArrayList;)V

    invoke-virtual {v2, v3}, Landroid/view/HandlerActionQueue;->post(Ljava/lang/Runnable;)V
    :try_end_a6
    .catchall {:try_start_13 .. :try_end_a6} :catchall_b2

    :cond_a6
    invoke-static {v9, v10}, Landroid/os/Trace;->traceEnd(J)V

    iget-object v0, v7, Landroid/view/ViewRootImpl;->mViewRootMonitor:Landroid/os/perfdebug/ViewRootMonitor;

    invoke-virtual {v0}, Landroid/os/perfdebug/ViewRootMonitor;->monitorPerformLayoutEnd()V

    nop

    iput-boolean v11, v7, Landroid/view/ViewRootImpl;->mInLayout:Z

    return-void

    :catchall_b2
    move-exception v0

    invoke-static {v9, v10}, Landroid/os/Trace;->traceEnd(J)V

    iget-object v1, v7, Landroid/view/ViewRootImpl;->mViewRootMonitor:Landroid/os/perfdebug/ViewRootMonitor;

    invoke-virtual {v1}, Landroid/os/perfdebug/ViewRootMonitor;->monitorPerformLayoutEnd()V

    throw v0
.end method

.method private performMeasure(II)V
    .registers 6

    iget-object v0, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    if-nez v0, :cond_5

    return-void

    :cond_5
    const-wide/16 v0, 0x8

    const-string/jumbo v2, "measure"

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    :try_start_d
    iget-object v2, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v2, p1, p2}, Landroid/view/View;->measure(II)V
    :try_end_12
    .catchall {:try_start_d .. :try_end_12} :catchall_17

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    nop

    return-void

    :catchall_17
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    throw v2
.end method

.method private performTraversals()V
    .registers 51

    move-object/from16 v7, p0

    iget-object v8, v7, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    if-eqz v8, :cond_d15

    iget-boolean v0, v7, Landroid/view/ViewRootImpl;->mAdded:Z

    if-nez v0, :cond_c

    goto/16 :goto_d15

    :cond_c
    const/4 v9, 0x1

    iput-boolean v9, v7, Landroid/view/ViewRootImpl;->mIsInTraversal:Z

    iput-boolean v9, v7, Landroid/view/ViewRootImpl;->mWillDrawSoon:Z

    const/4 v0, 0x0

    iget-object v10, v7, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewRootImpl;->getHostVisibility()I

    move-result v11

    iget-boolean v1, v7, Landroid/view/ViewRootImpl;->mFirst:Z

    const/4 v12, 0x0

    if-nez v1, :cond_2b

    iget v2, v7, Landroid/view/ViewRootImpl;->mViewVisibility:I

    if-ne v2, v11, :cond_29

    iget-boolean v2, v7, Landroid/view/ViewRootImpl;->mNewSurfaceNeeded:Z

    if-nez v2, :cond_29

    iget-boolean v2, v7, Landroid/view/ViewRootImpl;->mAppVisibilityChanged:Z

    if-eqz v2, :cond_2b

    :cond_29
    move v2, v9

    goto :goto_2c

    :cond_2b
    move v2, v12

    :goto_2c
    move v13, v2

    iput-boolean v12, v7, Landroid/view/ViewRootImpl;->mAppVisibilityChanged:Z

    if-nez v1, :cond_41

    iget v1, v7, Landroid/view/ViewRootImpl;->mViewVisibility:I

    if-nez v1, :cond_37

    move v1, v9

    goto :goto_38

    :cond_37
    move v1, v12

    :goto_38
    if-nez v11, :cond_3c

    move v2, v9

    goto :goto_3d

    :cond_3c
    move v2, v12

    :goto_3d
    if-eq v1, v2, :cond_41

    move v1, v9

    goto :goto_42

    :cond_41
    move v1, v12

    :goto_42
    move v14, v1

    const/4 v1, 0x0

    iget-object v2, v7, Landroid/view/ViewRootImpl;->mDisplay:Landroid/view/Display;

    invoke-virtual {v2}, Landroid/view/Display;->getDisplayAdjustments()Landroid/view/DisplayAdjustments;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/DisplayAdjustments;->getCompatibilityInfo()Landroid/content/res/CompatibilityInfo;

    move-result-object v15

    invoke-virtual {v15}, Landroid/content/res/CompatibilityInfo;->supportsScreen()Z

    move-result v2

    iget-boolean v3, v7, Landroid/view/ViewRootImpl;->mLastInCompatMode:Z

    if-ne v2, v3, :cond_71

    move-object v1, v10

    iput-boolean v9, v7, Landroid/view/ViewRootImpl;->mFullRedrawNeeded:Z

    iput-boolean v9, v7, Landroid/view/ViewRootImpl;->mLayoutRequested:Z

    if-eqz v3, :cond_66

    iget v2, v1, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    and-int/lit16 v2, v2, -0x81

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    iput-boolean v12, v7, Landroid/view/ViewRootImpl;->mLastInCompatMode:Z

    goto :goto_6e

    :cond_66
    iget v2, v1, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    or-int/lit16 v2, v2, 0x80

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    iput-boolean v9, v7, Landroid/view/ViewRootImpl;->mLastInCompatMode:Z

    :goto_6e
    move-object/from16 v16, v1

    goto :goto_73

    :cond_71
    move-object/from16 v16, v1

    :goto_73
    iget-object v6, v7, Landroid/view/ViewRootImpl;->mWinFrame:Landroid/graphics/Rect;

    iget-boolean v1, v7, Landroid/view/ViewRootImpl;->mFirst:Z

    const/4 v5, 0x2

    const/4 v4, -0x2

    if-eqz v1, :cond_e9

    iput-boolean v9, v7, Landroid/view/ViewRootImpl;->mFullRedrawNeeded:Z

    iput-boolean v9, v7, Landroid/view/ViewRootImpl;->mLayoutRequested:Z

    invoke-direct/range {p0 .. p0}, Landroid/view/ViewRootImpl;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    invoke-static {v10}, Landroid/view/ViewRootImpl;->shouldUseDisplaySize(Landroid/view/WindowManager$LayoutParams;)Z

    move-result v2

    if-eqz v2, :cond_98

    new-instance v2, Landroid/graphics/Point;

    invoke-direct {v2}, Landroid/graphics/Point;-><init>()V

    iget-object v3, v7, Landroid/view/ViewRootImpl;->mDisplay:Landroid/view/Display;

    invoke-virtual {v3, v2}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    iget v3, v2, Landroid/graphics/Point;->x:I

    iget v2, v2, Landroid/graphics/Point;->y:I

    goto :goto_b7

    :cond_98
    iget v2, v10, Landroid/view/WindowManager$LayoutParams;->width:I

    if-eq v2, v4, :cond_aa

    iget v2, v10, Landroid/view/WindowManager$LayoutParams;->height:I

    if-ne v2, v4, :cond_a1

    goto :goto_aa

    :cond_a1
    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    move-result v3

    invoke-virtual {v6}, Landroid/graphics/Rect;->height()I

    move-result v2

    goto :goto_b7

    :cond_aa
    :goto_aa
    invoke-direct/range {p0 .. p0}, Landroid/view/ViewRootImpl;->getWindowBoundsInsetSystemBars()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v3

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    nop

    :goto_b7
    iget-object v4, v7, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iput-boolean v9, v4, Landroid/view/View$AttachInfo;->mUse32BitDrawingCache:Z

    iget-object v4, v7, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iput v11, v4, Landroid/view/View$AttachInfo;->mWindowVisibility:I

    iget-object v4, v7, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iput-boolean v12, v4, Landroid/view/View$AttachInfo;->mRecomputeGlobalAttributes:Z

    iget-object v4, v7, Landroid/view/ViewRootImpl;->mLastConfigurationFromResources:Landroid/content/res/Configuration;

    invoke-virtual {v4, v1}, Landroid/content/res/Configuration;->setTo(Landroid/content/res/Configuration;)V

    iget-object v4, v7, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget v4, v4, Landroid/view/View$AttachInfo;->mSystemUiVisibility:I

    iput v4, v7, Landroid/view/ViewRootImpl;->mLastSystemUiVisibility:I

    iget v4, v7, Landroid/view/ViewRootImpl;->mViewLayoutDirectionInitial:I

    if-ne v4, v5, :cond_d9

    invoke-virtual {v1}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result v4

    invoke-virtual {v8, v4}, Landroid/view/View;->setLayoutDirection(I)V

    :cond_d9
    iget-object v4, v7, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    invoke-virtual {v8, v4, v12}, Landroid/view/View;->dispatchAttachedToWindow(Landroid/view/View$AttachInfo;I)V

    iget-object v4, v7, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v4, v4, Landroid/view/View$AttachInfo;->mTreeObserver:Landroid/view/ViewTreeObserver;

    invoke-virtual {v4, v9}, Landroid/view/ViewTreeObserver;->dispatchOnWindowAttachedChange(Z)V

    invoke-virtual {v7, v8}, Landroid/view/ViewRootImpl;->dispatchApplyInsets(Landroid/view/View;)V

    goto :goto_fe

    :cond_e9
    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    move-result v3

    invoke-virtual {v6}, Landroid/graphics/Rect;->height()I

    move-result v2

    iget v1, v7, Landroid/view/ViewRootImpl;->mWidth:I

    if-ne v3, v1, :cond_f9

    iget v1, v7, Landroid/view/ViewRootImpl;->mHeight:I

    if-eq v2, v1, :cond_fe

    :cond_f9
    iput-boolean v9, v7, Landroid/view/ViewRootImpl;->mFullRedrawNeeded:Z

    iput-boolean v9, v7, Landroid/view/ViewRootImpl;->mLayoutRequested:Z

    const/4 v0, 0x1

    :cond_fe
    :goto_fe
    if-eqz v13, :cond_11d

    iget-object v1, v7, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iput v11, v1, Landroid/view/View$AttachInfo;->mWindowVisibility:I

    invoke-virtual {v8, v11}, Landroid/view/View;->dispatchWindowVisibilityChanged(I)V

    if-eqz v14, :cond_111

    if-nez v11, :cond_10d

    move v1, v9

    goto :goto_10e

    :cond_10d
    move v1, v12

    :goto_10e
    invoke-virtual {v8, v1}, Landroid/view/View;->dispatchVisibilityAggregated(Z)Z

    :cond_111
    if-nez v11, :cond_117

    iget-boolean v1, v7, Landroid/view/ViewRootImpl;->mNewSurfaceNeeded:Z

    if-eqz v1, :cond_11d

    :cond_117
    invoke-direct/range {p0 .. p0}, Landroid/view/ViewRootImpl;->endDragResizing()V

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewRootImpl;->destroyHardwareResources()V

    :cond_11d
    iget-object v1, v7, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget v1, v1, Landroid/view/View$AttachInfo;->mWindowVisibility:I

    if-eqz v1, :cond_126

    invoke-virtual {v8}, Landroid/view/View;->clearAccessibilityFocus()V

    :cond_126
    invoke-static {}, Landroid/view/ViewRootImpl;->getRunQueue()Landroid/view/HandlerActionQueue;

    move-result-object v1

    iget-object v4, v7, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v4, v4, Landroid/view/View$AttachInfo;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v4}, Landroid/view/HandlerActionQueue;->executeActions(Landroid/os/Handler;)V

    iget-boolean v1, v7, Landroid/view/ViewRootImpl;->mFirst:Z

    if-eqz v1, :cond_141

    iget-object v1, v7, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-boolean v4, v7, Landroid/view/ViewRootImpl;->mAddedTouchMode:Z

    xor-int/2addr v4, v9

    iput-boolean v4, v1, Landroid/view/View$AttachInfo;->mInTouchMode:Z

    iget-boolean v1, v7, Landroid/view/ViewRootImpl;->mAddedTouchMode:Z

    invoke-direct {v7, v1}, Landroid/view/ViewRootImpl;->ensureTouchModeLocally(Z)Z

    :cond_141
    iget-boolean v1, v7, Landroid/view/ViewRootImpl;->mLayoutRequested:Z

    if-eqz v1, :cond_153

    iget-boolean v1, v7, Landroid/view/ViewRootImpl;->mStopped:Z

    if-eqz v1, :cond_14d

    iget-boolean v1, v7, Landroid/view/ViewRootImpl;->mReportNextDraw:Z

    if-eqz v1, :cond_153

    :cond_14d
    iget-boolean v1, v7, Landroid/view/ViewRootImpl;->mIsCastModeRotationChanged:Z

    if-nez v1, :cond_153

    move v1, v9

    goto :goto_154

    :cond_153
    move v1, v12

    :goto_154
    move/from16 v18, v1

    iget-object v1, v7, Landroid/view/ViewRootImpl;->mViewRootMonitor:Landroid/os/perfdebug/ViewRootMonitor;

    invoke-virtual {v1}, Landroid/os/perfdebug/ViewRootMonitor;->monitorPerformMeasureBegin()V

    if-eqz v18, :cond_1b8

    iget-boolean v1, v7, Landroid/view/ViewRootImpl;->mFirst:Z

    if-nez v1, :cond_195

    iget v1, v10, Landroid/view/WindowManager$LayoutParams;->width:I

    const/4 v4, -0x2

    if-eq v1, v4, :cond_16a

    iget v1, v10, Landroid/view/WindowManager$LayoutParams;->height:I

    if-ne v1, v4, :cond_195

    :cond_16a
    const/4 v0, 0x1

    invoke-static {v10}, Landroid/view/ViewRootImpl;->shouldUseDisplaySize(Landroid/view/WindowManager$LayoutParams;)Z

    move-result v1

    if-eqz v1, :cond_184

    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    iget-object v4, v7, Landroid/view/ViewRootImpl;->mDisplay:Landroid/view/Display;

    invoke-virtual {v4, v1}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    iget v3, v1, Landroid/graphics/Point;->x:I

    iget v2, v1, Landroid/graphics/Point;->y:I

    move/from16 v19, v2

    move/from16 v20, v3

    goto :goto_199

    :cond_184
    invoke-direct/range {p0 .. p0}, Landroid/view/ViewRootImpl;->getWindowBoundsInsetSystemBars()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v3

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v2

    move/from16 v19, v2

    move/from16 v20, v3

    goto :goto_199

    :cond_195
    move/from16 v19, v2

    move/from16 v20, v3

    :goto_199
    iget-object v1, v7, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    move-object/from16 v1, p0

    move-object v2, v8

    move-object v3, v10

    const/4 v9, -0x2

    move/from16 v5, v20

    move-object/from16 v17, v6

    move/from16 v6, v19

    invoke-direct/range {v1 .. v6}, Landroid/view/ViewRootImpl;->measureHierarchy(Landroid/view/View;Landroid/view/WindowManager$LayoutParams;Landroid/content/res/Resources;II)Z

    move-result v1

    or-int/2addr v0, v1

    move/from16 v5, v19

    move/from16 v6, v20

    goto :goto_1bd

    :cond_1b8
    move-object/from16 v17, v6

    const/4 v9, -0x2

    move v5, v2

    move v6, v3

    :goto_1bd
    invoke-direct/range {p0 .. p0}, Landroid/view/ViewRootImpl;->collectViewAttributes()Z

    move-result v1

    if-eqz v1, :cond_1c5

    move-object/from16 v16, v10

    :cond_1c5
    iget-object v1, v7, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-boolean v1, v1, Landroid/view/View$AttachInfo;->mForceReportNewAttributes:Z

    if-eqz v1, :cond_1d1

    iget-object v1, v7, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iput-boolean v12, v1, Landroid/view/View$AttachInfo;->mForceReportNewAttributes:Z

    move-object/from16 v16, v10

    :cond_1d1
    iget-boolean v1, v7, Landroid/view/ViewRootImpl;->mFirst:Z

    if-nez v1, :cond_1db

    iget-object v1, v7, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-boolean v1, v1, Landroid/view/View$AttachInfo;->mViewVisibilityChanged:Z

    if-eqz v1, :cond_218

    :cond_1db
    iget-object v1, v7, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iput-boolean v12, v1, Landroid/view/View$AttachInfo;->mViewVisibilityChanged:Z

    iget v1, v7, Landroid/view/ViewRootImpl;->mSoftInputMode:I

    and-int/lit16 v1, v1, 0xf0

    if-nez v1, :cond_218

    iget-object v2, v7, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v2, v2, Landroid/view/View$AttachInfo;->mScrollContainers:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x0

    :goto_1ee
    if-ge v3, v2, :cond_205

    iget-object v4, v7, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v4, v4, Landroid/view/View$AttachInfo;->mScrollContainers:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->isShown()Z

    move-result v4

    if-eqz v4, :cond_202

    const/16 v1, 0x10

    :cond_202
    add-int/lit8 v3, v3, 0x1

    goto :goto_1ee

    :cond_205
    if-nez v1, :cond_209

    const/16 v1, 0x20

    :cond_209
    iget v3, v10, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    and-int/lit16 v3, v3, 0xf0

    if-eq v3, v1, :cond_218

    iget v3, v10, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    and-int/lit16 v3, v3, -0xf1

    or-int/2addr v3, v1

    iput v3, v10, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    move-object/from16 v16, v10

    :cond_218
    iget-boolean v1, v7, Landroid/view/ViewRootImpl;->mApplyInsetsRequested:Z

    if-eqz v1, :cond_245

    invoke-virtual {v7, v8}, Landroid/view/ViewRootImpl;->dispatchApplyInsets(Landroid/view/View;)V

    iget-boolean v1, v7, Landroid/view/ViewRootImpl;->mLayoutRequested:Z

    if-eqz v1, :cond_240

    iget-object v1, v7, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    move-object/from16 v1, p0

    move-object v2, v8

    move-object v3, v10

    move/from16 v19, v5

    move v5, v6

    move/from16 v23, v6

    move/from16 v6, v19

    invoke-direct/range {v1 .. v6}, Landroid/view/ViewRootImpl;->measureHierarchy(Landroid/view/View;Landroid/view/WindowManager$LayoutParams;Landroid/content/res/Resources;II)Z

    move-result v1

    or-int/2addr v0, v1

    move/from16 v20, v0

    goto :goto_24b

    :cond_240
    move/from16 v19, v5

    move/from16 v23, v6

    goto :goto_249

    :cond_245
    move/from16 v19, v5

    move/from16 v23, v6

    :goto_249
    move/from16 v20, v0

    :goto_24b
    if-eqz v18, :cond_24f

    iput-boolean v12, v7, Landroid/view/ViewRootImpl;->mLayoutRequested:Z

    :cond_24f
    if-eqz v18, :cond_29b

    if-eqz v20, :cond_29b

    iget v0, v7, Landroid/view/ViewRootImpl;->mWidth:I

    invoke-virtual {v8}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    if-ne v0, v1, :cond_295

    iget v0, v7, Landroid/view/ViewRootImpl;->mHeight:I

    invoke-virtual {v8}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    if-ne v0, v1, :cond_295

    iget v0, v10, Landroid/view/WindowManager$LayoutParams;->width:I

    if-ne v0, v9, :cond_27b

    invoke-virtual/range {v17 .. v17}, Landroid/graphics/Rect;->width()I

    move-result v0

    move/from16 v6, v23

    if-ge v0, v6, :cond_27d

    invoke-virtual/range {v17 .. v17}, Landroid/graphics/Rect;->width()I

    move-result v0

    iget v1, v7, Landroid/view/ViewRootImpl;->mWidth:I

    if-ne v0, v1, :cond_278

    goto :goto_27d

    :cond_278
    move/from16 v9, v19

    goto :goto_299

    :cond_27b
    move/from16 v6, v23

    :cond_27d
    :goto_27d
    iget v0, v10, Landroid/view/WindowManager$LayoutParams;->height:I

    if-ne v0, v9, :cond_292

    invoke-virtual/range {v17 .. v17}, Landroid/graphics/Rect;->height()I

    move-result v0

    move/from16 v9, v19

    if-ge v0, v9, :cond_29f

    invoke-virtual/range {v17 .. v17}, Landroid/graphics/Rect;->height()I

    move-result v0

    iget v1, v7, Landroid/view/ViewRootImpl;->mHeight:I

    if-eq v0, v1, :cond_29f

    goto :goto_299

    :cond_292
    move/from16 v9, v19

    goto :goto_29f

    :cond_295
    move/from16 v9, v19

    move/from16 v6, v23

    :goto_299
    const/4 v0, 0x1

    goto :goto_2a0

    :cond_29b
    move/from16 v9, v19

    move/from16 v6, v23

    :cond_29f
    :goto_29f
    move v0, v12

    :goto_2a0
    iget-boolean v1, v7, Landroid/view/ViewRootImpl;->mDragResizing:Z

    if-eqz v1, :cond_2aa

    iget v1, v7, Landroid/view/ViewRootImpl;->mResizeMode:I

    if-nez v1, :cond_2aa

    const/4 v1, 0x1

    goto :goto_2ab

    :cond_2aa
    move v1, v12

    :goto_2ab
    or-int/2addr v0, v1

    iget-boolean v1, v7, Landroid/view/ViewRootImpl;->mActivityRelaunched:Z

    or-int v19, v0, v1

    iget-object v0, v7, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v0, Landroid/view/View$AttachInfo;->mTreeObserver:Landroid/view/ViewTreeObserver;

    invoke-virtual {v0}, Landroid/view/ViewTreeObserver;->hasComputeInternalInsetsListeners()Z

    move-result v0

    if-nez v0, :cond_2c3

    iget-object v0, v7, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-boolean v0, v0, Landroid/view/View$AttachInfo;->mHasNonEmptyGivenInternalInsets:Z

    if-eqz v0, :cond_2c1

    goto :goto_2c3

    :cond_2c1
    move v0, v12

    goto :goto_2c4

    :cond_2c3
    :goto_2c3
    const/4 v0, 0x1

    :goto_2c4
    move/from16 v23, v0

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    iget-object v3, v7, Landroid/view/ViewRootImpl;->mSurface:Landroid/view/Surface;

    invoke-virtual {v3}, Landroid/view/Surface;->getGenerationId()I

    move-result v5

    if-nez v11, :cond_2d3

    const/4 v3, 0x1

    goto :goto_2d4

    :cond_2d3
    move v3, v12

    :goto_2d4
    move/from16 v24, v3

    iget-boolean v4, v7, Landroid/view/ViewRootImpl;->mForceNextWindowRelayout:Z

    const/4 v3, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    iget-boolean v12, v7, Landroid/view/ViewRootImpl;->mWindowAttributesChanged:Z

    if-eqz v12, :cond_2ed

    move/from16 v28, v1

    const/4 v1, 0x0

    iput-boolean v1, v7, Landroid/view/ViewRootImpl;->mWindowAttributesChanged:Z

    move-object/from16 v16, v10

    move-object/from16 v1, v16

    goto :goto_2f1

    :cond_2ed
    move/from16 v28, v1

    move-object/from16 v1, v16

    :goto_2f1
    if-eqz v1, :cond_322

    move/from16 v16, v0

    iget v0, v8, Landroid/view/View;->mPrivateFlags:I

    and-int/lit16 v0, v0, 0x200

    if-eqz v0, :cond_306

    iget v0, v1, Landroid/view/WindowManager$LayoutParams;->format:I

    invoke-static {v0}, Landroid/graphics/PixelFormat;->formatHasAlpha(I)Z

    move-result v0

    if-nez v0, :cond_306

    const/4 v0, -0x3

    iput v0, v1, Landroid/view/WindowManager$LayoutParams;->format:I

    :cond_306
    invoke-static {v1}, Landroid/view/ViewRootImpl;->adjustLayoutParamsForCompatibility(Landroid/view/WindowManager$LayoutParams;)V

    invoke-direct {v7, v1}, Landroid/view/ViewRootImpl;->controlInsetsForCompatibility(Landroid/view/WindowManager$LayoutParams;)V

    iget v0, v7, Landroid/view/ViewRootImpl;->mDispatchedSystemBarAppearance:I

    move/from16 v29, v2

    iget-object v2, v1, Landroid/view/WindowManager$LayoutParams;->insetsFlags:Landroid/view/InsetsFlags;

    iget v2, v2, Landroid/view/InsetsFlags;->appearance:I

    if-eq v0, v2, :cond_326

    iget-object v0, v1, Landroid/view/WindowManager$LayoutParams;->insetsFlags:Landroid/view/InsetsFlags;

    iget v0, v0, Landroid/view/InsetsFlags;->appearance:I

    iput v0, v7, Landroid/view/ViewRootImpl;->mDispatchedSystemBarAppearance:I

    iget-object v2, v7, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v2, v0}, Landroid/view/View;->onSystemBarAppearanceChanged(I)V

    goto :goto_326

    :cond_322
    move/from16 v16, v0

    move/from16 v29, v2

    :cond_326
    :goto_326
    iget-boolean v0, v7, Landroid/view/ViewRootImpl;->mFirst:Z

    if-nez v0, :cond_351

    if-nez v19, :cond_351

    if-nez v13, :cond_351

    if-nez v1, :cond_351

    iget-boolean v0, v7, Landroid/view/ViewRootImpl;->mForceNextWindowRelayout:Z

    if-eqz v0, :cond_337

    move-object/from16 v2, v17

    goto :goto_353

    :cond_337
    move-object/from16 v2, v17

    invoke-direct {v7, v2}, Landroid/view/ViewRootImpl;->maybeHandleWindowMove(Landroid/graphics/Rect;)V

    move-object/from16 v31, v1

    move/from16 v40, v4

    move/from16 v43, v5

    move/from16 v38, v6

    move/from16 v42, v9

    move/from16 v17, v14

    move-object/from16 v32, v15

    move/from16 v1, v28

    move-object v14, v2

    move/from16 v2, v29

    goto/16 :goto_9e3

    :cond_351
    move-object/from16 v2, v17

    :goto_353
    move/from16 v17, v14

    move-object/from16 v32, v15

    const-wide/16 v14, 0x8

    invoke-static {v14, v15}, Landroid/os/Trace;->isTagEnabled(J)Z

    move-result v0

    if-eqz v0, :cond_39c

    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/Object;

    iget-boolean v14, v7, Landroid/view/ViewRootImpl;->mFirst:Z

    invoke-static {v14}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v14

    const/4 v15, 0x0

    aput-object v14, v0, v15

    invoke-static/range {v19 .. v19}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v14

    const/4 v15, 0x1

    aput-object v14, v0, v15

    invoke-static {v13}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v14

    const/4 v15, 0x2

    aput-object v14, v0, v15

    if-eqz v1, :cond_37d

    const/4 v14, 0x1

    goto :goto_37e

    :cond_37d
    const/4 v14, 0x0

    :goto_37e
    invoke-static {v14}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v14

    const/16 v22, 0x3

    aput-object v14, v0, v22

    const/4 v14, 0x4

    iget-boolean v15, v7, Landroid/view/ViewRootImpl;->mForceNextWindowRelayout:Z

    invoke-static {v15}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v15

    aput-object v15, v0, v14

    const-string/jumbo v14, "relayoutWindow#first=%b/resize=%b/vis=%b/params=%b/force=%b"

    invoke-static {v14, v0}, Landroid/text/TextUtils;->formatSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-wide/16 v14, 0x8

    invoke-static {v14, v15, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    goto :goto_39e

    :cond_39c
    const/16 v22, 0x3

    :goto_39e
    const/4 v14, 0x0

    iput-boolean v14, v7, Landroid/view/ViewRootImpl;->mForceNextWindowRelayout:Z

    move/from16 v14, v23

    iget-object v0, v7, Landroid/view/ViewRootImpl;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    if-eqz v0, :cond_3af

    iget-object v0, v0, Lcom/android/internal/view/BaseSurfaceHolder;->mSurfaceLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    const/4 v15, 0x1

    iput-boolean v15, v7, Landroid/view/ViewRootImpl;->mDrawingAllowed:Z

    :cond_3af
    const/4 v15, 0x0

    const/16 v16, 0x0

    iget-object v0, v7, Landroid/view/ViewRootImpl;->mSurface:Landroid/view/Surface;

    invoke-virtual {v0}, Landroid/view/Surface;->isValid()Z

    move-result v35

    :try_start_3b8
    const-string/jumbo v0, "relayoutWindow"
    :try_end_3bb
    .catch Landroid/os/RemoteException; {:try_start_3b8 .. :try_end_3bb} :catch_83b
    .catchall {:try_start_3b8 .. :try_end_3bb} :catchall_81a

    move-object/from16 v37, v2

    move/from16 v36, v3

    const-wide/16 v2, 0x8

    :try_start_3c1
    invoke-static {v2, v3, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    iget-boolean v0, v7, Landroid/view/ViewRootImpl;->mFirst:Z

    if-nez v0, :cond_3ca

    if-eqz v13, :cond_3d4

    :cond_3ca
    iget-object v0, v7, Landroid/view/ViewRootImpl;->mViewFrameInfo:Landroid/view/ViewFrameInfo;

    iget-wide v2, v0, Landroid/view/ViewFrameInfo;->flags:J

    const-wide/16 v38, 0x1

    or-long v2, v2, v38

    iput-wide v2, v0, Landroid/view/ViewFrameInfo;->flags:J

    :cond_3d4
    invoke-direct {v7, v1, v11, v14}, Landroid/view/ViewRootImpl;->relayoutWindow(Landroid/view/WindowManager$LayoutParams;IZ)I

    move-result v0

    move/from16 v28, v0

    iget-boolean v0, v7, Landroid/view/ViewRootImpl;->mPendingDragResizing:Z

    move v3, v0

    iget v0, v7, Landroid/view/ViewRootImpl;->mSyncSeqId:I

    iget v2, v7, Landroid/view/ViewRootImpl;->mLastSyncSeqId:I
    :try_end_3e1
    .catch Landroid/os/RemoteException; {:try_start_3c1 .. :try_end_3e1} :catch_7fd
    .catchall {:try_start_3c1 .. :try_end_3e1} :catchall_7e6

    if-le v0, v2, :cond_420

    :try_start_3e3
    iput v0, v7, Landroid/view/ViewRootImpl;->mLastSyncSeqId:I

    invoke-direct/range {p0 .. p0}, Landroid/view/ViewRootImpl;->reportNextDraw()V

    const/4 v2, 0x1

    iput-boolean v2, v7, Landroid/view/ViewRootImpl;->mSyncBuffer:Z
    :try_end_3eb
    .catch Landroid/os/RemoteException; {:try_start_3e3 .. :try_end_3eb} :catch_403
    .catchall {:try_start_3e3 .. :try_end_3eb} :catchall_3ec

    goto :goto_420

    :catchall_3ec
    move-exception v0

    move-object/from16 v31, v1

    move/from16 v40, v4

    move/from16 v43, v5

    move/from16 v38, v6

    move/from16 v42, v9

    move/from16 v44, v14

    move/from16 v1, v28

    move/from16 v2, v29

    move/from16 v3, v36

    move-object/from16 v14, v37

    goto/16 :goto_82f

    :catch_403
    move-exception v0

    move-object/from16 v31, v1

    move/from16 v40, v4

    move/from16 v43, v5

    move/from16 v38, v6

    move/from16 v42, v9

    move/from16 v44, v14

    move/from16 v30, v15

    move/from16 v15, v22

    move/from16 v1, v28

    move/from16 v2, v29

    move/from16 v3, v36

    move-object/from16 v14, v37

    const-wide/16 v4, 0x8

    goto/16 :goto_856

    :cond_420
    :goto_420
    and-int/lit8 v0, v28, 0x2

    const/4 v2, 0x2

    if-ne v0, v2, :cond_427

    const/4 v0, 0x1

    goto :goto_428

    :cond_427
    const/4 v0, 0x0

    :goto_428
    move v2, v0

    :try_start_429
    iget-object v0, v7, Landroid/view/ViewRootImpl;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v0}, Landroid/view/SurfaceControl;->isValid()Z

    move-result v0
    :try_end_42f
    .catch Landroid/os/RemoteException; {:try_start_429 .. :try_end_42f} :catch_7fd
    .catchall {:try_start_429 .. :try_end_42f} :catchall_7e6

    if-eqz v0, :cond_43f

    :try_start_431
    iget-object v0, v7, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v7, v0, v3, v2}, Landroid/view/ViewRootImpl;->updateOpacity(Landroid/view/WindowManager$LayoutParams;ZZ)V

    if-eqz v2, :cond_43f

    iget-boolean v0, v7, Landroid/view/ViewRootImpl;->mDisplayDecorationCached:Z

    if-eqz v0, :cond_43f

    invoke-direct/range {p0 .. p0}, Landroid/view/ViewRootImpl;->updateDisplayDecoration()V
    :try_end_43f
    .catch Landroid/os/RemoteException; {:try_start_431 .. :try_end_43f} :catch_403
    .catchall {:try_start_431 .. :try_end_43f} :catchall_3ec

    :cond_43f
    const-wide/16 v33, 0x8

    :try_start_441
    invoke-static/range {v33 .. v34}, Landroid/os/Trace;->traceEnd(J)V

    iget-object v0, v7, Landroid/view/ViewRootImpl;->mPendingMergedConfiguration:Landroid/util/MergedConfiguration;
    :try_end_446
    .catch Landroid/os/RemoteException; {:try_start_441 .. :try_end_446} :catch_7fd
    .catchall {:try_start_441 .. :try_end_446} :catchall_7e6

    move-object/from16 v31, v1

    :try_start_448
    iget-object v1, v7, Landroid/view/ViewRootImpl;->mLastReportedMergedConfiguration:Landroid/util/MergedConfiguration;

    invoke-virtual {v0, v1}, Landroid/util/MergedConfiguration;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_44e
    .catch Landroid/os/RemoteException; {:try_start_448 .. :try_end_44e} :catch_7ca
    .catchall {:try_start_448 .. :try_end_44e} :catchall_7b4

    if-nez v0, :cond_4c5

    :try_start_450
    new-instance v0, Landroid/util/MergedConfiguration;

    iget-object v1, v7, Landroid/view/ViewRootImpl;->mPendingMergedConfiguration:Landroid/util/MergedConfiguration;

    invoke-direct {v0, v1}, Landroid/util/MergedConfiguration;-><init>(Landroid/util/MergedConfiguration;)V

    iget-boolean v1, v7, Landroid/view/ViewRootImpl;->mFirst:Z
    :try_end_459
    .catch Landroid/os/RemoteException; {:try_start_450 .. :try_end_459} :catch_4aa
    .catchall {:try_start_450 .. :try_end_459} :catchall_495

    if-nez v1, :cond_45d

    const/4 v1, 0x1

    goto :goto_45e

    :cond_45d
    const/4 v1, 0x0

    :goto_45e
    move/from16 v38, v6

    const/4 v6, -0x1

    :try_start_461
    invoke-direct {v7, v0, v1, v6}, Landroid/view/ViewRootImpl;->performConfigurationChange(Landroid/util/MergedConfiguration;ZI)V
    :try_end_464
    .catch Landroid/os/RemoteException; {:try_start_461 .. :try_end_464} :catch_47c
    .catchall {:try_start_461 .. :try_end_464} :catchall_469

    const/4 v0, 0x1

    move/from16 v29, v0

    goto/16 :goto_4c8

    :catchall_469
    move-exception v0

    move/from16 v40, v4

    move/from16 v43, v5

    move/from16 v42, v9

    move/from16 v44, v14

    move/from16 v1, v28

    move/from16 v2, v29

    move/from16 v3, v36

    move-object/from16 v14, v37

    goto/16 :goto_82f

    :catch_47c
    move-exception v0

    move/from16 v40, v4

    move/from16 v43, v5

    move/from16 v42, v9

    move/from16 v44, v14

    move/from16 v30, v15

    move/from16 v15, v22

    move/from16 v1, v28

    move/from16 v2, v29

    move/from16 v3, v36

    move-object/from16 v14, v37

    const-wide/16 v4, 0x8

    goto/16 :goto_856

    :catchall_495
    move-exception v0

    move/from16 v40, v4

    move/from16 v43, v5

    move/from16 v38, v6

    move/from16 v42, v9

    move/from16 v44, v14

    move/from16 v1, v28

    move/from16 v2, v29

    move/from16 v3, v36

    move-object/from16 v14, v37

    goto/16 :goto_82f

    :catch_4aa
    move-exception v0

    move/from16 v38, v6

    move/from16 v40, v4

    move/from16 v43, v5

    move/from16 v42, v9

    move/from16 v44, v14

    move/from16 v30, v15

    move/from16 v15, v22

    move/from16 v1, v28

    move/from16 v2, v29

    move/from16 v3, v36

    move-object/from16 v14, v37

    const-wide/16 v4, 0x8

    goto/16 :goto_856

    :cond_4c5
    move/from16 v38, v6

    const/4 v6, -0x1

    :goto_4c8
    const/4 v1, 0x0

    :try_start_4c9
    iget-object v0, v7, Landroid/view/ViewRootImpl;->mLastSurfaceSize:Landroid/graphics/Point;

    iget-object v6, v7, Landroid/view/ViewRootImpl;->mSurfaceSize:Landroid/graphics/Point;

    invoke-virtual {v0, v6}, Landroid/graphics/Point;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_4d1
    .catch Landroid/os/RemoteException; {:try_start_4c9 .. :try_end_4d1} :catch_79b
    .catchall {:try_start_4c9 .. :try_end_4d1} :catchall_788

    if-nez v0, :cond_514

    const/4 v1, 0x1

    :try_start_4d4
    iget-object v0, v7, Landroid/view/ViewRootImpl;->mLastSurfaceSize:Landroid/graphics/Point;

    iget-object v6, v7, Landroid/view/ViewRootImpl;->mSurfaceSize:Landroid/graphics/Point;

    iget v6, v6, Landroid/graphics/Point;->x:I
    :try_end_4da
    .catch Landroid/os/RemoteException; {:try_start_4d4 .. :try_end_4da} :catch_4f9
    .catchall {:try_start_4d4 .. :try_end_4da} :catchall_4e4

    move/from16 v36, v1

    :try_start_4dc
    iget-object v1, v7, Landroid/view/ViewRootImpl;->mSurfaceSize:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->y:I

    invoke-virtual {v0, v6, v1}, Landroid/graphics/Point;->set(II)V
    :try_end_4e3
    .catch Landroid/os/RemoteException; {:try_start_4dc .. :try_end_4e3} :catch_47c
    .catchall {:try_start_4dc .. :try_end_4e3} :catchall_469

    goto :goto_516

    :catchall_4e4
    move-exception v0

    move/from16 v36, v1

    move/from16 v40, v4

    move/from16 v43, v5

    move/from16 v42, v9

    move/from16 v44, v14

    move/from16 v1, v28

    move/from16 v2, v29

    move/from16 v3, v36

    move-object/from16 v14, v37

    goto/16 :goto_82f

    :catch_4f9
    move-exception v0

    move/from16 v36, v1

    move/from16 v40, v4

    move/from16 v43, v5

    move/from16 v42, v9

    move/from16 v44, v14

    move/from16 v30, v15

    move/from16 v15, v22

    move/from16 v1, v28

    move/from16 v2, v29

    move/from16 v3, v36

    move-object/from16 v14, v37

    const-wide/16 v4, 0x8

    goto/16 :goto_856

    :cond_514
    move/from16 v36, v1

    :goto_516
    :try_start_516
    iget-boolean v0, v7, Landroid/view/ViewRootImpl;->mPendingAlwaysConsumeSystemBars:Z

    iget-object v1, v7, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-boolean v1, v1, Landroid/view/View$AttachInfo;->mAlwaysConsumeSystemBars:Z

    if-eq v0, v1, :cond_520

    const/4 v0, 0x1

    goto :goto_521

    :cond_520
    const/4 v0, 0x0

    :goto_521
    move/from16 v39, v0

    invoke-virtual {v10}, Landroid/view/WindowManager$LayoutParams;->getColorMode()I

    move-result v0

    invoke-direct {v7, v0}, Landroid/view/ViewRootImpl;->updateColorModeIfNeeded(I)V
    :try_end_52a
    .catch Landroid/os/RemoteException; {:try_start_516 .. :try_end_52a} :catch_76e
    .catchall {:try_start_516 .. :try_end_52a} :catchall_75a

    if-nez v35, :cond_536

    :try_start_52c
    iget-object v0, v7, Landroid/view/ViewRootImpl;->mSurface:Landroid/view/Surface;

    invoke-virtual {v0}, Landroid/view/Surface;->isValid()Z

    move-result v0

    if-eqz v0, :cond_536

    const/4 v0, 0x1

    goto :goto_537

    :cond_536
    const/4 v0, 0x0

    :goto_537
    move/from16 v25, v0

    if-eqz v35, :cond_545

    iget-object v0, v7, Landroid/view/ViewRootImpl;->mSurface:Landroid/view/Surface;

    invoke-virtual {v0}, Landroid/view/Surface;->isValid()Z

    move-result v0
    :try_end_541
    .catch Landroid/os/RemoteException; {:try_start_52c .. :try_end_541} :catch_47c
    .catchall {:try_start_52c .. :try_end_541} :catchall_469

    if-nez v0, :cond_545

    const/4 v0, 0x1

    goto :goto_546

    :cond_545
    const/4 v0, 0x0

    :goto_546
    move/from16 v26, v0

    :try_start_548
    iget-object v0, v7, Landroid/view/ViewRootImpl;->mSurface:Landroid/view/Surface;

    invoke-virtual {v0}, Landroid/view/Surface;->getGenerationId()I

    move-result v0

    if-ne v5, v0, :cond_552

    if-eqz v2, :cond_55c

    :cond_552
    iget-object v0, v7, Landroid/view/ViewRootImpl;->mSurface:Landroid/view/Surface;

    invoke-virtual {v0}, Landroid/view/Surface;->isValid()Z

    move-result v0
    :try_end_558
    .catch Landroid/os/RemoteException; {:try_start_548 .. :try_end_558} :catch_76e
    .catchall {:try_start_548 .. :try_end_558} :catchall_75a

    if-eqz v0, :cond_55c

    const/4 v0, 0x1

    goto :goto_55d

    :cond_55c
    const/4 v0, 0x0

    :goto_55d
    move/from16 v27, v0

    if-eqz v27, :cond_567

    :try_start_561
    iget v0, v7, Landroid/view/ViewRootImpl;->mSurfaceSequenceId:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, v7, Landroid/view/ViewRootImpl;->mSurfaceSequenceId:I

    :cond_567
    if-eqz v39, :cond_571

    iget-object v0, v7, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-boolean v1, v7, Landroid/view/ViewRootImpl;->mPendingAlwaysConsumeSystemBars:Z

    iput-boolean v1, v0, Landroid/view/View$AttachInfo;->mAlwaysConsumeSystemBars:Z
    :try_end_56f
    .catch Landroid/os/RemoteException; {:try_start_561 .. :try_end_56f} :catch_47c
    .catchall {:try_start_561 .. :try_end_56f} :catchall_469

    const/16 v16, 0x1

    :cond_571
    :try_start_571
    invoke-direct/range {p0 .. p0}, Landroid/view/ViewRootImpl;->updateCaptionInsets()Z

    move-result v0
    :try_end_575
    .catch Landroid/os/RemoteException; {:try_start_571 .. :try_end_575} :catch_76e
    .catchall {:try_start_571 .. :try_end_575} :catchall_75a

    if-eqz v0, :cond_57a

    const/4 v0, 0x1

    move/from16 v16, v0

    :cond_57a
    if-nez v16, :cond_588

    :try_start_57c
    iget v0, v7, Landroid/view/ViewRootImpl;->mLastSystemUiVisibility:I

    iget-object v1, v7, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget v1, v1, Landroid/view/View$AttachInfo;->mSystemUiVisibility:I

    if-ne v0, v1, :cond_588

    iget-boolean v0, v7, Landroid/view/ViewRootImpl;->mApplyInsetsRequested:Z
    :try_end_586
    .catch Landroid/os/RemoteException; {:try_start_57c .. :try_end_586} :catch_47c
    .catchall {:try_start_57c .. :try_end_586} :catchall_469

    if-eqz v0, :cond_594

    :cond_588
    :try_start_588
    iget-object v0, v7, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget v0, v0, Landroid/view/View$AttachInfo;->mSystemUiVisibility:I

    iput v0, v7, Landroid/view/ViewRootImpl;->mLastSystemUiVisibility:I

    invoke-virtual {v7, v8}, Landroid/view/ViewRootImpl;->dispatchApplyInsets(Landroid/view/View;)V
    :try_end_591
    .catch Landroid/os/RemoteException; {:try_start_588 .. :try_end_591} :catch_76e
    .catchall {:try_start_588 .. :try_end_591} :catchall_75a

    const/4 v0, 0x1

    move/from16 v16, v0

    :cond_594
    if-eqz v25, :cond_5d5

    const/4 v1, 0x1

    :try_start_597
    iput-boolean v1, v7, Landroid/view/ViewRootImpl;->mFullRedrawNeeded:Z

    iget-object v0, v7, Landroid/view/ViewRootImpl;->mPreviousTransparentRegion:Landroid/graphics/Region;

    invoke-virtual {v0}, Landroid/graphics/Region;->setEmpty()V

    iget-object v0, v7, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v0, Landroid/view/View$AttachInfo;->mThreadedRenderer:Landroid/view/ThreadedRenderer;
    :try_end_5a2
    .catch Landroid/os/RemoteException; {:try_start_597 .. :try_end_5a2} :catch_47c
    .catchall {:try_start_597 .. :try_end_5a2} :catchall_469

    if-eqz v0, :cond_63e

    :try_start_5a4
    iget-object v0, v7, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v0, Landroid/view/View$AttachInfo;->mThreadedRenderer:Landroid/view/ThreadedRenderer;

    iget-object v1, v7, Landroid/view/ViewRootImpl;->mSurface:Landroid/view/Surface;

    invoke-virtual {v0, v1}, Landroid/view/ThreadedRenderer;->initialize(Landroid/view/Surface;)Z

    move-result v0

    move v15, v0

    if-eqz v15, :cond_5be

    iget v0, v8, Landroid/view/View;->mPrivateFlags:I

    and-int/lit16 v0, v0, 0x200

    if-nez v0, :cond_5be

    iget-object v0, v7, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v0, Landroid/view/View$AttachInfo;->mThreadedRenderer:Landroid/view/ThreadedRenderer;

    invoke-virtual {v0}, Landroid/view/ThreadedRenderer;->allocateBuffers()V
    :try_end_5be
    .catch Landroid/view/Surface$OutOfResourcesException; {:try_start_5a4 .. :try_end_5be} :catch_5c0
    .catch Landroid/os/RemoteException; {:try_start_5a4 .. :try_end_5be} :catch_47c
    .catchall {:try_start_5a4 .. :try_end_5be} :catchall_469

    :cond_5be
    goto/16 :goto_63e

    :catch_5c0
    move-exception v0

    :try_start_5c1
    invoke-direct {v7, v0}, Landroid/view/ViewRootImpl;->handleOutOfResourcesException(Landroid/view/Surface$OutOfResourcesException;)V

    iget-object v1, v7, Landroid/view/ViewRootImpl;->mViewRootMonitor:Landroid/os/perfdebug/ViewRootMonitor;

    invoke-virtual {v1}, Landroid/os/perfdebug/ViewRootMonitor;->monitorPerformMeasureEnd()V
    :try_end_5c9
    .catch Landroid/os/RemoteException; {:try_start_5c1 .. :try_end_5c9} :catch_47c
    .catchall {:try_start_5c1 .. :try_end_5c9} :catchall_469

    const-wide/16 v21, 0x8

    invoke-static/range {v21 .. v22}, Landroid/os/Trace;->isTagEnabled(J)Z

    move-result v1

    if-eqz v1, :cond_5d4

    invoke-static/range {v21 .. v22}, Landroid/os/Trace;->traceEnd(J)V

    :cond_5d4
    return-void

    :cond_5d5
    if-eqz v26, :cond_604

    :try_start_5d7
    iget-object v0, v7, Landroid/view/ViewRootImpl;->mLastScrolledFocus:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_5de

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->clear()V

    :cond_5de
    const/4 v1, 0x0

    iput v1, v7, Landroid/view/ViewRootImpl;->mCurScrollY:I

    iput v1, v7, Landroid/view/ViewRootImpl;->mScrollY:I

    iget-object v0, v7, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    instance-of v1, v0, Lcom/android/internal/view/RootViewSurfaceTaker;

    if-eqz v1, :cond_5ef

    check-cast v0, Lcom/android/internal/view/RootViewSurfaceTaker;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/android/internal/view/RootViewSurfaceTaker;->onRootViewScrollYChanged(I)V

    :cond_5ef
    iget-object v0, v7, Landroid/view/ViewRootImpl;->mScroller:Landroid/widget/Scroller;

    if-eqz v0, :cond_5f6

    invoke-virtual {v0}, Landroid/widget/Scroller;->abortAnimation()V

    :cond_5f6
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewRootImpl;->isHardwareEnabled()Z

    move-result v0

    if-eqz v0, :cond_63e

    iget-object v0, v7, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v0, Landroid/view/View$AttachInfo;->mThreadedRenderer:Landroid/view/ThreadedRenderer;

    invoke-virtual {v0}, Landroid/view/ThreadedRenderer;->destroy()V
    :try_end_603
    .catch Landroid/os/RemoteException; {:try_start_5d7 .. :try_end_603} :catch_47c
    .catchall {:try_start_5d7 .. :try_end_603} :catchall_469

    goto :goto_63e

    :cond_604
    if-nez v27, :cond_60a

    if-nez v36, :cond_60a

    if-eqz v4, :cond_63e

    :cond_60a
    :try_start_60a
    iget-object v0, v7, Landroid/view/ViewRootImpl;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;
    :try_end_60c
    .catch Landroid/os/RemoteException; {:try_start_60a .. :try_end_60c} :catch_76e
    .catchall {:try_start_60a .. :try_end_60c} :catchall_75a

    if-nez v0, :cond_63e

    :try_start_60e
    iget-object v0, v7, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v0, Landroid/view/View$AttachInfo;->mThreadedRenderer:Landroid/view/ThreadedRenderer;

    if-eqz v0, :cond_63e

    iget-object v0, v7, Landroid/view/ViewRootImpl;->mSurface:Landroid/view/Surface;

    invoke-virtual {v0}, Landroid/view/Surface;->isValid()Z

    move-result v0

    if-eqz v0, :cond_63e

    const/4 v1, 0x1

    iput-boolean v1, v7, Landroid/view/ViewRootImpl;->mFullRedrawNeeded:Z
    :try_end_61f
    .catch Landroid/os/RemoteException; {:try_start_60e .. :try_end_61f} :catch_47c
    .catchall {:try_start_60e .. :try_end_61f} :catchall_469

    :try_start_61f
    iget-object v0, v7, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v0, Landroid/view/View$AttachInfo;->mThreadedRenderer:Landroid/view/ThreadedRenderer;

    iget-object v1, v7, Landroid/view/ViewRootImpl;->mSurface:Landroid/view/Surface;

    invoke-virtual {v0, v1}, Landroid/view/ThreadedRenderer;->updateSurface(Landroid/view/Surface;)V
    :try_end_628
    .catch Landroid/view/Surface$OutOfResourcesException; {:try_start_61f .. :try_end_628} :catch_629
    .catch Landroid/os/RemoteException; {:try_start_61f .. :try_end_628} :catch_47c
    .catchall {:try_start_61f .. :try_end_628} :catchall_469

    goto :goto_63e

    :catch_629
    move-exception v0

    :try_start_62a
    invoke-direct {v7, v0}, Landroid/view/ViewRootImpl;->handleOutOfResourcesException(Landroid/view/Surface$OutOfResourcesException;)V

    iget-object v1, v7, Landroid/view/ViewRootImpl;->mViewRootMonitor:Landroid/os/perfdebug/ViewRootMonitor;

    invoke-virtual {v1}, Landroid/os/perfdebug/ViewRootMonitor;->monitorPerformMeasureEnd()V
    :try_end_632
    .catch Landroid/os/RemoteException; {:try_start_62a .. :try_end_632} :catch_47c
    .catchall {:try_start_62a .. :try_end_632} :catchall_469

    const-wide/16 v21, 0x8

    invoke-static/range {v21 .. v22}, Landroid/os/Trace;->isTagEnabled(J)Z

    move-result v1

    if-eqz v1, :cond_63d

    invoke-static/range {v21 .. v22}, Landroid/os/Trace;->traceEnd(J)V

    :cond_63d
    return-void

    :cond_63e
    :goto_63e
    :try_start_63e
    iget-boolean v0, v7, Landroid/view/ViewRootImpl;->mDragResizing:Z

    if-eq v0, v3, :cond_6d9

    if-eqz v3, :cond_6c3

    iget-object v0, v7, Landroid/view/ViewRootImpl;->mWinFrame:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    iget-object v1, v7, Landroid/view/ViewRootImpl;->mPendingBackDropFrame:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1
    :try_end_650
    .catch Landroid/os/RemoteException; {:try_start_63e .. :try_end_650} :catch_741
    .catchall {:try_start_63e .. :try_end_650} :catchall_72c

    if-ne v0, v1, :cond_662

    :try_start_652
    iget-object v0, v7, Landroid/view/ViewRootImpl;->mWinFrame:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    iget-object v1, v7, Landroid/view/ViewRootImpl;->mPendingBackDropFrame:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1
    :try_end_65e
    .catch Landroid/os/RemoteException; {:try_start_652 .. :try_end_65e} :catch_47c
    .catchall {:try_start_652 .. :try_end_65e} :catchall_469

    if-ne v0, v1, :cond_662

    const/4 v0, 0x1

    goto :goto_663

    :cond_662
    const/4 v0, 0x0

    :goto_663
    :try_start_663
    iget-object v6, v7, Landroid/view/ViewRootImpl;->mPendingBackDropFrame:Landroid/graphics/Rect;

    if-nez v0, :cond_66a

    const/16 v40, 0x1

    goto :goto_66c

    :cond_66a
    const/16 v40, 0x0

    :goto_66c
    iget-object v1, v7, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v1, v1, Landroid/view/View$AttachInfo;->mContentInsets:Landroid/graphics/Rect;

    move/from16 v41, v0

    iget-object v0, v7, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v0, Landroid/view/View$AttachInfo;->mStableInsets:Landroid/graphics/Rect;
    :try_end_676
    .catch Landroid/os/RemoteException; {:try_start_663 .. :try_end_676} :catch_741
    .catchall {:try_start_663 .. :try_end_676} :catchall_72c

    move/from16 v42, v9

    :try_start_678
    iget v9, v7, Landroid/view/ViewRootImpl;->mResizeMode:I
    :try_end_67a
    .catch Landroid/os/RemoteException; {:try_start_678 .. :try_end_67a} :catch_6ac
    .catchall {:try_start_678 .. :try_end_67a} :catchall_699

    move-object/from16 v43, v1

    move-object/from16 v1, p0

    move/from16 v44, v14

    move/from16 v30, v15

    move/from16 v15, v22

    move-object/from16 v14, v37

    move/from16 v22, v2

    move-object v2, v6

    move/from16 v45, v3

    move/from16 v3, v40

    move/from16 v40, v4

    move-object/from16 v4, v43

    move/from16 v43, v5

    move-object v5, v0

    move v6, v9

    :try_start_695
    invoke-direct/range {v1 .. v6}, Landroid/view/ViewRootImpl;->startDragResizing(Landroid/graphics/Rect;ZLandroid/graphics/Rect;Landroid/graphics/Rect;I)V

    goto :goto_6eb

    :catchall_699
    move-exception v0

    move/from16 v40, v4

    move/from16 v43, v5

    move/from16 v44, v14

    move/from16 v30, v15

    move-object/from16 v14, v37

    move/from16 v1, v28

    move/from16 v2, v29

    move/from16 v3, v36

    goto/16 :goto_82f

    :catch_6ac
    move-exception v0

    move/from16 v40, v4

    move/from16 v43, v5

    move/from16 v44, v14

    move/from16 v30, v15

    move/from16 v15, v22

    move-object/from16 v14, v37

    move/from16 v1, v28

    move/from16 v2, v29

    move/from16 v3, v36

    const-wide/16 v4, 0x8

    goto/16 :goto_856

    :cond_6c3
    move/from16 v45, v3

    move/from16 v40, v4

    move/from16 v43, v5

    move/from16 v42, v9

    move/from16 v44, v14

    move/from16 v30, v15

    move/from16 v15, v22

    move-object/from16 v14, v37

    move/from16 v22, v2

    invoke-direct/range {p0 .. p0}, Landroid/view/ViewRootImpl;->endDragResizing()V

    goto :goto_6eb

    :cond_6d9
    move/from16 v45, v3

    move/from16 v40, v4

    move/from16 v43, v5

    move/from16 v42, v9

    move/from16 v44, v14

    move/from16 v30, v15

    move/from16 v15, v22

    move-object/from16 v14, v37

    move/from16 v22, v2

    :goto_6eb
    iget-boolean v0, v7, Landroid/view/ViewRootImpl;->mUseMTRenderer:Z

    if-nez v0, :cond_703

    if-eqz v45, :cond_6fe

    iget-object v0, v7, Landroid/view/ViewRootImpl;->mWinFrame:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    iput v0, v7, Landroid/view/ViewRootImpl;->mCanvasOffsetX:I

    iget-object v0, v7, Landroid/view/ViewRootImpl;->mWinFrame:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    iput v0, v7, Landroid/view/ViewRootImpl;->mCanvasOffsetY:I

    goto :goto_703

    :cond_6fe
    const/4 v1, 0x0

    iput v1, v7, Landroid/view/ViewRootImpl;->mCanvasOffsetY:I

    iput v1, v7, Landroid/view/ViewRootImpl;->mCanvasOffsetX:I
    :try_end_703
    .catch Landroid/os/RemoteException; {:try_start_695 .. :try_end_703} :catch_721
    .catchall {:try_start_695 .. :try_end_703} :catchall_716

    :cond_703
    :goto_703
    const-wide/16 v1, 0x8

    invoke-static {v1, v2}, Landroid/os/Trace;->isTagEnabled(J)Z

    move-result v0

    if-eqz v0, :cond_70e

    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    :cond_70e
    move/from16 v1, v28

    move/from16 v2, v29

    move/from16 v3, v36

    goto/16 :goto_85f

    :catchall_716
    move-exception v0

    move/from16 v1, v28

    move/from16 v2, v29

    move/from16 v15, v30

    move/from16 v3, v36

    goto/16 :goto_82f

    :catch_721
    move-exception v0

    move/from16 v1, v28

    move/from16 v2, v29

    move/from16 v3, v36

    const-wide/16 v4, 0x8

    goto/16 :goto_856

    :catchall_72c
    move-exception v0

    move/from16 v40, v4

    move/from16 v43, v5

    move/from16 v42, v9

    move/from16 v44, v14

    move/from16 v30, v15

    move-object/from16 v14, v37

    move/from16 v1, v28

    move/from16 v2, v29

    move/from16 v3, v36

    goto/16 :goto_82f

    :catch_741
    move-exception v0

    move/from16 v40, v4

    move/from16 v43, v5

    move/from16 v42, v9

    move/from16 v44, v14

    move/from16 v30, v15

    move/from16 v15, v22

    move-object/from16 v14, v37

    move/from16 v1, v28

    move/from16 v2, v29

    move/from16 v3, v36

    const-wide/16 v4, 0x8

    goto/16 :goto_856

    :catchall_75a
    move-exception v0

    move/from16 v40, v4

    move/from16 v43, v5

    move/from16 v42, v9

    move/from16 v44, v14

    move v2, v15

    move-object/from16 v14, v37

    move/from16 v1, v28

    move/from16 v2, v29

    move/from16 v3, v36

    goto/16 :goto_82f

    :catch_76e
    move-exception v0

    move/from16 v40, v4

    move/from16 v43, v5

    move/from16 v42, v9

    move/from16 v44, v14

    move v2, v15

    move/from16 v15, v22

    move-object/from16 v14, v37

    move/from16 v30, v2

    move/from16 v1, v28

    move/from16 v2, v29

    move/from16 v3, v36

    const-wide/16 v4, 0x8

    goto/16 :goto_856

    :catchall_788
    move-exception v0

    move/from16 v40, v4

    move/from16 v43, v5

    move/from16 v42, v9

    move/from16 v44, v14

    move v2, v15

    move-object/from16 v14, v37

    move v3, v1

    move/from16 v1, v28

    move/from16 v2, v29

    goto/16 :goto_82f

    :catch_79b
    move-exception v0

    move/from16 v40, v4

    move/from16 v43, v5

    move/from16 v42, v9

    move/from16 v44, v14

    move v2, v15

    move/from16 v15, v22

    move-object/from16 v14, v37

    move v3, v1

    move/from16 v30, v2

    move/from16 v1, v28

    move/from16 v2, v29

    const-wide/16 v4, 0x8

    goto/16 :goto_856

    :catchall_7b4
    move-exception v0

    move/from16 v40, v4

    move/from16 v43, v5

    move/from16 v38, v6

    move/from16 v42, v9

    move/from16 v44, v14

    move v2, v15

    move-object/from16 v14, v37

    move/from16 v1, v28

    move/from16 v2, v29

    move/from16 v3, v36

    goto/16 :goto_82f

    :catch_7ca
    move-exception v0

    move/from16 v40, v4

    move/from16 v43, v5

    move/from16 v38, v6

    move/from16 v42, v9

    move/from16 v44, v14

    move v2, v15

    move/from16 v15, v22

    move-object/from16 v14, v37

    move/from16 v30, v2

    move/from16 v1, v28

    move/from16 v2, v29

    move/from16 v3, v36

    const-wide/16 v4, 0x8

    goto/16 :goto_856

    :catchall_7e6
    move-exception v0

    move-object/from16 v31, v1

    move/from16 v40, v4

    move/from16 v43, v5

    move/from16 v38, v6

    move/from16 v42, v9

    move/from16 v44, v14

    move v2, v15

    move-object/from16 v14, v37

    move/from16 v1, v28

    move/from16 v2, v29

    move/from16 v3, v36

    goto :goto_82f

    :catch_7fd
    move-exception v0

    move-object/from16 v31, v1

    move/from16 v40, v4

    move/from16 v43, v5

    move/from16 v38, v6

    move/from16 v42, v9

    move/from16 v44, v14

    move v2, v15

    move/from16 v15, v22

    move-object/from16 v14, v37

    move/from16 v30, v2

    move/from16 v1, v28

    move/from16 v2, v29

    move/from16 v3, v36

    const-wide/16 v4, 0x8

    goto :goto_856

    :catchall_81a
    move-exception v0

    move-object/from16 v31, v1

    move/from16 v36, v3

    move/from16 v40, v4

    move/from16 v43, v5

    move/from16 v38, v6

    move/from16 v42, v9

    move/from16 v44, v14

    move-object v14, v2

    move v2, v15

    move/from16 v1, v28

    move/from16 v2, v29

    :goto_82f
    const-wide/16 v4, 0x8

    invoke-static {v4, v5}, Landroid/os/Trace;->isTagEnabled(J)Z

    move-result v6

    if-eqz v6, :cond_83a

    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    :cond_83a
    throw v0

    :catch_83b
    move-exception v0

    move-object/from16 v31, v1

    move/from16 v36, v3

    move/from16 v40, v4

    move/from16 v43, v5

    move/from16 v38, v6

    move/from16 v42, v9

    move/from16 v44, v14

    const-wide/16 v4, 0x8

    move-object v14, v2

    move v2, v15

    move/from16 v15, v22

    move/from16 v30, v2

    move/from16 v1, v28

    move/from16 v2, v29

    :goto_856
    invoke-static {v4, v5}, Landroid/os/Trace;->isTagEnabled(J)Z

    move-result v0

    if-eqz v0, :cond_85f

    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    :cond_85f
    :goto_85f
    iget-object v0, v7, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget v4, v14, Landroid/graphics/Rect;->left:I

    iput v4, v0, Landroid/view/View$AttachInfo;->mWindowLeft:I

    iget-object v0, v7, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget v4, v14, Landroid/graphics/Rect;->top:I

    iput v4, v0, Landroid/view/View$AttachInfo;->mWindowTop:I

    iget v0, v7, Landroid/view/ViewRootImpl;->mWidth:I

    invoke-virtual {v14}, Landroid/graphics/Rect;->width()I

    move-result v4

    if-ne v0, v4, :cond_87b

    iget v0, v7, Landroid/view/ViewRootImpl;->mHeight:I

    invoke-virtual {v14}, Landroid/graphics/Rect;->height()I

    move-result v4

    if-eq v0, v4, :cond_887

    :cond_87b
    invoke-virtual {v14}, Landroid/graphics/Rect;->width()I

    move-result v0

    iput v0, v7, Landroid/view/ViewRootImpl;->mWidth:I

    invoke-virtual {v14}, Landroid/graphics/Rect;->height()I

    move-result v0

    iput v0, v7, Landroid/view/ViewRootImpl;->mHeight:I

    :cond_887
    iget-object v0, v7, Landroid/view/ViewRootImpl;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    if-eqz v0, :cond_937

    iget-object v0, v7, Landroid/view/ViewRootImpl;->mSurface:Landroid/view/Surface;

    invoke-virtual {v0}, Landroid/view/Surface;->isValid()Z

    move-result v0

    if-eqz v0, :cond_899

    iget-object v0, v7, Landroid/view/ViewRootImpl;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    iget-object v4, v7, Landroid/view/ViewRootImpl;->mSurface:Landroid/view/Surface;

    iput-object v4, v0, Lcom/android/internal/view/BaseSurfaceHolder;->mSurface:Landroid/view/Surface;

    :cond_899
    iget-object v0, v7, Landroid/view/ViewRootImpl;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    iget v4, v7, Landroid/view/ViewRootImpl;->mWidth:I

    iget v5, v7, Landroid/view/ViewRootImpl;->mHeight:I

    invoke-virtual {v0, v4, v5}, Lcom/android/internal/view/BaseSurfaceHolder;->setSurfaceFrameSize(II)V

    iget-object v0, v7, Landroid/view/ViewRootImpl;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    iget-object v0, v0, Lcom/android/internal/view/BaseSurfaceHolder;->mSurfaceLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    if-eqz v25, :cond_8c9

    iget-object v0, v7, Landroid/view/ViewRootImpl;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    invoke-virtual {v0}, Lcom/android/internal/view/BaseSurfaceHolder;->ungetCallbacks()V

    const/4 v4, 0x1

    iput-boolean v4, v7, Landroid/view/ViewRootImpl;->mIsCreating:Z

    iget-object v0, v7, Landroid/view/ViewRootImpl;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    invoke-virtual {v0}, Lcom/android/internal/view/BaseSurfaceHolder;->getCallbacks()[Landroid/view/SurfaceHolder$Callback;

    move-result-object v0

    if-eqz v0, :cond_8c9

    array-length v4, v0

    const/4 v5, 0x0

    :goto_8bd
    if-ge v5, v4, :cond_8c9

    aget-object v6, v0, v5

    iget-object v9, v7, Landroid/view/ViewRootImpl;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    invoke-interface {v6, v9}, Landroid/view/SurfaceHolder$Callback;->surfaceCreated(Landroid/view/SurfaceHolder;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_8bd

    :cond_8c9
    if-nez v25, :cond_8d5

    if-nez v27, :cond_8d5

    if-nez v3, :cond_8d5

    if-eqz v12, :cond_8d2

    goto :goto_8d5

    :cond_8d2
    move/from16 v29, v1

    goto :goto_911

    :cond_8d5
    :goto_8d5
    iget-object v0, v7, Landroid/view/ViewRootImpl;->mSurface:Landroid/view/Surface;

    invoke-virtual {v0}, Landroid/view/Surface;->isValid()Z

    move-result v0

    if-eqz v0, :cond_90f

    iget-object v0, v7, Landroid/view/ViewRootImpl;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    invoke-virtual {v0}, Lcom/android/internal/view/BaseSurfaceHolder;->getCallbacks()[Landroid/view/SurfaceHolder$Callback;

    move-result-object v0

    if-eqz v0, :cond_907

    array-length v4, v0

    const/4 v5, 0x0

    :goto_8e7
    if-ge v5, v4, :cond_902

    aget-object v6, v0, v5

    iget-object v9, v7, Landroid/view/ViewRootImpl;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    iget v15, v10, Landroid/view/WindowManager$LayoutParams;->format:I

    move-object/from16 v28, v0

    iget v0, v7, Landroid/view/ViewRootImpl;->mWidth:I

    move/from16 v29, v1

    iget v1, v7, Landroid/view/ViewRootImpl;->mHeight:I

    invoke-interface {v6, v9, v15, v0, v1}, Landroid/view/SurfaceHolder$Callback;->surfaceChanged(Landroid/view/SurfaceHolder;III)V

    add-int/lit8 v5, v5, 0x1

    move-object/from16 v0, v28

    move/from16 v1, v29

    const/4 v15, 0x3

    goto :goto_8e7

    :cond_902
    move-object/from16 v28, v0

    move/from16 v29, v1

    goto :goto_90b

    :cond_907
    move-object/from16 v28, v0

    move/from16 v29, v1

    :goto_90b
    const/4 v1, 0x0

    iput-boolean v1, v7, Landroid/view/ViewRootImpl;->mIsCreating:Z

    goto :goto_911

    :cond_90f
    move/from16 v29, v1

    :goto_911
    if-eqz v26, :cond_939

    invoke-direct/range {p0 .. p0}, Landroid/view/ViewRootImpl;->notifyHolderSurfaceDestroyed()V

    iget-object v0, v7, Landroid/view/ViewRootImpl;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    iget-object v0, v0, Lcom/android/internal/view/BaseSurfaceHolder;->mSurfaceLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    :try_start_91d
    iget-object v0, v7, Landroid/view/ViewRootImpl;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    new-instance v1, Landroid/view/Surface;

    invoke-direct {v1}, Landroid/view/Surface;-><init>()V

    iput-object v1, v0, Lcom/android/internal/view/BaseSurfaceHolder;->mSurface:Landroid/view/Surface;
    :try_end_926
    .catchall {:try_start_91d .. :try_end_926} :catchall_92e

    iget-object v0, v7, Landroid/view/ViewRootImpl;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    iget-object v0, v0, Lcom/android/internal/view/BaseSurfaceHolder;->mSurfaceLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_939

    :catchall_92e
    move-exception v0

    iget-object v1, v7, Landroid/view/ViewRootImpl;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    iget-object v1, v1, Lcom/android/internal/view/BaseSurfaceHolder;->mSurfaceLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0

    :cond_937
    move/from16 v29, v1

    :cond_939
    :goto_939
    iget-object v0, v7, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v0, Landroid/view/View$AttachInfo;->mThreadedRenderer:Landroid/view/ThreadedRenderer;

    if-eqz v0, :cond_96b

    invoke-virtual {v0}, Landroid/view/ThreadedRenderer;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_96b

    if-nez v30, :cond_95b

    iget v1, v7, Landroid/view/ViewRootImpl;->mWidth:I

    invoke-virtual {v0}, Landroid/view/ThreadedRenderer;->getWidth()I

    move-result v4

    if-ne v1, v4, :cond_95b

    iget v1, v7, Landroid/view/ViewRootImpl;->mHeight:I

    invoke-virtual {v0}, Landroid/view/ThreadedRenderer;->getHeight()I

    move-result v4

    if-ne v1, v4, :cond_95b

    iget-boolean v1, v7, Landroid/view/ViewRootImpl;->mNeedsRendererSetup:Z

    if-eqz v1, :cond_96b

    :cond_95b
    iget v1, v7, Landroid/view/ViewRootImpl;->mWidth:I

    iget v4, v7, Landroid/view/ViewRootImpl;->mHeight:I

    iget-object v5, v7, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v6, v7, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget-object v6, v6, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    invoke-virtual {v0, v1, v4, v5, v6}, Landroid/view/ThreadedRenderer;->setup(IILandroid/view/View$AttachInfo;Landroid/graphics/Rect;)V

    const/4 v1, 0x0

    iput-boolean v1, v7, Landroid/view/ViewRootImpl;->mNeedsRendererSetup:Z

    :cond_96b
    iget-boolean v1, v7, Landroid/view/ViewRootImpl;->mStopped:Z

    if-eqz v1, :cond_973

    iget-boolean v1, v7, Landroid/view/ViewRootImpl;->mReportNextDraw:Z

    if-eqz v1, :cond_9df

    :cond_973
    iget v1, v7, Landroid/view/ViewRootImpl;->mWidth:I

    invoke-virtual {v8}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    if-ne v1, v4, :cond_987

    iget v1, v7, Landroid/view/ViewRootImpl;->mHeight:I

    invoke-virtual {v8}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    if-ne v1, v4, :cond_987

    if-nez v16, :cond_987

    if-eqz v2, :cond_9df

    :cond_987
    iget v1, v7, Landroid/view/ViewRootImpl;->mWidth:I

    iget v4, v10, Landroid/view/WindowManager$LayoutParams;->width:I

    iget v5, v10, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    invoke-static {v1, v4, v5}, Landroid/view/ViewRootImpl;->getRootMeasureSpec(III)I

    move-result v1

    iget v4, v7, Landroid/view/ViewRootImpl;->mHeight:I

    iget v5, v10, Landroid/view/WindowManager$LayoutParams;->height:I

    iget v6, v10, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    invoke-static {v4, v5, v6}, Landroid/view/ViewRootImpl;->getRootMeasureSpec(III)I

    move-result v4

    invoke-direct {v7, v1, v4}, Landroid/view/ViewRootImpl;->performMeasure(II)V

    invoke-virtual {v8}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    invoke-virtual {v8}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    const/4 v9, 0x0

    iget v15, v10, Landroid/view/WindowManager$LayoutParams;->horizontalWeight:F

    const/16 v28, 0x0

    cmpl-float v15, v15, v28

    move-object/from16 v33, v0

    if-lez v15, :cond_9c1

    iget v15, v7, Landroid/view/ViewRootImpl;->mWidth:I

    sub-int/2addr v15, v5

    int-to-float v15, v15

    iget v0, v10, Landroid/view/WindowManager$LayoutParams;->horizontalWeight:F

    mul-float/2addr v15, v0

    float-to-int v0, v15

    add-int/2addr v5, v0

    const/high16 v0, 0x40000000  # 2.0f

    invoke-static {v5, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    const/4 v9, 0x1

    :cond_9c1
    iget v0, v10, Landroid/view/WindowManager$LayoutParams;->verticalWeight:F

    cmpl-float v0, v0, v28

    if-lez v0, :cond_9d7

    iget v0, v7, Landroid/view/ViewRootImpl;->mHeight:I

    sub-int/2addr v0, v6

    int-to-float v0, v0

    iget v15, v10, Landroid/view/WindowManager$LayoutParams;->verticalWeight:F

    mul-float/2addr v0, v15

    float-to-int v0, v0

    add-int/2addr v6, v0

    const/high16 v0, 0x40000000  # 2.0f

    invoke-static {v6, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    const/4 v9, 0x1

    :cond_9d7
    if-eqz v9, :cond_9dc

    invoke-direct {v7, v1, v4}, Landroid/view/ViewRootImpl;->performMeasure(II)V

    :cond_9dc
    const/4 v0, 0x1

    move/from16 v18, v0

    :cond_9df
    move/from16 v1, v29

    move/from16 v16, v44

    :goto_9e3
    iget-object v0, v7, Landroid/view/ViewRootImpl;->mViewRootMonitor:Landroid/os/perfdebug/ViewRootMonitor;

    invoke-virtual {v0}, Landroid/os/perfdebug/ViewRootMonitor;->monitorPerformMeasureEnd()V

    if-nez v3, :cond_9f0

    if-nez v27, :cond_9f0

    if-nez v25, :cond_9f0

    if-eqz v12, :cond_9f3

    :cond_9f0
    invoke-direct/range {p0 .. p0}, Landroid/view/ViewRootImpl;->prepareSurfaces()V

    :cond_9f3
    if-eqz v18, :cond_9ff

    iget-boolean v0, v7, Landroid/view/ViewRootImpl;->mStopped:Z

    if-eqz v0, :cond_9fd

    iget-boolean v0, v7, Landroid/view/ViewRootImpl;->mReportNextDraw:Z

    if-eqz v0, :cond_9ff

    :cond_9fd
    const/4 v0, 0x1

    goto :goto_a00

    :cond_9ff
    const/4 v0, 0x0

    :goto_a00
    move v4, v0

    if-nez v4, :cond_a0c

    iget-object v0, v7, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-boolean v0, v0, Landroid/view/View$AttachInfo;->mRecomputeGlobalAttributes:Z

    if-eqz v0, :cond_a0a

    goto :goto_a0c

    :cond_a0a
    const/4 v0, 0x0

    goto :goto_a0d

    :cond_a0c
    :goto_a0c
    const/4 v0, 0x1

    :goto_a0d
    move v5, v0

    if-eqz v4, :cond_a82

    iget v0, v7, Landroid/view/ViewRootImpl;->mWidth:I

    iget v6, v7, Landroid/view/ViewRootImpl;->mHeight:I

    invoke-direct {v7, v10, v0, v6}, Landroid/view/ViewRootImpl;->performLayout(Landroid/view/WindowManager$LayoutParams;II)V

    iget v0, v8, Landroid/view/View;->mPrivateFlags:I

    and-int/lit16 v0, v0, 0x200

    if-eqz v0, :cond_a7d

    iget-object v0, v7, Landroid/view/ViewRootImpl;->mTmpLocation:[I

    invoke-virtual {v8, v0}, Landroid/view/View;->getLocationInWindow([I)V

    iget-object v0, v7, Landroid/view/ViewRootImpl;->mTransparentRegion:Landroid/graphics/Region;

    iget-object v6, v7, Landroid/view/ViewRootImpl;->mTmpLocation:[I

    const/4 v9, 0x0

    aget v15, v6, v9

    const/4 v9, 0x1

    aget v6, v6, v9

    iget v9, v8, Landroid/view/View;->mRight:I

    add-int/2addr v9, v15

    move/from16 v28, v2

    iget v2, v8, Landroid/view/View;->mLeft:I

    sub-int/2addr v9, v2

    iget-object v2, v7, Landroid/view/ViewRootImpl;->mTmpLocation:[I

    const/16 v21, 0x1

    aget v2, v2, v21

    move/from16 v29, v3

    iget v3, v8, Landroid/view/View;->mBottom:I

    add-int/2addr v2, v3

    iget v3, v8, Landroid/view/View;->mTop:I

    sub-int/2addr v2, v3

    invoke-virtual {v0, v15, v6, v9, v2}, Landroid/graphics/Region;->set(IIII)Z

    iget-object v0, v7, Landroid/view/ViewRootImpl;->mTransparentRegion:Landroid/graphics/Region;

    invoke-virtual {v8, v0}, Landroid/view/View;->gatherTransparentRegion(Landroid/graphics/Region;)Z

    iget-object v0, v7, Landroid/view/ViewRootImpl;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    if-eqz v0, :cond_a53

    iget-object v2, v7, Landroid/view/ViewRootImpl;->mTransparentRegion:Landroid/graphics/Region;

    invoke-virtual {v0, v2}, Landroid/content/res/CompatibilityInfo$Translator;->translateRegionInWindowToScreen(Landroid/graphics/Region;)V

    :cond_a53
    iget-object v0, v7, Landroid/view/ViewRootImpl;->mTransparentRegion:Landroid/graphics/Region;

    iget-object v2, v7, Landroid/view/ViewRootImpl;->mPreviousTransparentRegion:Landroid/graphics/Region;

    invoke-virtual {v0, v2}, Landroid/graphics/Region;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a86

    iget-object v0, v7, Landroid/view/ViewRootImpl;->mPreviousTransparentRegion:Landroid/graphics/Region;

    iget-object v2, v7, Landroid/view/ViewRootImpl;->mTransparentRegion:Landroid/graphics/Region;

    invoke-virtual {v0, v2}, Landroid/graphics/Region;->set(Landroid/graphics/Region;)Z

    const/4 v2, 0x1

    iput-boolean v2, v7, Landroid/view/ViewRootImpl;->mFullRedrawNeeded:Z

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewRootImpl;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/SurfaceControl;->isValid()Z

    move-result v2

    if-eqz v2, :cond_a86

    iget-object v2, v7, Landroid/view/ViewRootImpl;->mTransaction:Landroid/view/SurfaceControl$Transaction;

    iget-object v3, v7, Landroid/view/ViewRootImpl;->mTransparentRegion:Landroid/graphics/Region;

    invoke-virtual {v2, v0, v3}, Landroid/view/SurfaceControl$Transaction;->setTransparentRegionHint(Landroid/view/SurfaceControl;Landroid/graphics/Region;)Landroid/view/SurfaceControl$Transaction;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/SurfaceControl$Transaction;->apply()V

    goto :goto_a86

    :cond_a7d
    move/from16 v28, v2

    move/from16 v29, v3

    goto :goto_a86

    :cond_a82
    move/from16 v28, v2

    move/from16 v29, v3

    :cond_a86
    :goto_a86
    if-eqz v25, :cond_a8c

    invoke-direct/range {p0 .. p0}, Landroid/view/ViewRootImpl;->notifySurfaceCreated()V

    goto :goto_a97

    :cond_a8c
    if-eqz v27, :cond_a92

    invoke-direct/range {p0 .. p0}, Landroid/view/ViewRootImpl;->notifySurfaceReplaced()V

    goto :goto_a97

    :cond_a92
    if-eqz v26, :cond_a97

    invoke-direct/range {p0 .. p0}, Landroid/view/ViewRootImpl;->notifySurfaceDestroyed()V

    :cond_a97
    :goto_a97
    if-eqz v5, :cond_aaf

    iget-object v0, v7, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    const/4 v2, 0x0

    iput-boolean v2, v0, Landroid/view/View$AttachInfo;->mRecomputeGlobalAttributes:Z

    iget-object v0, v7, Landroid/view/ViewRootImpl;->mViewRootMonitor:Landroid/os/perfdebug/ViewRootMonitor;

    invoke-virtual {v0}, Landroid/os/perfdebug/ViewRootMonitor;->monitorGlobalLayoutBegin()V

    iget-object v0, v7, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v0, Landroid/view/View$AttachInfo;->mTreeObserver:Landroid/view/ViewTreeObserver;

    invoke-virtual {v0}, Landroid/view/ViewTreeObserver;->dispatchOnGlobalLayout()V

    iget-object v0, v7, Landroid/view/ViewRootImpl;->mViewRootMonitor:Landroid/os/perfdebug/ViewRootMonitor;

    invoke-virtual {v0}, Landroid/os/perfdebug/ViewRootMonitor;->monitorGlobalLayoutEnd()V

    :cond_aaf
    const/4 v0, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v6, 0x3

    const/4 v9, 0x0

    if-eqz v23, :cond_b19

    iget-object v15, v7, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v15, v15, Landroid/view/View$AttachInfo;->mGivenInternalInsets:Landroid/view/ViewTreeObserver$InternalInsetsInfo;

    invoke-virtual {v15}, Landroid/view/ViewTreeObserver$InternalInsetsInfo;->reset()V

    move-object/from16 v30, v0

    iget-object v0, v7, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v0, Landroid/view/View$AttachInfo;->mTreeObserver:Landroid/view/ViewTreeObserver;

    invoke-virtual {v0, v15}, Landroid/view/ViewTreeObserver;->dispatchOnComputeInternalInsets(Landroid/view/ViewTreeObserver$InternalInsetsInfo;)V

    iget-object v0, v7, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    invoke-virtual {v15}, Landroid/view/ViewTreeObserver$InternalInsetsInfo;->isEmpty()Z

    move-result v33

    move-object/from16 v34, v2

    const/16 v21, 0x1

    xor-int/lit8 v2, v33, 0x1

    iput-boolean v2, v0, Landroid/view/View$AttachInfo;->mHasNonEmptyGivenInternalInsets:Z

    if-nez v16, :cond_ae4

    iget-object v0, v7, Landroid/view/ViewRootImpl;->mLastGivenInsets:Landroid/view/ViewTreeObserver$InternalInsetsInfo;

    invoke-virtual {v0, v15}, Landroid/view/ViewTreeObserver$InternalInsetsInfo;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_adf

    goto :goto_ae4

    :cond_adf
    move-object/from16 v0, v30

    move-object/from16 v2, v34

    goto :goto_b14

    :cond_ae4
    :goto_ae4
    iget-object v0, v7, Landroid/view/ViewRootImpl;->mLastGivenInsets:Landroid/view/ViewTreeObserver$InternalInsetsInfo;

    invoke-virtual {v0, v15}, Landroid/view/ViewTreeObserver$InternalInsetsInfo;->set(Landroid/view/ViewTreeObserver$InternalInsetsInfo;)V

    iget-object v0, v7, Landroid/view/ViewRootImpl;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    if-eqz v0, :cond_b0d

    iget-object v2, v15, Landroid/view/ViewTreeObserver$InternalInsetsInfo;->contentInsets:Landroid/graphics/Rect;

    invoke-virtual {v0, v2}, Landroid/content/res/CompatibilityInfo$Translator;->getTranslatedContentInsets(Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v0

    iget-object v2, v7, Landroid/view/ViewRootImpl;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    move-object/from16 v30, v0

    iget-object v0, v15, Landroid/view/ViewTreeObserver$InternalInsetsInfo;->visibleInsets:Landroid/graphics/Rect;

    invoke-virtual {v2, v0}, Landroid/content/res/CompatibilityInfo$Translator;->getTranslatedVisibleInsets(Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v0

    iget-object v2, v7, Landroid/view/ViewRootImpl;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    move-object/from16 v33, v0

    iget-object v0, v15, Landroid/view/ViewTreeObserver$InternalInsetsInfo;->touchableRegion:Landroid/graphics/Region;

    invoke-virtual {v2, v0}, Landroid/content/res/CompatibilityInfo$Translator;->getTranslatedTouchableArea(Landroid/graphics/Region;)Landroid/graphics/Region;

    move-result-object v0

    move-object v3, v0

    move-object/from16 v0, v30

    move-object/from16 v2, v33

    goto :goto_b13

    :cond_b0d
    iget-object v0, v15, Landroid/view/ViewTreeObserver$InternalInsetsInfo;->contentInsets:Landroid/graphics/Rect;

    iget-object v2, v15, Landroid/view/ViewTreeObserver$InternalInsetsInfo;->visibleInsets:Landroid/graphics/Rect;

    iget-object v3, v15, Landroid/view/ViewTreeObserver$InternalInsetsInfo;->touchableRegion:Landroid/graphics/Region;

    :goto_b13
    const/4 v9, 0x1

    :goto_b14
    iget v6, v15, Landroid/view/ViewTreeObserver$InternalInsetsInfo;->mTouchableInsets:I

    move-object/from16 v30, v0

    goto :goto_b1d

    :cond_b19
    move-object/from16 v30, v0

    move-object/from16 v34, v2

    :goto_b1d
    move v0, v9

    iget-object v15, v7, Landroid/view/ViewRootImpl;->mPreviousTouchableRegion:Landroid/graphics/Region;

    move/from16 v33, v4

    iget-object v4, v7, Landroid/view/ViewRootImpl;->mTouchableRegion:Landroid/graphics/Region;

    invoke-static {v15, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_b30

    iget-object v4, v7, Landroid/view/ViewRootImpl;->mTouchableRegion:Landroid/graphics/Region;

    if-eqz v4, :cond_b30

    const/4 v4, 0x1

    goto :goto_b31

    :cond_b30
    const/4 v4, 0x0

    :goto_b31
    or-int/2addr v4, v0

    if-eqz v4, :cond_b96

    iget-object v15, v7, Landroid/view/ViewRootImpl;->mTouchableRegion:Landroid/graphics/Region;

    if-eqz v15, :cond_b55

    iget-object v15, v7, Landroid/view/ViewRootImpl;->mPreviousTouchableRegion:Landroid/graphics/Region;

    if-nez v15, :cond_b43

    new-instance v15, Landroid/graphics/Region;

    invoke-direct {v15}, Landroid/graphics/Region;-><init>()V

    iput-object v15, v7, Landroid/view/ViewRootImpl;->mPreviousTouchableRegion:Landroid/graphics/Region;

    :cond_b43
    iget-object v15, v7, Landroid/view/ViewRootImpl;->mPreviousTouchableRegion:Landroid/graphics/Region;

    iget-object v0, v7, Landroid/view/ViewRootImpl;->mTouchableRegion:Landroid/graphics/Region;

    invoke-virtual {v15, v0}, Landroid/graphics/Region;->set(Landroid/graphics/Region;)Z

    const/4 v15, 0x3

    if-eq v6, v15, :cond_b58

    iget-object v0, v7, Landroid/view/ViewRootImpl;->mTag:Ljava/lang/String;

    const-string v15, "Setting touchableInsetMode to non TOUCHABLE_INSETS_REGION from OnComputeInternalInsets, while also using setTouchableRegion causes setTouchableRegion to be ignored"

    invoke-static {v0, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_b58

    :cond_b55
    const/4 v0, 0x0

    iput-object v0, v7, Landroid/view/ViewRootImpl;->mPreviousTouchableRegion:Landroid/graphics/Region;

    :cond_b58
    :goto_b58
    if-nez v30, :cond_b63

    new-instance v0, Landroid/graphics/Rect;

    const/4 v15, 0x0

    invoke-direct {v0, v15, v15, v15, v15}, Landroid/graphics/Rect;-><init>(IIII)V

    move-object/from16 v30, v0

    goto :goto_b64

    :cond_b63
    const/4 v15, 0x0

    :goto_b64
    if-nez v2, :cond_b6c

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, v15, v15, v15, v15}, Landroid/graphics/Rect;-><init>(IIII)V

    move-object v2, v0

    :cond_b6c
    if-nez v3, :cond_b71

    iget-object v3, v7, Landroid/view/ViewRootImpl;->mTouchableRegion:Landroid/graphics/Region;

    goto :goto_b7c

    :cond_b71
    if-eqz v3, :cond_b7c

    iget-object v0, v7, Landroid/view/ViewRootImpl;->mTouchableRegion:Landroid/graphics/Region;

    if-eqz v0, :cond_b7c

    sget-object v15, Landroid/graphics/Region$Op;->UNION:Landroid/graphics/Region$Op;

    invoke-virtual {v3, v3, v0, v15}, Landroid/graphics/Region;->op(Landroid/graphics/Region;Landroid/graphics/Region;Landroid/graphics/Region$Op;)Z

    :cond_b7c
    :goto_b7c
    :try_start_b7c
    iget-object v0, v7, Landroid/view/ViewRootImpl;->mWindowSession:Landroid/view/IWindowSession;

    iget-object v15, v7, Landroid/view/ViewRootImpl;->mWindow:Landroid/view/ViewRootImpl$W;

    move-object/from16 v44, v0

    move-object/from16 v45, v15

    move/from16 v46, v6

    move-object/from16 v47, v30

    move-object/from16 v48, v2

    move-object/from16 v49, v3

    invoke-interface/range {v44 .. v49}, Landroid/view/IWindowSession;->setInsets(Landroid/view/IWindow;ILandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Region;)V
    :try_end_b8f
    .catch Landroid/os/RemoteException; {:try_start_b7c .. :try_end_b8f} :catch_b90

    goto :goto_baf

    :catch_b90
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v15

    throw v15

    :cond_b96
    iget-object v0, v7, Landroid/view/ViewRootImpl;->mTouchableRegion:Landroid/graphics/Region;

    if-nez v0, :cond_baf

    iget-object v0, v7, Landroid/view/ViewRootImpl;->mPreviousTouchableRegion:Landroid/graphics/Region;

    if-eqz v0, :cond_baf

    const/4 v0, 0x0

    iput-object v0, v7, Landroid/view/ViewRootImpl;->mPreviousTouchableRegion:Landroid/graphics/Region;

    :try_start_ba1
    iget-object v0, v7, Landroid/view/ViewRootImpl;->mWindowSession:Landroid/view/IWindowSession;

    iget-object v15, v7, Landroid/view/ViewRootImpl;->mWindow:Landroid/view/ViewRootImpl$W;

    invoke-interface {v0, v15}, Landroid/view/IWindowSession;->clearTouchableRegion(Landroid/view/IWindow;)V
    :try_end_ba8
    .catch Landroid/os/RemoteException; {:try_start_ba1 .. :try_end_ba8} :catch_ba9

    goto :goto_baf

    :catch_ba9
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v15

    throw v15

    :cond_baf
    :goto_baf
    iget-boolean v0, v7, Landroid/view/ViewRootImpl;->mFirst:Z

    if-eqz v0, :cond_bf0

    sget-boolean v0, Landroid/view/ViewRootImpl;->sAlwaysAssignFocus:Z

    if-nez v0, :cond_bde

    invoke-static {}, Landroid/view/ViewRootImpl;->isInTouchMode()Z

    move-result v0

    if-nez v0, :cond_bc0

    move-object/from16 v22, v2

    goto :goto_be0

    :cond_bc0
    iget-object v0, v7, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->findFocus()Landroid/view/View;

    move-result-object v0

    instance-of v15, v0, Landroid/view/ViewGroup;

    if-eqz v15, :cond_bdb

    move-object v15, v0

    check-cast v15, Landroid/view/ViewGroup;

    invoke-virtual {v15}, Landroid/view/ViewGroup;->getDescendantFocusability()I

    move-result v15

    move-object/from16 v22, v2

    const/high16 v2, 0x40000

    if-ne v15, v2, :cond_bf2

    invoke-virtual {v0}, Landroid/view/View;->restoreDefaultFocus()Z

    goto :goto_bf2

    :cond_bdb
    move-object/from16 v22, v2

    goto :goto_bf2

    :cond_bde
    move-object/from16 v22, v2

    :goto_be0
    iget-object v0, v7, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    if-eqz v0, :cond_bf2

    invoke-virtual {v0}, Landroid/view/View;->hasFocus()Z

    move-result v0

    if-nez v0, :cond_bf2

    iget-object v0, v7, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->restoreDefaultFocus()Z

    goto :goto_bf2

    :cond_bf0
    move-object/from16 v22, v2

    :cond_bf2
    :goto_bf2
    if-nez v13, :cond_bf8

    iget-boolean v0, v7, Landroid/view/ViewRootImpl;->mFirst:Z

    if-eqz v0, :cond_bfc

    :cond_bf8
    if-eqz v24, :cond_bfc

    const/4 v0, 0x1

    goto :goto_bfd

    :cond_bfc
    const/4 v0, 0x0

    :goto_bfd
    iget-object v2, v7, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-boolean v2, v2, Landroid/view/View$AttachInfo;->mHasWindowFocus:Z

    if-eqz v2, :cond_c07

    if-eqz v24, :cond_c07

    const/4 v2, 0x1

    goto :goto_c08

    :cond_c07
    const/4 v2, 0x0

    :goto_c08
    if-eqz v2, :cond_c10

    iget-boolean v15, v7, Landroid/view/ViewRootImpl;->mLostWindowFocus:Z

    if-eqz v15, :cond_c10

    const/4 v15, 0x1

    goto :goto_c11

    :cond_c10
    const/4 v15, 0x0

    :goto_c11
    if-eqz v15, :cond_c1a

    move-object/from16 v35, v3

    const/4 v3, 0x0

    iput-boolean v3, v7, Landroid/view/ViewRootImpl;->mLostWindowFocus:Z

    const/4 v3, 0x1

    goto :goto_c27

    :cond_c1a
    move-object/from16 v35, v3

    if-nez v2, :cond_c26

    iget-boolean v3, v7, Landroid/view/ViewRootImpl;->mHadWindowFocus:Z

    if-eqz v3, :cond_c26

    const/4 v3, 0x1

    iput-boolean v3, v7, Landroid/view/ViewRootImpl;->mLostWindowFocus:Z

    goto :goto_c27

    :cond_c26
    const/4 v3, 0x1

    :goto_c27
    if-nez v0, :cond_c2f

    if-eqz v15, :cond_c2c

    goto :goto_c2f

    :cond_c2c
    move/from16 v36, v0

    goto :goto_c47

    :cond_c2f
    :goto_c2f
    iget-object v3, v7, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget v3, v3, Landroid/view/WindowManager$LayoutParams;->type:I

    move/from16 v36, v0

    const/16 v0, 0x7d5

    if-ne v3, v0, :cond_c3c

    const/16 v21, 0x1

    goto :goto_c3e

    :cond_c3c
    const/16 v21, 0x0

    :goto_c3e
    move/from16 v0, v21

    if-nez v0, :cond_c47

    const/16 v3, 0x20

    invoke-virtual {v8, v3}, Landroid/view/View;->sendAccessibilityEvent(I)V

    :cond_c47
    :goto_c47
    const/4 v3, 0x0

    iput-boolean v3, v7, Landroid/view/ViewRootImpl;->mFirst:Z

    iput-boolean v3, v7, Landroid/view/ViewRootImpl;->mWillDrawSoon:Z

    iput-boolean v3, v7, Landroid/view/ViewRootImpl;->mNewSurfaceNeeded:Z

    iput-boolean v3, v7, Landroid/view/ViewRootImpl;->mActivityRelaunched:Z

    iput v11, v7, Landroid/view/ViewRootImpl;->mViewVisibility:I

    iput-boolean v2, v7, Landroid/view/ViewRootImpl;->mHadWindowFocus:Z

    iget-object v0, v7, Landroid/view/ViewRootImpl;->mImeFocusController:Landroid/view/ImeFocusController;

    iget-object v3, v7, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v0, v2, v3}, Landroid/view/ImeFocusController;->onTraversal(ZLandroid/view/WindowManager$LayoutParams;)V

    and-int/lit8 v0, v1, 0x1

    if-eqz v0, :cond_c62

    invoke-direct/range {p0 .. p0}, Landroid/view/ViewRootImpl;->reportNextDraw()V

    :cond_c62
    iget-object v0, v7, Landroid/view/ViewRootImpl;->mViewRootMonitor:Landroid/os/perfdebug/ViewRootMonitor;

    invoke-virtual {v0}, Landroid/os/perfdebug/ViewRootMonitor;->monitorViewTreePreDrawBegin()V

    iget-object v0, v7, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v0, Landroid/view/View$AttachInfo;->mTreeObserver:Landroid/view/ViewTreeObserver;

    invoke-virtual {v0}, Landroid/view/ViewTreeObserver;->dispatchOnPreDraw()Z

    move-result v0

    iget-object v3, v7, Landroid/view/ViewRootImpl;->mViewRootMonitor:Landroid/os/perfdebug/ViewRootMonitor;

    invoke-virtual {v3}, Landroid/os/perfdebug/ViewRootMonitor;->monitorViewTreePreDrawEnd()V

    if-nez v0, :cond_c79

    invoke-direct/range {p0 .. p0}, Landroid/view/ViewRootImpl;->createSyncIfNeeded()V

    :cond_c79
    if-nez v24, :cond_cb1

    iget-object v3, v7, Landroid/view/ViewRootImpl;->mPendingTransitions:Ljava/util/ArrayList;

    if-eqz v3, :cond_ca6

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_ca6

    const/4 v3, 0x0

    :goto_c86
    move/from16 v21, v1

    iget-object v1, v7, Landroid/view/ViewRootImpl;->mPendingTransitions:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v3, v1, :cond_ca0

    iget-object v1, v7, Landroid/view/ViewRootImpl;->mPendingTransitions:Ljava/util/ArrayList;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/animation/LayoutTransition;

    invoke-virtual {v1}, Landroid/animation/LayoutTransition;->endChangingAnimations()V

    add-int/lit8 v3, v3, 0x1

    move/from16 v1, v21

    goto :goto_c86

    :cond_ca0
    iget-object v1, v7, Landroid/view/ViewRootImpl;->mPendingTransitions:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    goto :goto_ca8

    :cond_ca6
    move/from16 v21, v1

    :goto_ca8
    iget-object v1, v7, Landroid/view/ViewRootImpl;->mSyncBufferCallback:Landroid/window/SurfaceSyncer$SyncBufferCallback;

    if-eqz v1, :cond_ced

    const/4 v3, 0x0

    invoke-interface {v1, v3}, Landroid/window/SurfaceSyncer$SyncBufferCallback;->onBufferReady(Landroid/view/SurfaceControl$Transaction;)V

    goto :goto_ced

    :cond_cb1
    move/from16 v21, v1

    if-eqz v0, :cond_cb9

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewRootImpl;->scheduleTraversals()V

    goto :goto_ced

    :cond_cb9
    iget-object v1, v7, Landroid/view/ViewRootImpl;->mPendingTransitions:Ljava/util/ArrayList;

    if-eqz v1, :cond_cdf

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_cdf

    const/4 v1, 0x0

    :goto_cc4
    iget-object v3, v7, Landroid/view/ViewRootImpl;->mPendingTransitions:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_cda

    iget-object v3, v7, Landroid/view/ViewRootImpl;->mPendingTransitions:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/animation/LayoutTransition;

    invoke-virtual {v3}, Landroid/animation/LayoutTransition;->startChangingAnimations()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_cc4

    :cond_cda
    iget-object v1, v7, Landroid/view/ViewRootImpl;->mPendingTransitions:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    :cond_cdf
    invoke-direct/range {p0 .. p0}, Landroid/view/ViewRootImpl;->performDraw()Z

    move-result v1

    if-nez v1, :cond_ced

    iget-object v1, v7, Landroid/view/ViewRootImpl;->mSyncBufferCallback:Landroid/window/SurfaceSyncer$SyncBufferCallback;

    if-eqz v1, :cond_ced

    const/4 v3, 0x0

    invoke-interface {v1, v3}, Landroid/window/SurfaceSyncer$SyncBufferCallback;->onBufferReady(Landroid/view/SurfaceControl$Transaction;)V

    :cond_ced
    :goto_ced
    iget-object v1, v7, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v1, v1, Landroid/view/View$AttachInfo;->mContentCaptureEvents:Landroid/util/SparseArray;

    if-eqz v1, :cond_cf6

    invoke-direct/range {p0 .. p0}, Landroid/view/ViewRootImpl;->notifyContentCatpureEvents()V

    :cond_cf6
    const/4 v1, 0x0

    iput-boolean v1, v7, Landroid/view/ViewRootImpl;->mIsInTraversal:Z

    iput-boolean v1, v7, Landroid/view/ViewRootImpl;->mRelayoutRequested:Z

    if-nez v0, :cond_d14

    iput-boolean v1, v7, Landroid/view/ViewRootImpl;->mReportNextDraw:Z

    const/4 v3, 0x0

    iput-object v3, v7, Landroid/view/ViewRootImpl;->mSyncBufferCallback:Landroid/window/SurfaceSyncer$SyncBufferCallback;

    iput-boolean v1, v7, Landroid/view/ViewRootImpl;->mSyncBuffer:Z

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewRootImpl;->isInLocalSync()Z

    move-result v1

    if-eqz v1, :cond_d14

    iget-object v1, v7, Landroid/view/ViewRootImpl;->mSurfaceSyncer:Landroid/window/SurfaceSyncer;

    iget v3, v7, Landroid/view/ViewRootImpl;->mSyncId:I

    invoke-virtual {v1, v3}, Landroid/window/SurfaceSyncer;->markSyncReady(I)V

    const/4 v1, -0x1

    iput v1, v7, Landroid/view/ViewRootImpl;->mSyncId:I

    :cond_d14
    return-void

    :cond_d15
    :goto_d15
    return-void
.end method

.method private postSendWindowContentChangedCallback(Landroid/view/View;I)V
    .registers 5

    iget-object v0, p0, Landroid/view/ViewRootImpl;->mSendWindowContentChangedAccessibilityEvent:Landroid/view/ViewRootImpl$SendWindowContentChangedAccessibilityEvent;

    if-nez v0, :cond_c

    new-instance v0, Landroid/view/ViewRootImpl$SendWindowContentChangedAccessibilityEvent;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/view/ViewRootImpl$SendWindowContentChangedAccessibilityEvent;-><init>(Landroid/view/ViewRootImpl;Landroid/view/ViewRootImpl$SendWindowContentChangedAccessibilityEvent-IA;)V

    iput-object v0, p0, Landroid/view/ViewRootImpl;->mSendWindowContentChangedAccessibilityEvent:Landroid/view/ViewRootImpl$SendWindowContentChangedAccessibilityEvent;

    :cond_c
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mSendWindowContentChangedAccessibilityEvent:Landroid/view/ViewRootImpl$SendWindowContentChangedAccessibilityEvent;

    invoke-virtual {v0, p1, p2}, Landroid/view/ViewRootImpl$SendWindowContentChangedAccessibilityEvent;->runOrPost(Landroid/view/View;I)V

    return-void
.end method

.method private prepareSurfaces()V
    .registers 5

    iget-object v0, p0, Landroid/view/ViewRootImpl;->mTransaction:Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {p0}, Landroid/view/ViewRootImpl;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/SurfaceControl;->isValid()Z

    move-result v2

    if-nez v2, :cond_d

    return-void

    :cond_d
    invoke-direct {p0, v0}, Landroid/view/ViewRootImpl;->updateBoundsLayer(Landroid/view/SurfaceControl$Transaction;)Z

    move-result v2

    if-eqz v2, :cond_1c

    iget-object v2, p0, Landroid/view/ViewRootImpl;->mSurface:Landroid/view/Surface;

    invoke-virtual {v2}, Landroid/view/Surface;->getNextFrameNumber()J

    move-result-wide v2

    invoke-virtual {p0, v0, v2, v3}, Landroid/view/ViewRootImpl;->mergeWithNextTransaction(Landroid/view/SurfaceControl$Transaction;J)V

    :cond_1c
    return-void
.end method

.method private profileRendering(Z)V
    .registers 4

    iget-boolean v0, p0, Landroid/view/ViewRootImpl;->mProfileRendering:Z

    if-eqz v0, :cond_29

    iput-boolean p1, p0, Landroid/view/ViewRootImpl;->mRenderProfilingEnabled:Z

    iget-object v0, p0, Landroid/view/ViewRootImpl;->mRenderProfiler:Landroid/view/Choreographer$FrameCallback;

    if-eqz v0, :cond_f

    iget-object v1, p0, Landroid/view/ViewRootImpl;->mChoreographer:Landroid/view/Choreographer;

    invoke-virtual {v1, v0}, Landroid/view/Choreographer;->removeFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    :cond_f
    iget-boolean v0, p0, Landroid/view/ViewRootImpl;->mRenderProfilingEnabled:Z

    if-eqz v0, :cond_26

    iget-object v0, p0, Landroid/view/ViewRootImpl;->mRenderProfiler:Landroid/view/Choreographer$FrameCallback;

    if-nez v0, :cond_1e

    new-instance v0, Landroid/view/ViewRootImpl$5;

    invoke-direct {v0, p0}, Landroid/view/ViewRootImpl$5;-><init>(Landroid/view/ViewRootImpl;)V

    iput-object v0, p0, Landroid/view/ViewRootImpl;->mRenderProfiler:Landroid/view/Choreographer$FrameCallback;

    :cond_1e
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mChoreographer:Landroid/view/Choreographer;

    iget-object v1, p0, Landroid/view/ViewRootImpl;->mRenderProfiler:Landroid/view/Choreographer$FrameCallback;

    invoke-virtual {v0, v1}, Landroid/view/Choreographer;->postFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    goto :goto_29

    :cond_26
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/view/ViewRootImpl;->mRenderProfiler:Landroid/view/Choreographer$FrameCallback;

    :cond_29
    :goto_29
    return-void
.end method

.method private readyToSync(Landroid/window/SurfaceSyncer$SyncBufferCallback;)V
    .registers 4

    iget v0, p0, Landroid/view/ViewRootImpl;->mNumSyncsInProgress:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Landroid/view/ViewRootImpl;->mNumSyncsInProgress:I

    invoke-virtual {p0}, Landroid/view/ViewRootImpl;->isInLocalSync()Z

    move-result v0

    if-nez v0, :cond_e

    iput-boolean v1, p0, Landroid/view/ViewRootImpl;->mSyncBuffer:Z

    :cond_e
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v0, Landroid/view/View$AttachInfo;->mThreadedRenderer:Landroid/view/ThreadedRenderer;

    if-eqz v0, :cond_18

    const/4 v0, 0x0

    invoke-static {v0}, Landroid/graphics/HardwareRenderer;->setRtAnimationsEnabled(Z)V

    :cond_18
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mSyncBufferCallback:Landroid/window/SurfaceSyncer$SyncBufferCallback;

    if-eqz v0, :cond_29

    iget-object v0, p0, Landroid/view/ViewRootImpl;->mTag:Ljava/lang/String;

    const-string v1, "Already set sync for the next draw."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Landroid/view/ViewRootImpl;->mSyncBufferCallback:Landroid/window/SurfaceSyncer$SyncBufferCallback;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/window/SurfaceSyncer$SyncBufferCallback;->onBufferReady(Landroid/view/SurfaceControl$Transaction;)V

    :cond_29
    iput-object p1, p0, Landroid/view/ViewRootImpl;->mSyncBufferCallback:Landroid/window/SurfaceSyncer$SyncBufferCallback;

    iget-boolean v0, p0, Landroid/view/ViewRootImpl;->mIsInTraversal:Z

    if-nez v0, :cond_36

    iget-boolean v0, p0, Landroid/view/ViewRootImpl;->mTraversalScheduled:Z

    if-nez v0, :cond_36

    invoke-virtual {p0}, Landroid/view/ViewRootImpl;->scheduleTraversals()V

    :cond_36
    return-void
.end method

.method private recycleQueuedInputEvent(Landroid/view/ViewRootImpl$QueuedInputEvent;)V
    .registers 4

    const/4 v0, 0x0

    iput-object v0, p1, Landroid/view/ViewRootImpl$QueuedInputEvent;->mEvent:Landroid/view/InputEvent;

    iput-object v0, p1, Landroid/view/ViewRootImpl$QueuedInputEvent;->mReceiver:Landroid/view/InputEventReceiver;

    iget v0, p0, Landroid/view/ViewRootImpl;->mQueuedInputEventPoolSize:I

    const/16 v1, 0xa

    if-ge v0, v1, :cond_15

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/view/ViewRootImpl;->mQueuedInputEventPoolSize:I

    iget-object v0, p0, Landroid/view/ViewRootImpl;->mQueuedInputEventPool:Landroid/view/ViewRootImpl$QueuedInputEvent;

    iput-object v0, p1, Landroid/view/ViewRootImpl$QueuedInputEvent;->mNext:Landroid/view/ViewRootImpl$QueuedInputEvent;

    iput-object p1, p0, Landroid/view/ViewRootImpl;->mQueuedInputEventPool:Landroid/view/ViewRootImpl$QueuedInputEvent;

    :cond_15
    return-void
.end method

.method private registerBackCallbackOnWindow()V
    .registers 4

    iget-object v0, p0, Landroid/view/ViewRootImpl;->mOnBackInvokedDispatcher:Landroid/window/WindowOnBackInvokedDispatcher;

    iget-object v1, p0, Landroid/view/ViewRootImpl;->mWindowSession:Landroid/view/IWindowSession;

    iget-object v2, p0, Landroid/view/ViewRootImpl;->mWindow:Landroid/view/ViewRootImpl$W;

    invoke-virtual {v0, v1, v2}, Landroid/window/WindowOnBackInvokedDispatcher;->attachToWindow(Landroid/view/IWindowSession;Landroid/view/IWindow;)V

    return-void
.end method

.method private registerCallbackForPendingTransactions()V
    .registers 2

    new-instance v0, Landroid/view/ViewRootImpl$6;

    invoke-direct {v0, p0}, Landroid/view/ViewRootImpl$6;-><init>(Landroid/view/ViewRootImpl;)V

    invoke-virtual {p0, v0}, Landroid/view/ViewRootImpl;->registerRtFrameCallback(Landroid/graphics/HardwareRenderer$FrameDrawingCallback;)V

    return-void
.end method

.method private registerCallbacksForSync(ZLandroid/window/SurfaceSyncer$SyncBufferCallback;)V
    .registers 6

    invoke-virtual {p0}, Landroid/view/ViewRootImpl;->isHardwareEnabled()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    :cond_7
    invoke-direct {p0}, Landroid/view/ViewRootImpl;->isDynamicLog()Z

    move-result v0

    if-eqz v0, :cond_26

    iget-object v0, p0, Landroid/view/ViewRootImpl;->mTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "registerCallbacksForSync syncBuffer="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_26
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v0, Landroid/view/View$AttachInfo;->mThreadedRenderer:Landroid/view/ThreadedRenderer;

    new-instance v1, Landroid/view/ViewRootImpl$8;

    invoke-direct {v1, p0, p2, p1}, Landroid/view/ViewRootImpl$8;-><init>(Landroid/view/ViewRootImpl;Landroid/window/SurfaceSyncer$SyncBufferCallback;Z)V

    invoke-virtual {v0, v1}, Landroid/view/ThreadedRenderer;->registerRtFrameCallback(Landroid/graphics/HardwareRenderer$FrameDrawingCallback;)V

    return-void
.end method

.method private registerCompatOnBackInvokedCallback()V
    .registers 4

    new-instance v0, Landroid/view/ViewRootImpl$$ExternalSyntheticLambda16;

    invoke-direct {v0, p0}, Landroid/view/ViewRootImpl$$ExternalSyntheticLambda16;-><init>(Landroid/view/ViewRootImpl;)V

    iput-object v0, p0, Landroid/view/ViewRootImpl;->mCompatOnBackInvokedCallback:Landroid/window/CompatOnBackInvokedCallback;

    iget-object v1, p0, Landroid/view/ViewRootImpl;->mOnBackInvokedDispatcher:Landroid/window/WindowOnBackInvokedDispatcher;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Landroid/window/WindowOnBackInvokedDispatcher;->registerOnBackInvokedCallback(ILandroid/window/OnBackInvokedCallback;)V

    return-void
.end method

.method private registerListeners()V
    .registers 4

    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    iget-object v1, p0, Landroid/view/ViewRootImpl;->mAccessibilityInteractionConnectionManager:Landroid/view/ViewRootImpl$AccessibilityInteractionConnectionManager;

    iget-object v2, p0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    invoke-virtual {v0, v1, v2}, Landroid/view/accessibility/AccessibilityManager;->addAccessibilityStateChangeListener(Landroid/view/accessibility/AccessibilityManager$AccessibilityStateChangeListener;Landroid/os/Handler;)V

    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    iget-object v1, p0, Landroid/view/ViewRootImpl;->mHighContrastTextManager:Landroid/view/ViewRootImpl$HighContrastTextManager;

    iget-object v2, p0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    invoke-virtual {v0, v1, v2}, Landroid/view/accessibility/AccessibilityManager;->addHighTextContrastStateChangeListener(Landroid/view/accessibility/AccessibilityManager$HighTextContrastChangeListener;Landroid/os/Handler;)V

    iget-object v0, p0, Landroid/view/ViewRootImpl;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    iget-object v1, p0, Landroid/view/ViewRootImpl;->mDisplayListener:Landroid/hardware/display/DisplayManager$DisplayListener;

    iget-object v2, p0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    invoke-virtual {v0, v1, v2}, Landroid/hardware/display/DisplayManager;->registerDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;Landroid/os/Handler;)V

    return-void
.end method

.method private relayoutWindow(Landroid/view/WindowManager$LayoutParams;IZ)I
    .registers 34
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v14, p1

    const/4 v15, 0x1

    iput-boolean v15, v0, Landroid/view/ViewRootImpl;->mRelayoutRequested:Z

    iget-object v1, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget v13, v1, Landroid/view/View$AttachInfo;->mApplicationScale:F

    const/4 v1, 0x0

    if-eqz v14, :cond_1e

    iget-object v2, v0, Landroid/view/ViewRootImpl;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    if-eqz v2, :cond_1e

    const/4 v1, 0x1

    invoke-virtual/range {p1 .. p1}, Landroid/view/WindowManager$LayoutParams;->backup()V

    iget-object v2, v0, Landroid/view/ViewRootImpl;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    invoke-virtual {v2, v14}, Landroid/content/res/CompatibilityInfo$Translator;->translateWindowLayout(Landroid/view/WindowManager$LayoutParams;)V

    move/from16 v16, v1

    goto :goto_20

    :cond_1e
    move/from16 v16, v1

    :goto_20
    if-eqz v14, :cond_4c

    iget v1, v0, Landroid/view/ViewRootImpl;->mOrigWindowType:I

    iget v2, v14, Landroid/view/WindowManager$LayoutParams;->type:I

    if-eq v1, v2, :cond_4c

    iget v1, v0, Landroid/view/ViewRootImpl;->mTargetSdkVersion:I

    const/16 v2, 0xe

    if-ge v1, v2, :cond_4c

    iget-object v1, v0, Landroid/view/ViewRootImpl;->mTag:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Window type can not be changed after the window is added; ignoring change of "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget v1, v0, Landroid/view/ViewRootImpl;->mOrigWindowType:I

    iput v1, v14, Landroid/view/WindowManager$LayoutParams;->type:I

    :cond_4c
    invoke-static {}, Lcom/xiaomi/screenprojection/IMiuiScreenProjectionStub;->getInstance()Lcom/xiaomi/screenprojection/IMiuiScreenProjectionStub;

    move-result-object v17

    if-eqz v14, :cond_6a

    iget-boolean v1, v0, Landroid/view/ViewRootImpl;->mIsCastMode:Z

    if-eqz v1, :cond_60

    iget v1, v14, Landroid/view/WindowManager$LayoutParams;->extraFlags:I

    invoke-interface/range {v17 .. v17}, Lcom/xiaomi/screenprojection/IMiuiScreenProjectionStub;->getExtraPipScreenProjectFlag()I

    move-result v2

    or-int/2addr v1, v2

    iput v1, v14, Landroid/view/WindowManager$LayoutParams;->extraFlags:I

    goto :goto_6a

    :cond_60
    iget v1, v14, Landroid/view/WindowManager$LayoutParams;->extraFlags:I

    invoke-interface/range {v17 .. v17}, Lcom/xiaomi/screenprojection/IMiuiScreenProjectionStub;->getExtraPipScreenProjectFlag()I

    move-result v2

    not-int v2, v2

    and-int/2addr v1, v2

    iput v1, v14, Landroid/view/WindowManager$LayoutParams;->extraFlags:I

    :cond_6a
    :goto_6a
    iget-object v1, v0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, v13

    const/high16 v2, 0x3f000000  # 0.5f

    add-float/2addr v1, v2

    float-to-int v12, v1

    iget-object v1, v0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, v13

    add-float/2addr v1, v2

    float-to-int v11, v1

    const/16 v18, 0x0

    invoke-direct/range {p0 .. p0}, Landroid/view/ViewRootImpl;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget-object v10, v1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    sget-boolean v1, Landroid/view/ViewRootImpl;->LOCAL_LAYOUT:Z

    const/4 v9, 0x0

    if-eqz v1, :cond_13f

    iget-boolean v1, v0, Landroid/view/ViewRootImpl;->mFirst:Z

    if-nez v1, :cond_9b

    iget v1, v0, Landroid/view/ViewRootImpl;->mViewVisibility:I

    move/from16 v8, p2

    if-eq v8, v1, :cond_98

    goto :goto_9d

    :cond_98
    move/from16 v8, v18

    goto :goto_de

    :cond_9b
    move/from16 v8, p2

    :goto_9d
    iget-object v1, v0, Landroid/view/ViewRootImpl;->mWindowSession:Landroid/view/IWindowSession;

    iget-object v2, v0, Landroid/view/ViewRootImpl;->mWindow:Landroid/view/ViewRootImpl$W;

    iget-object v5, v0, Landroid/view/ViewRootImpl;->mPendingMergedConfiguration:Landroid/util/MergedConfiguration;

    iget-object v6, v0, Landroid/view/ViewRootImpl;->mSurfaceControl:Landroid/view/SurfaceControl;

    iget-object v7, v0, Landroid/view/ViewRootImpl;->mTempInsets:Landroid/view/InsetsState;

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mTempControls:[Landroid/view/InsetsSourceControl;

    move-object/from16 v3, p1

    move-object/from16 v19, v4

    move/from16 v4, p2

    move-object/from16 v8, v19

    invoke-interface/range {v1 .. v8}, Landroid/view/IWindowSession;->updateVisibility(Landroid/view/IWindow;Landroid/view/WindowManager$LayoutParams;ILandroid/util/MergedConfiguration;Landroid/view/SurfaceControl;Landroid/view/InsetsState;[Landroid/view/InsetsSourceControl;)I

    move-result v18

    iget-object v1, v0, Landroid/view/ViewRootImpl;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    if-eqz v1, :cond_c5

    iget-object v2, v0, Landroid/view/ViewRootImpl;->mTempInsets:Landroid/view/InsetsState;

    invoke-virtual {v1, v2}, Landroid/content/res/CompatibilityInfo$Translator;->translateInsetsStateInScreenToAppWindow(Landroid/view/InsetsState;)V

    iget-object v1, v0, Landroid/view/ViewRootImpl;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    iget-object v2, v0, Landroid/view/ViewRootImpl;->mTempControls:[Landroid/view/InsetsSourceControl;

    invoke-virtual {v1, v2}, Landroid/content/res/CompatibilityInfo$Translator;->translateSourceControlsInScreenToAppWindow([Landroid/view/InsetsSourceControl;)V

    :cond_c5
    iget-object v1, v0, Landroid/view/ViewRootImpl;->mInsetsController:Landroid/view/InsetsController;

    iget-object v2, v0, Landroid/view/ViewRootImpl;->mTempInsets:Landroid/view/InsetsState;

    invoke-virtual {v1, v2}, Landroid/view/InsetsController;->onStateChanged(Landroid/view/InsetsState;)Z

    iget-object v1, v0, Landroid/view/ViewRootImpl;->mInsetsController:Landroid/view/InsetsController;

    iget-object v2, v0, Landroid/view/ViewRootImpl;->mTempControls:[Landroid/view/InsetsSourceControl;

    invoke-virtual {v1, v2}, Landroid/view/InsetsController;->onControlsChanged([Landroid/view/InsetsSourceControl;)V

    and-int/lit8 v1, v18, 0x8

    if-eqz v1, :cond_d9

    move v1, v15

    goto :goto_da

    :cond_d9
    move v1, v9

    :goto_da
    iput-boolean v1, v0, Landroid/view/ViewRootImpl;->mPendingAlwaysConsumeSystemBars:Z

    move/from16 v8, v18

    :goto_de
    iget-object v1, v0, Landroid/view/ViewRootImpl;->mInsetsController:Landroid/view/InsetsController;

    invoke-virtual {v1}, Landroid/view/InsetsController;->getState()Landroid/view/InsetsState;

    move-result-object v7

    iget-object v6, v0, Landroid/view/ViewRootImpl;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v7, v6}, Landroid/view/InsetsState;->getDisplayCutoutSafe(Landroid/graphics/Rect;)V

    iget-object v1, v0, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->type:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_f8

    iget-object v1, v0, Landroid/view/ViewRootImpl;->mPendingMergedConfiguration:Landroid/util/MergedConfiguration;

    invoke-virtual {v1}, Landroid/util/MergedConfiguration;->getMergedConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget-object v10, v1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    :cond_f8
    iget-object v1, v0, Landroid/view/ViewRootImpl;->mWindowLayout:Landroid/view/WindowLayout;

    iget-object v2, v0, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v10}, Landroid/app/WindowConfiguration;->getBounds()Landroid/graphics/Rect;

    move-result-object v22

    invoke-virtual {v10}, Landroid/app/WindowConfiguration;->getWindowingMode()I

    move-result v23

    iget-object v3, v0, Landroid/view/ViewRootImpl;->mInsetsController:Landroid/view/InsetsController;

    invoke-virtual {v3}, Landroid/view/InsetsController;->getRequestedVisibilities()Landroid/view/InsetsVisibilities;

    move-result-object v26

    invoke-direct/range {p0 .. p0}, Landroid/view/ViewRootImpl;->getAttachedWindowFrame()Landroid/graphics/Rect;

    move-result-object v27

    const/high16 v28, 0x3f800000  # 1.0f

    iget-object v3, v0, Landroid/view/ViewRootImpl;->mTmpFrames:Landroid/window/ClientWindowFrames;

    move-object/from16 v18, v1

    move-object/from16 v19, v2

    move-object/from16 v20, v7

    move-object/from16 v21, v6

    move/from16 v24, v12

    move/from16 v25, v11

    move-object/from16 v29, v3

    invoke-virtual/range {v18 .. v29}, Landroid/view/WindowLayout;->computeFrames(Landroid/view/WindowManager$LayoutParams;Landroid/view/InsetsState;Landroid/graphics/Rect;Landroid/graphics/Rect;IIILandroid/view/InsetsVisibilities;Landroid/graphics/Rect;FLandroid/window/ClientWindowFrames;)V

    iget-object v1, v0, Landroid/view/ViewRootImpl;->mWindowSession:Landroid/view/IWindowSession;

    iget-object v2, v0, Landroid/view/ViewRootImpl;->mWindow:Landroid/view/ViewRootImpl$W;

    iget-object v5, v0, Landroid/view/ViewRootImpl;->mTmpFrames:Landroid/window/ClientWindowFrames;

    move-object/from16 v3, p1

    move/from16 v4, p3

    move-object/from16 v18, v6

    move v6, v12

    move-object/from16 v19, v7

    move v7, v11

    invoke-interface/range {v1 .. v7}, Landroid/view/IWindowSession;->updateLayout(Landroid/view/IWindow;Landroid/view/WindowManager$LayoutParams;ILandroid/window/ClientWindowFrames;II)V

    move v1, v8

    move/from16 v22, v11

    move/from16 v21, v12

    move/from16 v20, v13

    goto/16 :goto_1c0

    :cond_13f
    iget-object v1, v0, Landroid/view/ViewRootImpl;->mWindowSession:Landroid/view/IWindowSession;

    iget-object v2, v0, Landroid/view/ViewRootImpl;->mWindow:Landroid/view/ViewRootImpl$W;

    iget-object v8, v0, Landroid/view/ViewRootImpl;->mTmpFrames:Landroid/window/ClientWindowFrames;

    iget-object v7, v0, Landroid/view/ViewRootImpl;->mPendingMergedConfiguration:Landroid/util/MergedConfiguration;

    iget-object v6, v0, Landroid/view/ViewRootImpl;->mSurfaceControl:Landroid/view/SurfaceControl;

    iget-object v5, v0, Landroid/view/ViewRootImpl;->mTempInsets:Landroid/view/InsetsState;

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mTempControls:[Landroid/view/InsetsSourceControl;

    iget-object v3, v0, Landroid/view/ViewRootImpl;->mRelayoutBundle:Landroid/os/Bundle;

    move-object/from16 v19, v3

    move-object/from16 v3, p1

    move-object/from16 v20, v4

    move v4, v12

    move-object/from16 v21, v5

    move v5, v11

    move-object/from16 v22, v6

    move/from16 v6, p2

    move-object/from16 v23, v7

    move/from16 v7, p3

    move-object/from16 v9, v23

    move-object/from16 v23, v10

    move-object/from16 v10, v22

    move/from16 v22, v11

    move-object/from16 v11, v21

    move/from16 v21, v12

    move-object/from16 v12, v20

    move/from16 v20, v13

    move-object/from16 v13, v19

    invoke-interface/range {v1 .. v13}, Landroid/view/IWindowSession;->relayout(Landroid/view/IWindow;Landroid/view/WindowManager$LayoutParams;IIIILandroid/window/ClientWindowFrames;Landroid/util/MergedConfiguration;Landroid/view/SurfaceControl;Landroid/view/InsetsState;[Landroid/view/InsetsSourceControl;Landroid/os/Bundle;)I

    move-result v8

    iget-object v1, v0, Landroid/view/ViewRootImpl;->mRelayoutBundle:Landroid/os/Bundle;

    const-string/jumbo v2, "seqid"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    if-lez v1, :cond_184

    iput v1, v0, Landroid/view/ViewRootImpl;->mSyncSeqId:I

    :cond_184
    iget-object v2, v0, Landroid/view/ViewRootImpl;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    if-eqz v2, :cond_1a6

    iget-object v3, v0, Landroid/view/ViewRootImpl;->mTmpFrames:Landroid/window/ClientWindowFrames;

    iget-object v3, v3, Landroid/window/ClientWindowFrames;->frame:Landroid/graphics/Rect;

    invoke-virtual {v2, v3}, Landroid/content/res/CompatibilityInfo$Translator;->translateRectInScreenToAppWindow(Landroid/graphics/Rect;)V

    iget-object v2, v0, Landroid/view/ViewRootImpl;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    iget-object v3, v0, Landroid/view/ViewRootImpl;->mTmpFrames:Landroid/window/ClientWindowFrames;

    iget-object v3, v3, Landroid/window/ClientWindowFrames;->displayFrame:Landroid/graphics/Rect;

    invoke-virtual {v2, v3}, Landroid/content/res/CompatibilityInfo$Translator;->translateRectInScreenToAppWindow(Landroid/graphics/Rect;)V

    iget-object v2, v0, Landroid/view/ViewRootImpl;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    iget-object v3, v0, Landroid/view/ViewRootImpl;->mTempInsets:Landroid/view/InsetsState;

    invoke-virtual {v2, v3}, Landroid/content/res/CompatibilityInfo$Translator;->translateInsetsStateInScreenToAppWindow(Landroid/view/InsetsState;)V

    iget-object v2, v0, Landroid/view/ViewRootImpl;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    iget-object v3, v0, Landroid/view/ViewRootImpl;->mTempControls:[Landroid/view/InsetsSourceControl;

    invoke-virtual {v2, v3}, Landroid/content/res/CompatibilityInfo$Translator;->translateSourceControlsInScreenToAppWindow([Landroid/view/InsetsSourceControl;)V

    :cond_1a6
    iget-object v2, v0, Landroid/view/ViewRootImpl;->mInsetsController:Landroid/view/InsetsController;

    iget-object v3, v0, Landroid/view/ViewRootImpl;->mTempInsets:Landroid/view/InsetsState;

    invoke-virtual {v2, v3}, Landroid/view/InsetsController;->onStateChanged(Landroid/view/InsetsState;)Z

    iget-object v2, v0, Landroid/view/ViewRootImpl;->mInsetsController:Landroid/view/InsetsController;

    iget-object v3, v0, Landroid/view/ViewRootImpl;->mTempControls:[Landroid/view/InsetsSourceControl;

    invoke-virtual {v2, v3}, Landroid/view/InsetsController;->onControlsChanged([Landroid/view/InsetsSourceControl;)V

    and-int/lit8 v2, v8, 0x8

    if-eqz v2, :cond_1ba

    move v9, v15

    goto :goto_1bb

    :cond_1ba
    const/4 v9, 0x0

    :goto_1bb
    iput-boolean v9, v0, Landroid/view/ViewRootImpl;->mPendingAlwaysConsumeSystemBars:Z

    move v1, v8

    move-object/from16 v10, v23

    :goto_1c0
    iget v2, v0, Landroid/view/ViewRootImpl;->mDisplayInstallOrientation:I

    iget-object v3, v0, Landroid/view/ViewRootImpl;->mDisplay:Landroid/view/Display;

    invoke-virtual {v3}, Landroid/view/Display;->getRotation()I

    move-result v3

    add-int/2addr v2, v3

    rem-int/lit8 v2, v2, 0x4

    invoke-static {v2}, Landroid/view/SurfaceControl;->rotationToBufferTransform(I)I

    move-result v2

    iget-object v3, v0, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v10}, Landroid/app/WindowConfiguration;->getMaxBounds()Landroid/graphics/Rect;

    move-result-object v4

    iget-object v5, v0, Landroid/view/ViewRootImpl;->mTmpFrames:Landroid/window/ClientWindowFrames;

    iget-object v7, v5, Landroid/window/ClientWindowFrames;->frame:Landroid/graphics/Rect;

    iget-boolean v8, v0, Landroid/view/ViewRootImpl;->mPendingDragResizing:Z

    iget-object v9, v0, Landroid/view/ViewRootImpl;->mSurfaceSize:Landroid/graphics/Point;

    move/from16 v5, v21

    move/from16 v6, v22

    invoke-static/range {v3 .. v9}, Landroid/view/WindowLayout;->computeSurfaceSize(Landroid/view/WindowManager$LayoutParams;Landroid/graphics/Rect;IILandroid/graphics/Rect;ZLandroid/graphics/Point;)V

    iget v3, v0, Landroid/view/ViewRootImpl;->mLastTransformHint:I

    if-eq v2, v3, :cond_1ea

    move v9, v15

    goto :goto_1eb

    :cond_1ea
    const/4 v9, 0x0

    :goto_1eb
    move v3, v9

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mLastSurfaceSize:Landroid/graphics/Point;

    iget-object v5, v0, Landroid/view/ViewRootImpl;->mSurfaceSize:Landroid/graphics/Point;

    invoke-virtual {v4, v5}, Landroid/graphics/Point;->equals(Ljava/lang/Object;)Z

    move-result v4

    xor-int/2addr v4, v15

    and-int/lit8 v5, v1, 0x2

    const/4 v6, 0x2

    if-ne v5, v6, :cond_1fb

    goto :goto_1fc

    :cond_1fb
    const/4 v15, 0x0

    :goto_1fc
    move v5, v15

    iget-object v6, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v6, v6, Landroid/view/View$AttachInfo;->mThreadedRenderer:Landroid/view/ThreadedRenderer;

    if-eqz v6, :cond_223

    if-nez v3, :cond_20c

    if-nez v4, :cond_20c

    if-eqz v5, :cond_20a

    goto :goto_20c

    :cond_20a
    const/4 v9, 0x0

    goto :goto_224

    :cond_20c
    :goto_20c
    iget-object v6, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v6, v6, Landroid/view/View$AttachInfo;->mThreadedRenderer:Landroid/view/ThreadedRenderer;

    invoke-virtual {v6}, Landroid/view/ThreadedRenderer;->pause()Z

    move-result v6

    if-eqz v6, :cond_221

    iget-object v6, v0, Landroid/view/ViewRootImpl;->mDirty:Landroid/graphics/Rect;

    iget v7, v0, Landroid/view/ViewRootImpl;->mWidth:I

    iget v8, v0, Landroid/view/ViewRootImpl;->mHeight:I

    const/4 v9, 0x0

    invoke-virtual {v6, v9, v9, v7, v8}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_224

    :cond_221
    const/4 v9, 0x0

    goto :goto_224

    :cond_223
    const/4 v9, 0x0

    :goto_224
    iput v2, v0, Landroid/view/ViewRootImpl;->mLastTransformHint:I

    iget-object v6, v0, Landroid/view/ViewRootImpl;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v6, v2}, Landroid/view/SurfaceControl;->setTransformHint(I)V

    iget-object v6, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v6, v6, Landroid/view/View$AttachInfo;->mContentCaptureManager:Landroid/view/contentcapture/ContentCaptureManager;

    if-eqz v6, :cond_24a

    iget-object v6, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v6, v6, Landroid/view/View$AttachInfo;->mContentCaptureManager:Landroid/view/contentcapture/ContentCaptureManager;

    invoke-virtual {v6}, Landroid/view/contentcapture/ContentCaptureManager;->getMainContentCaptureSession()Landroid/view/contentcapture/MainContentCaptureSession;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/contentcapture/MainContentCaptureSession;->getId()I

    move-result v7

    invoke-direct/range {p0 .. p0}, Landroid/view/ViewRootImpl;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v8

    iget-object v8, v8, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v8}, Landroid/app/WindowConfiguration;->getBounds()Landroid/graphics/Rect;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/view/contentcapture/MainContentCaptureSession;->notifyWindowBoundsChanged(ILandroid/graphics/Rect;)V

    :cond_24a
    iget-object v6, v0, Landroid/view/ViewRootImpl;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v6}, Landroid/view/SurfaceControl;->isValid()Z

    move-result v6

    if-eqz v6, :cond_28a

    iget-object v6, v0, Landroid/view/ViewRootImpl;->mViewRootMonitor:Landroid/os/perfdebug/ViewRootMonitor;

    invoke-virtual {v6}, Landroid/os/perfdebug/ViewRootMonitor;->onSurfaceCreate()V

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewRootImpl;->useBLAST()Z

    move-result v6

    if-nez v6, :cond_265

    iget-object v6, v0, Landroid/view/ViewRootImpl;->mSurface:Landroid/view/Surface;

    iget-object v7, v0, Landroid/view/ViewRootImpl;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v6, v7}, Landroid/view/Surface;->copyFrom(Landroid/view/SurfaceControl;)V

    goto :goto_268

    :cond_265
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewRootImpl;->updateBlastSurfaceIfNeeded()V

    :goto_268
    iget-object v6, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v6, v6, Landroid/view/View$AttachInfo;->mThreadedRenderer:Landroid/view/ThreadedRenderer;

    if-eqz v6, :cond_280

    iget-object v6, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v6, v6, Landroid/view/View$AttachInfo;->mThreadedRenderer:Landroid/view/ThreadedRenderer;

    iget-object v7, v0, Landroid/view/ViewRootImpl;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v6, v7}, Landroid/view/ThreadedRenderer;->setSurfaceControl(Landroid/view/SurfaceControl;)V

    iget-object v6, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v6, v6, Landroid/view/View$AttachInfo;->mThreadedRenderer:Landroid/view/ThreadedRenderer;

    iget-object v7, v0, Landroid/view/ViewRootImpl;->mBlastBufferQueue:Landroid/graphics/BLASTBufferQueue;

    invoke-virtual {v6, v7}, Landroid/view/ThreadedRenderer;->setBlastBufferQueue(Landroid/graphics/BLASTBufferQueue;)V

    :cond_280
    iget v6, v0, Landroid/view/ViewRootImpl;->mPreviousTransformHint:I

    if-eq v6, v2, :cond_2a6

    iput v2, v0, Landroid/view/ViewRootImpl;->mPreviousTransformHint:I

    invoke-direct {v0, v2}, Landroid/view/ViewRootImpl;->dispatchTransformHintChanged(I)V

    goto :goto_2a6

    :cond_28a
    iget-object v6, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v6, v6, Landroid/view/View$AttachInfo;->mThreadedRenderer:Landroid/view/ThreadedRenderer;

    if-eqz v6, :cond_2a3

    iget-object v6, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v6, v6, Landroid/view/View$AttachInfo;->mThreadedRenderer:Landroid/view/ThreadedRenderer;

    invoke-virtual {v6}, Landroid/view/ThreadedRenderer;->pause()Z

    move-result v6

    if-eqz v6, :cond_2a3

    iget-object v6, v0, Landroid/view/ViewRootImpl;->mDirty:Landroid/graphics/Rect;

    iget v7, v0, Landroid/view/ViewRootImpl;->mWidth:I

    iget v8, v0, Landroid/view/ViewRootImpl;->mHeight:I

    invoke-virtual {v6, v9, v9, v7, v8}, Landroid/graphics/Rect;->set(IIII)V

    :cond_2a3
    invoke-direct/range {p0 .. p0}, Landroid/view/ViewRootImpl;->destroySurface()V

    :cond_2a6
    :goto_2a6
    if-eqz v16, :cond_2ab

    invoke-virtual/range {p1 .. p1}, Landroid/view/WindowManager$LayoutParams;->restore()V

    :cond_2ab
    iget-object v6, v0, Landroid/view/ViewRootImpl;->mTmpFrames:Landroid/window/ClientWindowFrames;

    iget-object v6, v6, Landroid/window/ClientWindowFrames;->frame:Landroid/graphics/Rect;

    invoke-direct {v0, v6}, Landroid/view/ViewRootImpl;->setFrame(Landroid/graphics/Rect;)V

    return v1
.end method

.method public static removeConfigCallback(Landroid/view/ViewRootImpl$ConfigChangedCallback;)V
    .registers 3

    sget-object v0, Landroid/view/ViewRootImpl;->sConfigCallbacks:Ljava/util/ArrayList;

    monitor-enter v0

    :try_start_3
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    monitor-exit v0

    return-void

    :catchall_8
    move-exception v1

    monitor-exit v0
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_8

    throw v1
.end method

.method private removeSendWindowContentChangedCallback()V
    .registers 3

    iget-object v0, p0, Landroid/view/ViewRootImpl;->mSendWindowContentChangedAccessibilityEvent:Landroid/view/ViewRootImpl$SendWindowContentChangedAccessibilityEvent;

    if-eqz v0, :cond_9

    iget-object v1, p0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    invoke-virtual {v1, v0}, Landroid/view/ViewRootImpl$ViewRootHandler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_9
    return-void
.end method

.method private reportDrawFinished(I)V
    .registers 7

    const-wide/16 v0, 0x8

    const-string v2, "finish draw"

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    :try_start_7
    iget-object v2, p0, Landroid/view/ViewRootImpl;->mWindowSession:Landroid/view/IWindowSession;

    iget-object v3, p0, Landroid/view/ViewRootImpl;->mWindow:Landroid/view/ViewRootImpl$W;

    iget-object v4, p0, Landroid/view/ViewRootImpl;->mSurfaceChangedTransaction:Landroid/view/SurfaceControl$Transaction;

    invoke-interface {v2, v3, v4, p1}, Landroid/view/IWindowSession;->finishDrawing(Landroid/view/IWindow;Landroid/view/SurfaceControl$Transaction;I)V
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_10} :catch_18
    .catchall {:try_start_7 .. :try_end_10} :catchall_16

    :goto_10
    iget-object v2, p0, Landroid/view/ViewRootImpl;->mSurfaceChangedTransaction:Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {v2}, Landroid/view/SurfaceControl$Transaction;->clear()V

    goto :goto_26

    :catchall_16
    move-exception v0

    goto :goto_2a

    :catch_18
    move-exception v2

    :try_start_19
    iget-object v3, p0, Landroid/view/ViewRootImpl;->mTag:Ljava/lang/String;

    const-string v4, "Unable to report draw finished"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iget-object v3, p0, Landroid/view/ViewRootImpl;->mSurfaceChangedTransaction:Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {v3}, Landroid/view/SurfaceControl$Transaction;->apply()V
    :try_end_25
    .catchall {:try_start_19 .. :try_end_25} :catchall_16

    goto :goto_10

    :goto_26
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    return-void

    :goto_2a
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mSurfaceChangedTransaction:Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {v1}, Landroid/view/SurfaceControl$Transaction;->clear()V

    throw v0
.end method

.method private reportNextDraw()V
    .registers 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/ViewRootImpl;->mReportNextDraw:Z

    return-void
.end method

.method private requestDrawWindow()V
    .registers 4

    iget-boolean v0, p0, Landroid/view/ViewRootImpl;->mUseMTRenderer:Z

    if-nez v0, :cond_5

    return-void

    :cond_5
    iget-boolean v0, p0, Landroid/view/ViewRootImpl;->mReportNextDraw:Z

    if-eqz v0, :cond_16

    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    iget-object v1, p0, Landroid/view/ViewRootImpl;->mWindowCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Landroid/view/ViewRootImpl;->mWindowDrawCountDown:Ljava/util/concurrent/CountDownLatch;

    :cond_16
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mWindowCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_1e
    if-ltz v0, :cond_30

    iget-object v1, p0, Landroid/view/ViewRootImpl;->mWindowCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowCallbacks;

    iget-boolean v2, p0, Landroid/view/ViewRootImpl;->mReportNextDraw:Z

    invoke-interface {v1, v2}, Landroid/view/WindowCallbacks;->onRequestDraw(Z)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_1e

    :cond_30
    return-void
.end method

.method private resetPointerIcon(Landroid/view/MotionEvent;)V
    .registers 3

    const/4 v0, 0x1

    iput v0, p0, Landroid/view/ViewRootImpl;->mPointerIconType:I

    invoke-direct {p0, p1}, Landroid/view/ViewRootImpl;->updatePointerIcon(Landroid/view/MotionEvent;)Z

    return-void
.end method

.method private scheduleProcessInputEvents()V
    .registers 4

    iget-boolean v0, p0, Landroid/view/ViewRootImpl;->mProcessInputEventsScheduled:Z

    if-nez v0, :cond_17

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/ViewRootImpl;->mProcessInputEventsScheduled:Z

    iget-object v1, p0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    const/16 v2, 0x13

    invoke-virtual {v1, v2}, Landroid/view/ViewRootImpl$ViewRootHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Message;->setAsynchronous(Z)V

    iget-object v0, p0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    invoke-virtual {v0, v1}, Landroid/view/ViewRootImpl$ViewRootHandler;->sendMessage(Landroid/os/Message;)Z

    :cond_17
    return-void
.end method

.method private sendBackKeyEvent(I)V
    .registers 18

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v13

    new-instance v15, Landroid/view/KeyEvent;

    const/4 v6, 0x4

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, -0x1

    const/4 v10, 0x0

    const/16 v11, 0x48

    const/16 v12, 0x101

    move-object v0, v15

    move-wide v1, v13

    move-wide v3, v13

    move/from16 v5, p1

    invoke-direct/range {v0 .. v12}, Landroid/view/KeyEvent;-><init>(JJIIIIIIII)V

    move-object/from16 v1, p0

    invoke-virtual {v1, v0}, Landroid/view/ViewRootImpl;->enqueueInputEvent(Landroid/view/InputEvent;)V

    return-void
.end method

.method private setBoundsLayerCrop(Landroid/view/SurfaceControl$Transaction;)V
    .registers 7

    iget-object v0, p0, Landroid/view/ViewRootImpl;->mTempRect:Landroid/graphics/Rect;

    iget-object v1, p0, Landroid/view/ViewRootImpl;->mSurfaceSize:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    iget-object v2, p0, Landroid/view/ViewRootImpl;->mSurfaceSize:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->y:I

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/Rect;->set(IIII)V

    iget-object v0, p0, Landroid/view/ViewRootImpl;->mTempRect:Landroid/graphics/Rect;

    iget-object v1, p0, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget-object v1, v1, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    iget-object v2, p0, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget-object v2, v2, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    iget-object v3, p0, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget-object v3, v3, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    iget-object v4, p0, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget-object v4, v4, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;->inset(IIII)V

    iget-object v0, p0, Landroid/view/ViewRootImpl;->mBoundsLayer:Landroid/view/SurfaceControl;

    iget-object v1, p0, Landroid/view/ViewRootImpl;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v0, v1}, Landroid/view/SurfaceControl$Transaction;->setWindowCrop(Landroid/view/SurfaceControl;Landroid/graphics/Rect;)Landroid/view/SurfaceControl$Transaction;

    return-void
.end method

.method private setFrame(Landroid/graphics/Rect;)V
    .registers 5

    iget-object v0, p0, Landroid/view/ViewRootImpl;->mWinFrame:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    invoke-direct {p0}, Landroid/view/ViewRootImpl;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    iget-object v1, p0, Landroid/view/ViewRootImpl;->mPendingBackDropFrame:Landroid/graphics/Rect;

    iget-boolean v2, p0, Landroid/view/ViewRootImpl;->mPendingDragResizing:Z

    if-eqz v2, :cond_1c

    invoke-virtual {v0}, Landroid/app/WindowConfiguration;->useWindowFrameForBackdrop()Z

    move-result v2

    if-nez v2, :cond_1c

    invoke-virtual {v0}, Landroid/app/WindowConfiguration;->getMaxBounds()Landroid/graphics/Rect;

    move-result-object v2

    goto :goto_1d

    :cond_1c
    move-object v2, p1

    :goto_1d
    invoke-virtual {v1, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object v1, p0, Landroid/view/ViewRootImpl;->mPendingBackDropFrame:Landroid/graphics/Rect;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v2}, Landroid/graphics/Rect;->offsetTo(II)V

    iget-object v1, p0, Landroid/view/ViewRootImpl;->mInsetsController:Landroid/view/InsetsController;

    iget-object v2, p0, Landroid/view/ViewRootImpl;->mOverrideInsetsFrame:Landroid/graphics/Rect;

    if-eqz v2, :cond_2d

    goto :goto_2e

    :cond_2d
    move-object v2, p1

    :goto_2e
    invoke-virtual {v1, v2}, Landroid/view/InsetsController;->onFrameChanged(Landroid/graphics/Rect;)V

    return-void
.end method

.method private setPendingDragEndedLoc()V
    .registers 11

    :try_start_0
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mCurrentDragView:Landroid/view/View;

    if-eqz v0, :cond_75

    instance-of v1, v0, Landroid/view/ViewRootImpl$IDragEndInformation;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_24

    check-cast v0, Landroid/view/ViewRootImpl$IDragEndInformation;

    invoke-interface {v0}, Landroid/view/ViewRootImpl$IDragEndInformation;->getDragEndLocation()[I

    move-result-object v1

    iget-object v4, p0, Landroid/view/ViewRootImpl;->mWindowSession:Landroid/view/IWindowSession;

    iget-object v5, p0, Landroid/view/ViewRootImpl;->mWindow:Landroid/view/ViewRootImpl$W;

    aget v6, v1, v3

    aget v7, v1, v2

    invoke-interface {v0}, Landroid/view/ViewRootImpl$IDragEndInformation;->getDragEndWidth()I

    move-result v8

    invoke-interface {v0}, Landroid/view/ViewRootImpl$IDragEndInformation;->getDragEndHeight()I

    move-result v9

    invoke-interface/range {v4 .. v9}, Landroid/view/IWindowSession;->setPendingDragEndedLoc(Landroid/view/IWindow;IIII)V

    goto :goto_75

    :cond_24
    const/4 v1, 0x2

    new-array v1, v1, [I

    invoke-virtual {v0, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    aget v0, v1, v3

    int-to-float v0, v0

    float-to-int v0, v0

    aget v2, v1, v2

    int-to-float v2, v2

    float-to-int v2, v2

    const-string v3, "ViewRootImpl"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "drag view: mCurrentDragView = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Landroid/view/ViewRootImpl;->mCurrentDragView:Landroid/view/View;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", x = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", y = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Landroid/view/ViewRootImpl;->mWindowSession:Landroid/view/IWindowSession;

    iget-object v4, p0, Landroid/view/ViewRootImpl;->mWindow:Landroid/view/ViewRootImpl$W;

    iget-object v5, p0, Landroid/view/ViewRootImpl;->mCurrentDragView:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getWidth()I

    move-result v7

    iget-object v5, p0, Landroid/view/ViewRootImpl;->mCurrentDragView:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getHeight()I

    move-result v8

    move v5, v0

    move v6, v2

    invoke-interface/range {v3 .. v8}, Landroid/view/IWindowSession;->setPendingDragEndedLoc(Landroid/view/IWindow;IIII)V
    :try_end_75
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_75} :catch_76

    :cond_75
    :goto_75
    goto :goto_81

    :catch_76
    move-exception v0

    iget-object v1, p0, Landroid/view/ViewRootImpl;->mTag:Ljava/lang/String;

    const-string v2, "Unable send drag view center position"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_81
    return-void
.end method

.method private setTag()V
    .registers 4

    iget-object v0, p0, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v0}, Landroid/view/WindowManager$LayoutParams;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "\\."

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v1, v0

    if-lez v1, :cond_33

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "VRI["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    array-length v2, v0

    add-int/lit8 v2, v2, -0x1

    aget-object v2, v0, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/view/ViewRootImpl;->mTag:Ljava/lang/String;

    :cond_33
    return-void
.end method

.method private shouldDispatchCutout()Z
    .registers 4

    iget-object v0, p0, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    const/4 v1, 0x1

    const/4 v2, 0x3

    if-eq v0, v2, :cond_1d

    iget-object v0, p0, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    if-eq v0, v1, :cond_1d

    invoke-static {}, Landroid/view/ViewRootImplStub;->getInstance()Landroid/view/ViewRootImplStub;

    move-result-object v0

    iget-object v2, p0, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v0, v2}, Landroid/view/ViewRootImplStub;->isMiuiLayoutInCutoutAlways(Landroid/view/WindowManager$LayoutParams;)Z

    move-result v0

    if-eqz v0, :cond_1b

    goto :goto_1d

    :cond_1b
    const/4 v1, 0x0

    goto :goto_1e

    :cond_1d
    :goto_1d
    nop

    :goto_1e
    return v1
.end method

.method private static shouldUseDisplaySize(Landroid/view/WindowManager$LayoutParams;)Z
    .registers 3

    iget v0, p0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v1, 0x7f9

    if-eq v0, v1, :cond_15

    iget v0, p0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v1, 0x7db

    if-eq v0, v1, :cond_15

    iget v0, p0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v1, 0x7e4

    if-ne v0, v1, :cond_13

    goto :goto_15

    :cond_13
    const/4 v0, 0x0

    goto :goto_16

    :cond_15
    :goto_15
    const/4 v0, 0x1

    :goto_16
    return v0
.end method

.method private showInsets(IZ)V
    .registers 5

    iget-object v0, p0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    const/16 v1, 0x1f

    invoke-virtual {v0, v1, p1, p2}, Landroid/view/ViewRootImpl$ViewRootHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method private startDragResizing(Landroid/graphics/Rect;ZLandroid/graphics/Rect;Landroid/graphics/Rect;I)V
    .registers 15

    iget-boolean v0, p0, Landroid/view/ViewRootImpl;->mDragResizing:Z

    if-nez v0, :cond_2a

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/ViewRootImpl;->mDragResizing:Z

    iget-boolean v1, p0, Landroid/view/ViewRootImpl;->mUseMTRenderer:Z

    if-eqz v1, :cond_28

    iget-object v1, p0, Landroid/view/ViewRootImpl;->mWindowCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    sub-int/2addr v1, v0

    :goto_12
    if-ltz v1, :cond_28

    iget-object v2, p0, Landroid/view/ViewRootImpl;->mWindowCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Landroid/view/WindowCallbacks;

    move-object v4, p1

    move v5, p2

    move-object v6, p3

    move-object v7, p4

    move v8, p5

    invoke-interface/range {v3 .. v8}, Landroid/view/WindowCallbacks;->onWindowDragResizeStart(Landroid/graphics/Rect;ZLandroid/graphics/Rect;Landroid/graphics/Rect;I)V

    add-int/lit8 v1, v1, -0x1

    goto :goto_12

    :cond_28
    iput-boolean v0, p0, Landroid/view/ViewRootImpl;->mFullRedrawNeeded:Z

    :cond_2a
    return-void
.end method

.method private trackFPS()V
    .registers 13

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Landroid/view/ViewRootImpl;->mFpsStartTime:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    const/4 v3, 0x0

    if-gez v2, :cond_14

    iput-wide v0, p0, Landroid/view/ViewRootImpl;->mFpsPrevTime:J

    iput-wide v0, p0, Landroid/view/ViewRootImpl;->mFpsStartTime:J

    iput v3, p0, Landroid/view/ViewRootImpl;->mFpsNumFrames:I

    goto :goto_80

    :cond_14
    iget v2, p0, Landroid/view/ViewRootImpl;->mFpsNumFrames:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Landroid/view/ViewRootImpl;->mFpsNumFrames:I

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    iget-wide v4, p0, Landroid/view/ViewRootImpl;->mFpsPrevTime:J

    sub-long v4, v0, v4

    iget-wide v6, p0, Landroid/view/ViewRootImpl;->mFpsStartTime:J

    sub-long v6, v0, v6

    iget-object v8, p0, Landroid/view/ViewRootImpl;->mTag:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "0x"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v11, "\tFrame time:\t"

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iput-wide v0, p0, Landroid/view/ViewRootImpl;->mFpsPrevTime:J

    const-wide/16 v8, 0x3e8

    cmp-long v8, v6, v8

    if-lez v8, :cond_80

    iget v8, p0, Landroid/view/ViewRootImpl;->mFpsNumFrames:I

    int-to-float v8, v8

    const/high16 v9, 0x447a0000  # 1000.0f

    mul-float/2addr v8, v9

    long-to-float v9, v6

    div-float/2addr v8, v9

    iget-object v9, p0, Landroid/view/ViewRootImpl;->mTag:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "\tFPS:\t"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iput-wide v0, p0, Landroid/view/ViewRootImpl;->mFpsStartTime:J

    iput v3, p0, Landroid/view/ViewRootImpl;->mFpsNumFrames:I

    :cond_80
    :goto_80
    return-void
.end method

.method private unregisterListeners()V
    .registers 3

    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    iget-object v1, p0, Landroid/view/ViewRootImpl;->mAccessibilityInteractionConnectionManager:Landroid/view/ViewRootImpl$AccessibilityInteractionConnectionManager;

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityManager;->removeAccessibilityStateChangeListener(Landroid/view/accessibility/AccessibilityManager$AccessibilityStateChangeListener;)Z

    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    iget-object v1, p0, Landroid/view/ViewRootImpl;->mHighContrastTextManager:Landroid/view/ViewRootImpl$HighContrastTextManager;

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityManager;->removeHighTextContrastStateChangeListener(Landroid/view/accessibility/AccessibilityManager$HighTextContrastChangeListener;)V

    iget-object v0, p0, Landroid/view/ViewRootImpl;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    iget-object v1, p0, Landroid/view/ViewRootImpl;->mDisplayListener:Landroid/hardware/display/DisplayManager$DisplayListener;

    invoke-virtual {v0, v1}, Landroid/hardware/display/DisplayManager;->unregisterDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;)V

    return-void
.end method

.method private updateBbqDynamicLog()V
    .registers 3

    iget-object v0, p0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    new-instance v1, Landroid/view/ViewRootImpl$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Landroid/view/ViewRootImpl$$ExternalSyntheticLambda0;-><init>(Landroid/view/ViewRootImpl;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewRootImpl$ViewRootHandler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private updateBoundsLayer(Landroid/view/SurfaceControl$Transaction;)Z
    .registers 3

    iget-object v0, p0, Landroid/view/ViewRootImpl;->mBoundsLayer:Landroid/view/SurfaceControl;

    if-eqz v0, :cond_9

    invoke-direct {p0, p1}, Landroid/view/ViewRootImpl;->setBoundsLayerCrop(Landroid/view/SurfaceControl$Transaction;)V

    const/4 v0, 0x1

    return v0

    :cond_9
    const/4 v0, 0x0

    return v0
.end method

.method private updateCaptionInsets()Z
    .registers 8

    sget-boolean v0, Landroid/view/ViewRootImpl;->CAPTION_ON_SHELL:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_6

    return v1

    :cond_6
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    instance-of v2, v0, Lcom/android/internal/policy/DecorView;

    if-nez v2, :cond_d

    return v1

    :cond_d
    check-cast v0, Lcom/android/internal/policy/DecorView;

    invoke-virtual {v0}, Lcom/android/internal/policy/DecorView;->getCaptionInsetsHeight()I

    move-result v0

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    if-eqz v0, :cond_2e

    iget-object v3, p0, Landroid/view/ViewRootImpl;->mWinFrame:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    iget-object v4, p0, Landroid/view/ViewRootImpl;->mWinFrame:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    iget-object v5, p0, Landroid/view/ViewRootImpl;->mWinFrame:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->right:I

    iget-object v6, p0, Landroid/view/ViewRootImpl;->mWinFrame:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->top:I

    add-int/2addr v6, v0

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/graphics/Rect;->set(IIII)V

    :cond_2e
    iget-object v3, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v3, v3, Landroid/view/View$AttachInfo;->mCaptionInsets:Landroid/graphics/Rect;

    invoke-virtual {v3, v2}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_39

    return v1

    :cond_39
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v1, v1, Landroid/view/View$AttachInfo;->mCaptionInsets:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    const/4 v1, 0x1

    return v1
.end method

.method private updateColorModeIfNeeded(I)V
    .registers 3

    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v0, Landroid/view/View$AttachInfo;->mThreadedRenderer:Landroid/view/ThreadedRenderer;

    if-nez v0, :cond_7

    return-void

    :cond_7
    const/4 v0, 0x4

    if-eq p1, v0, :cond_15

    invoke-direct {p0}, Landroid/view/ViewRootImpl;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Configuration;->isScreenWideColorGamut()Z

    move-result v0

    if-nez v0, :cond_15

    const/4 p1, 0x0

    :cond_15
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v0, Landroid/view/View$AttachInfo;->mThreadedRenderer:Landroid/view/ThreadedRenderer;

    invoke-virtual {v0, p1}, Landroid/view/ThreadedRenderer;->setColorMode(I)V

    return-void
.end method

.method private updateContentDrawBounds()Z
    .registers 9

    const/4 v0, 0x0

    iget-boolean v1, p0, Landroid/view/ViewRootImpl;->mUseMTRenderer:Z

    const/4 v2, 0x1

    if-eqz v1, :cond_2f

    iget-object v1, p0, Landroid/view/ViewRootImpl;->mWindowCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    sub-int/2addr v1, v2

    :goto_d
    if-ltz v1, :cond_2f

    iget-object v3, p0, Landroid/view/ViewRootImpl;->mWindowCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/WindowCallbacks;

    iget-object v4, p0, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget-object v4, v4, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    iget-object v5, p0, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget-object v5, v5, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    iget v6, p0, Landroid/view/ViewRootImpl;->mWidth:I

    iget v7, p0, Landroid/view/ViewRootImpl;->mHeight:I

    invoke-interface {v3, v4, v5, v6, v7}, Landroid/view/WindowCallbacks;->onContentDrawn(IIII)Z

    move-result v3

    or-int/2addr v0, v3

    add-int/lit8 v1, v1, -0x1

    goto :goto_d

    :cond_2f
    iget-boolean v1, p0, Landroid/view/ViewRootImpl;->mDragResizing:Z

    if-eqz v1, :cond_38

    iget-boolean v1, p0, Landroid/view/ViewRootImpl;->mReportNextDraw:Z

    if-eqz v1, :cond_38

    goto :goto_39

    :cond_38
    const/4 v2, 0x0

    :goto_39
    or-int v1, v0, v2

    return v1
.end method

.method private updateDisplayDecoration()V
    .registers 4

    iget-object v0, p0, Landroid/view/ViewRootImpl;->mTransaction:Landroid/view/SurfaceControl$Transaction;

    iget-object v1, p0, Landroid/view/ViewRootImpl;->mSurfaceControl:Landroid/view/SurfaceControl;

    iget-boolean v2, p0, Landroid/view/ViewRootImpl;->mDisplayDecorationCached:Z

    invoke-virtual {v0, v1, v2}, Landroid/view/SurfaceControl$Transaction;->setDisplayDecoration(Landroid/view/SurfaceControl;Z)Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/SurfaceControl$Transaction;->apply()V

    return-void
.end method

.method private updateForceDarkMode()V
    .registers 7

    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v0, Landroid/view/View$AttachInfo;->mThreadedRenderer:Landroid/view/ThreadedRenderer;

    if-nez v0, :cond_7

    return-void

    :cond_7
    invoke-direct {p0}, Landroid/view/ViewRootImpl;->getNightMode()I

    move-result v0

    const/16 v1, 0x20

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v0, v1, :cond_13

    move v0, v2

    goto :goto_14

    :cond_13
    move v0, v3

    :goto_14
    if-eqz v0, :cond_3b

    nop

    const-string v1, "debug.hwui.force_dark"

    invoke-static {v1, v3}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iget-object v4, p0, Landroid/view/ViewRootImpl;->mContext:Landroid/content/Context;

    sget-object v5, Lcom/android/internal/R$styleable;->Theme:[I

    invoke-virtual {v4, v5}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v4

    const/16 v5, 0x117

    invoke-virtual {v4, v5, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v5

    if-eqz v5, :cond_36

    const/16 v5, 0x116

    invoke-virtual {v4, v5, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v5

    if-eqz v5, :cond_36

    goto :goto_37

    :cond_36
    move v2, v3

    :goto_37
    move v0, v2

    invoke-virtual {v4}, Landroid/content/res/TypedArray;->recycle()V

    :cond_3b
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v1, v1, Landroid/view/View$AttachInfo;->mThreadedRenderer:Landroid/view/ThreadedRenderer;

    invoke-virtual {v1, v0}, Landroid/view/ThreadedRenderer;->setForceDark(Z)Z

    move-result v1

    if-eqz v1, :cond_4a

    iget-object v1, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {p0, v1}, Landroid/view/ViewRootImpl;->invalidateWorld(Landroid/view/View;)V

    :cond_4a
    return-void
.end method

.method private updateGfxInfoDynamicLog([Ljava/lang/String;)Z
    .registers 6

    const/4 v0, 0x0

    if-eqz p1, :cond_30

    array-length v1, p1

    if-nez v1, :cond_7

    goto :goto_30

    :cond_7
    const/4 v1, 0x0

    :goto_8
    array-length v2, p1

    if-ge v1, v2, :cond_2f

    aget-object v2, p1, v1

    const-string v3, "debuglog"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2c

    const/4 v0, 0x1

    array-length v2, p1

    add-int/lit8 v3, v1, 0x2

    if-lt v2, v3, :cond_28

    add-int/lit8 v2, v1, 0x1

    aget-object v2, p1, v2

    const-string/jumbo v3, "true"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p0, Landroid/view/ViewRootImpl;->mDynamicLog:Z

    :cond_28
    invoke-direct {p0}, Landroid/view/ViewRootImpl;->updateBbqDynamicLog()V

    goto :goto_2f

    :cond_2c
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    :cond_2f
    :goto_2f
    return v0

    :cond_30
    :goto_30
    return v0
.end method

.method private updateHdrDimmerState()V
    .registers 4

    iget-object v0, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    if-nez v0, :cond_5

    return-void

    :cond_5
    instance-of v1, v0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_2e

    iget-object v0, p0, Landroid/view/ViewRootImpl;->mHdrBrightRegions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Landroid/view/ViewRootImpl;->mHdrDimRegions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Landroid/view/ViewRootImpl;->mHdrBrightRegions:Ljava/util/List;

    iget-object v2, p0, Landroid/view/ViewRootImpl;->mHdrDimRegions:Ljava/util/List;

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewGroup;->getHdrBrightAndDimRegion(Ljava/util/List;Ljava/util/List;)V

    iget-object v0, p0, Landroid/view/ViewRootImpl;->mHdrBrightRegions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_2a

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/ViewRootImpl;->mHdrDimmerEnabled:Z

    goto :goto_54

    :cond_2a
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/view/ViewRootImpl;->mHdrDimmerEnabled:Z

    goto :goto_54

    :cond_2e
    invoke-virtual {v0}, Landroid/view/View;->getHdrDimmerEnabled()Z

    move-result v0

    iput-boolean v0, p0, Landroid/view/ViewRootImpl;->mHdrDimmerEnabled:Z

    iget-object v0, p0, Landroid/view/ViewRootImpl;->mHdrBrightRegions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Landroid/view/ViewRootImpl;->mHdrBrightRegions:Ljava/util/List;

    iget-object v1, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getHdrBrightRegion()Landroid/util/Pair;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Landroid/view/ViewRootImpl;->mHdrDimRegions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Landroid/view/ViewRootImpl;->mHdrDimRegions:Ljava/util/List;

    iget-object v1, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getHdrDimRegion()Landroid/util/Pair;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_54
    return-void
.end method

.method private updateInternalDisplay(ILandroid/content/res/Resources;)V
    .registers 6

    invoke-static {}, Landroid/app/ResourcesManager;->getInstance()Landroid/app/ResourcesManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/app/ResourcesManager;->getAdjustedDisplay(ILandroid/content/res/Resources;)Landroid/view/Display;

    move-result-object v0

    if-nez v0, :cond_2e

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot get desired display with Id: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ViewRootImpl"

    invoke-static {v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Landroid/app/ResourcesManager;->getInstance()Landroid/app/ResourcesManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2, p2}, Landroid/app/ResourcesManager;->getAdjustedDisplay(ILandroid/content/res/Resources;)Landroid/view/Display;

    move-result-object v1

    iput-object v1, p0, Landroid/view/ViewRootImpl;->mDisplay:Landroid/view/Display;

    goto :goto_30

    :cond_2e
    iput-object v0, p0, Landroid/view/ViewRootImpl;->mDisplay:Landroid/view/Display;

    :goto_30
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mContext:Landroid/content/Context;

    iget-object v2, p0, Landroid/view/ViewRootImpl;->mDisplay:Landroid/view/Display;

    invoke-virtual {v2}, Landroid/view/Display;->getDisplayId()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/Context;->updateDisplay(I)V

    return-void
.end method

.method private updateOpacity(Landroid/view/WindowManager$LayoutParams;ZZ)V
    .registers 8

    const/4 v0, 0x0

    iget v1, p1, Landroid/view/WindowManager$LayoutParams;->format:I

    invoke-static {v1}, Landroid/graphics/PixelFormat;->formatHasAlpha(I)Z

    move-result v1

    if-nez v1, :cond_24

    iget-object v1, p1, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    if-nez v1, :cond_24

    iget-object v1, p1, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    if-nez v1, :cond_24

    iget-object v1, p1, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    if-nez v1, :cond_24

    iget-object v1, p1, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    if-nez v1, :cond_24

    if-nez p2, :cond_24

    const/4 v0, 0x1

    :cond_24
    if-nez p3, :cond_2b

    iget-boolean v1, p0, Landroid/view/ViewRootImpl;->mIsSurfaceOpaque:Z

    if-ne v1, v0, :cond_2b

    return-void

    :cond_2b
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v1, v1, Landroid/view/View$AttachInfo;->mThreadedRenderer:Landroid/view/ThreadedRenderer;

    if-eqz v1, :cond_3c

    invoke-virtual {v1}, Landroid/view/ThreadedRenderer;->rendererOwnsSurfaceControlOpacity()Z

    move-result v2

    if-eqz v2, :cond_3c

    invoke-virtual {v1, v0}, Landroid/view/ThreadedRenderer;->setSurfaceControlOpaque(Z)Z

    move-result v0

    goto :goto_47

    :cond_3c
    iget-object v2, p0, Landroid/view/ViewRootImpl;->mTransaction:Landroid/view/SurfaceControl$Transaction;

    iget-object v3, p0, Landroid/view/ViewRootImpl;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v2, v3, v0}, Landroid/view/SurfaceControl$Transaction;->setOpaque(Landroid/view/SurfaceControl;Z)Landroid/view/SurfaceControl$Transaction;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/SurfaceControl$Transaction;->apply()V

    :goto_47
    iput-boolean v0, p0, Landroid/view/ViewRootImpl;->mIsSurfaceOpaque:Z

    return-void
.end method

.method private updatePointerIcon(Landroid/view/MotionEvent;)Z
    .registers 10

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v2

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v3

    iget-object v4, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    if-nez v4, :cond_17

    iget-object v4, p0, Landroid/view/ViewRootImpl;->mTag:Ljava/lang/String;

    const-string/jumbo v5, "updatePointerIcon called after view was removed"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_17
    const/4 v5, 0x0

    cmpg-float v6, v2, v5

    if-ltz v6, :cond_71

    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v4

    int-to-float v4, v4

    cmpl-float v4, v2, v4

    if-gez v4, :cond_71

    cmpg-float v4, v3, v5

    if-ltz v4, :cond_71

    iget-object v4, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v4

    int-to-float v4, v4

    cmpl-float v4, v3, v4

    if-ltz v4, :cond_35

    goto :goto_71

    :cond_35
    iget-object v4, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v4, p1, v1}, Landroid/view/View;->onResolvePointerIcon(Landroid/view/MotionEvent;I)Landroid/view/PointerIcon;

    move-result-object v1

    if-eqz v1, :cond_42

    invoke-virtual {v1}, Landroid/view/PointerIcon;->getType()I

    move-result v4

    goto :goto_44

    :cond_42
    const/16 v4, 0x3e8

    :goto_44
    iget v5, p0, Landroid/view/ViewRootImpl;->mPointerIconType:I

    const/4 v6, 0x1

    const/4 v7, -0x1

    if-eq v5, v4, :cond_59

    iput v4, p0, Landroid/view/ViewRootImpl;->mPointerIconType:I

    const/4 v5, 0x0

    iput-object v5, p0, Landroid/view/ViewRootImpl;->mCustomPointerIcon:Landroid/view/PointerIcon;

    if-eq v4, v7, :cond_59

    invoke-static {}, Landroid/hardware/input/InputManager;->getInstance()Landroid/hardware/input/InputManager;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/hardware/input/InputManager;->setPointerIconType(I)V

    return v6

    :cond_59
    iget v5, p0, Landroid/view/ViewRootImpl;->mPointerIconType:I

    if-ne v5, v7, :cond_70

    iget-object v5, p0, Landroid/view/ViewRootImpl;->mCustomPointerIcon:Landroid/view/PointerIcon;

    invoke-virtual {v1, v5}, Landroid/view/PointerIcon;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_70

    iput-object v1, p0, Landroid/view/ViewRootImpl;->mCustomPointerIcon:Landroid/view/PointerIcon;

    invoke-static {}, Landroid/hardware/input/InputManager;->getInstance()Landroid/hardware/input/InputManager;

    move-result-object v5

    iget-object v7, p0, Landroid/view/ViewRootImpl;->mCustomPointerIcon:Landroid/view/PointerIcon;

    invoke-virtual {v5, v7}, Landroid/hardware/input/InputManager;->setCustomPointerIcon(Landroid/view/PointerIcon;)V

    :cond_70
    return v6

    :cond_71
    :goto_71
    iget-object v4, p0, Landroid/view/ViewRootImpl;->mTag:Ljava/lang/String;

    const-string/jumbo v5, "updatePointerIcon called with position out of bounds"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method


# virtual methods
.method addCastProjectionCallback(Landroid/view/ViewRootImpl$CastProjectionCallback;)V
    .registers 3

    sget-object v0, Landroid/view/ViewRootImpl;->mCastProjectionCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addOnBufferTransformHintChangedListener(Landroid/view/AttachedSurfaceControl$OnBufferTransformHintChangedListener;)V
    .registers 4

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Landroid/view/ViewRootImpl;->mTransformHintListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_11

    iget-object v0, p0, Landroid/view/ViewRootImpl;->mTransformHintListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    :cond_11
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "attempt to call addOnBufferTransformHintChangedListener() with a previously registered listener"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public addScrollCaptureCallback(Landroid/view/ScrollCaptureCallback;)V
    .registers 3

    iget-object v0, p0, Landroid/view/ViewRootImpl;->mRootScrollCaptureCallbacks:Ljava/util/HashSet;

    if-nez v0, :cond_b

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Landroid/view/ViewRootImpl;->mRootScrollCaptureCallbacks:Ljava/util/HashSet;

    :cond_b
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mRootScrollCaptureCallbacks:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addSurfaceChangedCallback(Landroid/view/ViewRootImpl$SurfaceChangedCallback;)V
    .registers 3

    iget-object v0, p0, Landroid/view/ViewRootImpl;->mSurfaceChangedCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method addToSync(Landroid/window/SurfaceSyncer$SyncTarget;)V
    .registers 4

    invoke-virtual {p0}, Landroid/view/ViewRootImpl;->isInLocalSync()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    :cond_7
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mSurfaceSyncer:Landroid/window/SurfaceSyncer;

    iget v1, p0, Landroid/view/ViewRootImpl;->mSyncId:I

    invoke-virtual {v0, v1, p1}, Landroid/window/SurfaceSyncer;->addToSync(ILandroid/window/SurfaceSyncer$SyncTarget;)Z

    return-void
.end method

.method public addWindowCallbacks(Landroid/view/WindowCallbacks;)V
    .registers 3

    iget-object v0, p0, Landroid/view/ViewRootImpl;->mWindowCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public applyTransactionOnDraw(Landroid/view/SurfaceControl$Transaction;)Z
    .registers 4

    iget-boolean v0, p0, Landroid/view/ViewRootImpl;->mRemoved:Z

    const/4 v1, 0x1

    if-nez v0, :cond_17

    invoke-virtual {p0}, Landroid/view/ViewRootImpl;->isHardwareEnabled()Z

    move-result v0

    if-nez v0, :cond_c

    goto :goto_17

    :cond_c
    iput-boolean v1, p0, Landroid/view/ViewRootImpl;->mHasPendingTransactions:Z

    new-instance v0, Landroid/view/ViewRootImpl$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0, p1}, Landroid/view/ViewRootImpl$$ExternalSyntheticLambda2;-><init>(Landroid/view/ViewRootImpl;Landroid/view/SurfaceControl$Transaction;)V

    invoke-virtual {p0, v0}, Landroid/view/ViewRootImpl;->registerRtFrameCallback(Landroid/graphics/HardwareRenderer$FrameDrawingCallback;)V

    goto :goto_1a

    :cond_17
    :goto_17
    invoke-virtual {p1}, Landroid/view/SurfaceControl$Transaction;->apply()V

    :goto_1a
    return v1
.end method

.method public bringChildToFront(Landroid/view/View;)V
    .registers 2

    return-void
.end method

.method public buildReparentTransaction(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;
    .registers 4

    iget-object v0, p0, Landroid/view/ViewRootImpl;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v0}, Landroid/view/SurfaceControl;->isValid()Z

    move-result v0

    if-eqz v0, :cond_14

    new-instance v0, Landroid/view/SurfaceControl$Transaction;

    invoke-direct {v0}, Landroid/view/SurfaceControl$Transaction;-><init>()V

    iget-object v1, p0, Landroid/view/ViewRootImpl;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v0, p1, v1}, Landroid/view/SurfaceControl$Transaction;->reparent(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    return-object v0

    :cond_14
    const/4 v0, 0x0

    return-object v0
.end method

.method public canResolveLayoutDirection()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public canResolveTextAlignment()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public canResolveTextDirection()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public cancelInvalidate(Landroid/view/View;)V
    .registers 4

    iget-object v0, p0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Landroid/view/ViewRootImpl$ViewRootHandler;->removeMessages(ILjava/lang/Object;)V

    iget-object v0, p0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1, p1}, Landroid/view/ViewRootImpl$ViewRootHandler;->removeMessages(ILjava/lang/Object;)V

    iget-object v0, p0, Landroid/view/ViewRootImpl;->mInvalidateOnAnimationRunnable:Landroid/view/ViewRootImpl$InvalidateOnAnimationRunnable;

    invoke-virtual {v0, p1}, Landroid/view/ViewRootImpl$InvalidateOnAnimationRunnable;->removeView(Landroid/view/View;)V

    return-void
.end method

.method changeCanvasOpacity(Z)V
    .registers 5

    iget-object v0, p0, Landroid/view/ViewRootImpl;->mTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "changeCanvasOpacity: opaque="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    iget v0, v0, Landroid/view/View;->mPrivateFlags:I

    and-int/lit16 v0, v0, 0x200

    if-nez v0, :cond_22

    const/4 v0, 0x1

    goto :goto_23

    :cond_22
    const/4 v0, 0x0

    :goto_23
    and-int/2addr p1, v0

    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v0, Landroid/view/View$AttachInfo;->mThreadedRenderer:Landroid/view/ThreadedRenderer;

    if-eqz v0, :cond_31

    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v0, Landroid/view/View$AttachInfo;->mThreadedRenderer:Landroid/view/ThreadedRenderer;

    invoke-virtual {v0, p1}, Landroid/view/ThreadedRenderer;->setOpaque(Z)V

    :cond_31
    return-void
.end method

.method checkThread()V
    .registers 3

    iget-object v0, p0, Landroid/view/ViewRootImpl;->mThread:Ljava/lang/Thread;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    if-ne v0, v1, :cond_9

    return-void

    :cond_9
    new-instance v0, Landroid/view/ViewRootImpl$CalledFromWrongThreadException;

    const-string v1, "Only the original thread that created a view hierarchy can touch its views."

    invoke-direct {v0, v1}, Landroid/view/ViewRootImpl$CalledFromWrongThreadException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public childDrawableStateChanged(Landroid/view/View;)V
    .registers 2

    return-void
.end method

.method public childHasTransientStateChanged(Landroid/view/View;Z)V
    .registers 3

    return-void
.end method

.method public clearChildFocus(Landroid/view/View;)V
    .registers 2

    invoke-virtual {p0}, Landroid/view/ViewRootImpl;->checkThread()V

    invoke-virtual {p0}, Landroid/view/ViewRootImpl;->scheduleTraversals()V

    return-void
.end method

.method public createBackgroundBlurDrawable()Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable;
    .registers 3

    iget-object v0, p0, Landroid/view/ViewRootImpl;->mBlurRegionAggregator:Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable$Aggregator;

    iget-object v1, p0, Landroid/view/ViewRootImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable$Aggregator;->createBackgroundBlurDrawable(Landroid/content/Context;)Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable;

    move-result-object v0

    return-object v0
.end method

.method public createContextMenu(Landroid/view/ContextMenu;)V
    .registers 2

    return-void
.end method

.method public debug()V
    .registers 2

    iget-object v0, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->debug()V

    return-void
.end method

.method destroyHardwareResources()V
    .registers 4

    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v0, Landroid/view/View$AttachInfo;->mThreadedRenderer:Landroid/view/ThreadedRenderer;

    if-eqz v0, :cond_29

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    iget-object v2, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v2, v2, Landroid/view/View$AttachInfo;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v2

    if-eq v1, v2, :cond_21

    iget-object v1, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v1, v1, Landroid/view/View$AttachInfo;->mHandler:Landroid/os/Handler;

    new-instance v2, Landroid/view/ViewRootImpl$$ExternalSyntheticLambda14;

    invoke-direct {v2, p0}, Landroid/view/ViewRootImpl$$ExternalSyntheticLambda14;-><init>(Landroid/view/ViewRootImpl;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->postAtFrontOfQueue(Ljava/lang/Runnable;)Z

    return-void

    :cond_21
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ThreadedRenderer;->destroyHardwareResources(Landroid/view/View;)V

    invoke-virtual {v0}, Landroid/view/ThreadedRenderer;->destroy()V

    :cond_29
    return-void
.end method

.method public detachFunctor(J)V
    .registers 3

    return-void
.end method

.method die(Z)Z
    .registers 5

    if-eqz p1, :cond_b

    iget-boolean v0, p0, Landroid/view/ViewRootImpl;->mIsInTraversal:Z

    if-nez v0, :cond_b

    invoke-virtual {p0}, Landroid/view/ViewRootImpl;->doDie()V

    const/4 v0, 0x0

    return v0

    :cond_b
    iget-boolean v0, p0, Landroid/view/ViewRootImpl;->mIsDrawing:Z

    if-nez v0, :cond_13

    invoke-direct {p0}, Landroid/view/ViewRootImpl;->destroyHardwareRenderer()V

    goto :goto_3b

    :cond_13
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Attempting to destroy the window while drawing!\n  window="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", title="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v2}, Landroid/view/WindowManager$LayoutParams;->getTitle()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_3b
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/view/ViewRootImpl$ViewRootHandler;->sendEmptyMessage(I)Z

    const/4 v0, 0x1

    return v0
.end method

.method dipToPx(I)I
    .registers 5

    iget-object v0, p0, Landroid/view/ViewRootImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v1, v0, Landroid/util/DisplayMetrics;->density:F

    int-to-float v2, p1

    mul-float/2addr v1, v2

    const/high16 v2, 0x3f000000  # 0.5f

    add-float/2addr v1, v2

    float-to-int v1, v1

    return v1
.end method

.method public dispatchAppVisibility(Z)V
    .registers 4

    iget-object v0, p0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/ViewRootImpl$ViewRootHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iput p1, v0, Landroid/os/Message;->arg1:I

    iget-object v1, p0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    invoke-virtual {v1, v0}, Landroid/view/ViewRootImpl$ViewRootHandler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public dispatchApplyInsets(Landroid/view/View;)V
    .registers 7

    const-wide/16 v0, 0x8

    const-string v2, "dispatchApplyInsets"

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    const/4 v2, 0x0

    iput-boolean v2, p0, Landroid/view/ViewRootImpl;->mApplyInsetsRequested:Z

    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Landroid/view/ViewRootImpl;->getWindowInsets(Z)Landroid/view/WindowInsets;

    move-result-object v2

    invoke-direct {p0}, Landroid/view/ViewRootImpl;->shouldDispatchCutout()Z

    move-result v3

    if-nez v3, :cond_19

    invoke-virtual {v2}, Landroid/view/WindowInsets;->consumeDisplayCutout()Landroid/view/WindowInsets;

    move-result-object v2

    :cond_19
    invoke-virtual {p1, v2}, Landroid/view/View;->dispatchApplyWindowInsets(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;

    iget-object v3, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    invoke-static {}, Landroid/view/WindowInsets$Type;->all()I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/view/WindowInsets;->getInsets(I)Landroid/graphics/Insets;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/view/View$AttachInfo;->delayNotifyContentCaptureInsetsEvent(Landroid/graphics/Insets;)V

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    return-void
.end method

.method public dispatchBlurRegions([[FJ)V
    .registers 7

    invoke-virtual {p0}, Landroid/view/ViewRootImpl;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/SurfaceControl;->isValid()Z

    move-result v1

    if-nez v1, :cond_b

    return-void

    :cond_b
    new-instance v1, Landroid/view/SurfaceControl$Transaction;

    invoke-direct {v1}, Landroid/view/SurfaceControl$Transaction;-><init>()V

    invoke-virtual {v1, v0, p1}, Landroid/view/SurfaceControl$Transaction;->setBlurRegions(Landroid/view/SurfaceControl;[[F)Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {p0}, Landroid/view/ViewRootImpl;->useBLAST()Z

    move-result v2

    if-eqz v2, :cond_20

    iget-object v2, p0, Landroid/view/ViewRootImpl;->mBlastBufferQueue:Landroid/graphics/BLASTBufferQueue;

    if-eqz v2, :cond_20

    invoke-virtual {v2, v1, p2, p3}, Landroid/graphics/BLASTBufferQueue;->mergeWithNextTransaction(Landroid/view/SurfaceControl$Transaction;J)V

    :cond_20
    return-void
.end method

.method public dispatchCheckFocus()V
    .registers 3

    iget-object v0, p0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Landroid/view/ViewRootImpl$ViewRootHandler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_f

    iget-object v0, p0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    invoke-virtual {v0, v1}, Landroid/view/ViewRootImpl$ViewRootHandler;->sendEmptyMessage(I)Z

    :cond_f
    return-void
.end method

.method public dispatchCloseSystemDialogs(Ljava/lang/String;)V
    .registers 4

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    const/16 v1, 0xe

    iput v1, v0, Landroid/os/Message;->what:I

    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v1, p0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    invoke-virtual {v1, v0}, Landroid/view/ViewRootImpl$ViewRootHandler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method dispatchDetachedFromWindow()V
    .registers 4

    iget-object v0, p0, Landroid/view/ViewRootImpl;->mInsetsController:Landroid/view/InsetsController;

    invoke-virtual {v0}, Landroid/view/InsetsController;->onWindowFocusLost()V

    iget-object v0, p0, Landroid/view/ViewRootImpl;->mFirstInputStage:Landroid/view/ViewRootImpl$InputStage;

    invoke-virtual {v0}, Landroid/view/ViewRootImpl$InputStage;->onDetachedFromWindow()V

    iget-object v0, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    if-eqz v0, :cond_1f

    iget-object v0, v0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v0, :cond_1f

    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v0, Landroid/view/View$AttachInfo;->mTreeObserver:Landroid/view/ViewTreeObserver;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->dispatchOnWindowAttachedChange(Z)V

    iget-object v0, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->dispatchDetachedFromWindow()V

    :cond_1f
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAccessibilityInteractionConnectionManager:Landroid/view/ViewRootImpl$AccessibilityInteractionConnectionManager;

    invoke-virtual {v0}, Landroid/view/ViewRootImpl$AccessibilityInteractionConnectionManager;->ensureNoConnection()V

    invoke-direct {p0}, Landroid/view/ViewRootImpl;->removeSendWindowContentChangedCallback()V

    invoke-direct {p0}, Landroid/view/ViewRootImpl;->destroyHardwareRenderer()V

    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0}, Landroid/view/ViewRootImpl;->setAccessibilityFocus(Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;)V

    iget-object v1, p0, Landroid/view/ViewRootImpl;->mInsetsController:Landroid/view/InsetsController;

    invoke-virtual {v1}, Landroid/view/InsetsController;->cancelExistingAnimations()V

    iget-object v1, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->assignParent(Landroid/view/ViewParent;)V

    iput-object v0, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    iget-object v1, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iput-object v0, v1, Landroid/view/View$AttachInfo;->mRootView:Landroid/view/View;

    invoke-direct {p0}, Landroid/view/ViewRootImpl;->destroySurface()V

    iget-object v1, p0, Landroid/view/ViewRootImpl;->mInputQueueCallback:Landroid/view/InputQueue$Callback;

    if-eqz v1, :cond_55

    iget-object v2, p0, Landroid/view/ViewRootImpl;->mInputQueue:Landroid/view/InputQueue;

    if-eqz v2, :cond_55

    invoke-interface {v1, v2}, Landroid/view/InputQueue$Callback;->onInputQueueDestroyed(Landroid/view/InputQueue;)V

    iget-object v1, p0, Landroid/view/ViewRootImpl;->mInputQueue:Landroid/view/InputQueue;

    invoke-virtual {v1}, Landroid/view/InputQueue;->dispose()V

    iput-object v0, p0, Landroid/view/ViewRootImpl;->mInputQueueCallback:Landroid/view/InputQueue$Callback;

    iput-object v0, p0, Landroid/view/ViewRootImpl;->mInputQueue:Landroid/view/InputQueue;

    :cond_55
    :try_start_55
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mWindowSession:Landroid/view/IWindowSession;

    iget-object v2, p0, Landroid/view/ViewRootImpl;->mWindow:Landroid/view/ViewRootImpl$W;

    invoke-interface {v1, v2}, Landroid/view/IWindowSession;->remove(Landroid/view/IWindow;)V
    :try_end_5c
    .catch Landroid/os/RemoteException; {:try_start_55 .. :try_end_5c} :catch_5d

    goto :goto_5e

    :catch_5d
    move-exception v1

    :goto_5e
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mInputEventReceiver:Landroid/view/ViewRootImpl$WindowInputEventReceiver;

    if-eqz v1, :cond_67

    invoke-virtual {v1}, Landroid/view/ViewRootImpl$WindowInputEventReceiver;->dispose()V

    iput-object v0, p0, Landroid/view/ViewRootImpl;->mInputEventReceiver:Landroid/view/ViewRootImpl$WindowInputEventReceiver;

    :cond_67
    invoke-direct {p0}, Landroid/view/ViewRootImpl;->unregisterListeners()V

    invoke-virtual {p0}, Landroid/view/ViewRootImpl;->unscheduleTraversals()V

    return-void
.end method

.method public dispatchDragEvent(Landroid/view/DragEvent;)V
    .registers 5

    invoke-virtual {p1}, Landroid/view/DragEvent;->getAction()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_f

    const/16 v0, 0x10

    iget-object v1, p0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    invoke-virtual {v1, v0}, Landroid/view/ViewRootImpl$ViewRootHandler;->removeMessages(I)V

    goto :goto_11

    :cond_f
    const/16 v0, 0xf

    :goto_11
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    invoke-virtual {v1, v0, p1}, Landroid/view/ViewRootImpl$ViewRootHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    iget-object v2, p0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    invoke-virtual {v2, v1}, Landroid/view/ViewRootImpl$ViewRootHandler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public dispatchEnterDragArea(Landroid/view/MotionEvent;)V
    .registers 5

    const/16 v0, 0x3eb

    iget-object v1, p0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    const/16 v2, 0x3eb

    invoke-virtual {v1, v2, p1}, Landroid/view/ViewRootImpl$ViewRootHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    iget-object v2, p0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    invoke-virtual {v2, v1}, Landroid/view/ViewRootImpl$ViewRootHandler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public dispatchFreeFormStackModeChanged(ILmiui/app/MiuiFreeFormManager$MiuiFreeFormStackInfo;)V
    .registers 5

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    iput p1, v0, Landroid/os/Message;->arg1:I

    iput-object p2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    const/16 v1, 0x3ea

    iput v1, v0, Landroid/os/Message;->what:I

    iget-object v1, p0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    invoke-virtual {v1, v0}, Landroid/view/ViewRootImpl$ViewRootHandler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public dispatchGetNewSurface()V
    .registers 3

    iget-object v0, p0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Landroid/view/ViewRootImpl$ViewRootHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    invoke-virtual {v1, v0}, Landroid/view/ViewRootImpl$ViewRootHandler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public dispatchInputEvent(Landroid/view/InputEvent;)V
    .registers 3

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/view/ViewRootImpl;->dispatchInputEvent(Landroid/view/InputEvent;Landroid/view/InputEventReceiver;)V

    return-void
.end method

.method public dispatchInputEvent(Landroid/view/InputEvent;Landroid/view/InputEventReceiver;)V
    .registers 6

    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v0

    iput-object p1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    iput-object p2, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    iget-object v1, p0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    const/4 v2, 0x7

    invoke-virtual {v1, v2, v0}, Landroid/view/ViewRootImpl$ViewRootHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Message;->setAsynchronous(Z)V

    iget-object v2, p0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    invoke-virtual {v2, v1}, Landroid/view/ViewRootImpl$ViewRootHandler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public dispatchInvalidateDelayed(Landroid/view/View;J)V
    .registers 6

    iget-object v0, p0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Landroid/view/ViewRootImpl$ViewRootHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    invoke-virtual {v1, v0, p2, p3}, Landroid/view/ViewRootImpl$ViewRootHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method public dispatchInvalidateOnAnimation(Landroid/view/View;)V
    .registers 3

    iget-object v0, p0, Landroid/view/ViewRootImpl;->mInvalidateOnAnimationRunnable:Landroid/view/ViewRootImpl$InvalidateOnAnimationRunnable;

    invoke-virtual {v0, p1}, Landroid/view/ViewRootImpl$InvalidateOnAnimationRunnable;->addView(Landroid/view/View;)V

    return-void
.end method

.method public dispatchInvalidateRectDelayed(Landroid/view/View$AttachInfo$InvalidateInfo;J)V
    .registers 6

    iget-object v0, p0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1, p1}, Landroid/view/ViewRootImpl$ViewRootHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    invoke-virtual {v1, v0, p2, p3}, Landroid/view/ViewRootImpl$ViewRootHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method public dispatchInvalidateRectOnAnimation(Landroid/view/View$AttachInfo$InvalidateInfo;)V
    .registers 3

    iget-object v0, p0, Landroid/view/ViewRootImpl;->mInvalidateOnAnimationRunnable:Landroid/view/ViewRootImpl$InvalidateOnAnimationRunnable;

    invoke-virtual {v0, p1}, Landroid/view/ViewRootImpl$InvalidateOnAnimationRunnable;->addViewRect(Landroid/view/View$AttachInfo$InvalidateInfo;)V

    return-void
.end method

.method public final dispatchKeyEventToContentCatcher(Landroid/view/KeyEvent;)V
    .registers 4

    iget-object v0, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    if-nez v0, :cond_5

    return-void

    :cond_5
    invoke-virtual {v0}, Landroid/view/View;->getAttachedActivityInstance()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_10

    iget-object v1, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v0, p1, v1, v0}, Landroid/app/Activity;->dispatchKeyEventForCatcher(Landroid/view/KeyEvent;Landroid/view/View;Landroid/app/Activity;)V

    :cond_10
    return-void
.end method

.method public dispatchKeyFromAutofill(Landroid/view/KeyEvent;)V
    .registers 4

    iget-object v0, p0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    const/16 v1, 0xc

    invoke-virtual {v0, v1, p1}, Landroid/view/ViewRootImpl$ViewRootHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Message;->setAsynchronous(Z)V

    iget-object v1, p0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    invoke-virtual {v1, v0}, Landroid/view/ViewRootImpl$ViewRootHandler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public dispatchKeyFromIme(Landroid/view/KeyEvent;)V
    .registers 4

    iget-object v0, p0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    const/16 v1, 0xb

    invoke-virtual {v0, v1, p1}, Landroid/view/ViewRootImpl$ViewRootHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Message;->setAsynchronous(Z)V

    iget-object v1, p0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    invoke-virtual {v1, v0}, Landroid/view/ViewRootImpl$ViewRootHandler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public dispatchMoved(II)V
    .registers 8

    iget-object v0, p0, Landroid/view/ViewRootImpl;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    if-eqz v0, :cond_1c

    new-instance v0, Landroid/graphics/PointF;

    int-to-float v1, p1

    int-to-float v2, p2

    invoke-direct {v0, v1, v2}, Landroid/graphics/PointF;-><init>(FF)V

    iget-object v1, p0, Landroid/view/ViewRootImpl;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    invoke-virtual {v1, v0}, Landroid/content/res/CompatibilityInfo$Translator;->translatePointInScreenToAppWindow(Landroid/graphics/PointF;)V

    iget v1, v0, Landroid/graphics/PointF;->x:F

    float-to-double v1, v1

    const-wide/high16 v3, 0x3fe0000000000000L  # 0.5

    add-double/2addr v1, v3

    double-to-int p1, v1

    iget v1, v0, Landroid/graphics/PointF;->y:F

    float-to-double v1, v1

    add-double/2addr v1, v3

    double-to-int p2, v1

    :cond_1c
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    const/16 v1, 0x17

    invoke-virtual {v0, v1, p1, p2}, Landroid/view/ViewRootImpl$ViewRootHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    invoke-virtual {v1, v0}, Landroid/view/ViewRootImpl$ViewRootHandler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public dispatchRequestKeyboardShortcuts(Lcom/android/internal/os/IResultReceiver;I)V
    .registers 6

    iget-object v0, p0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    const/16 v1, 0x1a

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p2, v2, p1}, Landroid/view/ViewRootImpl$ViewRootHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public dispatchScrollCaptureRequest(Landroid/view/IScrollCaptureResponseListener;)V
    .registers 4

    iget-object v0, p0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    const/16 v1, 0x21

    invoke-virtual {v0, v1, p1}, Landroid/view/ViewRootImpl$ViewRootHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public dispatchUnhandledInputEvent(Landroid/view/InputEvent;)V
    .registers 3

    instance-of v0, p1, Landroid/view/MotionEvent;

    if-eqz v0, :cond_b

    move-object v0, p1

    check-cast v0, Landroid/view/MotionEvent;

    invoke-static {v0}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object p1

    :cond_b
    invoke-virtual {p0, p1}, Landroid/view/ViewRootImpl;->synthesizeInputEvent(Landroid/view/InputEvent;)V

    return-void
.end method

.method public dispatchUnhandledKeyEvent(Landroid/view/KeyEvent;)Z
    .registers 4

    iget-object v0, p0, Landroid/view/ViewRootImpl;->mUnhandledKeyManager:Landroid/view/ViewRootImpl$UnhandledKeyManager;

    iget-object v1, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v0, v1, p1}, Landroid/view/ViewRootImpl$UnhandledKeyManager;->dispatch(Landroid/view/View;Landroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public dispatchWindowShown()V
    .registers 3

    iget-object v0, p0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    const/16 v1, 0x19

    invoke-virtual {v0, v1}, Landroid/view/ViewRootImpl$ViewRootHandler;->sendEmptyMessage(I)Z

    return-void
.end method

.method doConsumeBatchedInput(J)Z
    .registers 4

    iget-object v0, p0, Landroid/view/ViewRootImpl;->mInputEventReceiver:Landroid/view/ViewRootImpl$WindowInputEventReceiver;

    if-eqz v0, :cond_9

    invoke-virtual {v0, p1, p2}, Landroid/view/ViewRootImpl$WindowInputEventReceiver;->consumeBatchedInputEvents(J)Z

    move-result v0

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    invoke-virtual {p0}, Landroid/view/ViewRootImpl;->doProcessInputEvents()V

    return v0
.end method

.method doDie()V
    .registers 8

    invoke-virtual {p0}, Landroid/view/ViewRootImpl;->checkThread()V

    monitor-enter p0

    :try_start_4
    iget-boolean v0, p0, Landroid/view/ViewRootImpl;->mRemoved:Z

    if-eqz v0, :cond_a

    monitor-exit p0

    return-void

    :cond_a
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/ViewRootImpl;->mRemoved:Z

    iget-object v1, p0, Landroid/view/ViewRootImpl;->mOnBackInvokedDispatcher:Landroid/window/WindowOnBackInvokedDispatcher;

    invoke-virtual {v1}, Landroid/window/WindowOnBackInvokedDispatcher;->detachFromWindow()V

    iget-boolean v1, p0, Landroid/view/ViewRootImpl;->mAdded:Z

    if-eqz v1, :cond_19

    invoke-virtual {p0}, Landroid/view/ViewRootImpl;->dispatchDetachedFromWindow()V

    :cond_19
    iget-boolean v1, p0, Landroid/view/ViewRootImpl;->mAdded:Z

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-eqz v1, :cond_53

    iget-boolean v1, p0, Landroid/view/ViewRootImpl;->mFirst:Z

    if-nez v1, :cond_53

    invoke-direct {p0}, Landroid/view/ViewRootImpl;->destroyHardwareRenderer()V

    iget-object v1, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    if-eqz v1, :cond_53

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    iget v4, p0, Landroid/view/ViewRootImpl;->mViewVisibility:I

    if-eq v4, v1, :cond_34

    move v4, v0

    goto :goto_35

    :cond_34
    move v4, v3

    :goto_35
    iget-boolean v5, p0, Landroid/view/ViewRootImpl;->mWindowAttributesChanged:Z
    :try_end_37
    .catchall {:try_start_4 .. :try_end_37} :catchall_66

    if-nez v5, :cond_3b

    if-eqz v4, :cond_50

    :cond_3b
    :try_start_3b
    iget-object v5, p0, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    invoke-direct {p0, v5, v1, v3}, Landroid/view/ViewRootImpl;->relayoutWindow(Landroid/view/WindowManager$LayoutParams;IZ)I

    move-result v5

    and-int/2addr v0, v5

    if-eqz v0, :cond_4e

    iget-object v0, p0, Landroid/view/ViewRootImpl;->mWindowSession:Landroid/view/IWindowSession;

    iget-object v5, p0, Landroid/view/ViewRootImpl;->mWindow:Landroid/view/ViewRootImpl$W;

    const v6, 0x7fffffff

    invoke-interface {v0, v5, v2, v6}, Landroid/view/IWindowSession;->finishDrawing(Landroid/view/IWindow;Landroid/view/SurfaceControl$Transaction;I)V
    :try_end_4e
    .catch Landroid/os/RemoteException; {:try_start_3b .. :try_end_4e} :catch_4f
    .catchall {:try_start_3b .. :try_end_4e} :catchall_66

    :cond_4e
    goto :goto_50

    :catch_4f
    move-exception v0

    :cond_50
    :goto_50
    :try_start_50
    invoke-direct {p0}, Landroid/view/ViewRootImpl;->destroySurface()V

    :cond_53
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mInsetsController:Landroid/view/InsetsController;

    invoke-virtual {v0, v2}, Landroid/view/InsetsController;->onControlsChanged([Landroid/view/InsetsSourceControl;)V

    iput-boolean v3, p0, Landroid/view/ViewRootImpl;->mAdded:Z

    invoke-static {p0}, Landroid/animation/AnimationHandler;->removeRequestor(Ljava/lang/Object;)V

    monitor-exit p0
    :try_end_5e
    .catchall {:try_start_50 .. :try_end_5e} :catchall_66

    invoke-static {}, Landroid/view/WindowManagerGlobal;->getInstance()Landroid/view/WindowManagerGlobal;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/WindowManagerGlobal;->doRemoveView(Landroid/view/ViewRootImpl;)V

    return-void

    :catchall_66
    move-exception v0

    :try_start_67
    monitor-exit p0
    :try_end_68
    .catchall {:try_start_67 .. :try_end_68} :catchall_66

    throw v0
.end method

.method doProcessInputEvents()V
    .registers 6

    iget-object v0, p0, Landroid/view/ViewRootImpl;->mBlastBufferQueue:Landroid/graphics/BLASTBufferQueue;

    invoke-static {v0}, Landroid/util/BoostFramework$ScrollOptimizer;->setBLASTBufferQueue(Landroid/graphics/BLASTBufferQueue;)V

    :goto_5
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mPendingInputEventHead:Landroid/view/ViewRootImpl$QueuedInputEvent;

    if-eqz v0, :cond_34

    iget-object v0, p0, Landroid/view/ViewRootImpl;->mPendingInputEventHead:Landroid/view/ViewRootImpl$QueuedInputEvent;

    iget-object v1, v0, Landroid/view/ViewRootImpl$QueuedInputEvent;->mNext:Landroid/view/ViewRootImpl$QueuedInputEvent;

    iput-object v1, p0, Landroid/view/ViewRootImpl;->mPendingInputEventHead:Landroid/view/ViewRootImpl$QueuedInputEvent;

    const/4 v2, 0x0

    if-nez v1, :cond_14

    iput-object v2, p0, Landroid/view/ViewRootImpl;->mPendingInputEventTail:Landroid/view/ViewRootImpl$QueuedInputEvent;

    :cond_14
    iput-object v2, v0, Landroid/view/ViewRootImpl$QueuedInputEvent;->mNext:Landroid/view/ViewRootImpl$QueuedInputEvent;

    iget v1, p0, Landroid/view/ViewRootImpl;->mPendingInputEventCount:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Landroid/view/ViewRootImpl;->mPendingInputEventCount:I

    const-wide/16 v2, 0x4

    iget-object v4, p0, Landroid/view/ViewRootImpl;->mPendingInputEventQueueLengthCounterName:Ljava/lang/String;

    invoke-static {v2, v3, v4, v1}, Landroid/os/Trace;->traceCounter(JLjava/lang/String;I)V

    iget-object v1, p0, Landroid/view/ViewRootImpl;->mViewFrameInfo:Landroid/view/ViewFrameInfo;

    iget-object v2, p0, Landroid/view/ViewRootImpl;->mInputEventAssigner:Landroid/view/InputEventAssigner;

    iget-object v3, v0, Landroid/view/ViewRootImpl$QueuedInputEvent;->mEvent:Landroid/view/InputEvent;

    invoke-virtual {v2, v3}, Landroid/view/InputEventAssigner;->processEvent(Landroid/view/InputEvent;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/ViewFrameInfo;->setInputEvent(I)V

    invoke-direct {p0, v0}, Landroid/view/ViewRootImpl;->deliverInputEvent(Landroid/view/ViewRootImpl$QueuedInputEvent;)V

    goto :goto_5

    :cond_34
    iget-boolean v0, p0, Landroid/view/ViewRootImpl;->mProcessInputEventsScheduled:Z

    if-eqz v0, :cond_42

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/view/ViewRootImpl;->mProcessInputEventsScheduled:Z

    iget-object v0, p0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    const/16 v1, 0x13

    invoke-virtual {v0, v1}, Landroid/view/ViewRootImpl$ViewRootHandler;->removeMessages(I)V

    :cond_42
    return-void
.end method

.method doTraversal()V
    .registers 4

    iget-boolean v0, p0, Landroid/view/ViewRootImpl;->mTraversalScheduled:Z

    if-eqz v0, :cond_35

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/view/ViewRootImpl;->mTraversalScheduled:Z

    iget-object v1, p0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    invoke-virtual {v1}, Landroid/view/ViewRootImpl$ViewRootHandler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Looper;->getQueue()Landroid/os/MessageQueue;

    move-result-object v1

    iget v2, p0, Landroid/view/ViewRootImpl;->mTraversalBarrier:I

    invoke-virtual {v1, v2}, Landroid/os/MessageQueue;->removeSyncBarrier(I)V

    iget-boolean v1, p0, Landroid/view/ViewRootImpl;->mProfile:Z

    if-eqz v1, :cond_1f

    const-string v1, "ViewAncestor"

    invoke-static {v1}, Landroid/os/Debug;->startMethodTracing(Ljava/lang/String;)V

    :cond_1f
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mViewRootMonitor:Landroid/os/perfdebug/ViewRootMonitor;

    invoke-virtual {v1}, Landroid/os/perfdebug/ViewRootMonitor;->monitorTraversalsBegin()V

    invoke-direct {p0}, Landroid/view/ViewRootImpl;->performTraversals()V

    iget-object v1, p0, Landroid/view/ViewRootImpl;->mViewRootMonitor:Landroid/os/perfdebug/ViewRootMonitor;

    invoke-virtual {v1}, Landroid/os/perfdebug/ViewRootMonitor;->monitorTraversalsEnd()V

    iget-boolean v1, p0, Landroid/view/ViewRootImpl;->mProfile:Z

    if-eqz v1, :cond_35

    invoke-static {}, Landroid/os/Debug;->stopMethodTracing()V

    iput-boolean v0, p0, Landroid/view/ViewRootImpl;->mProfile:Z

    :cond_35
    return-void
.end method

.method public dump(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .registers 6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "ViewRoot:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "mAdded="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Landroid/view/ViewRootImpl;->mAdded:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "mRemoved="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Landroid/view/ViewRootImpl;->mRemoved:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "mStopped="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Landroid/view/ViewRootImpl;->mStopped:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "mPausedForTransition="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Landroid/view/ViewRootImpl;->mPausedForTransition:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "mConsumeBatchedInputScheduled="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Landroid/view/ViewRootImpl;->mConsumeBatchedInputScheduled:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "mConsumeBatchedInputImmediatelyScheduled="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Landroid/view/ViewRootImpl;->mConsumeBatchedInputImmediatelyScheduled:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "mPendingInputEventCount="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/view/ViewRootImpl;->mPendingInputEventCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "mProcessInputEventsScheduled="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Landroid/view/ViewRootImpl;->mProcessInputEventsScheduled:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "mTraversalScheduled="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Landroid/view/ViewRootImpl;->mTraversalScheduled:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-boolean v1, p0, Landroid/view/ViewRootImpl;->mTraversalScheduled:Z

    if-eqz v1, :cond_154

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " (barrier="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/view/ViewRootImpl;->mTraversalBarrier:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_154
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "mIsAmbientMode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Landroid/view/ViewRootImpl;->mIsAmbientMode:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "mUnbufferedInputSource="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/view/ViewRootImpl;->mUnbufferedInputSource:I

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v1, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v1, :cond_1b3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "mAttachInfo= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    invoke-virtual {v1, v0, p2}, Landroid/view/View$AttachInfo;->dump(Ljava/lang/String;Ljava/io/PrintWriter;)V

    goto :goto_1ca

    :cond_1b3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "mAttachInfo=<null>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :goto_1ca
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mFirstInputStage:Landroid/view/ViewRootImpl$InputStage;

    invoke-virtual {v1, v0, p2}, Landroid/view/ViewRootImpl$InputStage;->dump(Ljava/lang/String;Ljava/io/PrintWriter;)V

    iget-object v1, p0, Landroid/view/ViewRootImpl;->mInputEventReceiver:Landroid/view/ViewRootImpl$WindowInputEventReceiver;

    if-eqz v1, :cond_1d6

    invoke-virtual {v1, v0, p2}, Landroid/view/ViewRootImpl$WindowInputEventReceiver;->dump(Ljava/lang/String;Ljava/io/PrintWriter;)V

    :cond_1d6
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mChoreographer:Landroid/view/Choreographer;

    invoke-virtual {v1, p1, p2}, Landroid/view/Choreographer;->dump(Ljava/lang/String;Ljava/io/PrintWriter;)V

    iget-object v1, p0, Landroid/view/ViewRootImpl;->mInsetsController:Landroid/view/InsetsController;

    invoke-virtual {v1, p1, p2}, Landroid/view/InsetsController;->dump(Ljava/lang/String;Ljava/io/PrintWriter;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "View Hierarchy:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v1, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-direct {p0, v0, p2, v1}, Landroid/view/ViewRootImpl;->dumpViewHierarchy(Ljava/lang/String;Ljava/io/PrintWriter;Landroid/view/View;)V

    return-void
.end method

.method public dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V
    .registers 11

    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v0

    iget-object v2, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-static {v2}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-wide v3, 0x10900000001L

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    iget-object v2, p0, Landroid/view/ViewRootImpl;->mDisplay:Landroid/view/Display;

    invoke-virtual {v2}, Landroid/view/Display;->getDisplayId()I

    move-result v2

    const-wide v3, 0x10500000002L

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    iget-boolean v2, p0, Landroid/view/ViewRootImpl;->mAppVisible:Z

    const-wide v3, 0x10800000003L

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    iget v2, p0, Landroid/view/ViewRootImpl;->mHeight:I

    const-wide v3, 0x10500000005L

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    iget v2, p0, Landroid/view/ViewRootImpl;->mWidth:I

    const-wide v3, 0x10500000004L

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    iget-boolean v2, p0, Landroid/view/ViewRootImpl;->mIsAnimating:Z

    const-wide v3, 0x10800000006L

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    iget-object v2, p0, Landroid/view/ViewRootImpl;->mVisRect:Landroid/graphics/Rect;

    const-wide v3, 0x10b00000007L

    invoke-virtual {v2, p1, v3, v4}, Landroid/graphics/Rect;->dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V

    iget-boolean v2, p0, Landroid/view/ViewRootImpl;->mIsDrawing:Z

    const-wide v5, 0x10800000008L

    invoke-virtual {p1, v5, v6, v2}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    iget-boolean v2, p0, Landroid/view/ViewRootImpl;->mAdded:Z

    const-wide v5, 0x10800000009L

    invoke-virtual {p1, v5, v6, v2}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    iget-object v2, p0, Landroid/view/ViewRootImpl;->mWinFrame:Landroid/graphics/Rect;

    const-wide v5, 0x10b0000000aL

    invoke-virtual {v2, p1, v5, v6}, Landroid/graphics/Rect;->dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V

    iget-object v2, p0, Landroid/view/ViewRootImpl;->mLastWindowInsets:Landroid/view/WindowInsets;

    invoke-static {v2}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-wide v5, 0x1090000000cL

    invoke-virtual {p1, v5, v6, v2}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    iget v2, p0, Landroid/view/ViewRootImpl;->mSoftInputMode:I

    invoke-static {v2}, Lcom/android/internal/inputmethod/InputMethodDebug;->softInputModeToString(I)Ljava/lang/String;

    move-result-object v2

    const-wide v5, 0x1090000000dL

    invoke-virtual {p1, v5, v6, v2}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    iget v2, p0, Landroid/view/ViewRootImpl;->mScrollY:I

    const-wide v5, 0x1050000000eL

    invoke-virtual {p1, v5, v6, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    iget v2, p0, Landroid/view/ViewRootImpl;->mCurScrollY:I

    const-wide v5, 0x1050000000fL

    invoke-virtual {p1, v5, v6, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    iget-boolean v2, p0, Landroid/view/ViewRootImpl;->mRemoved:Z

    const-wide v5, 0x10800000010L

    invoke-virtual {p1, v5, v6, v2}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    iget-object v2, p0, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    const-wide v5, 0x10b00000011L

    invoke-virtual {v2, p1, v5, v6}, Landroid/view/WindowManager$LayoutParams;->dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V

    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    iget-object v2, p0, Landroid/view/ViewRootImpl;->mInsetsController:Landroid/view/InsetsController;

    const-wide v5, 0x10b00000004L

    invoke-virtual {v2, p1, v5, v6}, Landroid/view/InsetsController;->dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V

    iget-object v2, p0, Landroid/view/ViewRootImpl;->mImeFocusController:Landroid/view/ImeFocusController;

    invoke-virtual {v2, p1, v3, v4}, Landroid/view/ImeFocusController;->dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V

    return-void
.end method

.method dumpGfxInfo(Ljava/io/PrintWriter;Ljava/io/FileDescriptor;[Ljava/lang/String;)V
    .registers 6

    invoke-direct {p0, p3}, Landroid/view/ViewRootImpl;->updateGfxInfoDynamicLog([Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2a

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\n  dynamic VRI BBQ Log. prop:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/view/ViewRootImpl;->mPropDynamicLog:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " dynamic:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/view/ViewRootImpl;->mDynamicLog:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_2a
    return-void
.end method

.method enqueueInputEvent(Landroid/view/InputEvent;)V
    .registers 4

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1, v1}, Landroid/view/ViewRootImpl;->enqueueInputEvent(Landroid/view/InputEvent;Landroid/view/InputEventReceiver;IZ)V

    return-void
.end method

.method enqueueInputEvent(Landroid/view/InputEvent;Landroid/view/InputEventReceiver;IZ)V
    .registers 13

    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewRootImpl;->obtainQueuedInputEvent(Landroid/view/InputEvent;Landroid/view/InputEventReceiver;I)Landroid/view/ViewRootImpl$QueuedInputEvent;

    move-result-object v0

    instance-of v1, p1, Landroid/view/MotionEvent;

    const/4 v2, 0x0

    const/4 v3, 0x2

    const v4, 0xf232

    const/4 v5, 0x1

    if-eqz v1, :cond_2c

    move-object v1, p1

    check-cast v1, Landroid/view/MotionEvent;

    invoke-virtual {v1}, Landroid/view/MotionEvent;->getAction()I

    move-result v6

    const/4 v7, 0x3

    if-ne v6, v7, :cond_4d

    new-array v3, v3, [Ljava/lang/Object;

    const-string v6, "Motion - Cancel"

    aput-object v6, v3, v2

    invoke-virtual {p0}, Landroid/view/ViewRootImpl;->getTitle()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v3, v5

    invoke-static {v4, v3}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    goto :goto_4d

    :cond_2c
    instance-of v1, p1, Landroid/view/KeyEvent;

    if-eqz v1, :cond_4d

    move-object v1, p1

    check-cast v1, Landroid/view/KeyEvent;

    invoke-virtual {v1}, Landroid/view/KeyEvent;->isCanceled()Z

    move-result v6

    if-eqz v6, :cond_4e

    new-array v3, v3, [Ljava/lang/Object;

    const-string v6, "Key - Cancel"

    aput-object v6, v3, v2

    invoke-virtual {p0}, Landroid/view/ViewRootImpl;->getTitle()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v3, v5

    invoke-static {v4, v3}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    goto :goto_4e

    :cond_4d
    :goto_4d
    nop

    :cond_4e
    :goto_4e
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mPendingInputEventTail:Landroid/view/ViewRootImpl$QueuedInputEvent;

    if-nez v1, :cond_57

    iput-object v0, p0, Landroid/view/ViewRootImpl;->mPendingInputEventHead:Landroid/view/ViewRootImpl$QueuedInputEvent;

    iput-object v0, p0, Landroid/view/ViewRootImpl;->mPendingInputEventTail:Landroid/view/ViewRootImpl$QueuedInputEvent;

    goto :goto_5b

    :cond_57
    iput-object v0, v1, Landroid/view/ViewRootImpl$QueuedInputEvent;->mNext:Landroid/view/ViewRootImpl$QueuedInputEvent;

    iput-object v0, p0, Landroid/view/ViewRootImpl;->mPendingInputEventTail:Landroid/view/ViewRootImpl$QueuedInputEvent;

    :goto_5b
    iget v2, p0, Landroid/view/ViewRootImpl;->mPendingInputEventCount:I

    add-int/2addr v2, v5

    iput v2, p0, Landroid/view/ViewRootImpl;->mPendingInputEventCount:I

    const-wide/16 v3, 0x4

    iget-object v5, p0, Landroid/view/ViewRootImpl;->mPendingInputEventQueueLengthCounterName:Ljava/lang/String;

    invoke-static {v3, v4, v5, v2}, Landroid/os/Trace;->traceCounter(JLjava/lang/String;I)V

    if-eqz p4, :cond_6d

    invoke-virtual {p0}, Landroid/view/ViewRootImpl;->doProcessInputEvents()V

    goto :goto_70

    :cond_6d
    invoke-direct {p0}, Landroid/view/ViewRootImpl;->scheduleProcessInputEvents()V

    :goto_70
    return-void
.end method

.method ensureTouchMode(Z)Z
    .registers 4

    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-boolean v0, v0, Landroid/view/View$AttachInfo;->mInTouchMode:Z

    if-ne v0, p1, :cond_8

    const/4 v0, 0x0

    return v0

    :cond_8
    :try_start_8
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mWindowSession:Landroid/view/IWindowSession;

    invoke-interface {v0, p1}, Landroid/view/IWindowSession;->setInTouchMode(Z)V
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_d} :catch_13

    nop

    invoke-direct {p0, p1}, Landroid/view/ViewRootImpl;->ensureTouchModeLocally(Z)Z

    move-result v0

    return v0

    :catch_13
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public findOnBackInvokedDispatcherForChild(Landroid/view/View;Landroid/view/View;)Landroid/window/OnBackInvokedDispatcher;
    .registers 4

    invoke-virtual {p0}, Landroid/view/ViewRootImpl;->getOnBackInvokedDispatcher()Landroid/window/WindowOnBackInvokedDispatcher;

    move-result-object v0

    return-object v0
.end method

.method public focusSearch(Landroid/view/View;I)Landroid/view/View;
    .registers 5

    invoke-virtual {p0}, Landroid/view/ViewRootImpl;->checkThread()V

    iget-object v0, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    instance-of v0, v0, Landroid/view/ViewGroup;

    if-nez v0, :cond_b

    const/4 v0, 0x0

    return-object v0

    :cond_b
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v0

    iget-object v1, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v0, v1, p1, p2}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public focusableViewAvailable(Landroid/view/View;)V
    .registers 6

    invoke-virtual {p0}, Landroid/view/ViewRootImpl;->checkThread()V

    iget-object v0, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    if-eqz v0, :cond_39

    invoke-virtual {v0}, Landroid/view/View;->hasFocus()Z

    move-result v0

    if-nez v0, :cond_1b

    sget-boolean v0, Landroid/view/ViewRootImpl;->sAlwaysAssignFocus:Z

    if-nez v0, :cond_17

    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-boolean v0, v0, Landroid/view/View$AttachInfo;->mInTouchMode:Z

    if-nez v0, :cond_39

    :cond_17
    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    goto :goto_39

    :cond_1b
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->findFocus()Landroid/view/View;

    move-result-object v0

    instance-of v1, v0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_39

    move-object v1, v0

    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getDescendantFocusability()I

    move-result v2

    const/high16 v3, 0x40000

    if-ne v2, v3, :cond_39

    invoke-static {p1, v0}, Landroid/view/ViewRootImpl;->isViewDescendantOf(Landroid/view/View;Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_39

    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    :cond_39
    :goto_39
    return-void
.end method

.method forceDisableBLAST()V
    .registers 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/ViewRootImpl;->mForceDisableBLAST:Z

    return-void
.end method

.method forceWmRelayout()V
    .registers 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/ViewRootImpl;->mForceNextWindowRelayout:Z

    invoke-virtual {p0}, Landroid/view/ViewRootImpl;->scheduleTraversals()V

    return-void
.end method

.method public getAccessibilityEmbeddedConnection()Landroid/view/accessibility/IAccessibilityEmbeddedConnection;
    .registers 2

    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAccessibilityEmbeddedConnection:Landroid/view/accessibility/IAccessibilityEmbeddedConnection;

    if-nez v0, :cond_b

    new-instance v0, Landroid/view/AccessibilityEmbeddedConnection;

    invoke-direct {v0, p0}, Landroid/view/AccessibilityEmbeddedConnection;-><init>(Landroid/view/ViewRootImpl;)V

    iput-object v0, p0, Landroid/view/ViewRootImpl;->mAccessibilityEmbeddedConnection:Landroid/view/accessibility/IAccessibilityEmbeddedConnection;

    :cond_b
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAccessibilityEmbeddedConnection:Landroid/view/accessibility/IAccessibilityEmbeddedConnection;

    return-object v0
.end method

.method public getAccessibilityFocusedHost()Landroid/view/View;
    .registers 2

    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAccessibilityFocusedHost:Landroid/view/View;

    return-object v0
.end method

.method public getAccessibilityFocusedVirtualView()Landroid/view/accessibility/AccessibilityNodeInfo;
    .registers 2

    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAccessibilityFocusedVirtualView:Landroid/view/accessibility/AccessibilityNodeInfo;

    return-object v0
.end method

.method public getAccessibilityInteractionController()Landroid/view/AccessibilityInteractionController;
    .registers 3

    iget-object v0, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    if-eqz v0, :cond_12

    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAccessibilityInteractionController:Landroid/view/AccessibilityInteractionController;

    if-nez v0, :cond_f

    new-instance v0, Landroid/view/AccessibilityInteractionController;

    invoke-direct {v0, p0}, Landroid/view/AccessibilityInteractionController;-><init>(Landroid/view/ViewRootImpl;)V

    iput-object v0, p0, Landroid/view/ViewRootImpl;->mAccessibilityInteractionController:Landroid/view/AccessibilityInteractionController;

    :cond_f
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAccessibilityInteractionController:Landroid/view/AccessibilityInteractionController;

    return-object v0

    :cond_12
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "getAccessibilityInteractionController called when there is no mView"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getBoundsLayer()Landroid/view/SurfaceControl;
    .registers 4

    iget-object v0, p0, Landroid/view/ViewRootImpl;->mBoundsLayer:Landroid/view/SurfaceControl;

    if-nez v0, :cond_52

    new-instance v0, Landroid/view/SurfaceControl$Builder;

    iget-object v1, p0, Landroid/view/ViewRootImpl;->mSurfaceSession:Landroid/view/SurfaceSession;

    invoke-direct {v0, v1}, Landroid/view/SurfaceControl$Builder;-><init>(Landroid/view/SurfaceSession;)V

    invoke-virtual {v0}, Landroid/view/SurfaceControl$Builder;->setContainerLayer()Landroid/view/SurfaceControl$Builder;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Bounds for - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Landroid/view/ViewRootImpl;->getTitle()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/SurfaceControl$Builder;->setName(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/view/ViewRootImpl;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/SurfaceControl$Builder;->setParent(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Builder;

    move-result-object v0

    const-string v1, "ViewRootImpl.getBoundsLayer"

    invoke-virtual {v0, v1}, Landroid/view/SurfaceControl$Builder;->setCallsite(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/SurfaceControl$Builder;->build()Landroid/view/SurfaceControl;

    move-result-object v0

    iput-object v0, p0, Landroid/view/ViewRootImpl;->mBoundsLayer:Landroid/view/SurfaceControl;

    iget-object v0, p0, Landroid/view/ViewRootImpl;->mTransaction:Landroid/view/SurfaceControl$Transaction;

    invoke-direct {p0, v0}, Landroid/view/ViewRootImpl;->setBoundsLayerCrop(Landroid/view/SurfaceControl$Transaction;)V

    iget-object v0, p0, Landroid/view/ViewRootImpl;->mTransaction:Landroid/view/SurfaceControl$Transaction;

    iget-object v1, p0, Landroid/view/ViewRootImpl;->mBoundsLayer:Landroid/view/SurfaceControl;

    invoke-virtual {v0, v1}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/SurfaceControl$Transaction;->apply()V

    :cond_52
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mBoundsLayer:Landroid/view/SurfaceControl;

    return-object v0
.end method

.method public getBufferTransformHint()I
    .registers 2

    iget-object v0, p0, Landroid/view/ViewRootImpl;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v0}, Landroid/view/SurfaceControl;->getTransformHint()I

    move-result v0

    return v0
.end method

.method public getChildVisibleRect(Landroid/view/View;Landroid/graphics/Rect;Landroid/graphics/Point;)Z
    .registers 7

    iget-object v0, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    if-ne p1, v0, :cond_e

    iget v0, p0, Landroid/view/ViewRootImpl;->mWidth:I

    iget v1, p0, Landroid/view/ViewRootImpl;->mHeight:I

    const/4 v2, 0x0

    invoke-virtual {p2, v2, v2, v0, v1}, Landroid/graphics/Rect;->intersect(IIII)Z

    move-result v0

    return v0

    :cond_e
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "child is not mine, honest!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method getDisplayFrame(Landroid/graphics/Rect;)V
    .registers 3

    iget-object v0, p0, Landroid/view/ViewRootImpl;->mTmpFrames:Landroid/window/ClientWindowFrames;

    iget-object v0, v0, Landroid/window/ClientWindowFrames;->displayFrame:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    return-void
.end method

.method public getDisplayId()I
    .registers 2

    iget-object v0, p0, Landroid/view/ViewRootImpl;->mDisplay:Landroid/view/Display;

    invoke-virtual {v0}, Landroid/view/Display;->getDisplayId()I

    move-result v0

    return v0
.end method

.method getGfxInfo()Landroid/view/ViewRootImpl$GfxInfo;
    .registers 3

    new-instance v0, Landroid/view/ViewRootImpl$GfxInfo;

    invoke-direct {v0}, Landroid/view/ViewRootImpl$GfxInfo;-><init>()V

    iget-object v1, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    if-eqz v1, :cond_c

    invoke-static {v1, v0}, Landroid/view/ViewRootImpl;->appendGfxInfo(Landroid/view/View;Landroid/view/ViewRootImpl$GfxInfo;)V

    :cond_c
    return-object v0
.end method

.method public getHandWritingCurrentKeyboardType()I
    .registers 2

    iget-object v0, p0, Landroid/view/ViewRootImpl;->mHandWritingStub:Landroid/view/HandWritingStub;

    invoke-interface {v0}, Landroid/view/HandWritingStub;->getCurrentKeyboardType()I

    move-result v0

    return v0
.end method

.method public getHandwritingInitiator()Landroid/view/HandwritingInitiator;
    .registers 2

    iget-object v0, p0, Landroid/view/ViewRootImpl;->mHandwritingInitiator:Landroid/view/HandwritingInitiator;

    return-object v0
.end method

.method public getHeight()I
    .registers 2

    iget v0, p0, Landroid/view/ViewRootImpl;->mHeight:I

    return v0
.end method

.method getHostVisibility()I
    .registers 3

    iget-object v0, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    if-eqz v0, :cond_11

    iget-boolean v1, p0, Landroid/view/ViewRootImpl;->mAppVisible:Z

    if-nez v1, :cond_c

    iget-boolean v1, p0, Landroid/view/ViewRootImpl;->mForceDecorViewVisibility:Z

    if-eqz v1, :cond_11

    :cond_c
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    goto :goto_13

    :cond_11
    const/16 v0, 0x8

    :goto_13
    return v0
.end method

.method public getImeFocusController()Landroid/view/ImeFocusController;
    .registers 2

    iget-object v0, p0, Landroid/view/ViewRootImpl;->mImeFocusController:Landroid/view/ImeFocusController;

    return-object v0
.end method

.method public getInputToken()Landroid/os/IBinder;
    .registers 2

    iget-object v0, p0, Landroid/view/ViewRootImpl;->mInputEventReceiver:Landroid/view/ViewRootImpl$WindowInputEventReceiver;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    return-object v0

    :cond_6
    invoke-virtual {v0}, Landroid/view/ViewRootImpl$WindowInputEventReceiver;->getToken()Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method

.method public getInsetsController()Landroid/view/InsetsController;
    .registers 2

    iget-object v0, p0, Landroid/view/ViewRootImpl;->mInsetsController:Landroid/view/InsetsController;

    return-object v0
.end method

.method public getIsProjectionMode()Z
    .registers 2

    iget-boolean v0, p0, Landroid/view/ViewRootImpl;->mIsProjectionMode:Z

    return v0
.end method

.method public getLastTouchDeviceId()I
    .registers 2

    iget v0, p0, Landroid/view/ViewRootImpl;->mLastTouchDeviceId:I

    return v0
.end method

.method public getLastTouchPoint(Landroid/graphics/Point;)V
    .registers 3

    iget-object v0, p0, Landroid/view/ViewRootImpl;->mLastTouchPoint:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->x:F

    float-to-int v0, v0

    iput v0, p1, Landroid/graphics/Point;->x:I

    iget-object v0, p0, Landroid/view/ViewRootImpl;->mLastTouchPoint:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->y:F

    float-to-int v0, v0

    iput v0, p1, Landroid/graphics/Point;->y:I

    return-void
.end method

.method public getLastTouchSource()I
    .registers 2

    iget v0, p0, Landroid/view/ViewRootImpl;->mLastTouchSource:I

    return v0
.end method

.method public getLayoutDirection()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method final getLocation()Landroid/view/WindowLeaked;
    .registers 2

    iget-object v0, p0, Landroid/view/ViewRootImpl;->mLocation:Landroid/view/WindowLeaked;

    return-object v0
.end method

.method public getOffsetTimer()Ljava/util/Timer;
    .registers 2

    iget-object v0, p0, Landroid/view/ViewRootImpl;->mOffsetTimer:Ljava/util/Timer;

    return-object v0
.end method

.method public getOnBackInvokedDispatcher()Landroid/window/WindowOnBackInvokedDispatcher;
    .registers 2

    iget-object v0, p0, Landroid/view/ViewRootImpl;->mOnBackInvokedDispatcher:Landroid/window/WindowOnBackInvokedDispatcher;

    return-object v0
.end method

.method public getParent()Landroid/view/ViewParent;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method public getParentForAccessibility()Landroid/view/ViewParent;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method public getRootSystemGestureExclusionRects()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/graphics/Rect;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroid/view/ViewRootImpl;->mGestureExclusionTracker:Landroid/view/ViewRootRectTracker;

    invoke-virtual {v0}, Landroid/view/ViewRootRectTracker;->getRootRects()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getScreenAntiBurnDimRatio()F
    .registers 2

    iget v0, p0, Landroid/view/ViewRootImpl;->mScreenAntiBurnDimRatio:F

    return v0
.end method

.method public getScreenAntiBurnEnabled()Z
    .registers 2

    iget-boolean v0, p0, Landroid/view/ViewRootImpl;->mScreenAntiBurnEnabled:Z

    return v0
.end method

.method public getScreenAntiBurnLayout()Ljava/util/ArrayList;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroid/view/ViewRootImpl;->mScreenAntiBurnLayout:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getScreenAntiBurnLocation()[I
    .registers 2

    iget-object v0, p0, Landroid/view/ViewRootImpl;->mScreenAntiBurnLocation:[I

    return-object v0
.end method

.method public getScreenAntiBurnMode()I
    .registers 2

    iget v0, p0, Landroid/view/ViewRootImpl;->mScreenAntiBurnMode:I

    return v0
.end method

.method public getScreenAntiBurnOffsetEnabled()Z
    .registers 2

    iget-boolean v0, p0, Landroid/view/ViewRootImpl;->mScreenAntiBurnEnableOffset:Z

    return v0
.end method

.method public getScreenAntiBurnTolerance()I
    .registers 2

    iget v0, p0, Landroid/view/ViewRootImpl;->mScreenAntiBurnTolerance:I

    return v0
.end method

.method public getScrollCaptureRequestTimeout()J
    .registers 3

    iget-wide v0, p0, Landroid/view/ViewRootImpl;->mScrollCaptureRequestTimeout:J

    return-wide v0
.end method

.method public getSurfaceControl()Landroid/view/SurfaceControl;
    .registers 2

    iget-object v0, p0, Landroid/view/ViewRootImpl;->mSurfaceControl:Landroid/view/SurfaceControl;

    return-object v0
.end method

.method getSurfaceSequenceId()I
    .registers 2

    iget v0, p0, Landroid/view/ViewRootImpl;->mSurfaceSequenceId:I

    return v0
.end method

.method public getTextAlignment()I
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public getTextDirection()I
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public getTitle()Ljava/lang/CharSequence;
    .registers 2

    iget-object v0, p0, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v0}, Landroid/view/WindowManager$LayoutParams;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method protected getUpdatedFrameInfo()Landroid/graphics/FrameInfo;
    .registers 3

    iget-object v0, p0, Landroid/view/ViewRootImpl;->mChoreographer:Landroid/view/Choreographer;

    iget-object v0, v0, Landroid/view/Choreographer;->mFrameInfo:Landroid/graphics/FrameInfo;

    iget-object v1, p0, Landroid/view/ViewRootImpl;->mViewFrameInfo:Landroid/view/ViewFrameInfo;

    invoke-virtual {v1, v0}, Landroid/view/ViewFrameInfo;->populateFrameInfo(Landroid/graphics/FrameInfo;)V

    iget-object v1, p0, Landroid/view/ViewRootImpl;->mViewFrameInfo:Landroid/view/ViewFrameInfo;

    invoke-virtual {v1}, Landroid/view/ViewFrameInfo;->reset()V

    iget-object v1, p0, Landroid/view/ViewRootImpl;->mInputEventAssigner:Landroid/view/InputEventAssigner;

    invoke-virtual {v1}, Landroid/view/InputEventAssigner;->notifyFrameProcessed()V

    return-object v0
.end method

.method public getUseForceDark()Z
    .registers 2

    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v0, Landroid/view/View$AttachInfo;->mThreadedRenderer:Landroid/view/ThreadedRenderer;

    if-eqz v0, :cond_12

    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v0, Landroid/view/View$AttachInfo;->mThreadedRenderer:Landroid/view/ThreadedRenderer;

    invoke-virtual {v0}, Landroid/view/ThreadedRenderer;->getForceDark()Z

    move-result v0

    if-eqz v0, :cond_12

    const/4 v0, 0x1

    goto :goto_13

    :cond_12
    const/4 v0, 0x0

    :goto_13
    return v0
.end method

.method public getView()Landroid/view/View;
    .registers 2

    iget-object v0, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    return-object v0
.end method

.method public getWidth()I
    .registers 2

    iget v0, p0, Landroid/view/ViewRootImpl;->mWidth:I

    return v0
.end method

.method public getWindowFlags()I
    .registers 2

    iget-object v0, p0, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    return v0
.end method

.method getWindowInsets(Z)Landroid/view/WindowInsets;
    .registers 12

    iget-object v0, p0, Landroid/view/ViewRootImpl;->mLastWindowInsets:Landroid/view/WindowInsets;

    if-eqz v0, :cond_6

    if-eqz p1, :cond_7a

    :cond_6
    invoke-direct {p0}, Landroid/view/ViewRootImpl;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v1, p0, Landroid/view/ViewRootImpl;->mInsetsController:Landroid/view/InsetsController;

    invoke-virtual {v0}, Landroid/content/res/Configuration;->isScreenRound()Z

    move-result v2

    iget-object v3, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-boolean v3, v3, Landroid/view/View$AttachInfo;->mAlwaysConsumeSystemBars:Z

    iget-object v4, p0, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget v4, v4, Landroid/view/WindowManager$LayoutParams;->type:I

    iget-object v5, v0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v5}, Landroid/app/WindowConfiguration;->getWindowingMode()I

    move-result v5

    iget-object v6, p0, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget v6, v6, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    iget-object v7, p0, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget v7, v7, Landroid/view/WindowManager$LayoutParams;->flags:I

    iget-object v8, p0, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget v8, v8, Landroid/view/WindowManager$LayoutParams;->systemUiVisibility:I

    iget-object v9, p0, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget v9, v9, Landroid/view/WindowManager$LayoutParams;->subtreeSystemUiVisibility:I

    or-int/2addr v8, v9

    invoke-virtual/range {v1 .. v8}, Landroid/view/InsetsController;->calculateInsets(ZZIIIII)Landroid/view/WindowInsets;

    move-result-object v1

    iput-object v1, p0, Landroid/view/ViewRootImpl;->mLastWindowInsets:Landroid/view/WindowInsets;

    iget-object v1, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v1, v1, Landroid/view/View$AttachInfo;->mContentInsets:Landroid/graphics/Rect;

    iget-object v2, p0, Landroid/view/ViewRootImpl;->mLastWindowInsets:Landroid/view/WindowInsets;

    invoke-virtual {v2}, Landroid/view/WindowInsets;->getSystemWindowInsets()Landroid/graphics/Insets;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Insets;->toRect()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object v1, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v1, v1, Landroid/view/View$AttachInfo;->mStableInsets:Landroid/graphics/Rect;

    iget-object v2, p0, Landroid/view/ViewRootImpl;->mLastWindowInsets:Landroid/view/WindowInsets;

    invoke-virtual {v2}, Landroid/view/WindowInsets;->getStableInsets()Landroid/graphics/Insets;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Insets;->toRect()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object v1, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v1, v1, Landroid/view/View$AttachInfo;->mVisibleInsets:Landroid/graphics/Rect;

    iget-object v2, p0, Landroid/view/ViewRootImpl;->mInsetsController:Landroid/view/InsetsController;

    iget-object v3, p0, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget v3, v3, Landroid/view/WindowManager$LayoutParams;->type:I

    iget-object v4, v0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v4}, Landroid/app/WindowConfiguration;->getWindowingMode()I

    move-result v4

    iget-object v5, p0, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget v5, v5, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    iget-object v6, p0, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget v6, v6, Landroid/view/WindowManager$LayoutParams;->flags:I

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/view/InsetsController;->calculateVisibleInsets(IIII)Landroid/graphics/Insets;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Insets;->toRect()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    :cond_7a
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mLastWindowInsets:Landroid/view/WindowInsets;

    return-object v0
.end method

.method getWindowSession()Landroid/view/IWindowSession;
    .registers 2

    iget-object v0, p0, Landroid/view/ViewRootImpl;->mWindowSession:Landroid/view/IWindowSession;

    return-object v0
.end method

.method public getWindowToken()Landroid/os/IBinder;
    .registers 2

    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v0, Landroid/view/View$AttachInfo;->mWindowToken:Landroid/os/IBinder;

    return-object v0
.end method

.method getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V
    .registers 5

    iget-object v0, p0, Landroid/view/ViewRootImpl;->mTmpFrames:Landroid/window/ClientWindowFrames;

    iget-object v0, v0, Landroid/window/ClientWindowFrames;->displayFrame:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v0, Landroid/view/View$AttachInfo;->mVisibleInsets:Landroid/graphics/Rect;

    iget v1, p1, Landroid/graphics/Rect;->left:I

    iget v2, v0, Landroid/graphics/Rect;->left:I

    add-int/2addr v1, v2

    iput v1, p1, Landroid/graphics/Rect;->left:I

    iget v1, p1, Landroid/graphics/Rect;->top:I

    iget v2, v0, Landroid/graphics/Rect;->top:I

    add-int/2addr v1, v2

    iput v1, p1, Landroid/graphics/Rect;->top:I

    iget v1, p1, Landroid/graphics/Rect;->right:I

    iget v2, v0, Landroid/graphics/Rect;->right:I

    sub-int/2addr v1, v2

    iput v1, p1, Landroid/graphics/Rect;->right:I

    iget v1, p1, Landroid/graphics/Rect;->bottom:I

    iget v2, v0, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v1, v2

    iput v1, p1, Landroid/graphics/Rect;->bottom:I

    return-void
.end method

.method handleAppVisibility(Z)V
    .registers 6

    iget-boolean v0, p0, Landroid/view/ViewRootImpl;->mAppVisible:Z

    if-eq v0, p1, :cond_3f

    invoke-virtual {p0}, Landroid/view/ViewRootImpl;->getHostVisibility()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_e

    move v0, v2

    goto :goto_f

    :cond_e
    move v0, v1

    :goto_f
    iput-boolean p1, p0, Landroid/view/ViewRootImpl;->mAppVisible:Z

    iget-object v3, p0, Landroid/view/ViewRootImpl;->mViewRootMonitor:Landroid/os/perfdebug/ViewRootMonitor;

    invoke-virtual {v3, p1}, Landroid/os/perfdebug/ViewRootMonitor;->onAppVisibilityChanged(Z)V

    invoke-virtual {p0}, Landroid/view/ViewRootImpl;->getHostVisibility()I

    move-result v3

    if-nez v3, :cond_1d

    move v1, v2

    :cond_1d
    if-eq v0, v1, :cond_24

    iput-boolean v2, p0, Landroid/view/ViewRootImpl;->mAppVisibilityChanged:Z

    invoke-virtual {p0}, Landroid/view/ViewRootImpl;->scheduleTraversals()V

    :cond_24
    iget-boolean v2, p0, Landroid/view/ViewRootImpl;->mAppVisible:Z

    if-nez v2, :cond_2b

    invoke-static {}, Landroid/view/WindowManagerGlobal;->trimForeground()V

    :cond_2b
    iget-boolean v2, p0, Landroid/view/ViewRootImpl;->mAppVisible:Z

    if-eqz v2, :cond_36

    invoke-static {}, Landroid/view/ForceDarkHelperStub;->getInstance()Landroid/view/ForceDarkHelperStub;

    move-result-object v2

    invoke-interface {v2, p0}, Landroid/view/ForceDarkHelperStub;->updateForceDarkMode(Landroid/view/ViewRootImpl;)Z

    :cond_36
    iget-boolean v2, p0, Landroid/view/ViewRootImpl;->mRemoved:Z

    if-nez v2, :cond_3f

    iget-boolean v2, p0, Landroid/view/ViewRootImpl;->mAppVisible:Z

    invoke-static {v2, p0}, Landroid/animation/AnimationHandler;->requestAnimatorsEnabled(ZLjava/lang/Object;)V

    :cond_3f
    return-void
.end method

.method handleCastModeChange()V
    .registers 4

    const/4 v0, 0x0

    :goto_1
    sget-object v1, Landroid/view/ViewRootImpl;->mCastProjectionCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_15

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/ViewRootImpl$CastProjectionCallback;

    invoke-interface {v1}, Landroid/view/ViewRootImpl$CastProjectionCallback;->castModeChanged()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_15
    return-void
.end method

.method public handleDispatchWindowShown()V
    .registers 2

    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v0, Landroid/view/View$AttachInfo;->mTreeObserver:Landroid/view/ViewTreeObserver;

    invoke-virtual {v0}, Landroid/view/ViewTreeObserver;->dispatchOnWindowShown()V

    return-void
.end method

.method handleFreeFormStackModeChanged(ILmiui/app/MiuiFreeFormManager$MiuiFreeFormStackInfo;)V
    .registers 4

    iget-object v0, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    if-eqz v0, :cond_7

    invoke-virtual {v0, p1, p2}, Landroid/view/View;->dispatchFreeFormStackModeChanged(ILmiui/app/MiuiFreeFormManager$MiuiFreeFormStackInfo;)V

    :cond_7
    return-void
.end method

.method handleFreeformDragArea(Landroid/view/MotionEvent;)V
    .registers 3

    iget-object v0, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    if-eqz v0, :cond_7

    invoke-virtual {v0, p1}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    :cond_7
    return-void
.end method

.method handleGetNewSurface()V
    .registers 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/ViewRootImpl;->mNewSurfaceNeeded:Z

    iput-boolean v0, p0, Landroid/view/ViewRootImpl;->mFullRedrawNeeded:Z

    invoke-virtual {p0}, Landroid/view/ViewRootImpl;->scheduleTraversals()V

    return-void
.end method

.method handleProjectionModeChange()V
    .registers 4

    const/4 v0, 0x0

    :goto_1
    sget-object v1, Landroid/view/ViewRootImpl;->mCastProjectionCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_15

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/ViewRootImpl$CastProjectionCallback;

    invoke-interface {v1}, Landroid/view/ViewRootImpl$CastProjectionCallback;->projectionModeChanged()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_15
    return-void
.end method

.method public handleRequestKeyboardShortcuts(Lcom/android/internal/os/IResultReceiver;I)V
    .registers 6

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v2, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    if-eqz v2, :cond_11

    invoke-virtual {v2, v1, p2}, Landroid/view/View;->requestKeyboardShortcuts(Ljava/util/List;I)V

    :cond_11
    const-string/jumbo v2, "shortcuts_array"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    const/4 v2, 0x0

    :try_start_18
    invoke-interface {p1, v2, v0}, Lcom/android/internal/os/IResultReceiver;->send(ILandroid/os/Bundle;)V
    :try_end_1b
    .catch Landroid/os/RemoteException; {:try_start_18 .. :try_end_1b} :catch_1c

    goto :goto_1d

    :catch_1c
    move-exception v2

    :goto_1d
    return-void
.end method

.method public handleScrollCaptureRequest(Landroid/view/IScrollCaptureResponseListener;)V
    .registers 9

    new-instance v0, Landroid/view/ScrollCaptureSearchResults;

    iget-object v1, p0, Landroid/view/ViewRootImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getMainExecutor()Ljava/util/concurrent/Executor;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/view/ScrollCaptureSearchResults;-><init>(Ljava/util/concurrent/Executor;)V

    invoke-direct {p0, v0}, Landroid/view/ViewRootImpl;->collectRootScrollCaptureTargets(Landroid/view/ScrollCaptureSearchResults;)V

    invoke-virtual {p0}, Landroid/view/ViewRootImpl;->getView()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_35

    new-instance v2, Landroid/graphics/Point;

    invoke-direct {v2}, Landroid/graphics/Point;-><init>()V

    new-instance v3, Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v4

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v5

    const/4 v6, 0x0

    invoke-direct {v3, v6, v6, v4, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {p0, v1, v3, v2}, Landroid/view/ViewRootImpl;->getChildVisibleRect(Landroid/view/View;Landroid/graphics/Rect;Landroid/graphics/Point;)Z

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v4, Landroid/view/ViewRootImpl$$ExternalSyntheticLambda5;

    invoke-direct {v4, v0}, Landroid/view/ViewRootImpl$$ExternalSyntheticLambda5;-><init>(Landroid/view/ScrollCaptureSearchResults;)V

    invoke-virtual {v1, v3, v2, v4}, Landroid/view/View;->dispatchScrollCaptureSearch(Landroid/graphics/Rect;Landroid/graphics/Point;Ljava/util/function/Consumer;)V

    :cond_35
    new-instance v2, Landroid/view/ViewRootImpl$$ExternalSyntheticLambda6;

    invoke-direct {v2, p0, p1, v0}, Landroid/view/ViewRootImpl$$ExternalSyntheticLambda6;-><init>(Landroid/view/ViewRootImpl;Landroid/view/IScrollCaptureResponseListener;Landroid/view/ScrollCaptureSearchResults;)V

    invoke-virtual {v0, v2}, Landroid/view/ScrollCaptureSearchResults;->setOnCompleteListener(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Landroid/view/ScrollCaptureSearchResults;->isComplete()Z

    move-result v3

    if-nez v3, :cond_54

    iget-object v3, p0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v4, Landroid/view/ViewRootImpl$$ExternalSyntheticLambda7;

    invoke-direct {v4, v0}, Landroid/view/ViewRootImpl$$ExternalSyntheticLambda7;-><init>(Landroid/view/ScrollCaptureSearchResults;)V

    invoke-virtual {p0}, Landroid/view/ViewRootImpl;->getScrollCaptureRequestTimeout()J

    move-result-wide v5

    invoke-virtual {v3, v4, v5, v6}, Landroid/view/ViewRootImpl$ViewRootHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_54
    return-void
.end method

.method hasPointerCapture()Z
    .registers 2

    iget-boolean v0, p0, Landroid/view/ViewRootImpl;->mPointerCapture:Z

    return v0
.end method

.method public initOffsetTimer()V
    .registers 2

    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Landroid/view/ViewRootImpl;->mOffsetTimer:Ljava/util/Timer;

    return-void
.end method

.method public initScreenAntiBurn()V
    .registers 14

    invoke-static {}, Lmiui/utils/GetCameraOccupierStub;->getInstance()Lmiui/utils/GetCameraOccupierStub;

    move-result-object v0

    iget-object v1, p0, Landroid/view/ViewRootImpl;->mBasePackageName:Ljava/lang/String;

    invoke-interface {v0, v1}, Lmiui/utils/GetCameraOccupierStub;->getScreenAntiBurnData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_d

    return-void

    :cond_d
    invoke-direct {p0}, Landroid/view/ViewRootImpl;->getNavBarMode()I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Data="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " NavBarMode"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "AntiBurn"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v2, 0x3e9

    const/16 v3, 0x3e8

    const/4 v4, 0x1

    const/4 v5, 0x0

    :try_start_39
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_f5

    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string/jumbo v7, "mode"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v7

    iput v7, p0, Landroid/view/ViewRootImpl;->mScreenAntiBurnMode:I
    :try_end_4d
    .catch Lorg/json/JSONException; {:try_start_39 .. :try_end_4d} :catch_f6

    const-string v8, "enable_offset"

    const-string v9, "dim_ratio"

    if-ne v7, v3, :cond_83

    :try_start_53
    new-instance v7, Lorg/json/JSONArray;

    const-string/jumbo v10, "layout"

    invoke-virtual {v6, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v7, v10}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    const/4 v10, 0x0

    :goto_60
    invoke-virtual {v7}, Lorg/json/JSONArray;->length()I

    move-result v11

    if-ge v10, v11, :cond_72

    iget-object v11, p0, Landroid/view/ViewRootImpl;->mScreenAntiBurnLayout:Ljava/util/ArrayList;

    invoke-virtual {v7, v10}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v10, v10, 0x1

    goto :goto_60

    :cond_72
    invoke-virtual {v6, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v9

    iput v9, p0, Landroid/view/ViewRootImpl;->mScreenAntiBurnDimRatio:F

    invoke-virtual {v6, v8}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v8

    iput-boolean v8, p0, Landroid/view/ViewRootImpl;->mScreenAntiBurnEnableOffset:Z

    goto :goto_f5

    :cond_83
    if-ne v7, v2, :cond_f5

    invoke-direct {p0}, Landroid/view/ViewRootImpl;->getWindowBoundsInsetSystemBars()Landroid/graphics/Rect;

    move-result-object v7

    iget v7, v7, Landroid/graphics/Rect;->right:I

    const/16 v10, 0x4b0

    const/4 v11, 0x2

    if-ge v7, v10, :cond_b1

    iget-object v7, p0, Landroid/view/ViewRootImpl;->mScreenAntiBurnLocation:[I

    const-string/jumbo v10, "y"

    invoke-virtual {v6, v10}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v10

    aput v10, v7, v5

    iget-object v7, p0, Landroid/view/ViewRootImpl;->mScreenAntiBurnLocation:[I

    const-string/jumbo v10, "width"

    invoke-virtual {v6, v10}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v10

    aput v10, v7, v4

    iget-object v7, p0, Landroid/view/ViewRootImpl;->mScreenAntiBurnLocation:[I

    const-string v10, "height"

    invoke-virtual {v6, v10}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v10

    aput v10, v7, v11

    goto :goto_d1

    :cond_b1
    iget-object v7, p0, Landroid/view/ViewRootImpl;->mScreenAntiBurnLocation:[I

    const-string/jumbo v10, "y_2k"

    invoke-virtual {v6, v10}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v10

    aput v10, v7, v5

    iget-object v7, p0, Landroid/view/ViewRootImpl;->mScreenAntiBurnLocation:[I

    const-string/jumbo v10, "width_2k"

    invoke-virtual {v6, v10}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v10

    aput v10, v7, v4

    iget-object v7, p0, Landroid/view/ViewRootImpl;->mScreenAntiBurnLocation:[I

    const-string v10, "height_2k"

    invoke-virtual {v6, v10}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v10

    aput v10, v7, v11

    :goto_d1
    if-nez v1, :cond_db

    iget-object v7, p0, Landroid/view/ViewRootImpl;->mScreenAntiBurnLocation:[I

    aget v10, v7, v5

    add-int/lit8 v10, v10, -0x56

    aput v10, v7, v5

    :cond_db
    const-string/jumbo v7, "tolerance"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v7

    iput v7, p0, Landroid/view/ViewRootImpl;->mScreenAntiBurnTolerance:I

    invoke-virtual {v6, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v7

    iput v7, p0, Landroid/view/ViewRootImpl;->mScreenAntiBurnDimRatio:F

    invoke-virtual {v6, v8}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v7

    iput-boolean v7, p0, Landroid/view/ViewRootImpl;->mScreenAntiBurnEnableOffset:Z
    :try_end_f4
    .catch Lorg/json/JSONException; {:try_start_53 .. :try_end_f4} :catch_f6

    nop

    :cond_f5
    :goto_f5
    goto :goto_fc

    :catch_f6
    move-exception v6

    const-string v7, "Could not parse JSON object "

    invoke-static {v7, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_fc
    nop

    const-string/jumbo v6, "persist.sys.screen_anti_burn_enabled"

    invoke-static {v6, v5}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    if-eqz v6, :cond_10d

    iget v6, p0, Landroid/view/ViewRootImpl;->mScreenAntiBurnMode:I

    if-eq v6, v3, :cond_10c

    if-ne v6, v2, :cond_10d

    :cond_10c
    goto :goto_10e

    :cond_10d
    move v4, v5

    :goto_10e
    iput-boolean v4, p0, Landroid/view/ViewRootImpl;->mScreenAntiBurnEnabled:Z

    return-void
.end method

.method invalidate()V
    .registers 5

    iget-object v0, p0, Landroid/view/ViewRootImpl;->mDirty:Landroid/graphics/Rect;

    iget v1, p0, Landroid/view/ViewRootImpl;->mWidth:I

    iget v2, p0, Landroid/view/ViewRootImpl;->mHeight:I

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/Rect;->set(IIII)V

    iget-boolean v0, p0, Landroid/view/ViewRootImpl;->mWillDrawSoon:Z

    if-nez v0, :cond_11

    invoke-virtual {p0}, Landroid/view/ViewRootImpl;->scheduleTraversals()V

    :cond_11
    return-void
.end method

.method public invalidateChild(Landroid/view/View;Landroid/graphics/Rect;)V
    .registers 4

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p2}, Landroid/view/ViewRootImpl;->invalidateChildInParent([ILandroid/graphics/Rect;)Landroid/view/ViewParent;

    return-void
.end method

.method public invalidateChildInParent([ILandroid/graphics/Rect;)Landroid/view/ViewParent;
    .registers 6

    invoke-virtual {p0}, Landroid/view/ViewRootImpl;->checkThread()V

    const/4 v0, 0x0

    if-nez p2, :cond_a

    invoke-virtual {p0}, Landroid/view/ViewRootImpl;->invalidate()V

    return-object v0

    :cond_a
    invoke-virtual {p2}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_15

    iget-boolean v1, p0, Landroid/view/ViewRootImpl;->mIsAnimating:Z

    if-nez v1, :cond_15

    return-object v0

    :cond_15
    iget v1, p0, Landroid/view/ViewRootImpl;->mCurScrollY:I

    if-nez v1, :cond_1d

    iget-object v1, p0, Landroid/view/ViewRootImpl;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    if-eqz v1, :cond_3e

    :cond_1d
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v1, p2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object p2, p0, Landroid/view/ViewRootImpl;->mTempRect:Landroid/graphics/Rect;

    iget v1, p0, Landroid/view/ViewRootImpl;->mCurScrollY:I

    if-eqz v1, :cond_2d

    const/4 v2, 0x0

    neg-int v1, v1

    invoke-virtual {p2, v2, v1}, Landroid/graphics/Rect;->offset(II)V

    :cond_2d
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    if-eqz v1, :cond_34

    invoke-virtual {v1, p2}, Landroid/content/res/CompatibilityInfo$Translator;->translateRectInAppWindowToScreen(Landroid/graphics/Rect;)V

    :cond_34
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-boolean v1, v1, Landroid/view/View$AttachInfo;->mScalingRequired:Z

    if-eqz v1, :cond_3e

    const/4 v1, -0x1

    invoke-virtual {p2, v1, v1}, Landroid/graphics/Rect;->inset(II)V

    :cond_3e
    invoke-direct {p0, p2}, Landroid/view/ViewRootImpl;->invalidateRectOnScreen(Landroid/graphics/Rect;)V

    return-object v0
.end method

.method invalidateWorld(Landroid/view/View;)V
    .registers 5

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    instance-of v0, p1, Landroid/view/ViewGroup;

    if-eqz v0, :cond_1b

    move-object v0, p1

    check-cast v0, Landroid/view/ViewGroup;

    const/4 v1, 0x0

    :goto_b
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_1b

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/view/ViewRootImpl;->invalidateWorld(Landroid/view/View;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    :cond_1b
    return-void
.end method

.method public isHandWritingKeyboardTypeChanged()Z
    .registers 2

    iget-object v0, p0, Landroid/view/ViewRootImpl;->mHandWritingStub:Landroid/view/HandWritingStub;

    invoke-interface {v0}, Landroid/view/HandWritingStub;->isKeyboardTypeChanged()Z

    move-result v0

    return v0
.end method

.method public isHardwareEnabled()Z
    .registers 2

    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v0, Landroid/view/View$AttachInfo;->mThreadedRenderer:Landroid/view/ThreadedRenderer;

    if-eqz v0, :cond_12

    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v0, Landroid/view/View$AttachInfo;->mThreadedRenderer:Landroid/view/ThreadedRenderer;

    invoke-virtual {v0}, Landroid/view/ThreadedRenderer;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_12

    const/4 v0, 0x1

    goto :goto_13

    :cond_12
    const/4 v0, 0x0

    :goto_13
    return v0
.end method

.method isInLayout()Z
    .registers 2

    iget-boolean v0, p0, Landroid/view/ViewRootImpl;->mInLayout:Z

    return v0
.end method

.method public isInLocalSync()Z
    .registers 3

    iget v0, p0, Landroid/view/ViewRootImpl;->mSyncId:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_7

    const/4 v0, 0x1

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    return v0
.end method

.method public isLayoutDirectionResolved()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public isLayoutRequested()Z
    .registers 2

    iget-boolean v0, p0, Landroid/view/ViewRootImpl;->mLayoutRequested:Z

    return v0
.end method

.method public isTextAlignmentResolved()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public isTextDirectionResolved()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method keepClearRectsChanged()V
    .registers 7

    iget-object v0, p0, Landroid/view/ViewRootImpl;->mKeepClearRectsTracker:Landroid/view/ViewRootRectTracker;

    invoke-virtual {v0}, Landroid/view/ViewRootRectTracker;->computeChanges()Z

    move-result v0

    iget-object v1, p0, Landroid/view/ViewRootImpl;->mUnrestrictedKeepClearRectsTracker:Landroid/view/ViewRootRectTracker;

    invoke-virtual {v1}, Landroid/view/ViewRootRectTracker;->computeChanges()Z

    move-result v1

    if-nez v0, :cond_10

    if-eqz v1, :cond_2b

    :cond_10
    iget-object v2, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    if-eqz v2, :cond_2b

    const/4 v2, 0x1

    iput-boolean v2, p0, Landroid/view/ViewRootImpl;->mHasPendingKeepClearAreaChange:Z

    iget-object v2, p0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    const/16 v3, 0x24

    invoke-virtual {v2, v3}, Landroid/view/ViewRootImpl$ViewRootHandler;->hasMessages(I)Z

    move-result v2

    if-nez v2, :cond_2b

    iget-object v2, p0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    const-wide/16 v4, 0x64

    invoke-virtual {v2, v3, v4, v5}, Landroid/view/ViewRootImpl$ViewRootHandler;->sendEmptyMessageDelayed(IJ)Z

    invoke-virtual {p0}, Landroid/view/ViewRootImpl;->reportKeepClearAreasChanged()V

    :cond_2b
    return-void
.end method

.method public keyboardNavigationClusterSearch(Landroid/view/View;I)Landroid/view/View;
    .registers 5

    invoke-virtual {p0}, Landroid/view/ViewRootImpl;->checkThread()V

    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v0

    iget-object v1, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v0, v1, p1, p2}, Landroid/view/FocusFinder;->findNextKeyboardNavigationCluster(Landroid/view/View;Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method synthetic lambda$addFrameCommitCallbackIfNeeded$7$android-view-ViewRootImpl(Ljava/util/ArrayList;Z)V
    .registers 6

    invoke-direct {p0}, Landroid/view/ViewRootImpl;->isDynamicLog()Z

    move-result v0

    if-eqz v0, :cond_1e

    iget-object v0, p0, Landroid/view/ViewRootImpl;->mTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Received frameCommitCallback didProduceBuffer="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1e
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    new-instance v1, Landroid/view/ViewRootImpl$$ExternalSyntheticLambda15;

    invoke-direct {v1, p1}, Landroid/view/ViewRootImpl$$ExternalSyntheticLambda15;-><init>(Ljava/util/ArrayList;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewRootImpl$ViewRootHandler;->postAtFrontOfQueue(Ljava/lang/Runnable;)Z

    return-void
.end method

.method synthetic lambda$addHdrDimmerFramDrawingCallback$13$android-view-ViewRootImpl(J)V
    .registers 10

    iget-object v0, p0, Landroid/view/ViewRootImpl;->mSupportHDRAppList:Ljava/util/ArrayList;

    monitor-enter v0

    :try_start_3
    invoke-direct {p0}, Landroid/view/ViewRootImpl;->updateHdrDimmerState()V

    iget-boolean v1, p0, Landroid/view/ViewRootImpl;->mHdrDimmerEnabled:Z

    if-eqz v1, :cond_33

    invoke-virtual {p0}, Landroid/view/ViewRootImpl;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/SurfaceControl;->isValid()Z

    move-result v2

    if-nez v2, :cond_16

    monitor-exit v0

    return-void

    :cond_16
    new-instance v2, Landroid/view/SurfaceControl$Transaction;

    invoke-direct {v2}, Landroid/view/SurfaceControl$Transaction;-><init>()V

    iget-object v3, p0, Landroid/view/ViewRootImpl;->mSurfaceControl:Landroid/view/SurfaceControl;

    iget-boolean v4, p0, Landroid/view/ViewRootImpl;->mHdrDimmerEnabled:Z

    iget-object v5, p0, Landroid/view/ViewRootImpl;->mHdrBrightRegions:Ljava/util/List;

    iget-object v6, p0, Landroid/view/ViewRootImpl;->mHdrDimRegions:Ljava/util/List;

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/view/SurfaceControl$Transaction;->setHdrDimmerRt(Landroid/view/SurfaceControl;ZLjava/util/List;Ljava/util/List;)Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {p0}, Landroid/view/ViewRootImpl;->useBLAST()Z

    move-result v3

    if-eqz v3, :cond_33

    iget-object v3, p0, Landroid/view/ViewRootImpl;->mBlastBufferQueue:Landroid/graphics/BLASTBufferQueue;

    if-eqz v3, :cond_33

    invoke-virtual {v3, v2, p1, p2}, Landroid/graphics/BLASTBufferQueue;->mergeWithNextTransaction(Landroid/view/SurfaceControl$Transaction;J)V

    :cond_33
    monitor-exit v0

    return-void

    :catchall_35
    move-exception v1

    monitor-exit v0
    :try_end_37
    .catchall {:try_start_3 .. :try_end_37} :catchall_35

    throw v1
.end method

.method synthetic lambda$applyTransactionOnDraw$11$android-view-ViewRootImpl(Landroid/view/SurfaceControl$Transaction;J)V
    .registers 4

    invoke-virtual {p0, p1, p2, p3}, Landroid/view/ViewRootImpl;->mergeWithNextTransaction(Landroid/view/SurfaceControl$Transaction;J)V

    return-void
.end method

.method synthetic lambda$createSyncIfNeeded$4$android-view-ViewRootImpl(Landroid/view/SurfaceControl$Transaction;I)V
    .registers 4

    iget-object v0, p0, Landroid/view/ViewRootImpl;->mSurfaceChangedTransaction:Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {v0, p1}, Landroid/view/SurfaceControl$Transaction;->merge(Landroid/view/SurfaceControl$Transaction;)Landroid/view/SurfaceControl$Transaction;

    invoke-direct {p0, p2}, Landroid/view/ViewRootImpl;->reportDrawFinished(I)V

    return-void
.end method

.method synthetic lambda$createSyncIfNeeded$5$android-view-ViewRootImpl(ILandroid/view/SurfaceControl$Transaction;)V
    .registers 5

    iget-object v0, p0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    new-instance v1, Landroid/view/ViewRootImpl$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p2, p1}, Landroid/view/ViewRootImpl$$ExternalSyntheticLambda1;-><init>(Landroid/view/ViewRootImpl;Landroid/view/SurfaceControl$Transaction;I)V

    invoke-virtual {v0, v1}, Landroid/view/ViewRootImpl$ViewRootHandler;->postAtFrontOfQueue(Ljava/lang/Runnable;)Z

    return-void
.end method

.method synthetic lambda$handleScrollCaptureRequest$10$android-view-ViewRootImpl(Landroid/view/IScrollCaptureResponseListener;Landroid/view/ScrollCaptureSearchResults;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/view/ViewRootImpl;->dispatchScrollCaptureSearchResponse(Landroid/view/IScrollCaptureResponseListener;Landroid/view/ScrollCaptureSearchResults;)V

    return-void
.end method

.method synthetic lambda$performDraw$9$android-view-ViewRootImpl(Landroid/window/SurfaceSyncer$SyncBufferCallback;)V
    .registers 4

    iget-object v0, p0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    new-instance v1, Landroid/view/ViewRootImpl$$ExternalSyntheticLambda3;

    invoke-direct {v1, p1}, Landroid/view/ViewRootImpl$$ExternalSyntheticLambda3;-><init>(Landroid/window/SurfaceSyncer$SyncBufferCallback;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewRootImpl$ViewRootHandler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method synthetic lambda$registerCompatOnBackInvokedCallback$12$android-view-ViewRootImpl()V
    .registers 2

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/view/ViewRootImpl;->sendBackKeyEvent(I)V

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/view/ViewRootImpl;->sendBackKeyEvent(I)V

    return-void
.end method

.method synthetic lambda$updateBbqDynamicLog$14$android-view-ViewRootImpl()V
    .registers 4

    iget-object v0, p0, Landroid/view/ViewRootImpl;->mTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateBbqDynamicLog prop:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Landroid/view/ViewRootImpl;->mPropDynamicLog:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " dynamic:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Landroid/view/ViewRootImpl;->mDynamicLog:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " bbq:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/view/ViewRootImpl;->mBlastBufferQueue:Landroid/graphics/BLASTBufferQueue;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Landroid/view/ViewRootImpl;->mBlastBufferQueue:Landroid/graphics/BLASTBufferQueue;

    if-eqz v0, :cond_3e

    invoke-direct {p0}, Landroid/view/ViewRootImpl;->isDynamicLog()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/BLASTBufferQueue;->setDynamicLog(I)Z

    :cond_3e
    return-void
.end method

.method synthetic lambda$updateBlastSurfaceIfNeeded$3$android-view-ViewRootImpl(Landroid/graphics/HardwareRenderer$FrameDroppedCallback;)V
    .registers 3

    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v0, Landroid/view/View$AttachInfo;->mThreadedRenderer:Landroid/view/ThreadedRenderer;

    if-eqz v0, :cond_d

    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v0, Landroid/view/View$AttachInfo;->mThreadedRenderer:Landroid/view/ThreadedRenderer;

    invoke-virtual {v0, p1}, Landroid/view/ThreadedRenderer;->setFrameDroppedCallback(Landroid/graphics/HardwareRenderer$FrameDroppedCallback;)V

    :cond_d
    return-void
.end method

.method public loadSystemProperties()V
    .registers 3

    iget-object v0, p0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    new-instance v1, Landroid/view/ViewRootImpl$7;

    invoke-direct {v1, p0}, Landroid/view/ViewRootImpl$7;-><init>(Landroid/view/ViewRootImpl;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewRootImpl$ViewRootHandler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method mergeSync(ILandroid/window/SurfaceSyncer;)V
    .registers 5

    invoke-virtual {p0}, Landroid/view/ViewRootImpl;->isInLocalSync()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    :cond_7
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mSurfaceSyncer:Landroid/window/SurfaceSyncer;

    iget v1, p0, Landroid/view/ViewRootImpl;->mSyncId:I

    invoke-virtual {v0, v1, p1, p2}, Landroid/window/SurfaceSyncer;->merge(IILandroid/window/SurfaceSyncer;)V

    return-void
.end method

.method public mergeWithNextTransaction(Landroid/view/SurfaceControl$Transaction;J)V
    .registers 5

    iget-object v0, p0, Landroid/view/ViewRootImpl;->mBlastBufferQueue:Landroid/graphics/BLASTBufferQueue;

    if-eqz v0, :cond_8

    invoke-virtual {v0, p1, p2, p3}, Landroid/graphics/BLASTBufferQueue;->mergeWithNextTransaction(Landroid/view/SurfaceControl$Transaction;J)V

    goto :goto_b

    :cond_8
    invoke-virtual {p1}, Landroid/view/SurfaceControl$Transaction;->apply()V

    :goto_b
    return-void
.end method

.method public needSurface()Z
    .registers 2

    iget-boolean v0, p0, Landroid/view/ViewRootImpl;->mFirst:Z

    if-nez v0, :cond_23

    iget-boolean v0, p0, Landroid/view/ViewRootImpl;->mForceNextWindowRelayout:Z

    if-nez v0, :cond_23

    iget-boolean v0, p0, Landroid/view/ViewRootImpl;->mNewSurfaceNeeded:Z

    if-nez v0, :cond_23

    iget-boolean v0, p0, Landroid/view/ViewRootImpl;->mAppVisibilityChanged:Z

    if-nez v0, :cond_23

    iget-boolean v0, p0, Landroid/view/ViewRootImpl;->mLayoutRequested:Z

    if-eqz v0, :cond_1c

    iget-boolean v0, p0, Landroid/view/ViewRootImpl;->mStopped:Z

    if-eqz v0, :cond_23

    iget-boolean v0, p0, Landroid/view/ViewRootImpl;->mReportNextDraw:Z

    if-nez v0, :cond_23

    :cond_1c
    iget-boolean v0, p0, Landroid/view/ViewRootImpl;->mActivityRelaunched:Z

    if-eqz v0, :cond_21

    goto :goto_23

    :cond_21
    const/4 v0, 0x0

    goto :goto_24

    :cond_23
    :goto_23
    const/4 v0, 0x1

    :goto_24
    return v0
.end method

.method public notifyCastMode(Z)V
    .registers 4

    iput-boolean p1, p0, Landroid/view/ViewRootImpl;->mIsCastMode:Z

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    const/16 v1, 0x3e8

    iput v1, v0, Landroid/os/Message;->what:I

    iget-object v1, p0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    invoke-virtual {v1, v0}, Landroid/view/ViewRootImpl$ViewRootHandler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public notifyChildRebuilt()V
    .registers 3

    iget-object v0, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    instance-of v0, v0, Lcom/android/internal/view/RootViewSurfaceTaker;

    if-eqz v0, :cond_42

    iget-object v0, p0, Landroid/view/ViewRootImpl;->mSurfaceHolderCallback:Landroid/view/SurfaceHolder$Callback2;

    if-eqz v0, :cond_f

    iget-object v1, p0, Landroid/view/ViewRootImpl;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    invoke-virtual {v1, v0}, Lcom/android/internal/view/BaseSurfaceHolder;->removeCallback(Landroid/view/SurfaceHolder$Callback;)V

    :cond_f
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    check-cast v0, Lcom/android/internal/view/RootViewSurfaceTaker;

    invoke-interface {v0}, Lcom/android/internal/view/RootViewSurfaceTaker;->willYouTakeTheSurface()Landroid/view/SurfaceHolder$Callback2;

    move-result-object v0

    iput-object v0, p0, Landroid/view/ViewRootImpl;->mSurfaceHolderCallback:Landroid/view/SurfaceHolder$Callback2;

    if-eqz v0, :cond_2e

    new-instance v0, Landroid/view/ViewRootImpl$TakenSurfaceHolder;

    invoke-direct {v0, p0}, Landroid/view/ViewRootImpl$TakenSurfaceHolder;-><init>(Landroid/view/ViewRootImpl;)V

    iput-object v0, p0, Landroid/view/ViewRootImpl;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/internal/view/BaseSurfaceHolder;->setFormat(I)V

    iget-object v0, p0, Landroid/view/ViewRootImpl;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    iget-object v1, p0, Landroid/view/ViewRootImpl;->mSurfaceHolderCallback:Landroid/view/SurfaceHolder$Callback2;

    invoke-virtual {v0, v1}, Lcom/android/internal/view/BaseSurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    goto :goto_31

    :cond_2e
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/view/ViewRootImpl;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    :goto_31
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    check-cast v0, Lcom/android/internal/view/RootViewSurfaceTaker;

    invoke-interface {v0}, Lcom/android/internal/view/RootViewSurfaceTaker;->willYouTakeTheInputQueue()Landroid/view/InputQueue$Callback;

    move-result-object v0

    iput-object v0, p0, Landroid/view/ViewRootImpl;->mInputQueueCallback:Landroid/view/InputQueue$Callback;

    if-eqz v0, :cond_42

    iget-object v1, p0, Landroid/view/ViewRootImpl;->mInputQueue:Landroid/view/InputQueue;

    invoke-interface {v0, v1}, Landroid/view/InputQueue$Callback;->onInputQueueCreated(Landroid/view/InputQueue;)V

    :cond_42
    return-void
.end method

.method public notifyContentChangeToContentCatcher()V
    .registers 2

    iget-object v0, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    if-nez v0, :cond_5

    return-void

    :cond_5
    invoke-virtual {v0}, Landroid/view/View;->getAttachedActivityInstance()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_e

    invoke-virtual {v0}, Landroid/app/Activity;->notifyContentChange()V

    :cond_e
    return-void
.end method

.method notifyInsetsChanged()V
    .registers 3

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/ViewRootImpl;->mApplyInsetsRequested:Z

    invoke-virtual {p0}, Landroid/view/ViewRootImpl;->requestLayout()V

    sget-boolean v0, Landroid/view/View;->sForceLayoutWhenInsetsChanged:Z

    if-eqz v0, :cond_1d

    iget-object v0, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    if-eqz v0, :cond_1d

    iget-object v0, p0, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    and-int/lit16 v0, v0, 0xf0

    const/16 v1, 0x10

    if-ne v0, v1, :cond_1d

    iget-object v0, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-static {v0}, Landroid/view/ViewRootImpl;->forceLayout(Landroid/view/View;)V

    :cond_1d
    iget-boolean v0, p0, Landroid/view/ViewRootImpl;->mIsInTraversal:Z

    if-nez v0, :cond_24

    invoke-virtual {p0}, Landroid/view/ViewRootImpl;->scheduleTraversals()V

    :cond_24
    return-void
.end method

.method public notifyProjectionMode(Z)V
    .registers 4

    iput-boolean p1, p0, Landroid/view/ViewRootImpl;->mIsProjectionMode:Z

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    const/16 v1, 0x3e9

    iput v1, v0, Landroid/os/Message;->what:I

    iget-object v1, p0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    invoke-virtual {v1, v0}, Landroid/view/ViewRootImpl$ViewRootHandler;->sendMessage(Landroid/os/Message;)Z

    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/view/ViewRootImpl;->mProjectionModeChanged:Z

    return-void
.end method

.method notifyRendererOfFramePending()V
    .registers 2

    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v0, Landroid/view/View$AttachInfo;->mThreadedRenderer:Landroid/view/ThreadedRenderer;

    if-eqz v0, :cond_d

    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v0, Landroid/view/View$AttachInfo;->mThreadedRenderer:Landroid/view/ThreadedRenderer;

    invoke-virtual {v0}, Landroid/view/ThreadedRenderer;->notifyFramePending()V

    :cond_d
    return-void
.end method

.method public notifyRotationChanged(Z)V
    .registers 2

    iput-boolean p1, p0, Landroid/view/ViewRootImpl;->mIsCastModeRotationChanged:Z

    return-void
.end method

.method public notifySubtreeAccessibilityStateChanged(Landroid/view/View;Landroid/view/View;I)V
    .registers 5

    invoke-static {p2}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-direct {p0, v0, p3}, Landroid/view/ViewRootImpl;->postSendWindowContentChangedCallback(Landroid/view/View;I)V

    return-void
.end method

.method public onDescendantInvalidated(Landroid/view/View;Landroid/view/View;)V
    .registers 4

    iget v0, p2, Landroid/view/View;->mPrivateFlags:I

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_9

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/ViewRootImpl;->mIsAnimating:Z

    :cond_9
    invoke-virtual {p0}, Landroid/view/ViewRootImpl;->invalidate()V

    return-void
.end method

.method public onDescendantUnbufferedRequested()V
    .registers 2

    iget-object v0, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    iget v0, v0, Landroid/view/View;->mUnbufferedInputSource:I

    iput v0, p0, Landroid/view/ViewRootImpl;->mUnbufferedInputSource:I

    return-void
.end method

.method public onMovedToDisplay(ILandroid/content/res/Configuration;)V
    .registers 5

    iget-object v0, p0, Landroid/view/ViewRootImpl;->mDisplay:Landroid/view/Display;

    invoke-virtual {v0}, Landroid/view/Display;->getDisplayId()I

    move-result v0

    if-ne v0, p1, :cond_9

    return-void

    :cond_9
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Landroid/view/ViewRootImpl;->updateInternalDisplay(ILandroid/content/res/Resources;)V

    iget-object v0, p0, Landroid/view/ViewRootImpl;->mImeFocusController:Landroid/view/ImeFocusController;

    invoke-virtual {v0}, Landroid/view/ImeFocusController;->onMovedToDisplay()V

    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v1, p0, Landroid/view/ViewRootImpl;->mDisplay:Landroid/view/Display;

    invoke-virtual {v1}, Landroid/view/Display;->getState()I

    move-result v1

    iput v1, v0, Landroid/view/View$AttachInfo;->mDisplayState:I

    iget-object v0, p0, Landroid/view/ViewRootImpl;->mDisplay:Landroid/view/Display;

    invoke-virtual {v0}, Landroid/view/Display;->getInstallOrientation()I

    move-result v0

    iput v0, p0, Landroid/view/ViewRootImpl;->mDisplayInstallOrientation:I

    iget-object v0, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    iget-object v1, p0, Landroid/view/ViewRootImpl;->mDisplay:Landroid/view/Display;

    invoke-virtual {v0, v1, p2}, Landroid/view/View;->dispatchMovedToDisplay(Landroid/view/Display;Landroid/content/res/Configuration;)V

    return-void
.end method

.method public onNestedFling(Landroid/view/View;FFZ)Z
    .registers 6

    const/4 v0, 0x0

    return v0
.end method

.method public onNestedPreFling(Landroid/view/View;FF)Z
    .registers 5

    const/4 v0, 0x0

    return v0
.end method

.method public onNestedPrePerformAccessibilityAction(Landroid/view/View;ILandroid/os/Bundle;)Z
    .registers 5

    const/4 v0, 0x0

    return v0
.end method

.method public onNestedPreScroll(Landroid/view/View;II[I)V
    .registers 5

    return-void
.end method

.method public onNestedScroll(Landroid/view/View;IIII)V
    .registers 6

    return-void
.end method

.method public onNestedScrollAccepted(Landroid/view/View;Landroid/view/View;I)V
    .registers 4

    return-void
.end method

.method public onPostDraw(Landroid/graphics/RecordingCanvas;)V
    .registers 4

    invoke-direct {p0, p1}, Landroid/view/ViewRootImpl;->drawAccessibilityFocusedDrawableIfNeeded(Landroid/graphics/Canvas;)V

    iget-boolean v0, p0, Landroid/view/ViewRootImpl;->mUseMTRenderer:Z

    if-eqz v0, :cond_1f

    iget-object v0, p0, Landroid/view/ViewRootImpl;->mWindowCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_f
    if-ltz v0, :cond_1f

    iget-object v1, p0, Landroid/view/ViewRootImpl;->mWindowCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowCallbacks;

    invoke-interface {v1, p1}, Landroid/view/WindowCallbacks;->onPostDraw(Landroid/graphics/RecordingCanvas;)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_f

    :cond_1f
    return-void
.end method

.method public onPostRecordViewDraw()V
    .registers 2

    iget-object v0, p0, Landroid/view/ViewRootImpl;->mViewRootMonitor:Landroid/os/perfdebug/ViewRootMonitor;

    invoke-virtual {v0}, Landroid/os/perfdebug/ViewRootMonitor;->monitorViewDrawEnd()V

    return-void
.end method

.method public onPreDraw(Landroid/graphics/RecordingCanvas;)V
    .registers 4

    iget v0, p0, Landroid/view/ViewRootImpl;->mCurScrollY:I

    if-eqz v0, :cond_17

    iget v0, p0, Landroid/view/ViewRootImpl;->mHardwareYOffset:I

    if-eqz v0, :cond_17

    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v0, Landroid/view/View$AttachInfo;->mThreadedRenderer:Landroid/view/ThreadedRenderer;

    invoke-virtual {v0}, Landroid/view/ThreadedRenderer;->isOpaque()Z

    move-result v0

    if-eqz v0, :cond_17

    const/high16 v0, -0x1000000

    invoke-virtual {p1, v0}, Landroid/graphics/RecordingCanvas;->drawColor(I)V

    :cond_17
    iget v0, p0, Landroid/view/ViewRootImpl;->mHardwareXOffset:I

    neg-int v0, v0

    int-to-float v0, v0

    iget v1, p0, Landroid/view/ViewRootImpl;->mHardwareYOffset:I

    neg-int v1, v1

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/RecordingCanvas;->translate(FF)V

    return-void
.end method

.method public onPreRecordViewDraw()V
    .registers 2

    iget-object v0, p0, Landroid/view/ViewRootImpl;->mViewRootMonitor:Landroid/os/perfdebug/ViewRootMonitor;

    invoke-virtual {v0}, Landroid/os/perfdebug/ViewRootMonitor;->monitorViewDrawBegin()V

    return-void
.end method

.method public onStartNestedScroll(Landroid/view/View;Landroid/view/View;I)Z
    .registers 5

    const/4 v0, 0x0

    return v0
.end method

.method public onStopNestedScroll(Landroid/view/View;)V
    .registers 2

    return-void
.end method

.method public onWindowTitleChanged()V
    .registers 3

    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/view/View$AttachInfo;->mForceReportNewAttributes:Z

    return-void
.end method

.method outputDisplayList(Landroid/view/View;)V
    .registers 3

    iget-object v0, p1, Landroid/view/View;->mRenderNode:Landroid/graphics/RenderNode;

    invoke-virtual {v0}, Landroid/graphics/RenderNode;->output()V

    return-void
.end method

.method public performHapticFeedback(IZ)Z
    .registers 5

    iget-object v0, p0, Landroid/view/ViewRootImpl;->mDisplay:Landroid/view/Display;

    invoke-virtual {v0}, Landroid/view/Display;->getFlags()I

    move-result v0

    and-int/lit16 v0, v0, 0x400

    const/4 v1, 0x0

    if-eqz v0, :cond_c

    return v1

    :cond_c
    :try_start_c
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mWindowSession:Landroid/view/IWindowSession;

    invoke-interface {v0, p1, p2}, Landroid/view/IWindowSession;->performHapticFeedback(IZ)Z

    move-result v0
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_12} :catch_13

    return v0

    :catch_13
    move-exception v0

    return v1
.end method

.method public playSoundEffect(I)V
    .registers 6

    iget-object v0, p0, Landroid/view/ViewRootImpl;->mDisplay:Landroid/view/Display;

    invoke-virtual {v0}, Landroid/view/Display;->getFlags()I

    move-result v0

    and-int/lit16 v0, v0, 0x400

    if-eqz v0, :cond_b

    return-void

    :cond_b
    invoke-virtual {p0}, Landroid/view/ViewRootImpl;->checkThread()V

    :try_start_e
    invoke-direct {p0}, Landroid/view/ViewRootImpl;->getAudioManager()Landroid/media/AudioManager;

    move-result-object v0

    iget-boolean v1, p0, Landroid/view/ViewRootImpl;->mFastScrollSoundEffectsEnabled:Z

    if-eqz v1, :cond_25

    invoke-static {p1}, Landroid/view/SoundEffectConstants;->isNavigationRepeat(I)Z

    move-result v1

    if-eqz v1, :cond_25

    nop

    invoke-static {}, Landroid/view/SoundEffectConstants;->nextNavigationRepeatSoundEffectId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->playSoundEffect(I)V

    return-void

    :cond_25
    packed-switch p1, :pswitch_data_8a

    new-instance v1, Ljava/lang/IllegalArgumentException;

    goto :goto_44

    :pswitch_2b  #0x4, 0x8
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->playSoundEffect(I)V

    return-void

    :pswitch_30  #0x3, 0x7
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->playSoundEffect(I)V

    return-void

    :pswitch_35  #0x2, 0x6
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->playSoundEffect(I)V

    return-void

    :pswitch_3a  #0x1, 0x5
    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->playSoundEffect(I)V

    return-void

    :pswitch_3f  #0x0
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->playSoundEffect(I)V

    return-void

    :goto_44
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "unknown effect id "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " not defined in "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-class v3, Landroid/view/SoundEffectConstants;

    invoke-virtual {v3}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_6c
    .catch Ljava/lang/IllegalStateException; {:try_start_e .. :try_end_6c} :catch_6c

    :catch_6c
    move-exception v0

    iget-object v1, p0, Landroid/view/ViewRootImpl;->mTag:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "FATAL EXCEPTION when attempting to play sound effect: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    return-void

    nop

    :pswitch_data_8a
    .packed-switch 0x0
        :pswitch_3f  #00000000
        :pswitch_3a  #00000001
        :pswitch_35  #00000002
        :pswitch_30  #00000003
        :pswitch_2b  #00000004
        :pswitch_3a  #00000005
        :pswitch_35  #00000006
        :pswitch_30  #00000007
        :pswitch_2b  #00000008
    .end packed-switch
.end method

.method pokeDrawLockIfNeeded()V
    .registers 4

    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget v0, v0, Landroid/view/View$AttachInfo;->mDisplayState:I

    invoke-static {v0}, Landroid/view/Display;->isDozeState(I)Z

    move-result v0

    if-nez v0, :cond_b

    return-void

    :cond_b
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_13

    return-void

    :cond_13
    iget-boolean v0, p0, Landroid/view/ViewRootImpl;->mAdded:Z

    if-eqz v0, :cond_3a

    iget-boolean v0, p0, Landroid/view/ViewRootImpl;->mTraversalScheduled:Z

    if-eqz v0, :cond_3a

    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-boolean v0, v0, Landroid/view/View$AttachInfo;->mHasWindowFocus:Z

    if-eqz v0, :cond_3a

    sget-boolean v0, Landroid/view/ViewRootImpl;->sDrawLockPoked:Z

    if-nez v0, :cond_3a

    :try_start_25
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mWindowSession:Landroid/view/IWindowSession;

    iget-object v2, p0, Landroid/view/ViewRootImpl;->mWindow:Landroid/view/ViewRootImpl$W;

    invoke-interface {v0, v2}, Landroid/view/IWindowSession;->pokeDrawLock(Landroid/os/IBinder;)V

    const-string v0, "com.miui.aod"

    iget-object v2, p0, Landroid/view/ViewRootImpl;->mBasePackageName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_38

    sput-boolean v1, Landroid/view/ViewRootImpl;->sDrawLockPoked:Z
    :try_end_38
    .catch Landroid/os/RemoteException; {:try_start_25 .. :try_end_38} :catch_39

    :cond_38
    goto :goto_3a

    :catch_39
    move-exception v0

    :cond_3a
    :goto_3a
    return-void
.end method

.method public profile()V
    .registers 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/ViewRootImpl;->mProfile:Z

    return-void
.end method

.method public recomputeViewAttributes(Landroid/view/View;)V
    .registers 4

    invoke-virtual {p0}, Landroid/view/ViewRootImpl;->checkThread()V

    iget-object v0, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    if-ne v0, p1, :cond_13

    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/view/View$AttachInfo;->mRecomputeGlobalAttributes:Z

    iget-boolean v0, p0, Landroid/view/ViewRootImpl;->mWillDrawSoon:Z

    if-nez v0, :cond_13

    invoke-virtual {p0}, Landroid/view/ViewRootImpl;->scheduleTraversals()V

    :cond_13
    return-void
.end method

.method public refreshHandWritingLastKeyboardType()V
    .registers 2

    iget-object v0, p0, Landroid/view/ViewRootImpl;->mHandWritingStub:Landroid/view/HandWritingStub;

    invoke-interface {v0}, Landroid/view/HandWritingStub;->refreshLastKeyboardType()V

    return-void
.end method

.method public registerAnimatingRenderNode(Landroid/graphics/RenderNode;)V
    .registers 4

    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v0, Landroid/view/View$AttachInfo;->mThreadedRenderer:Landroid/view/ThreadedRenderer;

    if-eqz v0, :cond_e

    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v0, Landroid/view/View$AttachInfo;->mThreadedRenderer:Landroid/view/ThreadedRenderer;

    invoke-virtual {v0, p1}, Landroid/view/ThreadedRenderer;->registerAnimatingRenderNode(Landroid/graphics/RenderNode;)V

    goto :goto_24

    :cond_e
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v0, Landroid/view/View$AttachInfo;->mPendingAnimatingRenderNodes:Ljava/util/List;

    if-nez v0, :cond_1d

    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Landroid/view/View$AttachInfo;->mPendingAnimatingRenderNodes:Ljava/util/List;

    :cond_1d
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v0, Landroid/view/View$AttachInfo;->mPendingAnimatingRenderNodes:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_24
    return-void
.end method

.method public registerRtFrameCallback(Landroid/graphics/HardwareRenderer$FrameDrawingCallback;)V
    .registers 4

    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v0, Landroid/view/View$AttachInfo;->mThreadedRenderer:Landroid/view/ThreadedRenderer;

    if-eqz v0, :cond_12

    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v0, Landroid/view/View$AttachInfo;->mThreadedRenderer:Landroid/view/ThreadedRenderer;

    new-instance v1, Landroid/view/ViewRootImpl$2;

    invoke-direct {v1, p0, p1}, Landroid/view/ViewRootImpl$2;-><init>(Landroid/view/ViewRootImpl;Landroid/graphics/HardwareRenderer$FrameDrawingCallback;)V

    invoke-virtual {v0, v1}, Landroid/view/ThreadedRenderer;->registerRtFrameCallback(Landroid/graphics/HardwareRenderer$FrameDrawingCallback;)V

    :cond_12
    return-void
.end method

.method public registerVectorDrawableAnimator(Landroid/view/NativeVectorDrawableAnimator;)V
    .registers 3

    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v0, Landroid/view/View$AttachInfo;->mThreadedRenderer:Landroid/view/ThreadedRenderer;

    if-eqz v0, :cond_d

    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v0, Landroid/view/View$AttachInfo;->mThreadedRenderer:Landroid/view/ThreadedRenderer;

    invoke-virtual {v0, p1}, Landroid/view/ThreadedRenderer;->registerVectorDrawableAnimator(Landroid/view/NativeVectorDrawableAnimator;)V

    :cond_d
    return-void
.end method

.method removeCastProjectionCallback(Landroid/view/ViewRootImpl$CastProjectionCallback;)V
    .registers 3

    sget-object v0, Landroid/view/ViewRootImpl;->mCastProjectionCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public removeOnBufferTransformHintChangedListener(Landroid/view/AttachedSurfaceControl$OnBufferTransformHintChangedListener;)V
    .registers 3

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Landroid/view/ViewRootImpl;->mTransformHintListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public removeScrollCaptureCallback(Landroid/view/ScrollCaptureCallback;)V
    .registers 3

    iget-object v0, p0, Landroid/view/ViewRootImpl;->mRootScrollCaptureCallbacks:Ljava/util/HashSet;

    if-eqz v0, :cond_12

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    iget-object v0, p0, Landroid/view/ViewRootImpl;->mRootScrollCaptureCallbacks:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_12

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/view/ViewRootImpl;->mRootScrollCaptureCallbacks:Ljava/util/HashSet;

    :cond_12
    return-void
.end method

.method public removeSurfaceChangedCallback(Landroid/view/ViewRootImpl$SurfaceChangedCallback;)V
    .registers 3

    iget-object v0, p0, Landroid/view/ViewRootImpl;->mSurfaceChangedCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public removeWindowCallbacks(Landroid/view/WindowCallbacks;)V
    .registers 3

    iget-object v0, p0, Landroid/view/ViewRootImpl;->mWindowCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public reportActivityRelaunched()V
    .registers 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/ViewRootImpl;->mActivityRelaunched:Z

    return-void
.end method

.method public reportDrawFinish()V
    .registers 2

    iget-object v0, p0, Landroid/view/ViewRootImpl;->mWindowDrawCountDown:Ljava/util/concurrent/CountDownLatch;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    :cond_7
    return-void
.end method

.method reportKeepClearAreasChanged()V
    .registers 5

    iget-boolean v0, p0, Landroid/view/ViewRootImpl;->mHasPendingKeepClearAreaChange:Z

    if-nez v0, :cond_5

    return-void

    :cond_5
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/view/ViewRootImpl;->mHasPendingKeepClearAreaChange:Z

    iget-object v0, p0, Landroid/view/ViewRootImpl;->mKeepClearRectsTracker:Landroid/view/ViewRootRectTracker;

    invoke-virtual {v0}, Landroid/view/ViewRootRectTracker;->getLastComputedRects()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Landroid/view/ViewRootImpl;->mUnrestrictedKeepClearRectsTracker:Landroid/view/ViewRootRectTracker;

    invoke-virtual {v1}, Landroid/view/ViewRootRectTracker;->getLastComputedRects()Ljava/util/List;

    move-result-object v1

    :try_start_14
    iget-object v2, p0, Landroid/view/ViewRootImpl;->mWindowSession:Landroid/view/IWindowSession;

    iget-object v3, p0, Landroid/view/ViewRootImpl;->mWindow:Landroid/view/ViewRootImpl$W;

    invoke-interface {v2, v3, v0, v1}, Landroid/view/IWindowSession;->reportKeepClearAreasChanged(Landroid/view/IWindow;Ljava/util/List;Ljava/util/List;)V
    :try_end_1b
    .catch Landroid/os/RemoteException; {:try_start_14 .. :try_end_1b} :catch_1d

    nop

    return-void

    :catch_1d
    move-exception v2

    invoke-virtual {v2}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v3

    throw v3
.end method

.method public requestChildFocus(Landroid/view/View;Landroid/view/View;)V
    .registers 3

    invoke-virtual {p0}, Landroid/view/ViewRootImpl;->checkThread()V

    invoke-virtual {p0}, Landroid/view/ViewRootImpl;->scheduleTraversals()V

    return-void
.end method

.method public requestChildRectangleOnScreen(Landroid/view/View;Landroid/graphics/Rect;Z)Z
    .registers 8

    if-nez p2, :cond_8

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p3}, Landroid/view/ViewRootImpl;->scrollToRectOrFocus(Landroid/graphics/Rect;Z)Z

    move-result v0

    return v0

    :cond_8
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getScrollX()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v1

    invoke-virtual {p1}, Landroid/view/View;->getScrollY()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p2, v0, v1}, Landroid/graphics/Rect;->offset(II)V

    invoke-virtual {p0, p2, p3}, Landroid/view/ViewRootImpl;->scrollToRectOrFocus(Landroid/graphics/Rect;Z)Z

    move-result v0

    iget-object v1, p0, Landroid/view/ViewRootImpl;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v1, p2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object v1, p0, Landroid/view/ViewRootImpl;->mTempRect:Landroid/graphics/Rect;

    const/4 v2, 0x0

    iget v3, p0, Landroid/view/ViewRootImpl;->mCurScrollY:I

    neg-int v3, v3

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Rect;->offset(II)V

    iget-object v1, p0, Landroid/view/ViewRootImpl;->mTempRect:Landroid/graphics/Rect;

    iget-object v2, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget v2, v2, Landroid/view/View$AttachInfo;->mWindowLeft:I

    iget-object v3, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget v3, v3, Landroid/view/View$AttachInfo;->mWindowTop:I

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Rect;->offset(II)V

    :try_start_3c
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mWindowSession:Landroid/view/IWindowSession;

    iget-object v2, p0, Landroid/view/ViewRootImpl;->mWindow:Landroid/view/ViewRootImpl$W;

    iget-object v3, p0, Landroid/view/ViewRootImpl;->mTempRect:Landroid/graphics/Rect;

    invoke-interface {v1, v2, v3}, Landroid/view/IWindowSession;->onRectangleOnScreenRequested(Landroid/os/IBinder;Landroid/graphics/Rect;)V
    :try_end_45
    .catch Landroid/os/RemoteException; {:try_start_3c .. :try_end_45} :catch_46

    goto :goto_47

    :catch_46
    move-exception v1

    :goto_47
    return v0
.end method

.method public requestCompatCameraControl(ZZLandroid/app/ICompatCameraControlCallback;)V
    .registers 5

    iget-object v0, p0, Landroid/view/ViewRootImpl;->mActivityConfigCallback:Landroid/view/ViewRootImpl$ActivityConfigCallback;

    invoke-interface {v0, p1, p2, p3}, Landroid/view/ViewRootImpl$ActivityConfigCallback;->requestCompatCameraControl(ZZLandroid/app/ICompatCameraControlCallback;)V

    return-void
.end method

.method public requestDisallowInterceptTouchEvent(Z)V
    .registers 2

    return-void
.end method

.method public requestFitSystemWindows()V
    .registers 2

    invoke-virtual {p0}, Landroid/view/ViewRootImpl;->checkThread()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/ViewRootImpl;->mApplyInsetsRequested:Z

    invoke-virtual {p0}, Landroid/view/ViewRootImpl;->scheduleTraversals()V

    return-void
.end method

.method public requestInvalidateRootRenderNode()V
    .registers 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/ViewRootImpl;->mInvalidateRootRequested:Z

    return-void
.end method

.method public requestLayout()V
    .registers 2

    iget-boolean v0, p0, Landroid/view/ViewRootImpl;->mHandlingLayoutInLayoutRequest:Z

    if-nez v0, :cond_d

    invoke-virtual {p0}, Landroid/view/ViewRootImpl;->checkThread()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/ViewRootImpl;->mLayoutRequested:Z

    invoke-virtual {p0}, Landroid/view/ViewRootImpl;->scheduleTraversals()V

    :cond_d
    return-void
.end method

.method requestLayoutDuringLayout(Landroid/view/View;)Z
    .registers 4

    iget-object v0, p1, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    const/4 v1, 0x1

    if-eqz v0, :cond_1e

    iget-object v0, p1, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-nez v0, :cond_a

    goto :goto_1e

    :cond_a
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mLayoutRequesters:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_17

    iget-object v0, p0, Landroid/view/ViewRootImpl;->mLayoutRequesters:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_17
    iget-boolean v0, p0, Landroid/view/ViewRootImpl;->mHandlingLayoutInLayoutRequest:Z

    if-nez v0, :cond_1c

    return v1

    :cond_1c
    const/4 v0, 0x0

    return v0

    :cond_1e
    :goto_1e
    return v1
.end method

.method requestPointerCapture(Z)V
    .registers 5

    invoke-virtual {p0}, Landroid/view/ViewRootImpl;->getInputToken()Landroid/os/IBinder;

    move-result-object v0

    if-nez v0, :cond_e

    iget-object v1, p0, Landroid/view/ViewRootImpl;->mTag:Ljava/lang/String;

    const-string v2, "No input channel to request Pointer Capture."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_e
    invoke-static {}, Landroid/hardware/input/InputManager;->getInstance()Landroid/hardware/input/InputManager;

    move-result-object v1

    invoke-virtual {v1, v0, p1}, Landroid/hardware/input/InputManager;->requestPointerCapture(Landroid/os/IBinder;Z)V

    return-void
.end method

.method public requestSendAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z
    .registers 8

    iget-object v0, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    if-eqz v0, :cond_5e

    iget-boolean v0, p0, Landroid/view/ViewRootImpl;->mStopped:Z

    if-nez v0, :cond_5e

    iget-boolean v0, p0, Landroid/view/ViewRootImpl;->mPausedForTransition:Z

    if-eqz v0, :cond_d

    goto :goto_5e

    :cond_d
    invoke-virtual {p2}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    move-result v0

    const/16 v1, 0x800

    if-eq v0, v1, :cond_22

    iget-object v0, p0, Landroid/view/ViewRootImpl;->mSendWindowContentChangedAccessibilityEvent:Landroid/view/ViewRootImpl$SendWindowContentChangedAccessibilityEvent;

    if-eqz v0, :cond_22

    iget-object v0, v0, Landroid/view/ViewRootImpl$SendWindowContentChangedAccessibilityEvent;->mSource:Landroid/view/View;

    if-eqz v0, :cond_22

    iget-object v0, p0, Landroid/view/ViewRootImpl;->mSendWindowContentChangedAccessibilityEvent:Landroid/view/ViewRootImpl$SendWindowContentChangedAccessibilityEvent;

    invoke-virtual {v0}, Landroid/view/ViewRootImpl$SendWindowContentChangedAccessibilityEvent;->removeCallbacksAndRun()V

    :cond_22
    invoke-virtual {p2}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    move-result v0

    invoke-direct {p0, p2}, Landroid/view/ViewRootImpl;->getSourceForAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Landroid/view/View;

    move-result-object v1

    sparse-switch v0, :sswitch_data_60

    goto :goto_57

    :sswitch_2e
    if-eqz v1, :cond_57

    invoke-virtual {v1}, Landroid/view/View;->getAccessibilityNodeProvider()Landroid/view/accessibility/AccessibilityNodeProvider;

    move-result-object v2

    if-eqz v2, :cond_57

    const/4 v2, 0x0

    invoke-virtual {p0, v2, v2}, Landroid/view/ViewRootImpl;->setAccessibilityFocus(Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;)V

    goto :goto_57

    :sswitch_3b
    if-eqz v1, :cond_57

    invoke-virtual {v1}, Landroid/view/View;->getAccessibilityNodeProvider()Landroid/view/accessibility/AccessibilityNodeProvider;

    move-result-object v2

    if-eqz v2, :cond_53

    nop

    invoke-virtual {p2}, Landroid/view/accessibility/AccessibilityEvent;->getSourceNodeId()J

    move-result-wide v3

    invoke-static {v3, v4}, Landroid/view/accessibility/AccessibilityNodeInfo;->getVirtualDescendantId(J)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/view/accessibility/AccessibilityNodeProvider;->createAccessibilityNodeInfo(I)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v4

    invoke-virtual {p0, v1, v4}, Landroid/view/ViewRootImpl;->setAccessibilityFocus(Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;)V

    :cond_53
    goto :goto_57

    :sswitch_54
    invoke-direct {p0, p2}, Landroid/view/ViewRootImpl;->handleWindowContentChangedEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    :cond_57
    :goto_57
    iget-object v2, p0, Landroid/view/ViewRootImpl;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v2, p2}, Landroid/view/accessibility/AccessibilityManager;->sendAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    const/4 v2, 0x1

    return v2

    :cond_5e
    :goto_5e
    const/4 v0, 0x0

    return v0

    :sswitch_data_60
    .sparse-switch
        0x800 -> :sswitch_54
        0x8000 -> :sswitch_3b
        0x10000 -> :sswitch_2e
    .end sparse-switch
.end method

.method public requestTransitionStart(Landroid/animation/LayoutTransition;)V
    .registers 3

    iget-object v0, p0, Landroid/view/ViewRootImpl;->mPendingTransitions:Ljava/util/ArrayList;

    if-eqz v0, :cond_a

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1a

    :cond_a
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mPendingTransitions:Ljava/util/ArrayList;

    if-nez v0, :cond_15

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/view/ViewRootImpl;->mPendingTransitions:Ljava/util/ArrayList;

    :cond_15
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mPendingTransitions:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1a
    return-void
.end method

.method public requestTransparentRegion(Landroid/view/View;)V
    .registers 4

    invoke-virtual {p0}, Landroid/view/ViewRootImpl;->checkThread()V

    iget-object v0, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    if-eq v0, p1, :cond_8

    return-void

    :cond_8
    iget v0, v0, Landroid/view/View;->mPrivateFlags:I

    and-int/lit16 v0, v0, 0x200

    if-nez v0, :cond_19

    iget-object v0, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    iget v1, v0, Landroid/view/View;->mPrivateFlags:I

    or-int/lit16 v1, v1, 0x200

    iput v1, v0, Landroid/view/View;->mPrivateFlags:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/ViewRootImpl;->mWindowAttributesChanged:Z

    :cond_19
    invoke-virtual {p0}, Landroid/view/ViewRootImpl;->requestLayout()V

    return-void
.end method

.method public requestUpdateConfiguration(Landroid/content/res/Configuration;)V
    .registers 4

    iget-object v0, p0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    const/16 v1, 0x12

    invoke-virtual {v0, v1, p1}, Landroid/view/ViewRootImpl$ViewRootHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    invoke-virtual {v1, v0}, Landroid/view/ViewRootImpl$ViewRootHandler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method scheduleConsumeBatchedInput()V
    .registers 5

    iget-boolean v0, p0, Landroid/view/ViewRootImpl;->mConsumeBatchedInputScheduled:Z

    if-nez v0, :cond_14

    iget-boolean v0, p0, Landroid/view/ViewRootImpl;->mConsumeBatchedInputImmediatelyScheduled:Z

    if-nez v0, :cond_14

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/ViewRootImpl;->mConsumeBatchedInputScheduled:Z

    iget-object v0, p0, Landroid/view/ViewRootImpl;->mChoreographer:Landroid/view/Choreographer;

    const/4 v1, 0x0

    iget-object v2, p0, Landroid/view/ViewRootImpl;->mConsumedBatchedInputRunnable:Landroid/view/ViewRootImpl$ConsumeBatchedInputRunnable;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/Choreographer;->postCallback(ILjava/lang/Runnable;Ljava/lang/Object;)V

    :cond_14
    return-void
.end method

.method scheduleConsumeBatchedInputImmediately()V
    .registers 3

    iget-boolean v0, p0, Landroid/view/ViewRootImpl;->mConsumeBatchedInputImmediatelyScheduled:Z

    if-nez v0, :cond_11

    invoke-virtual {p0}, Landroid/view/ViewRootImpl;->unscheduleConsumeBatchedInput()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/ViewRootImpl;->mConsumeBatchedInputImmediatelyScheduled:Z

    iget-object v0, p0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    iget-object v1, p0, Landroid/view/ViewRootImpl;->mConsumeBatchedInputImmediatelyRunnable:Landroid/view/ViewRootImpl$ConsumeBatchedInputImmediatelyRunnable;

    invoke-virtual {v0, v1}, Landroid/view/ViewRootImpl$ViewRootHandler;->post(Ljava/lang/Runnable;)Z

    :cond_11
    return-void
.end method

.method scheduleTraversals()V
    .registers 5

    iget-boolean v0, p0, Landroid/view/ViewRootImpl;->mTraversalScheduled:Z

    if-nez v0, :cond_4b

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/ViewRootImpl;->mTraversalScheduled:Z

    iget-object v0, p0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    invoke-virtual {v0}, Landroid/view/ViewRootImpl$ViewRootHandler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->getQueue()Landroid/os/MessageQueue;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/MessageQueue;->postSyncBarrier()I

    move-result v0

    iput v0, p0, Landroid/view/ViewRootImpl;->mTraversalBarrier:I

    sget-boolean v0, Landroid/view/ViewRootImpl;->USE_FIREST_FRAME_ACCELERATES:Z

    const/4 v1, 0x0

    const/4 v2, 0x3

    if-eqz v0, :cond_3b

    iget-boolean v0, p0, Landroid/view/ViewRootImpl;->mFirstFrame:Z

    if-eqz v0, :cond_3b

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v0

    invoke-static {v0}, Landroid/app/ActivityManager;->isContinuousStart(I)Z

    move-result v0

    if-nez v0, :cond_3b

    const-string v0, "ViewRootImpl"

    const-string/jumbo v3, "use first frame acceleration"

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Landroid/view/ViewRootImpl;->mChoreographer:Landroid/view/Choreographer;

    iget-object v3, p0, Landroid/view/ViewRootImpl;->mTraversalRunnable:Landroid/view/ViewRootImpl$TraversalRunnable;

    invoke-virtual {v0, v2, v3, v1}, Landroid/view/Choreographer;->postCallbackWithoutVSync(ILjava/lang/Runnable;Ljava/lang/Object;)V

    goto :goto_42

    :cond_3b
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mChoreographer:Landroid/view/Choreographer;

    iget-object v3, p0, Landroid/view/ViewRootImpl;->mTraversalRunnable:Landroid/view/ViewRootImpl$TraversalRunnable;

    invoke-virtual {v0, v2, v3, v1}, Landroid/view/Choreographer;->postCallback(ILjava/lang/Runnable;Ljava/lang/Object;)V

    :goto_42
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/view/ViewRootImpl;->mFirstFrame:Z

    invoke-virtual {p0}, Landroid/view/ViewRootImpl;->notifyRendererOfFramePending()V

    invoke-virtual {p0}, Landroid/view/ViewRootImpl;->pokeDrawLockIfNeeded()V

    :cond_4b
    return-void
.end method

.method scrollToRectOrFocus(Landroid/graphics/Rect;Z)Z
    .registers 13

    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v0, Landroid/view/View$AttachInfo;->mContentInsets:Landroid/graphics/Rect;

    iget-object v1, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v1, v1, Landroid/view/View$AttachInfo;->mVisibleInsets:Landroid/graphics/Rect;

    const/4 v2, 0x0

    const/4 v3, 0x0

    iget v4, v1, Landroid/graphics/Rect;->left:I

    iget v5, v0, Landroid/graphics/Rect;->left:I

    const/4 v6, 0x0

    if-gt v4, v5, :cond_23

    iget v4, v1, Landroid/graphics/Rect;->top:I

    iget v5, v0, Landroid/graphics/Rect;->top:I

    if-gt v4, v5, :cond_23

    iget v4, v1, Landroid/graphics/Rect;->right:I

    iget v5, v0, Landroid/graphics/Rect;->right:I

    if-gt v4, v5, :cond_23

    iget v4, v1, Landroid/graphics/Rect;->bottom:I

    iget v5, v0, Landroid/graphics/Rect;->bottom:I

    if-le v4, v5, :cond_c4

    :cond_23
    iget v2, p0, Landroid/view/ViewRootImpl;->mScrollY:I

    iget-object v4, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->findFocus()Landroid/view/View;

    move-result-object v4

    if-nez v4, :cond_2e

    return v6

    :cond_2e
    iget-object v5, p0, Landroid/view/ViewRootImpl;->mLastScrolledFocus:Ljava/lang/ref/WeakReference;

    const/4 v7, 0x0

    if-eqz v5, :cond_3a

    invoke-virtual {v5}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/View;

    goto :goto_3b

    :cond_3a
    move-object v5, v7

    :goto_3b
    if-eq v4, v5, :cond_3e

    const/4 p1, 0x0

    :cond_3e
    if-ne v4, v5, :cond_48

    iget-boolean v8, p0, Landroid/view/ViewRootImpl;->mScrollMayChange:Z

    if-nez v8, :cond_48

    if-nez p1, :cond_48

    goto/16 :goto_c4

    :cond_48
    new-instance v8, Ljava/lang/ref/WeakReference;

    invoke-direct {v8, v4}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v8, p0, Landroid/view/ViewRootImpl;->mLastScrolledFocus:Ljava/lang/ref/WeakReference;

    iput-boolean v6, p0, Landroid/view/ViewRootImpl;->mScrollMayChange:Z

    iget-object v8, p0, Landroid/view/ViewRootImpl;->mVisRect:Landroid/graphics/Rect;

    invoke-virtual {v4, v8, v7}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;Landroid/graphics/Point;)Z

    move-result v7

    if-eqz v7, :cond_c4

    if-nez p1, :cond_6e

    iget-object v7, p0, Landroid/view/ViewRootImpl;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v4, v7}, Landroid/view/View;->getFocusedRect(Landroid/graphics/Rect;)V

    iget-object v7, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    instance-of v8, v7, Landroid/view/ViewGroup;

    if-eqz v8, :cond_73

    check-cast v7, Landroid/view/ViewGroup;

    iget-object v8, p0, Landroid/view/ViewRootImpl;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v7, v4, v8}, Landroid/view/ViewGroup;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    goto :goto_73

    :cond_6e
    iget-object v7, p0, Landroid/view/ViewRootImpl;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v7, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    :cond_73
    :goto_73
    iget-object v7, p0, Landroid/view/ViewRootImpl;->mTempRect:Landroid/graphics/Rect;

    iget-object v8, p0, Landroid/view/ViewRootImpl;->mVisRect:Landroid/graphics/Rect;

    invoke-virtual {v7, v8}, Landroid/graphics/Rect;->intersect(Landroid/graphics/Rect;)Z

    move-result v7

    if-eqz v7, :cond_c4

    iget-object v7, p0, Landroid/view/ViewRootImpl;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v7}, Landroid/graphics/Rect;->height()I

    move-result v7

    iget-object v8, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->getHeight()I

    move-result v8

    iget v9, v1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v8, v9

    iget v9, v1, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v8, v9

    if-le v7, v8, :cond_92

    goto :goto_c3

    :cond_92
    iget-object v7, p0, Landroid/view/ViewRootImpl;->mTempRect:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->top:I

    iget v8, v1, Landroid/graphics/Rect;->top:I

    if-ge v7, v8, :cond_a3

    iget-object v7, p0, Landroid/view/ViewRootImpl;->mTempRect:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->top:I

    iget v8, v1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v7, v8

    move v2, v7

    goto :goto_c3

    :cond_a3
    iget-object v7, p0, Landroid/view/ViewRootImpl;->mTempRect:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->bottom:I

    iget-object v8, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->getHeight()I

    move-result v8

    iget v9, v1, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v8, v9

    if-le v7, v8, :cond_c2

    iget-object v7, p0, Landroid/view/ViewRootImpl;->mTempRect:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->bottom:I

    iget-object v8, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->getHeight()I

    move-result v8

    iget v9, v1, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v8, v9

    sub-int/2addr v7, v8

    move v2, v7

    goto :goto_c3

    :cond_c2
    const/4 v2, 0x0

    :goto_c3
    const/4 v3, 0x1

    :cond_c4
    :goto_c4
    iget v4, p0, Landroid/view/ViewRootImpl;->mScrollY:I

    if-eq v2, v4, :cond_ee

    if-nez p2, :cond_e5

    iget-object v4, p0, Landroid/view/ViewRootImpl;->mScroller:Landroid/widget/Scroller;

    if-nez v4, :cond_db

    new-instance v4, Landroid/widget/Scroller;

    iget-object v5, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Landroid/view/ViewRootImpl;->mScroller:Landroid/widget/Scroller;

    :cond_db
    iget-object v4, p0, Landroid/view/ViewRootImpl;->mScroller:Landroid/widget/Scroller;

    iget v5, p0, Landroid/view/ViewRootImpl;->mScrollY:I

    sub-int v7, v2, v5

    invoke-virtual {v4, v6, v5, v6, v7}, Landroid/widget/Scroller;->startScroll(IIII)V

    goto :goto_ec

    :cond_e5
    iget-object v4, p0, Landroid/view/ViewRootImpl;->mScroller:Landroid/widget/Scroller;

    if-eqz v4, :cond_ec

    invoke-virtual {v4}, Landroid/widget/Scroller;->abortAnimation()V

    :cond_ec
    :goto_ec
    iput v2, p0, Landroid/view/ViewRootImpl;->mScrollY:I

    :cond_ee
    return v3
.end method

.method setAccessibilityFocus(Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .registers 10

    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAccessibilityFocusedVirtualView:Landroid/view/accessibility/AccessibilityNodeInfo;

    const/16 v1, 0x40

    if-eqz v0, :cond_33

    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAccessibilityFocusedVirtualView:Landroid/view/accessibility/AccessibilityNodeInfo;

    iget-object v2, p0, Landroid/view/ViewRootImpl;->mAccessibilityFocusedHost:Landroid/view/View;

    const/4 v3, 0x0

    iput-object v3, p0, Landroid/view/ViewRootImpl;->mAccessibilityFocusedHost:Landroid/view/View;

    iput-object v3, p0, Landroid/view/ViewRootImpl;->mAccessibilityFocusedVirtualView:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {v2, v1}, Landroid/view/View;->clearAccessibilityFocusNoCallbacks(I)V

    invoke-virtual {v2}, Landroid/view/View;->getAccessibilityNodeProvider()Landroid/view/accessibility/AccessibilityNodeProvider;

    move-result-object v4

    if-eqz v4, :cond_30

    iget-object v5, p0, Landroid/view/ViewRootImpl;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v5}, Landroid/view/accessibility/AccessibilityNodeInfo;->getBoundsInParent(Landroid/graphics/Rect;)V

    iget-object v5, p0, Landroid/view/ViewRootImpl;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v2, v5}, Landroid/view/View;->invalidate(Landroid/graphics/Rect;)V

    nop

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->getSourceNodeId()J

    move-result-wide v5

    invoke-static {v5, v6}, Landroid/view/accessibility/AccessibilityNodeInfo;->getVirtualDescendantId(J)I

    move-result v5

    const/16 v6, 0x80

    invoke-virtual {v4, v5, v6, v3}, Landroid/view/accessibility/AccessibilityNodeProvider;->performAction(IILandroid/os/Bundle;)Z

    :cond_30
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->recycle()V

    :cond_33
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAccessibilityFocusedHost:Landroid/view/View;

    if-eqz v0, :cond_3c

    if-eq v0, p1, :cond_3c

    invoke-virtual {v0, v1}, Landroid/view/View;->clearAccessibilityFocusNoCallbacks(I)V

    :cond_3c
    iput-object p1, p0, Landroid/view/ViewRootImpl;->mAccessibilityFocusedHost:Landroid/view/View;

    iput-object p2, p0, Landroid/view/ViewRootImpl;->mAccessibilityFocusedVirtualView:Landroid/view/accessibility/AccessibilityNodeInfo;

    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v0, Landroid/view/View$AttachInfo;->mThreadedRenderer:Landroid/view/ThreadedRenderer;

    if-eqz v0, :cond_4d

    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v0, Landroid/view/View$AttachInfo;->mThreadedRenderer:Landroid/view/ThreadedRenderer;

    invoke-virtual {v0}, Landroid/view/ThreadedRenderer;->invalidateRoot()V

    :cond_4d
    return-void
.end method

.method public setActivityConfigCallback(Landroid/view/ViewRootImpl$ActivityConfigCallback;)V
    .registers 2

    iput-object p1, p0, Landroid/view/ViewRootImpl;->mActivityConfigCallback:Landroid/view/ViewRootImpl$ActivityConfigCallback;

    return-void
.end method

.method public setDisplayDecoration(Z)V
    .registers 3

    iget-boolean v0, p0, Landroid/view/ViewRootImpl;->mDisplayDecorationCached:Z

    if-ne p1, v0, :cond_5

    return-void

    :cond_5
    iput-boolean p1, p0, Landroid/view/ViewRootImpl;->mDisplayDecorationCached:Z

    iget-object v0, p0, Landroid/view/ViewRootImpl;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v0}, Landroid/view/SurfaceControl;->isValid()Z

    move-result v0

    if-eqz v0, :cond_12

    invoke-direct {p0}, Landroid/view/ViewRootImpl;->updateDisplayDecoration()V

    :cond_12
    return-void
.end method

.method public setDragFocus(Landroid/view/View;Landroid/view/DragEvent;)V
    .registers 8

    iget-object v0, p0, Landroid/view/ViewRootImpl;->mCurrentDragView:Landroid/view/View;

    if-eq v0, p1, :cond_34

    sget-boolean v0, Landroid/view/View;->sCascadedDragDrop:Z

    if-nez v0, :cond_34

    iget v0, p2, Landroid/view/DragEvent;->mX:F

    iget v1, p2, Landroid/view/DragEvent;->mY:F

    iget v2, p2, Landroid/view/DragEvent;->mAction:I

    iget-object v3, p2, Landroid/view/DragEvent;->mClipData:Landroid/content/ClipData;

    const/4 v4, 0x0

    iput v4, p2, Landroid/view/DragEvent;->mX:F

    iput v4, p2, Landroid/view/DragEvent;->mY:F

    const/4 v4, 0x0

    iput-object v4, p2, Landroid/view/DragEvent;->mClipData:Landroid/content/ClipData;

    iget-object v4, p0, Landroid/view/ViewRootImpl;->mCurrentDragView:Landroid/view/View;

    if-eqz v4, :cond_24

    const/4 v4, 0x6

    iput v4, p2, Landroid/view/DragEvent;->mAction:I

    iget-object v4, p0, Landroid/view/ViewRootImpl;->mCurrentDragView:Landroid/view/View;

    invoke-virtual {v4, p2}, Landroid/view/View;->callDragEventHandler(Landroid/view/DragEvent;)Z

    :cond_24
    if-eqz p1, :cond_2c

    const/4 v4, 0x5

    iput v4, p2, Landroid/view/DragEvent;->mAction:I

    invoke-virtual {p1, p2}, Landroid/view/View;->callDragEventHandler(Landroid/view/DragEvent;)Z

    :cond_2c
    iput v2, p2, Landroid/view/DragEvent;->mAction:I

    iput v0, p2, Landroid/view/DragEvent;->mX:F

    iput v1, p2, Landroid/view/DragEvent;->mY:F

    iput-object v3, p2, Landroid/view/DragEvent;->mClipData:Landroid/content/ClipData;

    :cond_34
    iput-object p1, p0, Landroid/view/ViewRootImpl;->mCurrentDragView:Landroid/view/View;

    return-void
.end method

.method setDragStartedViewForAccessibility(Landroid/view/View;)V
    .registers 3

    iget-object v0, p0, Landroid/view/ViewRootImpl;->mStartedDragViewForA11y:Landroid/view/View;

    if-nez v0, :cond_6

    iput-object p1, p0, Landroid/view/ViewRootImpl;->mStartedDragViewForA11y:Landroid/view/View;

    :cond_6
    return-void
.end method

.method public setHandWritingCurrentKeyboardType(I)V
    .registers 3

    iget-object v0, p0, Landroid/view/ViewRootImpl;->mHandWritingStub:Landroid/view/HandWritingStub;

    invoke-interface {v0, p1}, Landroid/view/HandWritingStub;->setCurrentKeyboardType(I)V

    return-void
.end method

.method public setIsAmbientMode(Z)V
    .registers 2

    iput-boolean p1, p0, Landroid/view/ViewRootImpl;->mIsAmbientMode:Z

    return-void
.end method

.method public setLayoutParams(Landroid/view/WindowManager$LayoutParams;Z)V
    .registers 22

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    monitor-enter p0

    :try_start_5
    iget-object v0, v1, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget-object v0, v0, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    iget-object v3, v1, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget-object v3, v3, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    iget-object v4, v1, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget-object v4, v4, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->right:I

    iget-object v5, v1, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget-object v5, v5, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    iget-object v6, v1, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget v6, v6, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    iget-object v7, v1, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget-boolean v7, v7, Landroid/view/WindowManager$LayoutParams;->hasManualSurfaceInsets:Z

    iget v8, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    iput v8, v1, Landroid/view/ViewRootImpl;->mClientWindowLayoutFlags:I

    iget-object v8, v1, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget v8, v8, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    and-int/lit16 v8, v8, 0x80

    iget-object v9, v1, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget v9, v9, Landroid/view/WindowManager$LayoutParams;->systemUiVisibility:I

    iget-object v10, v1, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget v10, v10, Landroid/view/WindowManager$LayoutParams;->subtreeSystemUiVisibility:I

    iget-object v11, v1, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget-object v11, v11, Landroid/view/WindowManager$LayoutParams;->insetsFlags:Landroid/view/InsetsFlags;

    iget v11, v11, Landroid/view/InsetsFlags;->appearance:I

    iget-object v12, v1, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget-object v12, v12, Landroid/view/WindowManager$LayoutParams;->insetsFlags:Landroid/view/InsetsFlags;

    iget v12, v12, Landroid/view/InsetsFlags;->behavior:I

    iget-object v13, v1, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget v13, v13, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    const/high16 v14, 0xc000000

    and-int/2addr v13, v14

    iget-object v14, v1, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v14, v2}, Landroid/view/WindowManager$LayoutParams;->copyFrom(Landroid/view/WindowManager$LayoutParams;)I

    move-result v14

    const/high16 v15, 0x80000

    and-int/2addr v15, v14

    move/from16 v16, v6

    const/4 v6, 0x1

    if-eqz v15, :cond_5c

    iget-object v15, v1, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iput-boolean v6, v15, Landroid/view/View$AttachInfo;->mRecomputeGlobalAttributes:Z

    :cond_5c
    and-int/lit8 v15, v14, 0x1

    if-eqz v15, :cond_64

    iget-object v15, v1, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iput-boolean v6, v15, Landroid/view/View$AttachInfo;->mNeedsUpdateLightCenter:Z

    :cond_64
    iget-object v15, v1, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget-object v15, v15, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    if-nez v15, :cond_70

    iget-object v15, v1, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget-object v6, v1, Landroid/view/ViewRootImpl;->mBasePackageName:Ljava/lang/String;

    iput-object v6, v15, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    :cond_70
    iget-object v6, v1, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iput v9, v6, Landroid/view/WindowManager$LayoutParams;->systemUiVisibility:I

    iget-object v6, v1, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iput v10, v6, Landroid/view/WindowManager$LayoutParams;->subtreeSystemUiVisibility:I

    iget-object v6, v1, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget-object v6, v6, Landroid/view/WindowManager$LayoutParams;->insetsFlags:Landroid/view/InsetsFlags;

    iput v11, v6, Landroid/view/InsetsFlags;->appearance:I

    iget-object v6, v1, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget-object v6, v6, Landroid/view/WindowManager$LayoutParams;->insetsFlags:Landroid/view/InsetsFlags;

    iput v12, v6, Landroid/view/InsetsFlags;->behavior:I

    iget-object v6, v1, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget v15, v6, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    or-int v17, v8, v13

    const/high16 v18, 0x2000000

    or-int v17, v17, v18

    or-int v15, v15, v17

    iput v15, v6, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    iget-object v6, v1, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget-boolean v6, v6, Landroid/view/WindowManager$LayoutParams;->preservePreviousSurfaceInsets:Z

    if-eqz v6, :cond_a4

    iget-object v6, v1, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget-object v6, v6, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    invoke-virtual {v6, v0, v3, v4, v5}, Landroid/graphics/Rect;->set(IIII)V

    iget-object v6, v1, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iput-boolean v7, v6, Landroid/view/WindowManager$LayoutParams;->hasManualSurfaceInsets:Z

    goto :goto_c7

    :cond_a4
    iget-object v6, v1, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget-object v6, v6, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->left:I

    if-ne v6, v0, :cond_c4

    iget-object v6, v1, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget-object v6, v6, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->top:I

    if-ne v6, v3, :cond_c4

    iget-object v6, v1, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget-object v6, v6, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->right:I

    if-ne v6, v4, :cond_c4

    iget-object v6, v1, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget-object v6, v6, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->bottom:I

    if-eq v6, v5, :cond_c7

    :cond_c4
    const/4 v6, 0x1

    iput-boolean v6, v1, Landroid/view/ViewRootImpl;->mNeedsRendererSetup:Z

    :cond_c7
    :goto_c7
    iget-object v6, v1, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v1, v6}, Landroid/view/ViewRootImpl;->applyKeepScreenOnFlag(Landroid/view/WindowManager$LayoutParams;)V

    if-eqz p2, :cond_d5

    iget v6, v2, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    iput v6, v1, Landroid/view/ViewRootImpl;->mSoftInputMode:I

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewRootImpl;->requestLayout()V

    :cond_d5
    iget v6, v2, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    and-int/lit16 v6, v6, 0xf0

    if-nez v6, :cond_eb

    iget-object v6, v1, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget v15, v6, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    and-int/lit16 v15, v15, -0xf1

    move/from16 v17, v0

    move/from16 v0, v16

    and-int/lit16 v2, v0, 0xf0

    or-int/2addr v2, v15

    iput v2, v6, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    goto :goto_ef

    :cond_eb
    move/from16 v17, v0

    move/from16 v0, v16

    :goto_ef
    iget-object v2, v1, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    if-eq v2, v0, :cond_f8

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewRootImpl;->requestFitSystemWindows()V

    :cond_f8
    const/4 v2, 0x1

    iput-boolean v2, v1, Landroid/view/ViewRootImpl;->mWindowAttributesChanged:Z

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewRootImpl;->scheduleTraversals()V

    monitor-exit p0

    return-void

    :catchall_100
    move-exception v0

    monitor-exit p0
    :try_end_102
    .catchall {:try_start_5 .. :try_end_102} :catchall_100

    throw v0
.end method

.method setLocalDragState(Ljava/lang/Object;)V
    .registers 2

    iput-object p1, p0, Landroid/view/ViewRootImpl;->mLocalDragState:Ljava/lang/Object;

    return-void
.end method

.method public setOnContentApplyWindowInsetsListener(Landroid/view/Window$OnContentApplyWindowInsetsListener;)V
    .registers 3

    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iput-object p1, v0, Landroid/view/View$AttachInfo;->mContentOnApplyWindowInsetsListener:Landroid/view/Window$OnContentApplyWindowInsetsListener;

    iget-boolean v0, p0, Landroid/view/ViewRootImpl;->mFirst:Z

    if-nez v0, :cond_b

    invoke-virtual {p0}, Landroid/view/ViewRootImpl;->requestFitSystemWindows()V

    :cond_b
    return-void
.end method

.method setOverrideInsetsFrame(Landroid/graphics/Rect;)V
    .registers 4

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, p1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iput-object v0, p0, Landroid/view/ViewRootImpl;->mOverrideInsetsFrame:Landroid/graphics/Rect;

    iget-object v1, p0, Landroid/view/ViewRootImpl;->mInsetsController:Landroid/view/InsetsController;

    invoke-virtual {v1, v0}, Landroid/view/InsetsController;->onFrameChanged(Landroid/graphics/Rect;)V

    return-void
.end method

.method public setPausedForTransition(Z)V
    .registers 2

    iput-boolean p1, p0, Landroid/view/ViewRootImpl;->mPausedForTransition:Z

    return-void
.end method

.method public setReportNextDraw(Z)V
    .registers 2

    iput-boolean p1, p0, Landroid/view/ViewRootImpl;->mSyncBuffer:Z

    invoke-direct {p0}, Landroid/view/ViewRootImpl;->reportNextDraw()V

    invoke-virtual {p0}, Landroid/view/ViewRootImpl;->invalidate()V

    return-void
.end method

.method public setRootSystemGestureExclusionRects(Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/graphics/Rect;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Landroid/view/ViewRootImpl;->mGestureExclusionTracker:Landroid/view/ViewRootRectTracker;

    invoke-virtual {v0, p1}, Landroid/view/ViewRootRectTracker;->setRootRects(Ljava/util/List;)V

    iget-object v0, p0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    const/16 v1, 0x1e

    invoke-virtual {v0, v1}, Landroid/view/ViewRootImpl$ViewRootHandler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public setScrollCaptureRequestTimeout(I)V
    .registers 4

    int-to-long v0, p1

    iput-wide v0, p0, Landroid/view/ViewRootImpl;->mScrollCaptureRequestTimeout:J

    return-void
.end method

.method public setTouchableRegion(Landroid/graphics/Region;)V
    .registers 3

    if-eqz p1, :cond_a

    new-instance v0, Landroid/graphics/Region;

    invoke-direct {v0, p1}, Landroid/graphics/Region;-><init>(Landroid/graphics/Region;)V

    iput-object v0, p0, Landroid/view/ViewRootImpl;->mTouchableRegion:Landroid/graphics/Region;

    goto :goto_d

    :cond_a
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/view/ViewRootImpl;->mTouchableRegion:Landroid/graphics/Region;

    :goto_d
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mLastGivenInsets:Landroid/view/ViewTreeObserver$InternalInsetsInfo;

    invoke-virtual {v0}, Landroid/view/ViewTreeObserver$InternalInsetsInfo;->reset()V

    invoke-virtual {p0}, Landroid/view/ViewRootImpl;->requestLayout()V

    return-void
.end method

.method public setUseForceDark(Z)V
    .registers 3

    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v0, Landroid/view/View$AttachInfo;->mThreadedRenderer:Landroid/view/ThreadedRenderer;

    if-eqz v0, :cond_d

    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v0, Landroid/view/View$AttachInfo;->mThreadedRenderer:Landroid/view/ThreadedRenderer;

    invoke-virtual {v0, p1}, Landroid/view/ThreadedRenderer;->setForceDark(Z)Z

    :cond_d
    return-void
.end method

.method public setView(Landroid/view/View;Landroid/view/WindowManager$LayoutParams;Landroid/view/View;)V
    .registers 5

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-virtual {p0, p1, p2, p3, v0}, Landroid/view/ViewRootImpl;->setView(Landroid/view/View;Landroid/view/WindowManager$LayoutParams;Landroid/view/View;I)V

    return-void
.end method

.method public setView(Landroid/view/View;Landroid/view/WindowManager$LayoutParams;Landroid/view/View;I)V
    .registers 37

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    monitor-enter p0

    :try_start_5
    iget-object v0, v1, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    if-nez v0, :cond_4d5

    iput-object v2, v1, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    iget-object v0, v1, Landroid/view/ViewRootImpl;->mDisplay:Landroid/view/Display;

    invoke-virtual {v0}, Landroid/view/Display;->getInstallOrientation()I

    move-result v0

    iput v0, v1, Landroid/view/ViewRootImpl;->mDisplayInstallOrientation:I

    iget-object v0, v1, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getRawLayoutDirection()I

    move-result v0

    iput v0, v1, Landroid/view/ViewRootImpl;->mViewLayoutDirectionInitial:I

    iget-object v0, v1, Landroid/view/ViewRootImpl;->mFallbackEventHandler:Landroid/view/FallbackEventHandler;

    invoke-interface {v0, v2}, Landroid/view/FallbackEventHandler;->setView(Landroid/view/View;)V

    iget-object v0, v1, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;
    :try_end_22
    .catchall {:try_start_5 .. :try_end_22} :catchall_4d9

    move-object/from16 v3, p2

    :try_start_24
    invoke-virtual {v0, v3}, Landroid/view/WindowManager$LayoutParams;->copyFrom(Landroid/view/WindowManager$LayoutParams;)I

    iget-object v0, v1, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget-object v0, v0, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    if-nez v0, :cond_33

    iget-object v0, v1, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget-object v4, v1, Landroid/view/ViewRootImpl;->mBasePackageName:Ljava/lang/String;

    iput-object v4, v0, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    :cond_33
    iget-object v0, v1, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget v4, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    const/high16 v5, 0x2000000

    or-int/2addr v4, v5

    iput v4, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    iget-object v0, v1, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;
    :try_end_3e
    .catchall {:try_start_24 .. :try_end_3e} :catchall_4d3

    move-object v3, v0

    :try_start_3f
    invoke-direct/range {p0 .. p0}, Landroid/view/ViewRootImpl;->setTag()V

    iget v0, v3, Landroid/view/WindowManager$LayoutParams;->flags:I

    iput v0, v1, Landroid/view/ViewRootImpl;->mClientWindowLayoutFlags:I

    const/4 v4, 0x0

    invoke-virtual {v1, v4, v4}, Landroid/view/ViewRootImpl;->setAccessibilityFocus(Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;)V

    instance-of v0, v2, Lcom/android/internal/view/RootViewSurfaceTaker;

    const/4 v5, 0x0

    if-eqz v0, :cond_6b

    move-object v0, v2

    check-cast v0, Lcom/android/internal/view/RootViewSurfaceTaker;

    invoke-interface {v0}, Lcom/android/internal/view/RootViewSurfaceTaker;->willYouTakeTheSurface()Landroid/view/SurfaceHolder$Callback2;

    move-result-object v0

    iput-object v0, v1, Landroid/view/ViewRootImpl;->mSurfaceHolderCallback:Landroid/view/SurfaceHolder$Callback2;

    if-eqz v0, :cond_6b

    new-instance v0, Landroid/view/ViewRootImpl$TakenSurfaceHolder;

    invoke-direct {v0, v1}, Landroid/view/ViewRootImpl$TakenSurfaceHolder;-><init>(Landroid/view/ViewRootImpl;)V

    iput-object v0, v1, Landroid/view/ViewRootImpl;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    invoke-virtual {v0, v5}, Lcom/android/internal/view/BaseSurfaceHolder;->setFormat(I)V

    iget-object v0, v1, Landroid/view/ViewRootImpl;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    iget-object v6, v1, Landroid/view/ViewRootImpl;->mSurfaceHolderCallback:Landroid/view/SurfaceHolder$Callback2;

    invoke-virtual {v0, v6}, Lcom/android/internal/view/BaseSurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    :cond_6b
    iget-boolean v0, v3, Landroid/view/WindowManager$LayoutParams;->hasManualSurfaceInsets:Z

    const/4 v6, 0x1

    if-nez v0, :cond_73

    invoke-virtual {v3, v2, v5, v6}, Landroid/view/WindowManager$LayoutParams;->setSurfaceInsets(Landroid/view/View;ZZ)V

    :cond_73
    iget-object v0, v1, Landroid/view/ViewRootImpl;->mDisplay:Landroid/view/Display;

    invoke-virtual {v0}, Landroid/view/Display;->getDisplayAdjustments()Landroid/view/DisplayAdjustments;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/DisplayAdjustments;->getCompatibilityInfo()Landroid/content/res/CompatibilityInfo;

    move-result-object v0

    move-object v7, v0

    invoke-virtual {v7}, Landroid/content/res/CompatibilityInfo;->getTranslator()Landroid/content/res/CompatibilityInfo$Translator;

    move-result-object v0

    iput-object v0, v1, Landroid/view/ViewRootImpl;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    iget-object v0, v1, Landroid/view/ViewRootImpl;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    if-nez v0, :cond_9d

    invoke-direct {v1, v3}, Landroid/view/ViewRootImpl;->enableHardwareAcceleration(Landroid/view/WindowManager$LayoutParams;)V

    iget-object v0, v1, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v0, Landroid/view/View$AttachInfo;->mThreadedRenderer:Landroid/view/ThreadedRenderer;

    if-eqz v0, :cond_93

    move v0, v6

    goto :goto_94

    :cond_93
    move v0, v5

    :goto_94
    iget-boolean v8, v1, Landroid/view/ViewRootImpl;->mUseMTRenderer:Z

    if-eq v8, v0, :cond_9d

    invoke-direct/range {p0 .. p0}, Landroid/view/ViewRootImpl;->endDragResizing()V

    iput-boolean v0, v1, Landroid/view/ViewRootImpl;->mUseMTRenderer:Z

    :cond_9d
    const/4 v0, 0x0

    iget-object v8, v1, Landroid/view/ViewRootImpl;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    if-eqz v8, :cond_b2

    iget-object v9, v1, Landroid/view/ViewRootImpl;->mSurface:Landroid/view/Surface;

    invoke-virtual {v9, v8}, Landroid/view/Surface;->setCompatibilityTranslator(Landroid/content/res/CompatibilityInfo$Translator;)V

    const/4 v0, 0x1

    invoke-virtual {v3}, Landroid/view/WindowManager$LayoutParams;->backup()V

    iget-object v8, v1, Landroid/view/ViewRootImpl;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    invoke-virtual {v8, v3}, Landroid/content/res/CompatibilityInfo$Translator;->translateWindowLayout(Landroid/view/WindowManager$LayoutParams;)V

    move v8, v0

    goto :goto_b3

    :cond_b2
    move v8, v0

    :goto_b3
    invoke-virtual {v7}, Landroid/content/res/CompatibilityInfo;->supportsScreen()Z

    move-result v0

    if-nez v0, :cond_c1

    iget v0, v3, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    or-int/lit16 v0, v0, 0x80

    iput v0, v3, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    iput-boolean v6, v1, Landroid/view/ViewRootImpl;->mLastInCompatMode:Z

    :cond_c1
    iget v0, v3, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    iput v0, v1, Landroid/view/ViewRootImpl;->mSoftInputMode:I

    iput-boolean v6, v1, Landroid/view/ViewRootImpl;->mWindowAttributesChanged:Z

    iget-object v0, v1, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iput-object v2, v0, Landroid/view/View$AttachInfo;->mRootView:Landroid/view/View;

    iget-object v0, v1, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v9, v1, Landroid/view/ViewRootImpl;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    if-eqz v9, :cond_d3

    move v9, v6

    goto :goto_d4

    :cond_d3
    move v9, v5

    :goto_d4
    iput-boolean v9, v0, Landroid/view/View$AttachInfo;->mScalingRequired:Z

    iget-object v0, v1, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v9, v1, Landroid/view/ViewRootImpl;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    if-nez v9, :cond_df

    const/high16 v9, 0x3f800000  # 1.0f

    goto :goto_e1

    :cond_df
    iget v9, v9, Landroid/content/res/CompatibilityInfo$Translator;->applicationScale:F

    :goto_e1
    iput v9, v0, Landroid/view/View$AttachInfo;->mApplicationScale:F

    if-eqz p3, :cond_f3

    iget-object v0, v1, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    invoke-virtual/range {p3 .. p3}, Landroid/view/View;->getApplicationWindowToken()Landroid/os/IBinder;

    move-result-object v9

    iput-object v9, v0, Landroid/view/View$AttachInfo;->mPanelParentWindowToken:Landroid/os/IBinder;

    invoke-virtual/range {p3 .. p3}, Landroid/view/View;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v0

    iput-object v0, v1, Landroid/view/ViewRootImpl;->mParentViewRoot:Landroid/view/ViewRootImpl;

    :cond_f3
    iput-boolean v6, v1, Landroid/view/ViewRootImpl;->mAdded:Z

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewRootImpl;->requestLayout()V

    const/4 v0, 0x0

    iget-object v9, v1, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget v9, v9, Landroid/view/WindowManager$LayoutParams;->inputFeatures:I

    and-int/2addr v9, v6

    if-nez v9, :cond_108

    new-instance v9, Landroid/view/InputChannel;

    invoke-direct {v9}, Landroid/view/InputChannel;-><init>()V

    move-object v0, v9

    move-object v15, v0

    goto :goto_109

    :cond_108
    move-object v15, v0

    :goto_109
    iget-object v0, v1, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    and-int/lit16 v0, v0, 0x4000

    if-eqz v0, :cond_113

    move v0, v6

    goto :goto_114

    :cond_113
    move v0, v5

    :goto_114
    iput-boolean v0, v1, Landroid/view/ViewRootImpl;->mForceDecorViewVisibility:Z

    iget-object v0, v1, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    instance-of v9, v0, Lcom/android/internal/view/RootViewSurfaceTaker;

    if-eqz v9, :cond_129

    check-cast v0, Lcom/android/internal/view/RootViewSurfaceTaker;

    invoke-interface {v0}, Lcom/android/internal/view/RootViewSurfaceTaker;->providePendingInsetsController()Landroid/view/PendingInsetsController;

    move-result-object v0

    if-eqz v0, :cond_129

    iget-object v9, v1, Landroid/view/ViewRootImpl;->mInsetsController:Landroid/view/InsetsController;

    invoke-virtual {v0, v9}, Landroid/view/PendingInsetsController;->replayAndAttach(Landroid/view/InsetsController;)V
    :try_end_129
    .catchall {:try_start_3f .. :try_end_129} :catchall_4de

    :cond_129
    :try_start_129
    iget-object v0, v1, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    iput v0, v1, Landroid/view/ViewRootImpl;->mOrigWindowType:I

    iget-object v0, v1, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iput-boolean v6, v0, Landroid/view/View$AttachInfo;->mRecomputeGlobalAttributes:Z

    invoke-direct/range {p0 .. p0}, Landroid/view/ViewRootImpl;->collectViewAttributes()Z

    iget-object v0, v1, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    invoke-static {v0}, Landroid/view/ViewRootImpl;->adjustLayoutParamsForCompatibility(Landroid/view/WindowManager$LayoutParams;)V

    iget-object v0, v1, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v1, v0}, Landroid/view/ViewRootImpl;->controlInsetsForCompatibility(Landroid/view/WindowManager$LayoutParams;)V

    iget-object v9, v1, Landroid/view/ViewRootImpl;->mWindowSession:Landroid/view/IWindowSession;

    iget-object v10, v1, Landroid/view/ViewRootImpl;->mWindow:Landroid/view/ViewRootImpl$W;

    iget-object v11, v1, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewRootImpl;->getHostVisibility()I

    move-result v12

    iget-object v0, v1, Landroid/view/ViewRootImpl;->mDisplay:Landroid/view/Display;

    invoke-virtual {v0}, Landroid/view/Display;->getDisplayId()I

    move-result v13

    iget-object v0, v1, Landroid/view/ViewRootImpl;->mInsetsController:Landroid/view/InsetsController;

    invoke-virtual {v0}, Landroid/view/InsetsController;->getRequestedVisibilities()Landroid/view/InsetsVisibilities;

    move-result-object v0

    iget-object v14, v1, Landroid/view/ViewRootImpl;->mTempInsets:Landroid/view/InsetsState;

    iget-object v6, v1, Landroid/view/ViewRootImpl;->mTempControls:[Landroid/view/InsetsSourceControl;
    :try_end_15a
    .catch Landroid/os/RemoteException; {:try_start_129 .. :try_end_15a} :catch_4ae
    .catchall {:try_start_129 .. :try_end_15a} :catchall_4ab

    move-object/from16 v17, v14

    move/from16 v14, p4

    move-object/from16 v19, v15

    move-object v15, v0

    move-object/from16 v16, v19

    move-object/from16 v18, v6

    :try_start_165
    invoke-interface/range {v9 .. v18}, Landroid/view/IWindowSession;->addToDisplayAsUser(Landroid/view/IWindow;Landroid/view/WindowManager$LayoutParams;IIILandroid/view/InsetsVisibilities;Landroid/view/InputChannel;Landroid/view/InsetsState;[Landroid/view/InsetsSourceControl;)I

    move-result v0

    iget-object v6, v1, Landroid/view/ViewRootImpl;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;
    :try_end_16b
    .catch Landroid/os/RemoteException; {:try_start_165 .. :try_end_16b} :catch_4a7
    .catchall {:try_start_165 .. :try_end_16b} :catchall_4a3

    if-eqz v6, :cond_184

    :try_start_16d
    iget-object v9, v1, Landroid/view/ViewRootImpl;->mTempInsets:Landroid/view/InsetsState;

    invoke-virtual {v6, v9}, Landroid/content/res/CompatibilityInfo$Translator;->translateInsetsStateInScreenToAppWindow(Landroid/view/InsetsState;)V

    iget-object v6, v1, Landroid/view/ViewRootImpl;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    iget-object v9, v1, Landroid/view/ViewRootImpl;->mTempControls:[Landroid/view/InsetsSourceControl;

    invoke-virtual {v6, v9}, Landroid/content/res/CompatibilityInfo$Translator;->translateSourceControlsInScreenToAppWindow([Landroid/view/InsetsSourceControl;)V
    :try_end_179
    .catch Landroid/os/RemoteException; {:try_start_16d .. :try_end_179} :catch_17f
    .catchall {:try_start_16d .. :try_end_179} :catchall_17a

    goto :goto_184

    :catchall_17a
    move-exception v0

    move-object/from16 v11, v19

    goto/16 :goto_4cc

    :catch_17f
    move-exception v0

    move-object/from16 v11, v19

    goto/16 :goto_4b0

    :cond_184
    :goto_184
    if-eqz v8, :cond_189

    :try_start_186
    invoke-virtual {v3}, Landroid/view/WindowManager$LayoutParams;->restore()V

    :cond_189
    iget-object v6, v1, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    and-int/lit8 v9, v0, 0x4

    if-eqz v9, :cond_191

    const/4 v9, 0x1

    goto :goto_192

    :cond_191
    move v9, v5

    :goto_192
    iput-boolean v9, v6, Landroid/view/View$AttachInfo;->mAlwaysConsumeSystemBars:Z

    iget-object v6, v1, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-boolean v6, v6, Landroid/view/View$AttachInfo;->mAlwaysConsumeSystemBars:Z

    iput-boolean v6, v1, Landroid/view/ViewRootImpl;->mPendingAlwaysConsumeSystemBars:Z

    iget-object v6, v1, Landroid/view/ViewRootImpl;->mInsetsController:Landroid/view/InsetsController;

    iget-object v9, v1, Landroid/view/ViewRootImpl;->mTempInsets:Landroid/view/InsetsState;

    invoke-virtual {v6, v9}, Landroid/view/InsetsController;->onStateChanged(Landroid/view/InsetsState;)Z

    iget-object v6, v1, Landroid/view/ViewRootImpl;->mInsetsController:Landroid/view/InsetsController;

    iget-object v9, v1, Landroid/view/ViewRootImpl;->mTempControls:[Landroid/view/InsetsSourceControl;

    invoke-virtual {v6, v9}, Landroid/view/InsetsController;->onControlsChanged([Landroid/view/InsetsSourceControl;)V

    iget-object v6, v1, Landroid/view/ViewRootImpl;->mInsetsController:Landroid/view/InsetsController;

    invoke-virtual {v6}, Landroid/view/InsetsController;->getState()Landroid/view/InsetsState;

    move-result-object v6

    iget-object v9, v1, Landroid/view/ViewRootImpl;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v6, v9}, Landroid/view/InsetsState;->getDisplayCutoutSafe(Landroid/graphics/Rect;)V

    invoke-direct/range {p0 .. p0}, Landroid/view/ViewRootImpl;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v10

    iget-object v10, v10, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    iget-object v11, v1, Landroid/view/ViewRootImpl;->mWindowLayout:Landroid/view/WindowLayout;

    iget-object v12, v1, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v10}, Landroid/app/WindowConfiguration;->getBounds()Landroid/graphics/Rect;

    move-result-object v24

    invoke-virtual {v10}, Landroid/app/WindowConfiguration;->getWindowingMode()I

    move-result v25

    const/16 v26, -0x1

    const/16 v27, -0x1

    iget-object v13, v1, Landroid/view/ViewRootImpl;->mInsetsController:Landroid/view/InsetsController;

    invoke-virtual {v13}, Landroid/view/InsetsController;->getRequestedVisibilities()Landroid/view/InsetsVisibilities;

    move-result-object v28

    invoke-direct/range {p0 .. p0}, Landroid/view/ViewRootImpl;->getAttachedWindowFrame()Landroid/graphics/Rect;

    move-result-object v29

    const/high16 v30, 0x3f800000  # 1.0f

    iget-object v13, v1, Landroid/view/ViewRootImpl;->mTmpFrames:Landroid/window/ClientWindowFrames;

    move-object/from16 v20, v11

    move-object/from16 v21, v12

    move-object/from16 v22, v6

    move-object/from16 v23, v9

    move-object/from16 v31, v13

    invoke-virtual/range {v20 .. v31}, Landroid/view/WindowLayout;->computeFrames(Landroid/view/WindowManager$LayoutParams;Landroid/view/InsetsState;Landroid/graphics/Rect;Landroid/graphics/Rect;IIILandroid/view/InsetsVisibilities;Landroid/graphics/Rect;FLandroid/window/ClientWindowFrames;)V

    sget-boolean v11, Landroid/content/res/CompatibilityInfo;->sIsMiuiScreenCompatApp:Z

    if-eqz v11, :cond_1fc

    sget-object v11, Landroid/content/res/CompatibilityInfo;->sMiuiScreenCompatInfo:Landroid/os/Bundle;

    if-eqz v11, :cond_1fc

    iget-object v11, v1, Landroid/view/ViewRootImpl;->mTmpFrames:Landroid/window/ClientWindowFrames;

    iget-object v11, v11, Landroid/window/ClientWindowFrames;->frame:Landroid/graphics/Rect;

    sget-object v12, Landroid/content/res/CompatibilityInfo;->sMiuiScreenCompatInfo:Landroid/os/Bundle;

    const-string/jumbo v13, "miuiScreenCompatScale"

    invoke-virtual {v12, v13}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v12

    invoke-virtual {v11, v12}, Landroid/graphics/Rect;->scale(F)V

    :cond_1fc
    iget-object v11, v1, Landroid/view/ViewRootImpl;->mTmpFrames:Landroid/window/ClientWindowFrames;

    iget-object v11, v11, Landroid/window/ClientWindowFrames;->frame:Landroid/graphics/Rect;

    invoke-direct {v1, v11}, Landroid/view/ViewRootImpl;->setFrame(Landroid/graphics/Rect;)V

    invoke-direct/range {p0 .. p0}, Landroid/view/ViewRootImpl;->registerBackCallbackOnWindow()V

    iget-object v11, v1, Landroid/view/ViewRootImpl;->mContext:Landroid/content/Context;

    invoke-static {v11}, Landroid/window/WindowOnBackInvokedDispatcher;->isOnBackInvokedCallbackEnabled(Landroid/content/Context;)Z

    move-result v11

    if-nez v11, :cond_211

    invoke-direct/range {p0 .. p0}, Landroid/view/ViewRootImpl;->registerCompatOnBackInvokedCallback()V

    :cond_211
    if-gez v0, :cond_391

    iget-object v11, v1, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iput-object v4, v11, Landroid/view/View$AttachInfo;->mRootView:Landroid/view/View;

    iput-boolean v5, v1, Landroid/view/ViewRootImpl;->mAdded:Z

    iget-object v5, v1, Landroid/view/ViewRootImpl;->mFallbackEventHandler:Landroid/view/FallbackEventHandler;

    invoke-interface {v5, v4}, Landroid/view/FallbackEventHandler;->setView(Landroid/view/View;)V

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewRootImpl;->unscheduleTraversals()V

    invoke-virtual {v1, v4, v4}, Landroid/view/ViewRootImpl;->setAccessibilityFocus(Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;)V

    packed-switch v0, :pswitch_data_4e0

    new-instance v4, Ljava/lang/RuntimeException;

    goto/16 :goto_37a

    :pswitch_22b  #0xfffffffe, 0xffffffff
    new-instance v4, Landroid/view/WindowManager$BadTokenException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Unable to add window -- token "

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v11, v3, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v11, " is not valid; is your activity running?"

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/view/WindowManager$BadTokenException;-><init>(Ljava/lang/String;)V

    throw v4

    :pswitch_24c  #0xfffffffd
    new-instance v4, Landroid/view/WindowManager$BadTokenException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Unable to add window -- token "

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v11, v3, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v11, " is not for an application"

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/view/WindowManager$BadTokenException;-><init>(Ljava/lang/String;)V

    throw v4

    :pswitch_26d  #0xfffffffc
    new-instance v4, Landroid/view/WindowManager$BadTokenException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Unable to add window -- app for token "

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v11, v3, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v11, " is exiting"

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/view/WindowManager$BadTokenException;-><init>(Ljava/lang/String;)V

    throw v4

    :pswitch_28e  #0xfffffffb
    new-instance v4, Landroid/view/WindowManager$BadTokenException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Unable to add window -- window "

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v11, v1, Landroid/view/ViewRootImpl;->mWindow:Landroid/view/ViewRootImpl$W;

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v11, " has already been added"

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/view/WindowManager$BadTokenException;-><init>(Ljava/lang/String;)V

    throw v4

    :pswitch_2af  #0xfffffffa
    monitor-exit p0

    return-void

    :pswitch_2b1  #0xfffffff9
    new-instance v4, Landroid/view/WindowManager$BadTokenException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Unable to add window "

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v11, v1, Landroid/view/ViewRootImpl;->mWindow:Landroid/view/ViewRootImpl$W;

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v11, " -- another window of type "

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v11, v1, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget v11, v11, Landroid/view/WindowManager$LayoutParams;->type:I

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v11, " already exists"

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/view/WindowManager$BadTokenException;-><init>(Ljava/lang/String;)V

    throw v4

    :pswitch_2e0  #0xfffffff8
    new-instance v4, Landroid/view/WindowManager$BadTokenException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Unable to add window "

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v11, v1, Landroid/view/ViewRootImpl;->mWindow:Landroid/view/ViewRootImpl$W;

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v11, " -- permission denied for window type "

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v11, v1, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget v11, v11, Landroid/view/WindowManager$LayoutParams;->type:I

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/view/WindowManager$BadTokenException;-><init>(Ljava/lang/String;)V

    throw v4

    :pswitch_309  #0xfffffff7
    new-instance v4, Landroid/view/WindowManager$InvalidDisplayException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Unable to add window "

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v11, v1, Landroid/view/ViewRootImpl;->mWindow:Landroid/view/ViewRootImpl$W;

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v11, " -- the specified display can not be found"

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/view/WindowManager$InvalidDisplayException;-><init>(Ljava/lang/String;)V

    throw v4

    :pswitch_32a  #0xfffffff6
    new-instance v4, Landroid/view/WindowManager$InvalidDisplayException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Unable to add window "

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v11, v1, Landroid/view/ViewRootImpl;->mWindow:Landroid/view/ViewRootImpl$W;

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v11, " -- the specified window type "

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v11, v1, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget v11, v11, Landroid/view/WindowManager$LayoutParams;->type:I

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v11, " is not valid"

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/view/WindowManager$InvalidDisplayException;-><init>(Ljava/lang/String;)V

    throw v4

    :pswitch_359  #0xfffffff5
    new-instance v4, Landroid/view/WindowManager$BadTokenException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Unable to add Window "

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v11, v1, Landroid/view/ViewRootImpl;->mWindow:Landroid/view/ViewRootImpl$W;

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v11, " -- requested userId is not valid"

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/view/WindowManager$BadTokenException;-><init>(Ljava/lang/String;)V

    throw v4

    :goto_37a
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Unable to add window -- unknown error code "

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_391
    invoke-direct/range {p0 .. p0}, Landroid/view/ViewRootImpl;->registerListeners()V

    iget-object v4, v1, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v11, v1, Landroid/view/ViewRootImpl;->mDisplay:Landroid/view/Display;

    invoke-virtual {v11}, Landroid/view/Display;->getState()I

    move-result v11

    iput v11, v4, Landroid/view/View$AttachInfo;->mDisplayState:I

    and-int/lit8 v4, v0, 0x8

    if-eqz v4, :cond_3a5

    const/4 v4, 0x1

    iput-boolean v4, v1, Landroid/view/ViewRootImpl;->mUseBLASTAdapter:Z

    :cond_3a5
    instance-of v4, v2, Lcom/android/internal/view/RootViewSurfaceTaker;

    if-eqz v4, :cond_3b2

    move-object v4, v2

    check-cast v4, Lcom/android/internal/view/RootViewSurfaceTaker;

    invoke-interface {v4}, Lcom/android/internal/view/RootViewSurfaceTaker;->willYouTakeTheInputQueue()Landroid/view/InputQueue$Callback;

    move-result-object v4

    iput-object v4, v1, Landroid/view/ViewRootImpl;->mInputQueueCallback:Landroid/view/InputQueue$Callback;

    :cond_3b2
    move-object/from16 v11, v19

    if-eqz v11, :cond_3f1

    iget-object v4, v1, Landroid/view/ViewRootImpl;->mInputQueueCallback:Landroid/view/InputQueue$Callback;

    if-eqz v4, :cond_3c6

    new-instance v4, Landroid/view/InputQueue;

    invoke-direct {v4}, Landroid/view/InputQueue;-><init>()V

    iput-object v4, v1, Landroid/view/ViewRootImpl;->mInputQueue:Landroid/view/InputQueue;

    iget-object v12, v1, Landroid/view/ViewRootImpl;->mInputQueueCallback:Landroid/view/InputQueue$Callback;

    invoke-interface {v12, v4}, Landroid/view/InputQueue$Callback;->onInputQueueCreated(Landroid/view/InputQueue;)V

    :cond_3c6
    new-instance v4, Landroid/view/ViewRootImpl$WindowInputEventReceiver;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v12

    invoke-direct {v4, v1, v11, v12}, Landroid/view/ViewRootImpl$WindowInputEventReceiver;-><init>(Landroid/view/ViewRootImpl;Landroid/view/InputChannel;Landroid/os/Looper;)V

    iput-object v4, v1, Landroid/view/ViewRootImpl;->mInputEventReceiver:Landroid/view/ViewRootImpl$WindowInputEventReceiver;

    iget-object v4, v1, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v4, v4, Landroid/view/View$AttachInfo;->mThreadedRenderer:Landroid/view/ThreadedRenderer;

    if-eqz v4, :cond_3f1

    new-instance v4, Landroid/view/ViewRootImpl$InputMetricsListener;

    invoke-direct {v4, v1}, Landroid/view/ViewRootImpl$InputMetricsListener;-><init>(Landroid/view/ViewRootImpl;)V

    new-instance v12, Landroid/graphics/HardwareRendererObserver;

    iget-object v13, v4, Landroid/view/ViewRootImpl$InputMetricsListener;->data:[J

    iget-object v14, v1, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    const/4 v15, 0x1

    invoke-direct {v12, v4, v13, v14, v15}, Landroid/graphics/HardwareRendererObserver;-><init>(Landroid/graphics/HardwareRendererObserver$OnFrameMetricsAvailableListener;[JLandroid/os/Handler;Z)V

    iput-object v12, v1, Landroid/view/ViewRootImpl;->mHardwareRendererObserver:Landroid/graphics/HardwareRendererObserver;

    iget-object v12, v1, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v12, v12, Landroid/view/View$AttachInfo;->mThreadedRenderer:Landroid/view/ThreadedRenderer;

    iget-object v13, v1, Landroid/view/ViewRootImpl;->mHardwareRendererObserver:Landroid/graphics/HardwareRendererObserver;

    invoke-virtual {v12, v13}, Landroid/view/ThreadedRenderer;->addObserver(Landroid/graphics/HardwareRendererObserver;)V

    :cond_3f1
    invoke-virtual {v2, v1}, Landroid/view/View;->assignParent(Landroid/view/ViewParent;)V

    and-int/lit8 v4, v0, 0x1

    if-eqz v4, :cond_3fa

    const/4 v4, 0x1

    goto :goto_3fb

    :cond_3fa
    move v4, v5

    :goto_3fb
    iput-boolean v4, v1, Landroid/view/ViewRootImpl;->mAddedTouchMode:Z

    and-int/lit8 v4, v0, 0x2

    if-eqz v4, :cond_402

    const/4 v5, 0x1

    :cond_402
    iput-boolean v5, v1, Landroid/view/ViewRootImpl;->mAppVisible:Z

    iget-object v4, v1, Landroid/view/ViewRootImpl;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v4}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v4

    if-eqz v4, :cond_411

    iget-object v4, v1, Landroid/view/ViewRootImpl;->mAccessibilityInteractionConnectionManager:Landroid/view/ViewRootImpl$AccessibilityInteractionConnectionManager;

    invoke-virtual {v4}, Landroid/view/ViewRootImpl$AccessibilityInteractionConnectionManager;->ensureConnection()V

    :cond_411
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getImportantForAccessibility()I

    move-result v4

    if-nez v4, :cond_41b

    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Landroid/view/View;->setImportantForAccessibility(I)V

    :cond_41b
    invoke-virtual {v3}, Landroid/view/WindowManager$LayoutParams;->getTitle()Ljava/lang/CharSequence;

    move-result-object v4

    new-instance v5, Landroid/view/ViewRootImpl$SyntheticInputStage;

    invoke-direct {v5, v1}, Landroid/view/ViewRootImpl$SyntheticInputStage;-><init>(Landroid/view/ViewRootImpl;)V

    iput-object v5, v1, Landroid/view/ViewRootImpl;->mSyntheticInputStage:Landroid/view/ViewRootImpl$InputStage;

    new-instance v12, Landroid/view/ViewRootImpl$ViewPostImeInputStage;

    invoke-direct {v12, v1, v5}, Landroid/view/ViewRootImpl$ViewPostImeInputStage;-><init>(Landroid/view/ViewRootImpl;Landroid/view/ViewRootImpl$InputStage;)V

    move-object v5, v12

    new-instance v12, Landroid/view/ViewRootImpl$NativePostImeInputStage;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "aq:native-post-ime:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v1, v5, v13}, Landroid/view/ViewRootImpl$NativePostImeInputStage;-><init>(Landroid/view/ViewRootImpl;Landroid/view/ViewRootImpl$InputStage;Ljava/lang/String;)V

    new-instance v13, Landroid/view/ViewRootImpl$EarlyPostImeInputStage;

    invoke-direct {v13, v1, v12}, Landroid/view/ViewRootImpl$EarlyPostImeInputStage;-><init>(Landroid/view/ViewRootImpl;Landroid/view/ViewRootImpl$InputStage;)V

    new-instance v14, Landroid/view/ViewRootImpl$ImeInputStage;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 p2, v0

    const-string v0, "aq:ime:"

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v14, v1, v13, v0}, Landroid/view/ViewRootImpl$ImeInputStage;-><init>(Landroid/view/ViewRootImpl;Landroid/view/ViewRootImpl$InputStage;Ljava/lang/String;)V

    move-object v0, v14

    new-instance v14, Landroid/view/ViewRootImpl$ViewPreImeInputStage;

    invoke-direct {v14, v1, v0}, Landroid/view/ViewRootImpl$ViewPreImeInputStage;-><init>(Landroid/view/ViewRootImpl;Landroid/view/ViewRootImpl$InputStage;)V

    new-instance v15, Landroid/view/ViewRootImpl$NativePreImeInputStage;

    move-object/from16 v16, v0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "aq:native-pre-ime:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v15, v1, v14, v0}, Landroid/view/ViewRootImpl$NativePreImeInputStage;-><init>(Landroid/view/ViewRootImpl;Landroid/view/ViewRootImpl$InputStage;Ljava/lang/String;)V

    move-object v0, v15

    iput-object v0, v1, Landroid/view/ViewRootImpl;->mFirstInputStage:Landroid/view/ViewRootImpl$InputStage;

    iput-object v13, v1, Landroid/view/ViewRootImpl;->mFirstPostImeInputStage:Landroid/view/ViewRootImpl$InputStage;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "aq:pending:"

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Landroid/view/ViewRootImpl;->mPendingInputEventQueueLengthCounterName:Ljava/lang/String;

    iget-boolean v2, v1, Landroid/view/ViewRootImpl;->mAppVisible:Z

    invoke-static {v2, v1}, Landroid/animation/AnimationHandler;->requestAnimatorsEnabled(ZLjava/lang/Object;)V
    :try_end_4a2
    .catchall {:try_start_186 .. :try_end_4a2} :catchall_4de

    goto :goto_4d7

    :catchall_4a3
    move-exception v0

    move-object/from16 v11, v19

    goto :goto_4cc

    :catch_4a7
    move-exception v0

    move-object/from16 v11, v19

    goto :goto_4b0

    :catchall_4ab
    move-exception v0

    move-object v11, v15

    goto :goto_4cc

    :catch_4ae
    move-exception v0

    move-object v11, v15

    :goto_4b0
    :try_start_4b0
    iput-boolean v5, v1, Landroid/view/ViewRootImpl;->mAdded:Z

    iput-object v4, v1, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    iget-object v2, v1, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iput-object v4, v2, Landroid/view/View$AttachInfo;->mRootView:Landroid/view/View;

    iget-object v2, v1, Landroid/view/ViewRootImpl;->mFallbackEventHandler:Landroid/view/FallbackEventHandler;

    invoke-interface {v2, v4}, Landroid/view/FallbackEventHandler;->setView(Landroid/view/View;)V

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewRootImpl;->unscheduleTraversals()V

    invoke-virtual {v1, v4, v4}, Landroid/view/ViewRootImpl;->setAccessibilityFocus(Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;)V

    new-instance v2, Ljava/lang/RuntimeException;

    const-string v4, "Adding window failed"

    invoke-direct {v2, v4, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
    :try_end_4cb
    .catchall {:try_start_4b0 .. :try_end_4cb} :catchall_4cb

    :catchall_4cb
    move-exception v0

    :goto_4cc
    if-eqz v8, :cond_4d1

    :try_start_4ce
    invoke-virtual {v3}, Landroid/view/WindowManager$LayoutParams;->restore()V

    :cond_4d1
    nop

    throw v0

    :catchall_4d3
    move-exception v0

    goto :goto_4dc

    :cond_4d5
    move-object/from16 v3, p2

    :goto_4d7
    monitor-exit p0

    return-void

    :catchall_4d9
    move-exception v0

    move-object/from16 v3, p2

    :goto_4dc
    monitor-exit p0
    :try_end_4dd
    .catchall {:try_start_4ce .. :try_end_4dd} :catchall_4de

    throw v0

    :catchall_4de
    move-exception v0

    goto :goto_4dc

    :pswitch_data_4e0
    .packed-switch -0xb
        :pswitch_359  #fffffff5
        :pswitch_32a  #fffffff6
        :pswitch_309  #fffffff7
        :pswitch_2e0  #fffffff8
        :pswitch_2b1  #fffffff9
        :pswitch_2af  #fffffffa
        :pswitch_28e  #fffffffb
        :pswitch_26d  #fffffffc
        :pswitch_24c  #fffffffd
        :pswitch_22b  #fffffffe
        :pswitch_22b  #ffffffff
    .end packed-switch
.end method

.method setWindowStopped(Z)V
    .registers 4

    invoke-virtual {p0}, Landroid/view/ViewRootImpl;->checkThread()V

    iget-object v0, p0, Landroid/view/ViewRootImpl;->mViewRootMonitor:Landroid/os/perfdebug/ViewRootMonitor;

    invoke-virtual {v0, p0, p1}, Landroid/os/perfdebug/ViewRootMonitor;->onWindowStoped(Landroid/view/ViewRootImpl;Z)V

    iget-boolean v0, p0, Landroid/view/ViewRootImpl;->mStopped:Z

    if-eq v0, p1, :cond_40

    iput-boolean p1, p0, Landroid/view/ViewRootImpl;->mStopped:Z

    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v0, Landroid/view/View$AttachInfo;->mThreadedRenderer:Landroid/view/ThreadedRenderer;

    if-eqz v0, :cond_19

    iget-boolean v1, p0, Landroid/view/ViewRootImpl;->mStopped:Z

    invoke-virtual {v0, v1}, Landroid/view/ThreadedRenderer;->setStopped(Z)V

    :cond_19
    iget-boolean v1, p0, Landroid/view/ViewRootImpl;->mStopped:Z

    if-nez v1, :cond_24

    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/view/ViewRootImpl;->mAppVisibilityChanged:Z

    invoke-virtual {p0}, Landroid/view/ViewRootImpl;->scheduleTraversals()V

    goto :goto_40

    :cond_24
    if-eqz v0, :cond_2b

    iget-object v1, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ThreadedRenderer;->destroyHardwareResources(Landroid/view/View;)V

    :cond_2b
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mSurface:Landroid/view/Surface;

    invoke-virtual {v1}, Landroid/view/Surface;->isValid()Z

    move-result v1

    if-eqz v1, :cond_3d

    iget-object v1, p0, Landroid/view/ViewRootImpl;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    if-eqz v1, :cond_3a

    invoke-direct {p0}, Landroid/view/ViewRootImpl;->notifyHolderSurfaceDestroyed()V

    :cond_3a
    invoke-direct {p0}, Landroid/view/ViewRootImpl;->notifySurfaceDestroyed()V

    :cond_3d
    invoke-direct {p0}, Landroid/view/ViewRootImpl;->destroySurface()V

    :cond_40
    :goto_40
    return-void
.end method

.method public showContextMenuForChild(Landroid/view/View;)Z
    .registers 3

    const/4 v0, 0x0

    return v0
.end method

.method public showContextMenuForChild(Landroid/view/View;FF)Z
    .registers 5

    const/4 v0, 0x0

    return v0
.end method

.method public startActionModeForChild(Landroid/view/View;Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;
    .registers 4

    const/4 v0, 0x0

    return-object v0
.end method

.method public startActionModeForChild(Landroid/view/View;Landroid/view/ActionMode$Callback;I)Landroid/view/ActionMode;
    .registers 5

    const/4 v0, 0x0

    return-object v0
.end method

.method public synthesizeInputEvent(Landroid/view/InputEvent;)V
    .registers 4

    iget-object v0, p0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    const/16 v1, 0x18

    invoke-virtual {v0, v1, p1}, Landroid/view/ViewRootImpl$ViewRootHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Message;->setAsynchronous(Z)V

    iget-object v1, p0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    invoke-virtual {v1, v0}, Landroid/view/ViewRootImpl$ViewRootHandler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method systemGestureExclusionChanged()V
    .registers 4

    iget-object v0, p0, Landroid/view/ViewRootImpl;->mGestureExclusionTracker:Landroid/view/ViewRootRectTracker;

    invoke-virtual {v0}, Landroid/view/ViewRootRectTracker;->computeChangedRects()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_22

    iget-object v1, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    if-eqz v1, :cond_22

    :try_start_c
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mWindowSession:Landroid/view/IWindowSession;

    iget-object v2, p0, Landroid/view/ViewRootImpl;->mWindow:Landroid/view/ViewRootImpl$W;

    invoke-interface {v1, v2, v0}, Landroid/view/IWindowSession;->reportSystemGestureExclusionChanged(Landroid/view/IWindow;Ljava/util/List;)V
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_13} :catch_1c

    nop

    iget-object v1, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v1, v1, Landroid/view/View$AttachInfo;->mTreeObserver:Landroid/view/ViewTreeObserver;

    invoke-virtual {v1, v0}, Landroid/view/ViewTreeObserver;->dispatchOnSystemGestureExclusionRectsChanged(Ljava/util/List;)V

    goto :goto_22

    :catch_1c
    move-exception v1

    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2

    :cond_22
    :goto_22
    return-void
.end method

.method public touchModeChanged(Z)V
    .registers 4

    monitor-enter p0

    :try_start_1
    iput-boolean p1, p0, Landroid/view/ViewRootImpl;->mUpcomingInTouchMode:Z

    monitor-exit p0
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_12

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    const/16 v1, 0x22

    iput v1, v0, Landroid/os/Message;->what:I

    iget-object v1, p0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    invoke-virtual {v1, v0}, Landroid/view/ViewRootImpl$ViewRootHandler;->sendMessage(Landroid/os/Message;)Z

    return-void

    :catchall_12
    move-exception v0

    :try_start_13
    monitor-exit p0
    :try_end_14
    .catchall {:try_start_13 .. :try_end_14} :catchall_12

    throw v0
.end method

.method transformMatrixToGlobal(Landroid/graphics/Matrix;)V
    .registers 4

    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget v0, v0, Landroid/view/View$AttachInfo;->mWindowLeft:I

    int-to-float v0, v0

    iget-object v1, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget v1, v1, Landroid/view/View$AttachInfo;->mWindowTop:I

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    return-void
.end method

.method transformMatrixToLocal(Landroid/graphics/Matrix;)V
    .registers 4

    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget v0, v0, Landroid/view/View$AttachInfo;->mWindowLeft:I

    neg-int v0, v0

    int-to-float v0, v0

    iget-object v1, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget v1, v1, Landroid/view/View$AttachInfo;->mWindowTop:I

    neg-int v1, v1

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    return-void
.end method

.method unscheduleConsumeBatchedInput()V
    .registers 5

    iget-boolean v0, p0, Landroid/view/ViewRootImpl;->mConsumeBatchedInputScheduled:Z

    if-eqz v0, :cond_f

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/view/ViewRootImpl;->mConsumeBatchedInputScheduled:Z

    iget-object v1, p0, Landroid/view/ViewRootImpl;->mChoreographer:Landroid/view/Choreographer;

    iget-object v2, p0, Landroid/view/ViewRootImpl;->mConsumedBatchedInputRunnable:Landroid/view/ViewRootImpl$ConsumeBatchedInputRunnable;

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v2, v3}, Landroid/view/Choreographer;->removeCallbacks(ILjava/lang/Runnable;Ljava/lang/Object;)V

    :cond_f
    return-void
.end method

.method unscheduleTraversals()V
    .registers 5

    iget-boolean v0, p0, Landroid/view/ViewRootImpl;->mTraversalScheduled:Z

    if-eqz v0, :cond_1f

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/view/ViewRootImpl;->mTraversalScheduled:Z

    iget-object v0, p0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    invoke-virtual {v0}, Landroid/view/ViewRootImpl$ViewRootHandler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->getQueue()Landroid/os/MessageQueue;

    move-result-object v0

    iget v1, p0, Landroid/view/ViewRootImpl;->mTraversalBarrier:I

    invoke-virtual {v0, v1}, Landroid/os/MessageQueue;->removeSyncBarrier(I)V

    iget-object v0, p0, Landroid/view/ViewRootImpl;->mChoreographer:Landroid/view/Choreographer;

    const/4 v1, 0x3

    iget-object v2, p0, Landroid/view/ViewRootImpl;->mTraversalRunnable:Landroid/view/ViewRootImpl$TraversalRunnable;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/Choreographer;->removeCallbacks(ILjava/lang/Runnable;Ljava/lang/Object;)V

    :cond_1f
    return-void
.end method

.method updateBlastSurfaceIfNeeded()V
    .registers 8

    iget-object v0, p0, Landroid/view/ViewRootImpl;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v0}, Landroid/view/SurfaceControl;->isValid()Z

    move-result v0

    if-nez v0, :cond_9

    return-void

    :cond_9
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mBlastBufferQueue:Landroid/graphics/BLASTBufferQueue;

    if-eqz v0, :cond_29

    iget-object v1, p0, Landroid/view/ViewRootImpl;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v0, v1}, Landroid/graphics/BLASTBufferQueue;->isSameSurfaceControl(Landroid/view/SurfaceControl;)Z

    move-result v0

    if-eqz v0, :cond_29

    iget-object v0, p0, Landroid/view/ViewRootImpl;->mBlastBufferQueue:Landroid/graphics/BLASTBufferQueue;

    iget-object v1, p0, Landroid/view/ViewRootImpl;->mSurfaceControl:Landroid/view/SurfaceControl;

    iget-object v2, p0, Landroid/view/ViewRootImpl;->mSurfaceSize:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->x:I

    iget-object v3, p0, Landroid/view/ViewRootImpl;->mSurfaceSize:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->y:I

    iget-object v4, p0, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget v4, v4, Landroid/view/WindowManager$LayoutParams;->format:I

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/BLASTBufferQueue;->update(Landroid/view/SurfaceControl;III)V

    return-void

    :cond_29
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mBlastBufferQueue:Landroid/graphics/BLASTBufferQueue;

    if-eqz v0, :cond_30

    invoke-virtual {v0}, Landroid/graphics/BLASTBufferQueue;->destroy()V

    :cond_30
    new-instance v0, Landroid/graphics/BLASTBufferQueue;

    iget-object v2, p0, Landroid/view/ViewRootImpl;->mTag:Ljava/lang/String;

    iget-object v3, p0, Landroid/view/ViewRootImpl;->mSurfaceControl:Landroid/view/SurfaceControl;

    iget-object v1, p0, Landroid/view/ViewRootImpl;->mSurfaceSize:Landroid/graphics/Point;

    iget v4, v1, Landroid/graphics/Point;->x:I

    iget-object v1, p0, Landroid/view/ViewRootImpl;->mSurfaceSize:Landroid/graphics/Point;

    iget v5, v1, Landroid/graphics/Point;->y:I

    iget-object v1, p0, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget v6, v1, Landroid/view/WindowManager$LayoutParams;->format:I

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Landroid/graphics/BLASTBufferQueue;-><init>(Ljava/lang/String;Landroid/view/SurfaceControl;III)V

    iput-object v0, p0, Landroid/view/ViewRootImpl;->mBlastBufferQueue:Landroid/graphics/BLASTBufferQueue;

    sget-object v1, Landroid/view/ViewRootImpl;->sTransactionHangCallback:Landroid/graphics/BLASTBufferQueue$TransactionHangCallback;

    invoke-virtual {v0, v1}, Landroid/graphics/BLASTBufferQueue;->setTransactionHangCallback(Landroid/graphics/BLASTBufferQueue$TransactionHangCallback;)V

    iget-object v0, p0, Landroid/view/ViewRootImpl;->mBlastBufferQueue:Landroid/graphics/BLASTBufferQueue;

    invoke-static {v0}, Landroid/util/BoostFramework$ScrollOptimizer;->setBLASTBufferQueue(Landroid/graphics/BLASTBufferQueue;)V

    iget-object v0, p0, Landroid/view/ViewRootImpl;->mBlastBufferQueue:Landroid/graphics/BLASTBufferQueue;

    invoke-virtual {v0}, Landroid/graphics/BLASTBufferQueue;->createSurface()Landroid/view/Surface;

    move-result-object v0

    iget-object v1, p0, Landroid/view/ViewRootImpl;->mSurface:Landroid/view/Surface;

    invoke-virtual {v1, v0}, Landroid/view/Surface;->transferFrom(Landroid/view/Surface;)V

    invoke-static {}, Landroid/view/animation/ChoreographerInjectorStub;->getInstance()Landroid/view/animation/ChoreographerInjectorStub;

    move-result-object v1

    iget-object v2, p0, Landroid/view/ViewRootImpl;->mBlastBufferQueue:Landroid/graphics/BLASTBufferQueue;

    new-instance v3, Landroid/view/ViewRootImpl$$ExternalSyntheticLambda17;

    invoke-direct {v3, p0}, Landroid/view/ViewRootImpl$$ExternalSyntheticLambda17;-><init>(Landroid/view/ViewRootImpl;)V

    invoke-interface {v1, v2, v3}, Landroid/view/animation/ChoreographerInjectorStub;->creatDynamicBufferInfo(Landroid/graphics/BLASTBufferQueue;Landroid/view/animation/ChoreographerInjectorStub$DynamicBufferInfoStub$SetFrameDroppedCallback;)Landroid/view/animation/ChoreographerInjectorStub$DynamicBufferInfoStub;

    move-result-object v1

    iput-object v1, p0, Landroid/view/ViewRootImpl;->mDynamicBufferInfo:Landroid/view/animation/ChoreographerInjectorStub$DynamicBufferInfoStub;

    return-void
.end method

.method updateCompatSysUiVisibility(IZZ)V
    .registers 9

    invoke-static {p1}, Landroid/view/InsetsState;->toPublicType(I)I

    move-result v0

    invoke-static {}, Landroid/view/WindowInsets$Type;->statusBars()I

    move-result v1

    if-eq v0, v1, :cond_11

    invoke-static {}, Landroid/view/WindowInsets$Type;->navigationBars()I

    move-result v1

    if-eq v0, v1, :cond_11

    return-void

    :cond_11
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mCompatibleVisibilityInfo:Landroid/view/ViewRootImpl$SystemUiVisibilityInfo;

    invoke-static {}, Landroid/view/WindowInsets$Type;->statusBars()I

    move-result v2

    if-ne v0, v2, :cond_1b

    const/4 v2, 0x4

    goto :goto_1c

    :cond_1b
    const/4 v2, 0x2

    :goto_1c
    nop

    if-eqz p2, :cond_34

    iget v3, v1, Landroid/view/ViewRootImpl$SystemUiVisibilityInfo;->globalVisibility:I

    not-int v4, v2

    and-int/2addr v3, v4

    iput v3, v1, Landroid/view/ViewRootImpl$SystemUiVisibilityInfo;->globalVisibility:I

    if-eqz p3, :cond_3f

    iget-object v3, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget v3, v3, Landroid/view/View$AttachInfo;->mSystemUiVisibility:I

    and-int/2addr v3, v2

    if-eqz v3, :cond_3f

    iget v3, v1, Landroid/view/ViewRootImpl$SystemUiVisibilityInfo;->localChanges:I

    or-int/2addr v3, v2

    iput v3, v1, Landroid/view/ViewRootImpl$SystemUiVisibilityInfo;->localChanges:I

    goto :goto_3f

    :cond_34
    iget v3, v1, Landroid/view/ViewRootImpl$SystemUiVisibilityInfo;->globalVisibility:I

    or-int/2addr v3, v2

    iput v3, v1, Landroid/view/ViewRootImpl$SystemUiVisibilityInfo;->globalVisibility:I

    iget v3, v1, Landroid/view/ViewRootImpl$SystemUiVisibilityInfo;->localChanges:I

    not-int v4, v2

    and-int/2addr v3, v4

    iput v3, v1, Landroid/view/ViewRootImpl$SystemUiVisibilityInfo;->localChanges:I

    :cond_3f
    :goto_3f
    invoke-direct {p0, v1}, Landroid/view/ViewRootImpl;->dispatchDispatchSystemUiVisibilityChanged(Landroid/view/ViewRootImpl$SystemUiVisibilityInfo;)V

    return-void
.end method

.method public updateConfiguration(I)V
    .registers 8

    iget-object v0, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    if-nez v0, :cond_5

    return-void

    :cond_5
    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    const/4 v2, -0x1

    if-eq p1, v2, :cond_13

    invoke-virtual {p0, p1, v1}, Landroid/view/ViewRootImpl;->onMovedToDisplay(ILandroid/content/res/Configuration;)V

    :cond_13
    iget-boolean v2, p0, Landroid/view/ViewRootImpl;->mForceNextConfigUpdate:Z

    if-nez v2, :cond_1f

    iget-object v2, p0, Landroid/view/ViewRootImpl;->mLastConfigurationFromResources:Landroid/content/res/Configuration;

    invoke-virtual {v2, v1}, Landroid/content/res/Configuration;->diff(Landroid/content/res/Configuration;)I

    move-result v2

    if-eqz v2, :cond_4e

    :cond_1f
    iget-object v2, p0, Landroid/view/ViewRootImpl;->mDisplay:Landroid/view/Display;

    invoke-virtual {v2}, Landroid/view/Display;->getDisplayId()I

    move-result v2

    invoke-direct {p0, v2, v0}, Landroid/view/ViewRootImpl;->updateInternalDisplay(ILandroid/content/res/Resources;)V

    iget-object v2, p0, Landroid/view/ViewRootImpl;->mLastConfigurationFromResources:Landroid/content/res/Configuration;

    invoke-virtual {v2}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result v2

    invoke-virtual {v1}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result v3

    iget-object v4, p0, Landroid/view/ViewRootImpl;->mLastConfigurationFromResources:Landroid/content/res/Configuration;

    invoke-virtual {v4, v1}, Landroid/content/res/Configuration;->setTo(Landroid/content/res/Configuration;)V

    if-eq v2, v3, :cond_43

    iget v4, p0, Landroid/view/ViewRootImpl;->mViewLayoutDirectionInitial:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_43

    iget-object v4, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v4, v3}, Landroid/view/View;->setLayoutDirection(I)V

    :cond_43
    iget-object v4, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v4, v1}, Landroid/view/View;->dispatchConfigurationChanged(Landroid/content/res/Configuration;)V

    const/4 v4, 0x1

    iput-boolean v4, p0, Landroid/view/ViewRootImpl;->mForceNextWindowRelayout:Z

    invoke-virtual {p0}, Landroid/view/ViewRootImpl;->requestLayout()V

    :cond_4e
    invoke-static {}, Landroid/view/ForceDarkHelperStub;->getInstance()Landroid/view/ForceDarkHelperStub;

    move-result-object v2

    invoke-interface {v2, p0}, Landroid/view/ForceDarkHelperStub;->updateForceDarkMode(Landroid/view/ViewRootImpl;)Z

    move-result v2

    if-nez v2, :cond_5b

    invoke-direct {p0}, Landroid/view/ViewRootImpl;->updateForceDarkMode()V

    :cond_5b
    return-void
.end method

.method updateKeepClearRectsForView(Landroid/view/View;)V
    .registers 4

    iget-object v0, p0, Landroid/view/ViewRootImpl;->mKeepClearRectsTracker:Landroid/view/ViewRootRectTracker;

    invoke-virtual {v0, p1}, Landroid/view/ViewRootRectTracker;->updateRectsForView(Landroid/view/View;)V

    iget-object v0, p0, Landroid/view/ViewRootImpl;->mUnrestrictedKeepClearRectsTracker:Landroid/view/ViewRootRectTracker;

    invoke-virtual {v0, p1}, Landroid/view/ViewRootRectTracker;->updateRectsForView(Landroid/view/View;)V

    iget-object v0, p0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    const/16 v1, 0x23

    invoke-virtual {v0, v1}, Landroid/view/ViewRootImpl$ViewRootHandler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public updatePointerIcon(FF)V
    .registers 16

    const/16 v0, 0x1b

    iget-object v1, p0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    const/16 v2, 0x1b

    invoke-virtual {v1, v2}, Landroid/view/ViewRootImpl$ViewRootHandler;->removeMessages(I)V

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v11

    const-wide/16 v3, 0x0

    const/4 v7, 0x7

    const/4 v10, 0x0

    move-wide v5, v11

    move v8, p1

    move v9, p2

    invoke-static/range {v3 .. v10}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v1

    iget-object v3, p0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    invoke-virtual {v3, v2, v1}, Landroid/view/ViewRootImpl$ViewRootHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    iget-object v3, p0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    invoke-virtual {v3, v2}, Landroid/view/ViewRootImpl$ViewRootHandler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method updateSystemGestureExclusionRectsForView(Landroid/view/View;)V
    .registers 4

    iget-object v0, p0, Landroid/view/ViewRootImpl;->mGestureExclusionTracker:Landroid/view/ViewRootRectTracker;

    invoke-virtual {v0, p1}, Landroid/view/ViewRootRectTracker;->updateRectsForView(Landroid/view/View;)V

    iget-object v0, p0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    const/16 v1, 0x1e

    invoke-virtual {v0, v1}, Landroid/view/ViewRootImpl$ViewRootHandler;->sendEmptyMessage(I)Z

    return-void
.end method

.method useBLAST()Z
    .registers 2

    iget-boolean v0, p0, Landroid/view/ViewRootImpl;->mUseBLASTAdapter:Z

    if-eqz v0, :cond_a

    iget-boolean v0, p0, Landroid/view/ViewRootImpl;->mForceDisableBLAST:Z

    if-nez v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method wasRelayoutRequested()Z
    .registers 2

    iget-boolean v0, p0, Landroid/view/ViewRootImpl;->mRelayoutRequested:Z

    return v0
.end method

.method public windowFocusChanged(Z)V
    .registers 4

    monitor-enter p0

    const/4 v0, 0x1

    :try_start_2
    iput-boolean v0, p0, Landroid/view/ViewRootImpl;->mWindowFocusChanged:Z

    iput-boolean p1, p0, Landroid/view/ViewRootImpl;->mUpcomingWindowFocus:Z

    monitor-exit p0
    :try_end_7
    .catchall {:try_start_2 .. :try_end_7} :catchall_14

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    const/4 v1, 0x6

    iput v1, v0, Landroid/os/Message;->what:I

    iget-object v1, p0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    invoke-virtual {v1, v0}, Landroid/view/ViewRootImpl$ViewRootHandler;->sendMessage(Landroid/os/Message;)Z

    return-void

    :catchall_14
    move-exception v0

    :try_start_15
    monitor-exit p0
    :try_end_16
    .catchall {:try_start_15 .. :try_end_16} :catchall_14

    throw v0
.end method

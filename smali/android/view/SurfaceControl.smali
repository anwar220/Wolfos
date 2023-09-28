# classes3.dex

.class public final Landroid/view/SurfaceControl;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/SurfaceControl$GlobalTransactionWrapper;,
        Landroid/view/SurfaceControl$MiuiTransaction;,
        Landroid/view/SurfaceControl$LockDebuggingTransaction;,
        Landroid/view/SurfaceControl$Transaction;,
        Landroid/view/SurfaceControl$TransactionCommittedListener;,
        Landroid/view/SurfaceControl$DisplayPrimaries;,
        Landroid/view/SurfaceControl$CieXyz;,
        Landroid/view/SurfaceControl$DesiredDisplayModeSpecs;,
        Landroid/view/SurfaceControl$DisplayMode;,
        Landroid/view/SurfaceControl$DynamicDisplayInfo;,
        Landroid/view/SurfaceControl$StaticDisplayInfo;,
        Landroid/view/SurfaceControl$Builder;,
        Landroid/view/SurfaceControl$LayerCaptureArgs;,
        Landroid/view/SurfaceControl$DisplayCaptureArgs;,
        Landroid/view/SurfaceControl$CaptureArgs;,
        Landroid/view/SurfaceControl$SyncScreenCaptureListener;,
        Landroid/view/SurfaceControl$ScreenCaptureListener;,
        Landroid/view/SurfaceControl$ScreenshotHardwareBuffer;,
        Landroid/view/SurfaceControl$OnJankDataListener;,
        Landroid/view/SurfaceControl$JankData;,
        Landroid/view/SurfaceControl$OnReparentListener;,
        Landroid/view/SurfaceControl$BufferTransform;
    }
.end annotation


# static fields
.field public static final BUFFER_TRANSFORM_IDENTITY:I = 0x0

.field public static final BUFFER_TRANSFORM_MIRROR_HORIZONTAL:I = 0x1

.field public static final BUFFER_TRANSFORM_MIRROR_VERTICAL:I = 0x2

.field public static final BUFFER_TRANSFORM_ROTATE_180:I = 0x3

.field public static final BUFFER_TRANSFORM_ROTATE_270:I = 0x7

.field public static final BUFFER_TRANSFORM_ROTATE_90:I = 0x4

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/view/SurfaceControl;",
            ">;"
        }
    .end annotation
.end field

.field public static final CURSOR_WINDOW:I = 0x2000

.field public static final DISPLAY_DECORATION:I = 0x200

.field public static final DISPLAY_RECEIVES_INPUT:I = 0x1

.field public static final ENABLE_BACKPRESSURE:I = 0x100

.field private static final FLAG_CAST:I = 0x800

.field public static final FX_SURFACE_BLAST:I = 0x40000

.field public static final FX_SURFACE_CONTAINER:I = 0x80000

.field public static final FX_SURFACE_EFFECT:I = 0x20000

.field public static final FX_SURFACE_MASK:I = 0xf0000

.field public static final FX_SURFACE_NORMAL:I = 0x0

.field public static final HIDDEN:I = 0x4

.field private static final INTERNAL_DATASPACE_DISPLAY_P3:I = 0x88a0000

.field private static final INTERNAL_DATASPACE_SCRGB:I = 0x18810000

.field private static final INTERNAL_DATASPACE_SRGB:I = 0x8810000

.field public static final METADATA_ACCESSIBILITY_ID:I = 0x5

.field public static final METADATA_GAME_MODE:I = 0x8

.field public static final METADATA_MOUSE_CURSOR:I = 0x4

.field public static final METADATA_OWNER_PID:I = 0x6

.field public static final METADATA_OWNER_UID:I = 0x1

.field public static final METADATA_TASK_ID:I = 0x3

.field public static final METADATA_WINDOW_TYPE:I = 0x2

.field public static final NON_PREMULTIPLIED:I = 0x100

.field public static final NO_COLOR_FILL:I = 0x4000

.field public static final OPAQUE:I = 0x400

.field public static final POWER_MODE_DOZE:I = 0x1

.field public static final POWER_MODE_DOZE_SUSPEND:I = 0x3

.field public static final POWER_MODE_NORMAL:I = 0x2

.field public static final POWER_MODE_OFF:I = 0x0

.field public static final POWER_MODE_ON_SUSPEND:I = 0x4

.field public static final PROTECTED_APP:I = 0x800

.field public static final SECURE:I = 0x80

.field public static final SKIP_SCREENSHOT:I = 0x40

.field private static final SURFACE_HIDDEN:I = 0x1

.field private static final SURFACE_OPAQUE:I = 0x2

.field private static final TAG:Ljava/lang/String; = "SurfaceControl"

.field private static mCastLayer:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/SurfaceControl;",
            ">;"
        }
    .end annotation
.end field

.field static sGlobalTransaction:Landroid/view/SurfaceControl$GlobalTransactionWrapper;

.field static sTransactionNestCount:J


# instance fields
.field private final mCloseGuard:Ldalvik/system/CloseGuard;

.field private mHeight:I

.field private mLocalOwnerView:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private final mLock:Ljava/lang/Object;

.field private mName:Ljava/lang/String;

.field private mNativeHandle:J

.field public mNativeObject:J

.field private mPropDynamicLog:Z

.field private mReparentListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/SurfaceControl$OnReparentListener;",
            ">;"
        }
    .end annotation
.end field

.field private mWidth:I


# direct methods
.method static bridge synthetic -$$Nest$fgetmLock(Landroid/view/SurfaceControl;)Ljava/lang/Object;
    .registers 1

    iget-object p0, p0, Landroid/view/SurfaceControl;->mLock:Ljava/lang/Object;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmReparentListeners(Landroid/view/SurfaceControl;)Ljava/util/ArrayList;
    .registers 1

    iget-object p0, p0, Landroid/view/SurfaceControl;->mReparentListeners:Ljava/util/ArrayList;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mcheckNotReleased(Landroid/view/SurfaceControl;)V
    .registers 1

    invoke-direct {p0}, Landroid/view/SurfaceControl;->checkNotReleased()V

    return-void
.end method

.method static bridge synthetic -$$Nest$sfgetmCastLayer()Ljava/util/ArrayList;
    .registers 1

    sget-object v0, Landroid/view/SurfaceControl;->mCastLayer:Ljava/util/ArrayList;

    return-object v0
.end method

.method static bridge synthetic -$$Nest$smnativeAddTransactionCommittedListener(JLandroid/view/SurfaceControl$TransactionCommittedListener;)V
    .registers 3

    invoke-static {p0, p1, p2}, Landroid/view/SurfaceControl;->nativeAddTransactionCommittedListener(JLandroid/view/SurfaceControl$TransactionCommittedListener;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$smnativeApplyMiuiTransaction(JZ)V
    .registers 3

    invoke-static {p0, p1, p2}, Landroid/view/SurfaceControl;->nativeApplyMiuiTransaction(JZ)V

    return-void
.end method

.method static bridge synthetic -$$Nest$smnativeApplyTransaction(JZ)V
    .registers 3

    invoke-static {p0, p1, p2}, Landroid/view/SurfaceControl;->nativeApplyTransaction(JZ)V

    return-void
.end method

.method static bridge synthetic -$$Nest$smnativeClearTransaction(J)V
    .registers 2

    invoke-static {p0, p1}, Landroid/view/SurfaceControl;->nativeClearTransaction(J)V

    return-void
.end method

.method static bridge synthetic -$$Nest$smnativeCreateJankDataListenerWrapper(Landroid/view/SurfaceControl$OnJankDataListener;)J
    .registers 3

    invoke-static {p0}, Landroid/view/SurfaceControl;->nativeCreateJankDataListenerWrapper(Landroid/view/SurfaceControl$OnJankDataListener;)J

    move-result-wide v0

    return-wide v0
.end method

.method static bridge synthetic -$$Nest$smnativeCreateMiuiTransaction()J
    .registers 2

    invoke-static {}, Landroid/view/SurfaceControl;->nativeCreateMiuiTransaction()J

    move-result-wide v0

    return-wide v0
.end method

.method static bridge synthetic -$$Nest$smnativeCreateTransaction()J
    .registers 2

    invoke-static {}, Landroid/view/SurfaceControl;->nativeCreateTransaction()J

    move-result-wide v0

    return-wide v0
.end method

.method static bridge synthetic -$$Nest$smnativeDeferAnimation(JJI)V
    .registers 5

    invoke-static {p0, p1, p2, p3, p4}, Landroid/view/SurfaceControl;->nativeDeferAnimation(JJI)V

    return-void
.end method

.method static bridge synthetic -$$Nest$smnativeGetNativeTransactionFinalizer()J
    .registers 2

    invoke-static {}, Landroid/view/SurfaceControl;->nativeGetNativeTransactionFinalizer()J

    move-result-wide v0

    return-wide v0
.end method

.method static bridge synthetic -$$Nest$smnativeMergeTransaction(JJ)V
    .registers 4

    invoke-static {p0, p1, p2, p3}, Landroid/view/SurfaceControl;->nativeMergeTransaction(JJ)V

    return-void
.end method

.method static bridge synthetic -$$Nest$smnativeReadTransactionFromParcel(Landroid/os/Parcel;)J
    .registers 3

    invoke-static {p0}, Landroid/view/SurfaceControl;->nativeReadTransactionFromParcel(Landroid/os/Parcel;)J

    move-result-wide v0

    return-wide v0
.end method

.method static bridge synthetic -$$Nest$smnativeRemoveCurrentInputFocus(JI)V
    .registers 3

    invoke-static {p0, p1, p2}, Landroid/view/SurfaceControl;->nativeRemoveCurrentInputFocus(JI)V

    return-void
.end method

.method static bridge synthetic -$$Nest$smnativeReparent(JJJ)V
    .registers 6

    invoke-static/range {p0 .. p5}, Landroid/view/SurfaceControl;->nativeReparent(JJJ)V

    return-void
.end method

.method static bridge synthetic -$$Nest$smnativeSanitize(J)V
    .registers 2

    invoke-static {p0, p1}, Landroid/view/SurfaceControl;->nativeSanitize(J)V

    return-void
.end method

.method static bridge synthetic -$$Nest$smnativeSetAlpha(JJF)V
    .registers 5

    invoke-static {p0, p1, p2, p3, p4}, Landroid/view/SurfaceControl;->nativeSetAlpha(JJF)V

    return-void
.end method

.method static bridge synthetic -$$Nest$smnativeSetAnimationTransaction(J)V
    .registers 2

    invoke-static {p0, p1}, Landroid/view/SurfaceControl;->nativeSetAnimationTransaction(J)V

    return-void
.end method

.method static bridge synthetic -$$Nest$smnativeSetBackgroundBlurRadius(JJI)V
    .registers 5

    invoke-static {p0, p1, p2, p3, p4}, Landroid/view/SurfaceControl;->nativeSetBackgroundBlurRadius(JJI)V

    return-void
.end method

.method static bridge synthetic -$$Nest$smnativeSetBlurRegions(JJ[[FI)V
    .registers 6

    invoke-static/range {p0 .. p5}, Landroid/view/SurfaceControl;->nativeSetBlurRegions(JJ[[FI)V

    return-void
.end method

.method static bridge synthetic -$$Nest$smnativeSetBuffer(JJLandroid/hardware/HardwareBuffer;JLjava/util/function/Consumer;)V
    .registers 8

    invoke-static/range {p0 .. p7}, Landroid/view/SurfaceControl;->nativeSetBuffer(JJLandroid/hardware/HardwareBuffer;JLjava/util/function/Consumer;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$smnativeSetBufferTransform(JJI)V
    .registers 5

    invoke-static {p0, p1, p2, p3, p4}, Landroid/view/SurfaceControl;->nativeSetBufferTransform(JJI)V

    return-void
.end method

.method static bridge synthetic -$$Nest$smnativeSetCastMode(JJLandroid/os/IBinder;Z)V
    .registers 6

    invoke-static/range {p0 .. p5}, Landroid/view/SurfaceControl;->nativeSetCastMode(JJLandroid/os/IBinder;Z)V

    return-void
.end method

.method static bridge synthetic -$$Nest$smnativeSetColor(JJ[F)V
    .registers 5

    invoke-static {p0, p1, p2, p3, p4}, Landroid/view/SurfaceControl;->nativeSetColor(JJ[F)V

    return-void
.end method

.method static bridge synthetic -$$Nest$smnativeSetColorSpaceAgnostic(JJZ)V
    .registers 5

    invoke-static {p0, p1, p2, p3, p4}, Landroid/view/SurfaceControl;->nativeSetColorSpaceAgnostic(JJZ)V

    return-void
.end method

.method static bridge synthetic -$$Nest$smnativeSetColorTransform(JJ[F[F)V
    .registers 6

    invoke-static/range {p0 .. p5}, Landroid/view/SurfaceControl;->nativeSetColorTransform(JJ[F[F)V

    return-void
.end method

.method static bridge synthetic -$$Nest$smnativeSetCornerRadius(JJF)V
    .registers 5

    invoke-static {p0, p1, p2, p3, p4}, Landroid/view/SurfaceControl;->nativeSetCornerRadius(JJF)V

    return-void
.end method

.method static bridge synthetic -$$Nest$smnativeSetDamageRegion(JJLandroid/graphics/Region;)V
    .registers 5

    invoke-static {p0, p1, p2, p3, p4}, Landroid/view/SurfaceControl;->nativeSetDamageRegion(JJLandroid/graphics/Region;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$smnativeSetDataSpace(JJI)V
    .registers 5

    invoke-static {p0, p1, p2, p3, p4}, Landroid/view/SurfaceControl;->nativeSetDataSpace(JJI)V

    return-void
.end method

.method static bridge synthetic -$$Nest$smnativeSetDestinationFrame(JJIIII)V
    .registers 8

    invoke-static/range {p0 .. p7}, Landroid/view/SurfaceControl;->nativeSetDestinationFrame(JJIIII)V

    return-void
.end method

.method static bridge synthetic -$$Nest$smnativeSetDiffScreenProjection(JLandroid/os/IBinder;I)V
    .registers 4

    invoke-static {p0, p1, p2, p3}, Landroid/view/SurfaceControl;->nativeSetDiffScreenProjection(JLandroid/os/IBinder;I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$smnativeSetDimmingEnabled(JJZ)V
    .registers 5

    invoke-static {p0, p1, p2, p3, p4}, Landroid/view/SurfaceControl;->nativeSetDimmingEnabled(JJZ)V

    return-void
.end method

.method static bridge synthetic -$$Nest$smnativeSetDisplayFlags(JLandroid/os/IBinder;I)V
    .registers 4

    invoke-static {p0, p1, p2, p3}, Landroid/view/SurfaceControl;->nativeSetDisplayFlags(JLandroid/os/IBinder;I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$smnativeSetDisplayLayerStack(JLandroid/os/IBinder;I)V
    .registers 4

    invoke-static {p0, p1, p2, p3}, Landroid/view/SurfaceControl;->nativeSetDisplayLayerStack(JLandroid/os/IBinder;I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$smnativeSetDisplayProjection(JLandroid/os/IBinder;IIIIIIIII)V
    .registers 12

    invoke-static/range {p0 .. p11}, Landroid/view/SurfaceControl;->nativeSetDisplayProjection(JLandroid/os/IBinder;IIIIIIIII)V

    return-void
.end method

.method static bridge synthetic -$$Nest$smnativeSetDisplaySize(JLandroid/os/IBinder;II)V
    .registers 5

    invoke-static {p0, p1, p2, p3, p4}, Landroid/view/SurfaceControl;->nativeSetDisplaySize(JLandroid/os/IBinder;II)V

    return-void
.end method

.method static bridge synthetic -$$Nest$smnativeSetDisplaySurface(JLandroid/os/IBinder;J)V
    .registers 5

    invoke-static {p0, p1, p2, p3, p4}, Landroid/view/SurfaceControl;->nativeSetDisplaySurface(JLandroid/os/IBinder;J)V

    return-void
.end method

.method static bridge synthetic -$$Nest$smnativeSetDropInputMode(JJI)V
    .registers 5

    invoke-static {p0, p1, p2, p3, p4}, Landroid/view/SurfaceControl;->nativeSetDropInputMode(JJI)V

    return-void
.end method

.method static bridge synthetic -$$Nest$smnativeSetEarlyWakeupEnd(J)V
    .registers 2

    invoke-static {p0, p1}, Landroid/view/SurfaceControl;->nativeSetEarlyWakeupEnd(J)V

    return-void
.end method

.method static bridge synthetic -$$Nest$smnativeSetEarlyWakeupStart(J)V
    .registers 2

    invoke-static {p0, p1}, Landroid/view/SurfaceControl;->nativeSetEarlyWakeupStart(J)V

    return-void
.end method

.method static bridge synthetic -$$Nest$smnativeSetFixedTransformHint(JJI)V
    .registers 5

    invoke-static {p0, p1, p2, p3, p4}, Landroid/view/SurfaceControl;->nativeSetFixedTransformHint(JJI)V

    return-void
.end method

.method static bridge synthetic -$$Nest$smnativeSetFlags(JJII)V
    .registers 6

    invoke-static/range {p0 .. p5}, Landroid/view/SurfaceControl;->nativeSetFlags(JJII)V

    return-void
.end method

.method static bridge synthetic -$$Nest$smnativeSetFocusedWindow(JLandroid/os/IBinder;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;I)V
    .registers 7

    invoke-static/range {p0 .. p6}, Landroid/view/SurfaceControl;->nativeSetFocusedWindow(JLandroid/os/IBinder;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$smnativeSetFrameRate(JJFII)V
    .registers 7

    invoke-static/range {p0 .. p6}, Landroid/view/SurfaceControl;->nativeSetFrameRate(JJFII)V

    return-void
.end method

.method static bridge synthetic -$$Nest$smnativeSetFrameRateSelectionPriority(JJI)V
    .registers 5

    invoke-static {p0, p1, p2, p3, p4}, Landroid/view/SurfaceControl;->nativeSetFrameRateSelectionPriority(JJI)V

    return-void
.end method

.method static bridge synthetic -$$Nest$smnativeSetFrameTimelineVsync(JJ)V
    .registers 4

    invoke-static {p0, p1, p2, p3}, Landroid/view/SurfaceControl;->nativeSetFrameTimelineVsync(JJ)V

    return-void
.end method

.method static bridge synthetic -$$Nest$smnativeSetGeometry(JJLandroid/graphics/Rect;Landroid/graphics/Rect;J)V
    .registers 8

    invoke-static/range {p0 .. p7}, Landroid/view/SurfaceControl;->nativeSetGeometry(JJLandroid/graphics/Rect;Landroid/graphics/Rect;J)V

    return-void
.end method

.method static bridge synthetic -$$Nest$smnativeSetHdrDimmer(JJZ[[FI[[FI)V
    .registers 9

    invoke-static/range {p0 .. p8}, Landroid/view/SurfaceControl;->nativeSetHdrDimmer(JJZ[[FI[[FI)V

    return-void
.end method

.method static bridge synthetic -$$Nest$smnativeSetHdrDimmerRatio(JJF)V
    .registers 5

    invoke-static {p0, p1, p2, p3, p4}, Landroid/view/SurfaceControl;->nativeSetHdrDimmerRatio(JJF)V

    return-void
.end method

.method static bridge synthetic -$$Nest$smnativeSetInputWindowInfo(JJLandroid/view/InputWindowHandle;)V
    .registers 5

    invoke-static {p0, p1, p2, p3, p4}, Landroid/view/SurfaceControl;->nativeSetInputWindowInfo(JJLandroid/view/InputWindowHandle;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$smnativeSetLastFrame(JJLandroid/os/IBinder;Z)V
    .registers 6

    invoke-static/range {p0 .. p5}, Landroid/view/SurfaceControl;->nativeSetLastFrame(JJLandroid/os/IBinder;Z)V

    return-void
.end method

.method static bridge synthetic -$$Nest$smnativeSetLayer(JJI)V
    .registers 5

    invoke-static {p0, p1, p2, p3, p4}, Landroid/view/SurfaceControl;->nativeSetLayer(JJI)V

    return-void
.end method

.method static bridge synthetic -$$Nest$smnativeSetLayerStack(JJI)V
    .registers 5

    invoke-static {p0, p1, p2, p3, p4}, Landroid/view/SurfaceControl;->nativeSetLayerStack(JJI)V

    return-void
.end method

.method static bridge synthetic -$$Nest$smnativeSetLimitedFrameRate(JLandroid/os/IBinder;I)V
    .registers 4

    invoke-static {p0, p1, p2, p3}, Landroid/view/SurfaceControl;->nativeSetLimitedFrameRate(JLandroid/os/IBinder;I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$smnativeSetMatrix(JJFFFF)V
    .registers 8

    invoke-static/range {p0 .. p7}, Landroid/view/SurfaceControl;->nativeSetMatrix(JJFFFF)V

    return-void
.end method

.method static bridge synthetic -$$Nest$smnativeSetMetadata(JJILandroid/os/Parcel;)V
    .registers 6

    invoke-static/range {p0 .. p5}, Landroid/view/SurfaceControl;->nativeSetMetadata(JJILandroid/os/Parcel;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$smnativeSetMiSecurityDisplay(JLandroid/os/IBinder;Z)V
    .registers 4

    invoke-static {p0, p1, p2, p3}, Landroid/view/SurfaceControl;->nativeSetMiSecurityDisplay(JLandroid/os/IBinder;Z)V

    return-void
.end method

.method static bridge synthetic -$$Nest$smnativeSetPosition(JJFF)V
    .registers 6

    invoke-static/range {p0 .. p5}, Landroid/view/SurfaceControl;->nativeSetPosition(JJFF)V

    return-void
.end method

.method static bridge synthetic -$$Nest$smnativeSetRelativeLayer(JJJI)V
    .registers 7

    invoke-static/range {p0 .. p6}, Landroid/view/SurfaceControl;->nativeSetRelativeLayer(JJJI)V

    return-void
.end method

.method static bridge synthetic -$$Nest$smnativeSetScale(JJFF)V
    .registers 6

    invoke-static/range {p0 .. p5}, Landroid/view/SurfaceControl;->nativeSetScale(JJFF)V

    return-void
.end method

.method static bridge synthetic -$$Nest$smnativeSetScreenProjection(JJI)V
    .registers 5

    invoke-static {p0, p1, p2, p3, p4}, Landroid/view/SurfaceControl;->nativeSetScreenProjection(JJI)V

    return-void
.end method

.method static bridge synthetic -$$Nest$smnativeSetShadowRadius(JJF)V
    .registers 5

    invoke-static {p0, p1, p2, p3, p4}, Landroid/view/SurfaceControl;->nativeSetShadowRadius(JJF)V

    return-void
.end method

.method static bridge synthetic -$$Nest$smnativeSetShadowSettings(JJIF[FFFFI)V
    .registers 11

    invoke-static/range {p0 .. p10}, Landroid/view/SurfaceControl;->nativeSetShadowSettings(JJIF[FFFFI)V

    return-void
.end method

.method static bridge synthetic -$$Nest$smnativeSetSize(JJII)V
    .registers 6

    invoke-static/range {p0 .. p5}, Landroid/view/SurfaceControl;->nativeSetSize(JJII)V

    return-void
.end method

.method static bridge synthetic -$$Nest$smnativeSetStretchEffect(JJFFFFFFFFFF)V
    .registers 14

    invoke-static/range {p0 .. p13}, Landroid/view/SurfaceControl;->nativeSetStretchEffect(JJFFFFFFFFFF)V

    return-void
.end method

.method static bridge synthetic -$$Nest$smnativeSetTransparentRegionHint(JJLandroid/graphics/Region;)V
    .registers 5

    invoke-static {p0, p1, p2, p3, p4}, Landroid/view/SurfaceControl;->nativeSetTransparentRegionHint(JJLandroid/graphics/Region;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$smnativeSetTrustedOverlay(JJZ)V
    .registers 5

    invoke-static {p0, p1, p2, p3, p4}, Landroid/view/SurfaceControl;->nativeSetTrustedOverlay(JJZ)V

    return-void
.end method

.method static bridge synthetic -$$Nest$smnativeSetWindowCrop(JJIIII)V
    .registers 8

    invoke-static/range {p0 .. p7}, Landroid/view/SurfaceControl;->nativeSetWindowCrop(JJIIII)V

    return-void
.end method

.method static bridge synthetic -$$Nest$smnativeSyncInputWindows(J)V
    .registers 2

    invoke-static {p0, p1}, Landroid/view/SurfaceControl;->nativeSyncInputWindows(J)V

    return-void
.end method

.method static bridge synthetic -$$Nest$smnativeWriteTransactionToParcel(JLandroid/os/Parcel;)V
    .registers 3

    invoke-static {p0, p1, p2}, Landroid/view/SurfaceControl;->nativeWriteTransactionToParcel(JLandroid/os/Parcel;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$smvalidateColorArg([F)V
    .registers 1

    invoke-static {p0}, Landroid/view/SurfaceControl;->validateColorArg([F)V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 2

    const-wide/16 v0, 0x0

    sput-wide v0, Landroid/view/SurfaceControl;->sTransactionNestCount:J

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Landroid/view/SurfaceControl;->mCastLayer:Ljava/util/ArrayList;

    new-instance v0, Landroid/view/SurfaceControl$1;

    invoke-direct {v0}, Landroid/view/SurfaceControl$1;-><init>()V

    sput-object v0, Landroid/view/SurfaceControl;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Ldalvik/system/CloseGuard;->get()Ldalvik/system/CloseGuard;

    move-result-object v0

    iput-object v0, p0, Landroid/view/SurfaceControl;->mCloseGuard:Ldalvik/system/CloseGuard;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/view/SurfaceControl;->mLock:Ljava/lang/Object;

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/view/SurfaceControl;->mPropDynamicLog:Z

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Ldalvik/system/CloseGuard;->get()Ldalvik/system/CloseGuard;

    move-result-object v0

    iput-object v0, p0, Landroid/view/SurfaceControl;->mCloseGuard:Ldalvik/system/CloseGuard;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/view/SurfaceControl;->mLock:Ljava/lang/Object;

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/view/SurfaceControl;->mPropDynamicLog:Z

    invoke-virtual {p0, p1}, Landroid/view/SurfaceControl;->readFromParcel(Landroid/os/Parcel;)V

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/view/SurfaceControl-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/view/SurfaceControl;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Landroid/view/SurfaceControl;Ljava/lang/String;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Ldalvik/system/CloseGuard;->get()Ldalvik/system/CloseGuard;

    move-result-object v0

    iput-object v0, p0, Landroid/view/SurfaceControl;->mCloseGuard:Ldalvik/system/CloseGuard;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/view/SurfaceControl;->mLock:Ljava/lang/Object;

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/view/SurfaceControl;->mPropDynamicLog:Z

    invoke-virtual {p0, p1, p2}, Landroid/view/SurfaceControl;->copyFrom(Landroid/view/SurfaceControl;Ljava/lang/String;)V

    return-void
.end method

.method private constructor <init>(Landroid/view/SurfaceSession;Ljava/lang/String;IIIILandroid/view/SurfaceControl;Landroid/util/SparseIntArray;Ljava/lang/ref/WeakReference;Ljava/lang/String;)V
    .registers 32
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/SurfaceSession;",
            "Ljava/lang/String;",
            "IIII",
            "Landroid/view/SurfaceControl;",
            "Landroid/util/SparseIntArray;",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/View;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/view/Surface$OutOfResourcesException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v11, p2

    move-object/from16 v12, p7

    move-object/from16 v13, p8

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Ldalvik/system/CloseGuard;->get()Ldalvik/system/CloseGuard;

    move-result-object v0

    iput-object v0, v1, Landroid/view/SurfaceControl;->mCloseGuard:Ldalvik/system/CloseGuard;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, v1, Landroid/view/SurfaceControl;->mLock:Ljava/lang/Object;

    const/4 v0, 0x0

    iput-boolean v0, v1, Landroid/view/SurfaceControl;->mPropDynamicLog:Z

    if-eqz v11, :cond_f9

    iput-object v11, v1, Landroid/view/SurfaceControl;->mName:Ljava/lang/String;

    move/from16 v14, p3

    iput v14, v1, Landroid/view/SurfaceControl;->mWidth:I

    move/from16 v15, p4

    iput v15, v1, Landroid/view/SurfaceControl;->mHeight:I

    move-object/from16 v10, p9

    iput-object v10, v1, Landroid/view/SurfaceControl;->mLocalOwnerView:Ljava/lang/ref/WeakReference;

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v8

    if-eqz v13, :cond_76

    :try_start_31
    invoke-virtual/range {p8 .. p8}, Landroid/util/SparseIntArray;->size()I

    move-result v2

    if-lez v2, :cond_76

    invoke-virtual/range {p8 .. p8}, Landroid/util/SparseIntArray;->size()I

    move-result v2

    invoke-virtual {v8, v2}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v2, 0x0

    :goto_3f
    invoke-virtual/range {p8 .. p8}, Landroid/util/SparseIntArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_6b

    invoke-virtual {v13, v2}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v3

    invoke-virtual {v8, v3}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v3, 0x4

    invoke-static {v3}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-virtual {v13, v2}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v3

    invoke-virtual {v8, v3}, Landroid/os/Parcel;->writeByteArray([B)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_3f

    :cond_6b
    invoke-virtual {v8, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    goto :goto_76

    :catchall_6f
    move-exception v0

    move-object/from16 v3, p10

    move-object/from16 v20, v8

    goto/16 :goto_f5

    :cond_76
    :goto_76
    nop

    const-wide/16 v16, 0x0

    if-eqz v12, :cond_80

    iget-wide v2, v12, Landroid/view/SurfaceControl;->mNativeObject:J
    :try_end_7d
    .catchall {:try_start_31 .. :try_end_7d} :catchall_6f

    move-wide/from16 v18, v2

    goto :goto_82

    :cond_80
    move-wide/from16 v18, v16

    :goto_82
    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move-object/from16 v20, v8

    move-wide/from16 v8, v18

    move-object/from16 v10, v20

    :try_start_94
    invoke-static/range {v2 .. v10}, Landroid/view/SurfaceControl;->nativeCreate(Landroid/view/SurfaceSession;Ljava/lang/String;IIIIJLandroid/os/Parcel;)J

    move-result-wide v2

    iput-wide v2, v1, Landroid/view/SurfaceControl;->mNativeObject:J
    :try_end_9a
    .catchall {:try_start_94 .. :try_end_9a} :catchall_f2

    invoke-virtual/range {v20 .. v20}, Landroid/os/Parcel;->recycle()V

    nop

    iget-wide v2, v1, Landroid/view/SurfaceControl;->mNativeObject:J

    cmp-long v0, v2, v16

    if-eqz v0, :cond_e8

    invoke-static {v2, v3}, Landroid/view/SurfaceControl;->nativeGetHandle(J)J

    move-result-wide v2

    iput-wide v2, v1, Landroid/view/SurfaceControl;->mNativeHandle:J

    iget-object v0, v1, Landroid/view/SurfaceControl;->mCloseGuard:Ldalvik/system/CloseGuard;

    const-string/jumbo v2, "release"

    move-object/from16 v3, p10

    invoke-virtual {v0, v2, v3}, Ldalvik/system/CloseGuard;->openWithCallSite(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    invoke-direct {v1, v0}, Landroid/view/SurfaceControl;->isDynamicLog(Z)Z

    move-result v0

    if-eqz v0, :cond_e7

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "sc.construct incStrong "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual/range {p0 .. p0}, Landroid/view/SurfaceControl;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v2, 0x6

    invoke-static {v2}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "SurfaceControl"

    invoke-static {v2, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_e7
    return-void

    :cond_e8
    move-object/from16 v3, p10

    new-instance v0, Landroid/view/Surface$OutOfResourcesException;

    const-string v2, "Couldn\'t allocate SurfaceControl native object"

    invoke-direct {v0, v2}, Landroid/view/Surface$OutOfResourcesException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_f2
    move-exception v0

    move-object/from16 v3, p10

    :goto_f5
    invoke-virtual/range {v20 .. v20}, Landroid/os/Parcel;->recycle()V

    throw v0

    :cond_f9
    move/from16 v14, p3

    move/from16 v15, p4

    move-object/from16 v3, p10

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "name must not be null"

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method synthetic constructor <init>(Landroid/view/SurfaceSession;Ljava/lang/String;IIIILandroid/view/SurfaceControl;Landroid/util/SparseIntArray;Ljava/lang/ref/WeakReference;Ljava/lang/String;Landroid/view/SurfaceControl-IA;)V
    .registers 12

    invoke-direct/range {p0 .. p10}, Landroid/view/SurfaceControl;-><init>(Landroid/view/SurfaceSession;Ljava/lang/String;IIIILandroid/view/SurfaceControl;Landroid/util/SparseIntArray;Ljava/lang/ref/WeakReference;Ljava/lang/String;)V

    return-void
.end method

.method public static addJankDataListener(Landroid/view/SurfaceControl$OnJankDataListener;Landroid/view/SurfaceControl;)V
    .registers 6

    invoke-static {p0}, Landroid/view/SurfaceControl$OnJankDataListener;->-$$Nest$fgetmNativePtr(Landroid/view/SurfaceControl$OnJankDataListener;)Lcom/android/internal/util/VirtualRefBasePtr;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/util/VirtualRefBasePtr;->get()J

    move-result-wide v0

    iget-wide v2, p1, Landroid/view/SurfaceControl;->mNativeObject:J

    invoke-static {v0, v1, v2, v3}, Landroid/view/SurfaceControl;->nativeAddJankDataListener(JJ)V

    return-void
.end method

.method private assignNativeObject(JLjava/lang/String;)V
    .registers 8

    iget-wide v0, p0, Landroid/view/SurfaceControl;->mNativeObject:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_b

    invoke-virtual {p0}, Landroid/view/SurfaceControl;->release()V

    :cond_b
    cmp-long v0, p1, v2

    if-eqz v0, :cond_17

    iget-object v0, p0, Landroid/view/SurfaceControl;->mCloseGuard:Ldalvik/system/CloseGuard;

    const-string/jumbo v1, "release"

    invoke-virtual {v0, v1, p3}, Ldalvik/system/CloseGuard;->openWithCallSite(Ljava/lang/String;Ljava/lang/String;)V

    :cond_17
    iput-wide p1, p0, Landroid/view/SurfaceControl;->mNativeObject:J

    cmp-long v0, p1, v2

    if-eqz v0, :cond_21

    invoke-static {p1, p2}, Landroid/view/SurfaceControl;->nativeGetHandle(J)J

    move-result-wide v2

    :cond_21
    iput-wide v2, p0, Landroid/view/SurfaceControl;->mNativeHandle:J

    return-void
.end method

.method public static captureDisplay(Landroid/view/SurfaceControl$DisplayCaptureArgs;Landroid/view/SurfaceControl$ScreenCaptureListener;)I
    .registers 3

    invoke-static {p0, p1}, Landroid/view/SurfaceControl;->nativeCaptureDisplay(Landroid/view/SurfaceControl$DisplayCaptureArgs;Landroid/view/SurfaceControl$ScreenCaptureListener;)I

    move-result v0

    return v0
.end method

.method public static captureDisplay(Landroid/view/SurfaceControl$DisplayCaptureArgs;)Landroid/view/SurfaceControl$ScreenshotHardwareBuffer;
    .registers 4

    new-instance v0, Landroid/view/SurfaceControl$SyncScreenCaptureListener;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/view/SurfaceControl$SyncScreenCaptureListener;-><init>(Landroid/view/SurfaceControl$SyncScreenCaptureListener-IA;)V

    invoke-static {p0, v0}, Landroid/view/SurfaceControl;->captureDisplay(Landroid/view/SurfaceControl$DisplayCaptureArgs;Landroid/view/SurfaceControl$ScreenCaptureListener;)I

    move-result v2

    if-eqz v2, :cond_d

    return-object v1

    :cond_d
    invoke-static {v0}, Landroid/view/SurfaceControl$SyncScreenCaptureListener;->-$$Nest$mwaitForScreenshot(Landroid/view/SurfaceControl$SyncScreenCaptureListener;)Landroid/view/SurfaceControl$ScreenshotHardwareBuffer;

    move-result-object v1

    return-object v1
.end method

.method public static captureLayers(Landroid/view/SurfaceControl$LayerCaptureArgs;Landroid/view/SurfaceControl$ScreenCaptureListener;)I
    .registers 3

    invoke-static {p0, p1}, Landroid/view/SurfaceControl;->nativeCaptureLayers(Landroid/view/SurfaceControl$LayerCaptureArgs;Landroid/view/SurfaceControl$ScreenCaptureListener;)I

    move-result v0

    return v0
.end method

.method public static captureLayers(Landroid/view/SurfaceControl$LayerCaptureArgs;)Landroid/view/SurfaceControl$ScreenshotHardwareBuffer;
    .registers 4

    new-instance v0, Landroid/view/SurfaceControl$SyncScreenCaptureListener;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/view/SurfaceControl$SyncScreenCaptureListener;-><init>(Landroid/view/SurfaceControl$SyncScreenCaptureListener-IA;)V

    invoke-static {p0, v0}, Landroid/view/SurfaceControl;->captureLayers(Landroid/view/SurfaceControl$LayerCaptureArgs;Landroid/view/SurfaceControl$ScreenCaptureListener;)I

    move-result v2

    if-eqz v2, :cond_d

    return-object v1

    :cond_d
    invoke-static {v0}, Landroid/view/SurfaceControl$SyncScreenCaptureListener;->-$$Nest$mwaitForScreenshot(Landroid/view/SurfaceControl$SyncScreenCaptureListener;)Landroid/view/SurfaceControl$ScreenshotHardwareBuffer;

    move-result-object v1

    return-object v1
.end method

.method public static captureLayers(Landroid/view/SurfaceControl;Landroid/graphics/Rect;F)Landroid/view/SurfaceControl$ScreenshotHardwareBuffer;
    .registers 4

    const/4 v0, 0x1

    invoke-static {p0, p1, p2, v0}, Landroid/view/SurfaceControl;->captureLayers(Landroid/view/SurfaceControl;Landroid/graphics/Rect;FI)Landroid/view/SurfaceControl$ScreenshotHardwareBuffer;

    move-result-object v0

    return-object v0
.end method

.method public static captureLayers(Landroid/view/SurfaceControl;Landroid/graphics/Rect;FI)Landroid/view/SurfaceControl$ScreenshotHardwareBuffer;
    .registers 6

    new-instance v0, Landroid/view/SurfaceControl$LayerCaptureArgs$Builder;

    invoke-direct {v0, p0}, Landroid/view/SurfaceControl$LayerCaptureArgs$Builder;-><init>(Landroid/view/SurfaceControl;)V

    invoke-virtual {v0, p1}, Landroid/view/SurfaceControl$LayerCaptureArgs$Builder;->setSourceCrop(Landroid/graphics/Rect;)Landroid/view/SurfaceControl$CaptureArgs$Builder;

    move-result-object v0

    check-cast v0, Landroid/view/SurfaceControl$LayerCaptureArgs$Builder;

    invoke-virtual {v0, p2}, Landroid/view/SurfaceControl$LayerCaptureArgs$Builder;->setFrameScale(F)Landroid/view/SurfaceControl$CaptureArgs$Builder;

    move-result-object v0

    check-cast v0, Landroid/view/SurfaceControl$LayerCaptureArgs$Builder;

    invoke-virtual {v0, p3}, Landroid/view/SurfaceControl$LayerCaptureArgs$Builder;->setPixelFormat(I)Landroid/view/SurfaceControl$CaptureArgs$Builder;

    move-result-object v0

    check-cast v0, Landroid/view/SurfaceControl$LayerCaptureArgs$Builder;

    invoke-virtual {v0}, Landroid/view/SurfaceControl$LayerCaptureArgs$Builder;->build()Landroid/view/SurfaceControl$LayerCaptureArgs;

    move-result-object v0

    invoke-static {v0}, Landroid/view/SurfaceControl;->captureLayers(Landroid/view/SurfaceControl$LayerCaptureArgs;)Landroid/view/SurfaceControl$ScreenshotHardwareBuffer;

    move-result-object v1

    return-object v1
.end method

.method public static captureLayersExcluding(Landroid/view/SurfaceControl;Landroid/graphics/Rect;FI[Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$ScreenshotHardwareBuffer;
    .registers 7

    new-instance v0, Landroid/view/SurfaceControl$LayerCaptureArgs$Builder;

    invoke-direct {v0, p0}, Landroid/view/SurfaceControl$LayerCaptureArgs$Builder;-><init>(Landroid/view/SurfaceControl;)V

    invoke-virtual {v0, p1}, Landroid/view/SurfaceControl$LayerCaptureArgs$Builder;->setSourceCrop(Landroid/graphics/Rect;)Landroid/view/SurfaceControl$CaptureArgs$Builder;

    move-result-object v0

    check-cast v0, Landroid/view/SurfaceControl$LayerCaptureArgs$Builder;

    invoke-virtual {v0, p2}, Landroid/view/SurfaceControl$LayerCaptureArgs$Builder;->setFrameScale(F)Landroid/view/SurfaceControl$CaptureArgs$Builder;

    move-result-object v0

    check-cast v0, Landroid/view/SurfaceControl$LayerCaptureArgs$Builder;

    invoke-virtual {v0, p3}, Landroid/view/SurfaceControl$LayerCaptureArgs$Builder;->setPixelFormat(I)Landroid/view/SurfaceControl$CaptureArgs$Builder;

    move-result-object v0

    check-cast v0, Landroid/view/SurfaceControl$LayerCaptureArgs$Builder;

    invoke-virtual {v0, p4}, Landroid/view/SurfaceControl$LayerCaptureArgs$Builder;->setExcludeLayers([Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$LayerCaptureArgs$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/SurfaceControl$LayerCaptureArgs$Builder;->build()Landroid/view/SurfaceControl$LayerCaptureArgs;

    move-result-object v0

    invoke-static {v0}, Landroid/view/SurfaceControl;->captureLayers(Landroid/view/SurfaceControl$LayerCaptureArgs;)Landroid/view/SurfaceControl$ScreenshotHardwareBuffer;

    move-result-object v1

    return-object v1
.end method

.method private checkNotReleased()V
    .registers 5

    iget-wide v0, p0, Landroid/view/SurfaceControl;->mNativeObject:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_9

    return-void

    :cond_9
    new-instance v0, Ljava/lang/NullPointerException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mNativeObject is null. Have you called release() already?"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static checkSurfaceLayers()Z
    .registers 1

    invoke-static {}, Landroid/view/SurfaceControl;->nativeCheckLayerNum()Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-static {}, Landroid/app/ActivityThread;->isSystem()Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    return v0
.end method

.method public static clearAnimationFrameStats()Z
    .registers 1

    invoke-static {}, Landroid/view/SurfaceControl;->nativeClearAnimationFrameStats()Z

    move-result v0

    return v0
.end method

.method public static clearBootDisplayMode(Landroid/os/IBinder;)V
    .registers 3

    if-eqz p0, :cond_6

    invoke-static {p0}, Landroid/view/SurfaceControl;->nativeClearBootDisplayMode(Landroid/os/IBinder;)V

    return-void

    :cond_6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "displayToken must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static closeTransaction()V
    .registers 7

    const-class v0, Landroid/view/SurfaceControl;

    monitor-enter v0

    :try_start_3
    sget-wide v1, Landroid/view/SurfaceControl;->sTransactionNestCount:J

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-nez v5, :cond_13

    const-string v1, "SurfaceControl"

    const-string v2, "Call to SurfaceControl.closeTransaction without matching openTransaction"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1e

    :cond_13
    const-wide/16 v5, 0x1

    sub-long/2addr v1, v5

    sput-wide v1, Landroid/view/SurfaceControl;->sTransactionNestCount:J

    cmp-long v1, v1, v3

    if-lez v1, :cond_1e

    monitor-exit v0

    return-void

    :cond_1e
    :goto_1e
    sget-object v1, Landroid/view/SurfaceControl;->sGlobalTransaction:Landroid/view/SurfaceControl$GlobalTransactionWrapper;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/SurfaceControl$GlobalTransactionWrapper;->applyGlobalTransaction(Z)V

    monitor-exit v0

    return-void

    :catchall_26
    move-exception v1

    monitor-exit v0
    :try_end_28
    .catchall {:try_start_3 .. :try_end_28} :catchall_26

    throw v1
.end method

.method public static createDisplay(Ljava/lang/String;Z)Landroid/os/IBinder;
    .registers 4

    if-eqz p0, :cond_7

    invoke-static {p0, p1}, Landroid/view/SurfaceControl;->nativeCreateDisplay(Ljava/lang/String;Z)Landroid/os/IBinder;

    move-result-object v0

    return-object v0

    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "name must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static destroyDisplay(Landroid/os/IBinder;)V
    .registers 3

    if-eqz p0, :cond_6

    invoke-static {p0}, Landroid/view/SurfaceControl;->nativeDestroyDisplay(Landroid/os/IBinder;)V

    return-void

    :cond_6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "displayToken must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static enableCurtainAnim(Z)V
    .registers 1

    invoke-static {p0}, Landroid/view/SurfaceControl;->nativeEnableCurtainAnim(Z)V

    return-void
.end method

.method public static enableHdrDimmer(ZF)V
    .registers 2

    invoke-static {p0, p1}, Landroid/view/SurfaceControl;->nativeEnableHdrDimmer(ZF)V

    return-void
.end method

.method public static getAnimationFrameStats(Landroid/view/WindowAnimationFrameStats;)Z
    .registers 2

    invoke-static {p0}, Landroid/view/SurfaceControl;->nativeGetAnimationFrameStats(Landroid/view/WindowAnimationFrameStats;)Z

    move-result v0

    return v0
.end method

.method public static getBootDisplayModeSupport()Z
    .registers 1

    invoke-static {}, Landroid/view/SurfaceControl;->nativeGetBootDisplayModeSupport()Z

    move-result v0

    return v0
.end method

.method public static getCastLayer()Ljava/util/ArrayList;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Landroid/view/SurfaceControl;",
            ">;"
        }
    .end annotation

    sget-object v0, Landroid/view/SurfaceControl;->mCastLayer:Ljava/util/ArrayList;

    return-object v0
.end method

.method public static getCompositionColorSpaces()[Landroid/graphics/ColorSpace;
    .registers 6

    invoke-static {}, Landroid/view/SurfaceControl;->nativeGetCompositionDataspaces()[I

    move-result-object v0

    sget-object v1, Landroid/graphics/ColorSpace$Named;->SRGB:Landroid/graphics/ColorSpace$Named;

    invoke-static {v1}, Landroid/graphics/ColorSpace;->get(Landroid/graphics/ColorSpace$Named;)Landroid/graphics/ColorSpace;

    move-result-object v1

    const/4 v2, 0x2

    new-array v3, v2, [Landroid/graphics/ColorSpace;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    const/4 v4, 0x1

    aput-object v1, v3, v4

    array-length v4, v0

    if-ne v4, v2, :cond_34

    const/4 v4, 0x0

    :goto_17
    if-ge v4, v2, :cond_34

    aget v5, v0, v4

    sparse-switch v5, :sswitch_data_36

    goto :goto_31

    :sswitch_1f
    sget-object v5, Landroid/graphics/ColorSpace$Named;->EXTENDED_SRGB:Landroid/graphics/ColorSpace$Named;

    invoke-static {v5}, Landroid/graphics/ColorSpace;->get(Landroid/graphics/ColorSpace$Named;)Landroid/graphics/ColorSpace;

    move-result-object v5

    aput-object v5, v3, v4

    goto :goto_31

    :sswitch_28
    sget-object v5, Landroid/graphics/ColorSpace$Named;->DISPLAY_P3:Landroid/graphics/ColorSpace$Named;

    invoke-static {v5}, Landroid/graphics/ColorSpace;->get(Landroid/graphics/ColorSpace$Named;)Landroid/graphics/ColorSpace;

    move-result-object v5

    aput-object v5, v3, v4

    nop

    :goto_31
    add-int/lit8 v4, v4, 0x1

    goto :goto_17

    :cond_34
    return-object v3

    nop

    :sswitch_data_36
    .sparse-switch
        0x88a0000 -> :sswitch_28
        0x18810000 -> :sswitch_1f
    .end sparse-switch
.end method

.method public static getDesiredDisplayModeSpecs(Landroid/os/IBinder;)Landroid/view/SurfaceControl$DesiredDisplayModeSpecs;
    .registers 3

    if-eqz p0, :cond_7

    invoke-static {p0}, Landroid/view/SurfaceControl;->nativeGetDesiredDisplayModeSpecs(Landroid/os/IBinder;)Landroid/view/SurfaceControl$DesiredDisplayModeSpecs;

    move-result-object v0

    return-object v0

    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "displayToken must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getDisplayBrightnessSupport(Landroid/os/IBinder;)Z
    .registers 2

    invoke-static {p0}, Landroid/view/SurfaceControl;->nativeGetDisplayBrightnessSupport(Landroid/os/IBinder;)Z

    move-result v0

    return v0
.end method

.method public static getDisplayDecorationSupport(Landroid/os/IBinder;)Landroid/hardware/graphics/common/DisplayDecorationSupport;
    .registers 2

    invoke-static {p0}, Landroid/view/SurfaceControl;->nativeGetDisplayDecorationSupport(Landroid/os/IBinder;)Landroid/hardware/graphics/common/DisplayDecorationSupport;

    move-result-object v0

    return-object v0
.end method

.method public static getDisplayNativePrimaries(Landroid/os/IBinder;)Landroid/view/SurfaceControl$DisplayPrimaries;
    .registers 3

    if-eqz p0, :cond_7

    invoke-static {p0}, Landroid/view/SurfaceControl;->nativeGetDisplayNativePrimaries(Landroid/os/IBinder;)Landroid/view/SurfaceControl$DisplayPrimaries;

    move-result-object v0

    return-object v0

    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "displayToken must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getDisplayedContentSample(Landroid/os/IBinder;JJ)Landroid/hardware/display/DisplayedContentSample;
    .registers 7

    if-eqz p0, :cond_7

    invoke-static {p0, p1, p2, p3, p4}, Landroid/view/SurfaceControl;->nativeGetDisplayedContentSample(Landroid/os/IBinder;JJ)Landroid/hardware/display/DisplayedContentSample;

    move-result-object v0

    return-object v0

    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "displayToken must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getDisplayedContentSamplingAttributes(Landroid/os/IBinder;)Landroid/hardware/display/DisplayedContentSamplingAttributes;
    .registers 3

    if-eqz p0, :cond_7

    invoke-static {p0}, Landroid/view/SurfaceControl;->nativeGetDisplayedContentSamplingAttributes(Landroid/os/IBinder;)Landroid/hardware/display/DisplayedContentSamplingAttributes;

    move-result-object v0

    return-object v0

    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "displayToken must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getDynamicDisplayInfo(Landroid/os/IBinder;)Landroid/view/SurfaceControl$DynamicDisplayInfo;
    .registers 3

    if-eqz p0, :cond_7

    invoke-static {p0}, Landroid/view/SurfaceControl;->nativeGetDynamicDisplayInfo(Landroid/os/IBinder;)Landroid/view/SurfaceControl$DynamicDisplayInfo;

    move-result-object v0

    return-object v0

    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "displayToken must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getGPUContextPriority()I
    .registers 1

    invoke-static {}, Landroid/view/SurfaceControl;->nativeGetGPUContextPriority()I

    move-result v0

    return v0
.end method

.method public static getGlobalTransaction()Landroid/view/SurfaceControl$Transaction;
    .registers 1

    sget-object v0, Landroid/view/SurfaceControl;->sGlobalTransaction:Landroid/view/SurfaceControl$GlobalTransactionWrapper;

    return-object v0
.end method

.method public static getInternalDisplayToken()Landroid/os/IBinder;
    .registers 3

    invoke-static {}, Landroid/view/SurfaceControl;->getPhysicalDisplayIds()[J

    move-result-object v0

    array-length v1, v0

    if-nez v1, :cond_9

    const/4 v1, 0x0

    return-object v1

    :cond_9
    const/4 v1, 0x0

    aget-wide v1, v0, v1

    invoke-static {v1, v2}, Landroid/view/SurfaceControl;->getPhysicalDisplayToken(J)Landroid/os/IBinder;

    move-result-object v1

    return-object v1
.end method

.method public static getPhysicalDisplayIds()[J
    .registers 1

    invoke-static {}, Landroid/view/SurfaceControl;->nativeGetPhysicalDisplayIds()[J

    move-result-object v0

    return-object v0
.end method

.method public static getPhysicalDisplayToken(J)Landroid/os/IBinder;
    .registers 3

    invoke-static {p0, p1}, Landroid/view/SurfaceControl;->nativeGetPhysicalDisplayToken(J)Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method

.method public static getPrimaryPhysicalDisplayId()J
    .registers 2

    invoke-static {}, Landroid/view/SurfaceControl;->nativeGetPrimaryPhysicalDisplayId()J

    move-result-wide v0

    return-wide v0
.end method

.method public static getProtectedContentSupport()Z
    .registers 1

    invoke-static {}, Landroid/view/SurfaceControl;->nativeGetProtectedContentSupport()Z

    move-result v0

    return v0
.end method

.method public static getStaticDisplayInfo(Landroid/os/IBinder;)Landroid/view/SurfaceControl$StaticDisplayInfo;
    .registers 3

    if-eqz p0, :cond_7

    invoke-static {p0}, Landroid/view/SurfaceControl;->nativeGetStaticDisplayInfo(Landroid/os/IBinder;)Landroid/view/SurfaceControl$StaticDisplayInfo;

    move-result-object v0

    return-object v0

    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "displayToken must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private initDebugProp()V
    .registers 3

    const-string/jumbo v0, "persist.sys.sc.dynamic.log"

    const-string v1, ""

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Landroid/view/SurfaceControl;->mName:Ljava/lang/String;

    if-eqz v1, :cond_1e

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1e

    iget-object v1, p0, Landroid/view/SurfaceControl;->mName:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1e

    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/view/SurfaceControl;->mPropDynamicLog:Z

    :cond_1e
    return-void
.end method

.method private static invokeReleaseCallback(Ljava/util/function/Consumer;J)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Landroid/hardware/SyncFence;",
            ">;J)V"
        }
    .end annotation

    new-instance v0, Landroid/hardware/SyncFence;

    invoke-direct {v0, p1, p2}, Landroid/hardware/SyncFence;-><init>(J)V

    invoke-interface {p0, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method

.method private isDynamicLog(Z)Z
    .registers 3

    if-eqz p1, :cond_5

    invoke-direct {p0}, Landroid/view/SurfaceControl;->initDebugProp()V

    :cond_5
    iget-boolean v0, p0, Landroid/view/SurfaceControl;->mPropDynamicLog:Z

    return v0
.end method

.method public static mergeToGlobalTransaction(Landroid/view/SurfaceControl$Transaction;)V
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const-class v0, Landroid/view/SurfaceControl;

    monitor-enter v0

    :try_start_3
    sget-object v1, Landroid/view/SurfaceControl;->sGlobalTransaction:Landroid/view/SurfaceControl$GlobalTransactionWrapper;

    invoke-virtual {v1, p0}, Landroid/view/SurfaceControl$GlobalTransactionWrapper;->merge(Landroid/view/SurfaceControl$Transaction;)Landroid/view/SurfaceControl$Transaction;

    monitor-exit v0

    return-void

    :catchall_a
    move-exception v1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v1
.end method

.method public static mirrorSurface(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl;
    .registers 5

    iget-wide v0, p0, Landroid/view/SurfaceControl;->mNativeObject:J

    invoke-static {v0, v1}, Landroid/view/SurfaceControl;->nativeMirrorSurface(J)J

    move-result-wide v0

    new-instance v2, Landroid/view/SurfaceControl;

    invoke-direct {v2}, Landroid/view/SurfaceControl;-><init>()V

    const-string/jumbo v3, "mirrorSurface"

    invoke-direct {v2, v0, v1, v3}, Landroid/view/SurfaceControl;->assignNativeObject(JLjava/lang/String;)V

    return-object v2
.end method

.method private static native nativeAddJankDataListener(JJ)V
.end method

.method private static native nativeAddTransactionCommittedListener(JLandroid/view/SurfaceControl$TransactionCommittedListener;)V
.end method

.method private static native nativeApplyMiuiTransaction(JZ)V
.end method

.method private static native nativeApplyTransaction(JZ)V
.end method

.method private static native nativeCaptureDisplay(Landroid/view/SurfaceControl$DisplayCaptureArgs;Landroid/view/SurfaceControl$ScreenCaptureListener;)I
.end method

.method private static native nativeCaptureLayers(Landroid/view/SurfaceControl$LayerCaptureArgs;Landroid/view/SurfaceControl$ScreenCaptureListener;)I
.end method

.method private static native nativeCheckLayerNum()Z
.end method

.method private static native nativeClearAnimationFrameStats()Z
.end method

.method private static native nativeClearBootDisplayMode(Landroid/os/IBinder;)V
.end method

.method private static native nativeClearContentFrameStats(J)Z
.end method

.method private static native nativeClearTransaction(J)V
.end method

.method private static native nativeCopyFromSurfaceControl(J)J
.end method

.method private static native nativeCreate(Landroid/view/SurfaceSession;Ljava/lang/String;IIIIJLandroid/os/Parcel;)J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/view/Surface$OutOfResourcesException;
        }
    .end annotation
.end method

.method private static native nativeCreateDisplay(Ljava/lang/String;Z)Landroid/os/IBinder;
.end method

.method private static native nativeCreateJankDataListenerWrapper(Landroid/view/SurfaceControl$OnJankDataListener;)J
.end method

.method private static native nativeCreateMiuiTransaction()J
.end method

.method private static native nativeCreateTransaction()J
.end method

.method private static native nativeDeferAnimation(JJI)V
.end method

.method private static native nativeDestroyDisplay(Landroid/os/IBinder;)V
.end method

.method private static native nativeDisconnect(J)V
.end method

.method private static native nativeEnableCurtainAnim(Z)V
.end method

.method private static native nativeEnableHdrDimmer(ZF)V
.end method

.method private static native nativeGetAnimationFrameStats(Landroid/view/WindowAnimationFrameStats;)Z
.end method

.method private static native nativeGetBootDisplayModeSupport()Z
.end method

.method private static native nativeGetCompositionDataspaces()[I
.end method

.method private static native nativeGetContentFrameStats(JLandroid/view/WindowContentFrameStats;)Z
.end method

.method private static native nativeGetDesiredDisplayModeSpecs(Landroid/os/IBinder;)Landroid/view/SurfaceControl$DesiredDisplayModeSpecs;
.end method

.method private static native nativeGetDisplayBrightnessSupport(Landroid/os/IBinder;)Z
.end method

.method private static native nativeGetDisplayDecorationSupport(Landroid/os/IBinder;)Landroid/hardware/graphics/common/DisplayDecorationSupport;
.end method

.method private static native nativeGetDisplayNativePrimaries(Landroid/os/IBinder;)Landroid/view/SurfaceControl$DisplayPrimaries;
.end method

.method private static native nativeGetDisplayedContentSample(Landroid/os/IBinder;JJ)Landroid/hardware/display/DisplayedContentSample;
.end method

.method private static native nativeGetDisplayedContentSamplingAttributes(Landroid/os/IBinder;)Landroid/hardware/display/DisplayedContentSamplingAttributes;
.end method

.method private static native nativeGetDynamicDisplayInfo(Landroid/os/IBinder;)Landroid/view/SurfaceControl$DynamicDisplayInfo;
.end method

.method private static native nativeGetGPUContextPriority()I
.end method

.method private static native nativeGetHandle(J)J
.end method

.method private static native nativeGetLayerId(J)I
.end method

.method private static native nativeGetNativeTransactionFinalizer()J
.end method

.method private static native nativeGetPhysicalDisplayIds()[J
.end method

.method private static native nativeGetPhysicalDisplayToken(J)Landroid/os/IBinder;
.end method

.method private static native nativeGetPrimaryPhysicalDisplayId()J
.end method

.method private static native nativeGetProtectedContentSupport()Z
.end method

.method private static native nativeGetStaticDisplayInfo(Landroid/os/IBinder;)Landroid/view/SurfaceControl$StaticDisplayInfo;
.end method

.method private static native nativeGetTransformHint(J)I
.end method

.method private static native nativeMergeTransaction(JJ)V
.end method

.method private static native nativeMirrorSurface(J)J
.end method

.method private static native nativeOverrideHdrTypes(Landroid/os/IBinder;[I)V
.end method

.method private static native nativeReadFromParcel(Landroid/os/Parcel;)J
.end method

.method private static native nativeReadTransactionFromParcel(Landroid/os/Parcel;)J
.end method

.method private static native nativeRelease(J)V
.end method

.method private static native nativeRemoveCurrentInputFocus(JI)V
.end method

.method private static native nativeRemoveJankDataListener(J)V
.end method

.method private static native nativeReparent(JJJ)V
.end method

.method private static native nativeSanitize(J)V
.end method

.method private static native nativeSetActiveColorMode(Landroid/os/IBinder;I)Z
.end method

.method private static native nativeSetAlpha(JJF)V
.end method

.method private static native nativeSetAnimationTransaction(J)V
.end method

.method private static native nativeSetAutoLowLatencyMode(Landroid/os/IBinder;Z)V
.end method

.method private static native nativeSetBackgroundBlurRadius(JJI)V
.end method

.method private static native nativeSetBlurRegions(JJ[[FI)V
.end method

.method private static native nativeSetBootDisplayMode(Landroid/os/IBinder;I)V
.end method

.method private static native nativeSetBuffer(JJLandroid/hardware/HardwareBuffer;JLjava/util/function/Consumer;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ",
            "Landroid/hardware/HardwareBuffer;",
            "J",
            "Ljava/util/function/Consumer<",
            "Landroid/hardware/SyncFence;",
            ">;)V"
        }
    .end annotation
.end method

.method private static native nativeSetBufferTransform(JJI)V
.end method

.method private static native nativeSetCastMode(JJLandroid/os/IBinder;Z)V
.end method

.method private static native nativeSetColor(JJ[F)V
.end method

.method private static native nativeSetColorSpaceAgnostic(JJZ)V
.end method

.method private static native nativeSetColorTransform(JJ[F[F)V
.end method

.method private static native nativeSetCornerRadius(JJF)V
.end method

.method private static native nativeSetCurtainAnimRate(F)V
.end method

.method private static native nativeSetDamageRegion(JJLandroid/graphics/Region;)V
.end method

.method private static native nativeSetDataSpace(JJI)V
.end method

.method private static native nativeSetDesiredDisplayModeSpecs(Landroid/os/IBinder;Landroid/view/SurfaceControl$DesiredDisplayModeSpecs;)Z
.end method

.method private static native nativeSetDestinationFrame(JJIIII)V
.end method

.method private static native nativeSetDiffScreenProjection(JLandroid/os/IBinder;I)V
.end method

.method private static native nativeSetDimmingEnabled(JJZ)V
.end method

.method private static native nativeSetDisplayBrightness(Landroid/os/IBinder;FFFF)Z
.end method

.method private static native nativeSetDisplayBrightnessWithDimLayer(Landroid/os/IBinder;FFFFZF)Z
.end method

.method private static native nativeSetDisplayFlags(JLandroid/os/IBinder;I)V
.end method

.method private static native nativeSetDisplayLayerStack(JLandroid/os/IBinder;I)V
.end method

.method private static native nativeSetDisplayPowerMode(Landroid/os/IBinder;I)V
.end method

.method private static native nativeSetDisplayProjection(JLandroid/os/IBinder;IIIIIIIII)V
.end method

.method private static native nativeSetDisplaySize(JLandroid/os/IBinder;II)V
.end method

.method private static native nativeSetDisplaySurface(JLandroid/os/IBinder;J)V
.end method

.method private static native nativeSetDisplayedContentSamplingEnabled(Landroid/os/IBinder;ZII)Z
.end method

.method private static native nativeSetDropInputMode(JJI)V
.end method

.method private static native nativeSetEarlyWakeupEnd(J)V
.end method

.method private static native nativeSetEarlyWakeupStart(J)V
.end method

.method private static native nativeSetFixedTransformHint(JJI)V
.end method

.method private static native nativeSetFlags(JJII)V
.end method

.method private static native nativeSetFocusedWindow(JLandroid/os/IBinder;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;I)V
.end method

.method private static native nativeSetFrameRate(JJFII)V
.end method

.method private static native nativeSetFrameRateSelectionPriority(JJI)V
.end method

.method private static native nativeSetFrameTimelineVsync(JJ)V
.end method

.method private static native nativeSetGameContentType(Landroid/os/IBinder;Z)V
.end method

.method private static native nativeSetGeometry(JJLandroid/graphics/Rect;Landroid/graphics/Rect;J)V
.end method

.method private static native nativeSetGlobalShadowSettings([F[FFFF)V
.end method

.method private static native nativeSetHdrDimmer(JJZ[[FI[[FI)V
.end method

.method private static native nativeSetHdrDimmerRatio(JJF)V
.end method

.method private static native nativeSetInputWindowInfo(JJLandroid/view/InputWindowHandle;)V
.end method

.method private static native nativeSetLastFrame(JJLandroid/os/IBinder;Z)V
.end method

.method private static native nativeSetLayer(JJI)V
.end method

.method private static native nativeSetLayerStack(JJI)V
.end method

.method private static native nativeSetLimitedFrameRate(JLandroid/os/IBinder;I)V
.end method

.method private static native nativeSetMatrix(JJFFFF)V
.end method

.method private static native nativeSetMetadata(JJILandroid/os/Parcel;)V
.end method

.method private static native nativeSetMiSecurityDisplay(JLandroid/os/IBinder;Z)V
.end method

.method private static native nativeSetPosition(JJFF)V
.end method

.method private static native nativeSetRelativeLayer(JJJI)V
.end method

.method private static native nativeSetScale(JJFF)V
.end method

.method private static native nativeSetScreenProjection(JJI)V
.end method

.method private static native nativeSetShadowRadius(JJF)V
.end method

.method private static native nativeSetShadowSettings(JJIF[FFFFI)V
.end method

.method private static native nativeSetSize(JJII)V
.end method

.method private static native nativeSetStretchEffect(JJFFFFFFFFFF)V
.end method

.method private static native nativeSetTransformHint(JI)V
.end method

.method private static native nativeSetTransparentRegionHint(JJLandroid/graphics/Region;)V
.end method

.method private static native nativeSetTrustedOverlay(JJZ)V
.end method

.method private static native nativeSetWindowCrop(JJIIII)V
.end method

.method private static native nativeSyncInputWindows(J)V
.end method

.method private static native nativeUpdateDefaultBufferSize(JII)V
.end method

.method private static native nativeWriteToParcel(JLandroid/os/Parcel;)V
.end method

.method private static native nativeWriteTransactionToParcel(JLandroid/os/Parcel;)V
.end method

.method public static openTransaction()V
    .registers 5

    const-class v0, Landroid/view/SurfaceControl;

    monitor-enter v0

    :try_start_3
    sget-object v1, Landroid/view/SurfaceControl;->sGlobalTransaction:Landroid/view/SurfaceControl$GlobalTransactionWrapper;

    if-nez v1, :cond_f

    new-instance v1, Landroid/view/SurfaceControl$GlobalTransactionWrapper;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Landroid/view/SurfaceControl$GlobalTransactionWrapper;-><init>(Landroid/view/SurfaceControl$GlobalTransactionWrapper-IA;)V

    sput-object v1, Landroid/view/SurfaceControl;->sGlobalTransaction:Landroid/view/SurfaceControl$GlobalTransactionWrapper;

    :cond_f
    monitor-enter v0
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_1d

    :try_start_10
    sget-wide v1, Landroid/view/SurfaceControl;->sTransactionNestCount:J

    const-wide/16 v3, 0x1

    add-long/2addr v1, v3

    sput-wide v1, Landroid/view/SurfaceControl;->sTransactionNestCount:J

    monitor-exit v0
    :try_end_18
    .catchall {:try_start_10 .. :try_end_18} :catchall_1a

    :try_start_18
    monitor-exit v0
    :try_end_19
    .catchall {:try_start_18 .. :try_end_19} :catchall_1d

    return-void

    :catchall_1a
    move-exception v1

    :try_start_1b
    monitor-exit v0
    :try_end_1c
    .catchall {:try_start_1b .. :try_end_1c} :catchall_1a

    :try_start_1c
    throw v1

    :catchall_1d
    move-exception v1

    monitor-exit v0
    :try_end_1f
    .catchall {:try_start_1c .. :try_end_1f} :catchall_1d

    throw v1
.end method

.method public static overrideHdrTypes(Landroid/os/IBinder;[I)V
    .registers 2

    invoke-static {p0, p1}, Landroid/view/SurfaceControl;->nativeOverrideHdrTypes(Landroid/os/IBinder;[I)V

    return-void
.end method

.method public static removeJankDataListener(Landroid/view/SurfaceControl$OnJankDataListener;)V
    .registers 3

    invoke-static {p0}, Landroid/view/SurfaceControl$OnJankDataListener;->-$$Nest$fgetmNativePtr(Landroid/view/SurfaceControl$OnJankDataListener;)Lcom/android/internal/util/VirtualRefBasePtr;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/util/VirtualRefBasePtr;->get()J

    move-result-wide v0

    invoke-static {v0, v1}, Landroid/view/SurfaceControl;->nativeRemoveJankDataListener(J)V

    return-void
.end method

.method public static rotationToBufferTransform(I)I
    .registers 4

    const/4 v0, 0x0

    packed-switch p0, :pswitch_data_24

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Trying to convert unknown rotation="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SurfaceControl"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :pswitch_1d  #0x3
    const/4 v0, 0x7

    return v0

    :pswitch_1f  #0x2
    const/4 v0, 0x3

    return v0

    :pswitch_21  #0x1
    const/4 v0, 0x4

    return v0

    :pswitch_23  #0x0
    return v0

    :pswitch_data_24
    .packed-switch 0x0
        :pswitch_23  #00000000
        :pswitch_21  #00000001
        :pswitch_1f  #00000002
        :pswitch_1d  #00000003
    .end packed-switch
.end method

.method public static setActiveColorMode(Landroid/os/IBinder;I)Z
    .registers 4

    if-eqz p0, :cond_7

    invoke-static {p0, p1}, Landroid/view/SurfaceControl;->nativeSetActiveColorMode(Landroid/os/IBinder;I)Z

    move-result v0

    return v0

    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "displayToken must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static setAutoLowLatencyMode(Landroid/os/IBinder;Z)V
    .registers 4

    if-eqz p0, :cond_6

    invoke-static {p0, p1}, Landroid/view/SurfaceControl;->nativeSetAutoLowLatencyMode(Landroid/os/IBinder;Z)V

    return-void

    :cond_6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "displayToken must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static setBootDisplayMode(Landroid/os/IBinder;I)V
    .registers 4

    if-eqz p0, :cond_6

    invoke-static {p0, p1}, Landroid/view/SurfaceControl;->nativeSetBootDisplayMode(Landroid/os/IBinder;I)V

    return-void

    :cond_6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "displayToken must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static setCurtainAnimRate(F)V
    .registers 1

    invoke-static {p0}, Landroid/view/SurfaceControl;->nativeSetCurtainAnimRate(F)V

    return-void
.end method

.method public static setDesiredDisplayModeSpecs(Landroid/os/IBinder;Landroid/view/SurfaceControl$DesiredDisplayModeSpecs;)Z
    .registers 4

    if-eqz p0, :cond_1d

    if-eqz p1, :cond_15

    iget v0, p1, Landroid/view/SurfaceControl$DesiredDisplayModeSpecs;->defaultMode:I

    if-ltz v0, :cond_d

    invoke-static {p0, p1}, Landroid/view/SurfaceControl;->nativeSetDesiredDisplayModeSpecs(Landroid/os/IBinder;Landroid/view/SurfaceControl$DesiredDisplayModeSpecs;)Z

    move-result v0

    return v0

    :cond_d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "defaultMode must be non-negative"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_15
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "desiredDisplayModeSpecs must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "displayToken must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static setDisplayBrightness(Landroid/os/IBinder;F)Z
    .registers 3

    const/high16 v0, -0x40800000  # -1.0f

    invoke-static {p0, p1, v0, p1, v0}, Landroid/view/SurfaceControl;->setDisplayBrightness(Landroid/os/IBinder;FFFF)Z

    move-result v0

    return v0
.end method

.method public static setDisplayBrightness(Landroid/os/IBinder;FFFF)Z
    .registers 9

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p3}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_4b

    const/high16 v0, 0x3f800000  # 1.0f

    cmpl-float v1, p3, v0

    if-gtz v1, :cond_4b

    const/4 v1, 0x0

    cmpg-float v2, p3, v1

    const/high16 v3, -0x40800000  # -1.0f

    if-gez v2, :cond_1a

    cmpl-float v2, p3, v3

    if-nez v2, :cond_4b

    :cond_1a
    invoke-static {p1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v2

    if-nez v2, :cond_31

    cmpl-float v0, p1, v0

    if-gtz v0, :cond_31

    cmpg-float v0, p1, v1

    if-gez v0, :cond_2c

    cmpl-float v0, p1, v3

    if-nez v0, :cond_31

    :cond_2c
    invoke-static {p0, p1, p2, p3, p4}, Landroid/view/SurfaceControl;->nativeSetDisplayBrightness(Landroid/os/IBinder;FFFF)Z

    move-result v0

    return v0

    :cond_31
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "sdrBrightness must be a number between 0.0f and 1.0f, or -1 to turn the backlight off: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "displayBrightness must be a number between 0.0f  and 1.0f, or -1 to turn the backlight off: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static setDisplayBrightnessWithDimLayer(Landroid/os/IBinder;FFFFZF)Z
    .registers 11

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p3}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_4b

    const/high16 v0, 0x3f800000  # 1.0f

    cmpl-float v1, p3, v0

    if-gtz v1, :cond_4b

    const/4 v1, 0x0

    cmpg-float v2, p3, v1

    const/high16 v3, -0x40800000  # -1.0f

    if-gez v2, :cond_1a

    cmpl-float v2, p3, v3

    if-nez v2, :cond_4b

    :cond_1a
    invoke-static {p1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v2

    if-nez v2, :cond_31

    cmpl-float v0, p1, v0

    if-gtz v0, :cond_31

    cmpg-float v0, p1, v1

    if-gez v0, :cond_2c

    cmpl-float v0, p1, v3

    if-nez v0, :cond_31

    :cond_2c
    invoke-static/range {p0 .. p6}, Landroid/view/SurfaceControl;->nativeSetDisplayBrightnessWithDimLayer(Landroid/os/IBinder;FFFFZF)Z

    move-result v0

    return v0

    :cond_31
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "sdrBrightness must be a number between 0.0f and 1.0f, or -1 to turn the backlight off: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "displayBrightness must be a number between 0.0f  and 1.0f, or -1 to turn the backlight off: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static setDisplayBrightnessWithDimLayer(Landroid/os/IBinder;FZF)Z
    .registers 11

    const/high16 v2, -0x40800000  # -1.0f

    const/high16 v4, -0x40800000  # -1.0f

    move-object v0, p0

    move v1, p1

    move v3, p1

    move v5, p2

    move v6, p3

    invoke-static/range {v0 .. v6}, Landroid/view/SurfaceControl;->setDisplayBrightnessWithDimLayer(Landroid/os/IBinder;FFFFZF)Z

    move-result v0

    return v0
.end method

.method public static setDisplayLayerStack(Landroid/os/IBinder;I)V
    .registers 4

    const-class v0, Landroid/view/SurfaceControl;

    monitor-enter v0

    :try_start_3
    sget-object v1, Landroid/view/SurfaceControl;->sGlobalTransaction:Landroid/view/SurfaceControl$GlobalTransactionWrapper;

    invoke-virtual {v1, p0, p1}, Landroid/view/SurfaceControl$GlobalTransactionWrapper;->setDisplayLayerStack(Landroid/os/IBinder;I)Landroid/view/SurfaceControl$Transaction;

    monitor-exit v0

    return-void

    :catchall_a
    move-exception v1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v1
.end method

.method public static setDisplayPowerMode(Landroid/os/IBinder;I)V
    .registers 4

    if-eqz p0, :cond_6

    invoke-static {p0, p1}, Landroid/view/SurfaceControl;->nativeSetDisplayPowerMode(Landroid/os/IBinder;I)V

    return-void

    :cond_6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "displayToken must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static setDisplayProjection(Landroid/os/IBinder;ILandroid/graphics/Rect;Landroid/graphics/Rect;)V
    .registers 6

    const-class v0, Landroid/view/SurfaceControl;

    monitor-enter v0

    :try_start_3
    sget-object v1, Landroid/view/SurfaceControl;->sGlobalTransaction:Landroid/view/SurfaceControl$GlobalTransactionWrapper;

    invoke-virtual {v1, p0, p1, p2, p3}, Landroid/view/SurfaceControl$GlobalTransactionWrapper;->setDisplayProjection(Landroid/os/IBinder;ILandroid/graphics/Rect;Landroid/graphics/Rect;)Landroid/view/SurfaceControl$Transaction;

    monitor-exit v0

    return-void

    :catchall_a
    move-exception v1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v1
.end method

.method public static setDisplaySize(Landroid/os/IBinder;II)V
    .registers 5

    const-class v0, Landroid/view/SurfaceControl;

    monitor-enter v0

    :try_start_3
    sget-object v1, Landroid/view/SurfaceControl;->sGlobalTransaction:Landroid/view/SurfaceControl$GlobalTransactionWrapper;

    invoke-virtual {v1, p0, p1, p2}, Landroid/view/SurfaceControl$GlobalTransactionWrapper;->setDisplaySize(Landroid/os/IBinder;II)Landroid/view/SurfaceControl$Transaction;

    monitor-exit v0

    return-void

    :catchall_a
    move-exception v1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v1
.end method

.method public static setDisplaySurface(Landroid/os/IBinder;Landroid/view/Surface;)V
    .registers 4

    const-class v0, Landroid/view/SurfaceControl;

    monitor-enter v0

    :try_start_3
    sget-object v1, Landroid/view/SurfaceControl;->sGlobalTransaction:Landroid/view/SurfaceControl$GlobalTransactionWrapper;

    invoke-virtual {v1, p0, p1}, Landroid/view/SurfaceControl$GlobalTransactionWrapper;->setDisplaySurface(Landroid/os/IBinder;Landroid/view/Surface;)Landroid/view/SurfaceControl$Transaction;

    monitor-exit v0

    return-void

    :catchall_a
    move-exception v1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v1
.end method

.method public static setDisplayedContentSamplingEnabled(Landroid/os/IBinder;ZII)Z
    .registers 7

    if-eqz p0, :cond_15

    const/4 v0, 0x4

    shr-int/lit8 v1, p2, 0x4

    if-nez v1, :cond_c

    invoke-static {p0, p1, p2, p3}, Landroid/view/SurfaceControl;->nativeSetDisplayedContentSamplingEnabled(Landroid/os/IBinder;ZII)Z

    move-result v1

    return v1

    :cond_c
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "invalid componentMask when enabling sampling"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_15
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "displayToken must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static setGameContentType(Landroid/os/IBinder;Z)V
    .registers 4

    if-eqz p0, :cond_6

    invoke-static {p0, p1}, Landroid/view/SurfaceControl;->nativeSetGameContentType(Landroid/os/IBinder;Z)V

    return-void

    :cond_6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "displayToken must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static setGlobalShadowSettings([F[FFFF)V
    .registers 5

    invoke-static {p0}, Landroid/view/SurfaceControl;->validateColorArg([F)V

    invoke-static {p1}, Landroid/view/SurfaceControl;->validateColorArg([F)V

    invoke-static {p0, p1, p2, p3, p4}, Landroid/view/SurfaceControl;->nativeSetGlobalShadowSettings([F[FFFF)V

    return-void
.end method

.method public static setLimitedFrameRate(Landroid/os/IBinder;I)V
    .registers 4

    const-class v0, Landroid/view/SurfaceControl;

    monitor-enter v0

    :try_start_3
    sget-object v1, Landroid/view/SurfaceControl;->sGlobalTransaction:Landroid/view/SurfaceControl$GlobalTransactionWrapper;

    invoke-virtual {v1, p0, p1}, Landroid/view/SurfaceControl$GlobalTransactionWrapper;->setLimitedFrameRate(Landroid/os/IBinder;I)Landroid/view/SurfaceControl$Transaction;

    monitor-exit v0

    return-void

    :catchall_a
    move-exception v1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v1
.end method

.method public static setMiSecurityDisplay(Landroid/os/IBinder;Z)V
    .registers 4

    const-class v0, Landroid/view/SurfaceControl;

    monitor-enter v0

    :try_start_3
    sget-object v1, Landroid/view/SurfaceControl;->sGlobalTransaction:Landroid/view/SurfaceControl$GlobalTransactionWrapper;

    invoke-virtual {v1, p0, p1}, Landroid/view/SurfaceControl$GlobalTransactionWrapper;->setMiSecurityDisplay(Landroid/os/IBinder;Z)Landroid/view/SurfaceControl$Transaction;

    monitor-exit v0

    return-void

    :catchall_a
    move-exception v1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v1
.end method

.method private static validateColorArg([F)V
    .registers 7

    const-string v0, "Color must be specified as a float array with four values to represent r, g, b, a in range [0..1]"

    array-length v1, p0

    const-string v2, "Color must be specified as a float array with four values to represent r, g, b, a in range [0..1]"

    const/4 v3, 0x4

    if-ne v1, v3, :cond_23

    array-length v1, p0

    const/4 v3, 0x0

    :goto_a
    if-ge v3, v1, :cond_22

    aget v4, p0, v3

    const/4 v5, 0x0

    cmpg-float v5, v4, v5

    if-ltz v5, :cond_1c

    const/high16 v5, 0x3f800000  # 1.0f

    cmpl-float v5, v4, v5

    if-gtz v5, :cond_1c

    add-int/lit8 v3, v3, 0x1

    goto :goto_a

    :cond_1c
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_22
    return-void

    :cond_23
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method public addOnReparentListener(Landroid/view/SurfaceControl$OnReparentListener;)Z
    .registers 5

    iget-object v0, p0, Landroid/view/SurfaceControl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Landroid/view/SurfaceControl;->mReparentListeners:Ljava/util/ArrayList;

    if-nez v1, :cond_f

    new-instance v1, Ljava/util/ArrayList;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, Landroid/view/SurfaceControl;->mReparentListeners:Ljava/util/ArrayList;

    :cond_f
    iget-object v1, p0, Landroid/view/SurfaceControl;->mReparentListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v1

    monitor-exit v0

    return v1

    :catchall_17
    move-exception v1

    monitor-exit v0
    :try_end_19
    .catchall {:try_start_3 .. :try_end_19} :catchall_17

    throw v1
.end method

.method public clearContentFrameStats()Z
    .registers 3

    invoke-direct {p0}, Landroid/view/SurfaceControl;->checkNotReleased()V

    iget-wide v0, p0, Landroid/view/SurfaceControl;->mNativeObject:J

    invoke-static {v0, v1}, Landroid/view/SurfaceControl;->nativeClearContentFrameStats(J)Z

    move-result v0

    return v0
.end method

.method public copyFrom(Landroid/view/SurfaceControl;Ljava/lang/String;)V
    .registers 5

    iget-object v0, p1, Landroid/view/SurfaceControl;->mName:Ljava/lang/String;

    iput-object v0, p0, Landroid/view/SurfaceControl;->mName:Ljava/lang/String;

    iget v0, p1, Landroid/view/SurfaceControl;->mWidth:I

    iput v0, p0, Landroid/view/SurfaceControl;->mWidth:I

    iget v0, p1, Landroid/view/SurfaceControl;->mHeight:I

    iput v0, p0, Landroid/view/SurfaceControl;->mHeight:I

    iget-object v0, p1, Landroid/view/SurfaceControl;->mLocalOwnerView:Ljava/lang/ref/WeakReference;

    iput-object v0, p0, Landroid/view/SurfaceControl;->mLocalOwnerView:Ljava/lang/ref/WeakReference;

    iget-wide v0, p1, Landroid/view/SurfaceControl;->mNativeObject:J

    invoke-static {v0, v1}, Landroid/view/SurfaceControl;->nativeCopyFromSurfaceControl(J)J

    move-result-wide v0

    invoke-direct {p0, v0, v1, p2}, Landroid/view/SurfaceControl;->assignNativeObject(JLjava/lang/String;)V

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/view/SurfaceControl;->isDynamicLog(Z)Z

    move-result v0

    if-eqz v0, :cond_4c

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "sc.copyFrom incStrong "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/view/SurfaceControl;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v1, 0x6

    invoke-static {v1}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SurfaceControl"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4c
    return-void
.end method

.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public disconnect()V
    .registers 5

    iget-wide v0, p0, Landroid/view/SurfaceControl;->mNativeObject:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_b

    invoke-static {v0, v1}, Landroid/view/SurfaceControl;->nativeDisconnect(J)V

    :cond_b
    return-void
.end method

.method public dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V
    .registers 9

    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v0

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v2

    const-wide v3, 0x10500000001L

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    iget-object v2, p0, Landroid/view/SurfaceControl;->mName:Ljava/lang/String;

    const-wide v3, 0x10900000002L

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    invoke-virtual {p0}, Landroid/view/SurfaceControl;->getLayerId()I

    move-result v2

    const-wide v3, 0x10500000003L

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    return-void
.end method

.method protected finalize()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Landroid/view/SurfaceControl;->mCloseGuard:Ldalvik/system/CloseGuard;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Ldalvik/system/CloseGuard;->warnIfOpen()V

    :cond_7
    iget-wide v0, p0, Landroid/view/SurfaceControl;->mNativeObject:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_12

    invoke-static {v0, v1}, Landroid/view/SurfaceControl;->nativeRelease(J)V
    :try_end_12
    .catchall {:try_start_0 .. :try_end_12} :catchall_17

    :cond_12
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    nop

    return-void

    :catchall_17
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method

.method public getContentFrameStats(Landroid/view/WindowContentFrameStats;)Z
    .registers 4

    invoke-direct {p0}, Landroid/view/SurfaceControl;->checkNotReleased()V

    iget-wide v0, p0, Landroid/view/SurfaceControl;->mNativeObject:J

    invoke-static {v0, v1, p1}, Landroid/view/SurfaceControl;->nativeGetContentFrameStats(JLandroid/view/WindowContentFrameStats;)Z

    move-result v0

    return v0
.end method

.method public getHeight()I
    .registers 3

    iget-object v0, p0, Landroid/view/SurfaceControl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget v1, p0, Landroid/view/SurfaceControl;->mHeight:I

    monitor-exit v0

    return v1

    :catchall_7
    move-exception v1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v1
.end method

.method public getLayerId()I
    .registers 5

    iget-wide v0, p0, Landroid/view/SurfaceControl;->mNativeObject:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_d

    invoke-static {v0, v1}, Landroid/view/SurfaceControl;->nativeGetLayerId(J)I

    move-result v0

    return v0

    :cond_d
    const/4 v0, -0x1

    return v0
.end method

.method public getLocalOwnerView()Landroid/view/View;
    .registers 2

    iget-object v0, p0, Landroid/view/SurfaceControl;->mLocalOwnerView:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_b

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    :goto_c
    return-object v0
.end method

.method public getTransformHint()I
    .registers 3

    invoke-direct {p0}, Landroid/view/SurfaceControl;->checkNotReleased()V

    iget-wide v0, p0, Landroid/view/SurfaceControl;->mNativeObject:J

    invoke-static {v0, v1}, Landroid/view/SurfaceControl;->nativeGetTransformHint(J)I

    move-result v0

    return v0
.end method

.method public getWidth()I
    .registers 3

    iget-object v0, p0, Landroid/view/SurfaceControl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget v1, p0, Landroid/view/SurfaceControl;->mWidth:I

    monitor-exit v0

    return v1

    :catchall_7
    move-exception v1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v1
.end method

.method public isSameSurface(Landroid/view/SurfaceControl;)Z
    .registers 6

    iget-wide v0, p1, Landroid/view/SurfaceControl;->mNativeHandle:J

    iget-wide v2, p0, Landroid/view/SurfaceControl;->mNativeHandle:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method public isValid()Z
    .registers 5

    iget-wide v0, p0, Landroid/view/SurfaceControl;->mNativeObject:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .registers 6

    if-eqz p1, :cond_5a

    invoke-virtual {p1}, Landroid/os/Parcel;->readString8()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/view/SurfaceControl;->mName:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/view/SurfaceControl;->mWidth:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/view/SurfaceControl;->mHeight:I

    const-wide/16 v0, 0x0

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_20

    invoke-static {p1}, Landroid/view/SurfaceControl;->nativeReadFromParcel(Landroid/os/Parcel;)J

    move-result-wide v0

    :cond_20
    const-string/jumbo v2, "readFromParcel"

    invoke-direct {p0, v0, v1, v2}, Landroid/view/SurfaceControl;->assignNativeObject(JLjava/lang/String;)V

    const/4 v2, 0x1

    invoke-direct {p0, v2}, Landroid/view/SurfaceControl;->isDynamicLog(Z)Z

    move-result v2

    if-eqz v2, :cond_59

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "sc.readFromParcel incStrong "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Landroid/view/SurfaceControl;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v3, 0x6

    invoke-static {v3}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "SurfaceControl"

    invoke-static {v3, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_59
    return-void

    :cond_5a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "source must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public release()V
    .registers 5

    sget-object v0, Landroid/view/SurfaceControl;->mCastLayer:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    sget-object v0, Landroid/view/SurfaceControl;->mCastLayer:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_d
    iget-wide v0, p0, Landroid/view/SurfaceControl;->mNativeObject:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_56

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/view/SurfaceControl;->isDynamicLog(Z)Z

    move-result v0

    if-eqz v0, :cond_48

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "sc.release decStrong "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/view/SurfaceControl;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v1, 0x6

    invoke-static {v1}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SurfaceControl"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_48
    iget-wide v0, p0, Landroid/view/SurfaceControl;->mNativeObject:J

    invoke-static {v0, v1}, Landroid/view/SurfaceControl;->nativeRelease(J)V

    iput-wide v2, p0, Landroid/view/SurfaceControl;->mNativeObject:J

    iput-wide v2, p0, Landroid/view/SurfaceControl;->mNativeHandle:J

    iget-object v0, p0, Landroid/view/SurfaceControl;->mCloseGuard:Ldalvik/system/CloseGuard;

    invoke-virtual {v0}, Ldalvik/system/CloseGuard;->close()V

    :cond_56
    return-void
.end method

.method public removeOnReparentListener(Landroid/view/SurfaceControl$OnReparentListener;)Z
    .registers 5

    iget-object v0, p0, Landroid/view/SurfaceControl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Landroid/view/SurfaceControl;->mReparentListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v1

    iget-object v2, p0, Landroid/view/SurfaceControl;->mReparentListeners:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_14

    const/4 v2, 0x0

    iput-object v2, p0, Landroid/view/SurfaceControl;->mReparentListeners:Ljava/util/ArrayList;

    :cond_14
    monitor-exit v0

    return v1

    :catchall_16
    move-exception v1

    monitor-exit v0
    :try_end_18
    .catchall {:try_start_3 .. :try_end_18} :catchall_16

    throw v1
.end method

.method public reparent(Landroid/view/SurfaceControl;)V
    .registers 4

    const-class v0, Landroid/view/SurfaceControl;

    monitor-enter v0

    :try_start_3
    sget-object v1, Landroid/view/SurfaceControl;->sGlobalTransaction:Landroid/view/SurfaceControl$GlobalTransactionWrapper;

    invoke-virtual {v1, p0, p1}, Landroid/view/SurfaceControl$GlobalTransactionWrapper;->reparent(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    monitor-exit v0

    return-void

    :catchall_a
    move-exception v1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v1
.end method

.method public resize(II)V
    .registers 5

    iput p1, p0, Landroid/view/SurfaceControl;->mWidth:I

    iput p2, p0, Landroid/view/SurfaceControl;->mHeight:I

    iget-wide v0, p0, Landroid/view/SurfaceControl;->mNativeObject:J

    invoke-static {v0, v1, p1, p2}, Landroid/view/SurfaceControl;->nativeUpdateDefaultBufferSize(JII)V

    return-void
.end method

.method public setCastLayer(Z)V
    .registers 3

    invoke-direct {p0}, Landroid/view/SurfaceControl;->checkNotReleased()V

    invoke-static {}, Landroid/view/SurfaceControl;->openTransaction()V

    :try_start_6
    sget-object v0, Landroid/view/SurfaceControl;->sGlobalTransaction:Landroid/view/SurfaceControl$GlobalTransactionWrapper;

    invoke-virtual {v0, p0, p1}, Landroid/view/SurfaceControl$GlobalTransactionWrapper;->setCastLayer(Landroid/view/SurfaceControl;Z)Landroid/view/SurfaceControl$Transaction;
    :try_end_b
    .catchall {:try_start_6 .. :try_end_b} :catchall_10

    invoke-static {}, Landroid/view/SurfaceControl;->closeTransaction()V

    nop

    return-void

    :catchall_10
    move-exception v0

    invoke-static {}, Landroid/view/SurfaceControl;->closeTransaction()V

    throw v0
.end method

.method public setColor([F)V
    .registers 4

    invoke-direct {p0}, Landroid/view/SurfaceControl;->checkNotReleased()V

    const-class v0, Landroid/view/SurfaceControl;

    monitor-enter v0

    :try_start_6
    sget-object v1, Landroid/view/SurfaceControl;->sGlobalTransaction:Landroid/view/SurfaceControl$GlobalTransactionWrapper;

    invoke-virtual {v1, p0, p1}, Landroid/view/SurfaceControl$GlobalTransactionWrapper;->setColor(Landroid/view/SurfaceControl;[F)Landroid/view/SurfaceControl$Transaction;

    monitor-exit v0

    return-void

    :catchall_d
    move-exception v1

    monitor-exit v0
    :try_end_f
    .catchall {:try_start_6 .. :try_end_f} :catchall_d

    throw v1
.end method

.method public setLayerStack(I)V
    .registers 4

    invoke-direct {p0}, Landroid/view/SurfaceControl;->checkNotReleased()V

    const-class v0, Landroid/view/SurfaceControl;

    monitor-enter v0

    :try_start_6
    sget-object v1, Landroid/view/SurfaceControl;->sGlobalTransaction:Landroid/view/SurfaceControl$GlobalTransactionWrapper;

    invoke-virtual {v1, p0, p1}, Landroid/view/SurfaceControl$GlobalTransactionWrapper;->setLayerStack(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    monitor-exit v0

    return-void

    :catchall_d
    move-exception v1

    monitor-exit v0
    :try_end_f
    .catchall {:try_start_6 .. :try_end_f} :catchall_d

    throw v1
.end method

.method public setScreenProjection(I)V
    .registers 3

    invoke-direct {p0}, Landroid/view/SurfaceControl;->checkNotReleased()V

    invoke-static {}, Landroid/view/SurfaceControl;->openTransaction()V

    :try_start_6
    sget-object v0, Landroid/view/SurfaceControl;->sGlobalTransaction:Landroid/view/SurfaceControl$GlobalTransactionWrapper;

    invoke-virtual {v0, p0, p1}, Landroid/view/SurfaceControl$GlobalTransactionWrapper;->setScreenProjection(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;
    :try_end_b
    .catchall {:try_start_6 .. :try_end_b} :catchall_10

    invoke-static {}, Landroid/view/SurfaceControl;->closeTransaction()V

    nop

    return-void

    :catchall_10
    move-exception v0

    invoke-static {}, Landroid/view/SurfaceControl;->closeTransaction()V

    throw v0
.end method

.method public setSkipScreenshot(Z)V
    .registers 3

    invoke-direct {p0}, Landroid/view/SurfaceControl;->checkNotReleased()V

    invoke-static {}, Landroid/view/SurfaceControl;->openTransaction()V

    :try_start_6
    sget-object v0, Landroid/view/SurfaceControl;->sGlobalTransaction:Landroid/view/SurfaceControl$GlobalTransactionWrapper;

    invoke-virtual {v0, p0, p1}, Landroid/view/SurfaceControl$GlobalTransactionWrapper;->setSkipScreenshot(Landroid/view/SurfaceControl;Z)Landroid/view/SurfaceControl$Transaction;
    :try_end_b
    .catchall {:try_start_6 .. :try_end_b} :catchall_10

    invoke-static {}, Landroid/view/SurfaceControl;->closeTransaction()V

    nop

    return-void

    :catchall_10
    move-exception v0

    invoke-static {}, Landroid/view/SurfaceControl;->closeTransaction()V

    throw v0
.end method

.method public setTransformHint(I)V
    .registers 4

    iget-wide v0, p0, Landroid/view/SurfaceControl;->mNativeObject:J

    invoke-static {v0, v1, p1}, Landroid/view/SurfaceControl;->nativeSetTransformHint(JI)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Surface(name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/view/SurfaceControl;->mName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")/@0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 7

    iget-object v0, p0, Landroid/view/SurfaceControl;->mName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString8(Ljava/lang/String;)V

    iget v0, p0, Landroid/view/SurfaceControl;->mWidth:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/view/SurfaceControl;->mHeight:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-wide v0, p0, Landroid/view/SurfaceControl;->mNativeObject:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_1c

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_20

    :cond_1c
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    :goto_20
    iget-wide v0, p0, Landroid/view/SurfaceControl;->mNativeObject:J

    invoke-static {v0, v1, p1}, Landroid/view/SurfaceControl;->nativeWriteToParcel(JLandroid/os/Parcel;)V

    and-int/lit8 v0, p2, 0x1

    if-eqz v0, :cond_2c

    invoke-virtual {p0}, Landroid/view/SurfaceControl;->release()V

    :cond_2c
    return-void
.end method

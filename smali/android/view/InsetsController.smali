# classes3.dex

.class public Landroid/view/InsetsController;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/WindowInsetsController;
.implements Landroid/view/InsetsAnimationControlCallbacks;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/InsetsController$PendingControlRequest;,
        Landroid/view/InsetsController$RunningAnimation;,
        Landroid/view/InsetsController$InternalAnimationControlListener;,
        Landroid/view/InsetsController$AnimationType;,
        Landroid/view/InsetsController$LayoutInsetsDuringAnimation;,
        Landroid/view/InsetsController$Host;
    }
.end annotation


# static fields
.field private static final ANIMATION_DELAY_DIM_MS:I = 0x1f4

.field private static final ANIMATION_DURATION_FADE_IN_MS:I = 0x1f4

.field private static final ANIMATION_DURATION_FADE_OUT_MS:I = 0x5dc

.field private static final ANIMATION_DURATION_MOVE_IN_MS:I = 0x113

.field private static final ANIMATION_DURATION_MOVE_OUT_MS:I = 0x154

.field public static final ANIMATION_DURATION_RESIZE:I = 0x12c

.field private static final ANIMATION_DURATION_SYNC_IME_MS:I = 0x11d

.field private static final ANIMATION_DURATION_UNSYNC_IME_MS:I = 0xc8

.field public static final ANIMATION_TYPE_HIDE:I = 0x1

.field public static final ANIMATION_TYPE_NONE:I = -0x1

.field public static final ANIMATION_TYPE_RESIZE:I = 0x3

.field public static final ANIMATION_TYPE_SHOW:I = 0x0

.field public static final ANIMATION_TYPE_USER:I = 0x2

.field static final DEBUG:Z = false

.field private static final FAST_OUT_LINEAR_IN_INTERPOLATOR:Landroid/view/animation/Interpolator;

.field private static final FLOATING_IME_BOTTOM_INSET_DP:I = -0x50

.field public static final LAYOUT_INSETS_DURING_ANIMATION_HIDDEN:I = 0x1

.field public static final LAYOUT_INSETS_DURING_ANIMATION_SHOWN:I = 0x0

.field private static final LINEAR_OUT_SLOW_IN_INTERPOLATOR:Landroid/view/animation/Interpolator;

.field private static final PENDING_CONTROL_TIMEOUT_MS:I = 0x7d0

.field public static final RESIZE_INTERPOLATOR:Landroid/view/animation/Interpolator;

.field private static final SYNC_IME_INTERPOLATOR:Landroid/view/animation/Interpolator;

.field private static final SYSTEM_BARS_ALPHA_INTERPOLATOR:Landroid/view/animation/Interpolator;

.field private static final SYSTEM_BARS_DIM_INTERPOLATOR:Landroid/view/animation/Interpolator;

.field private static final SYSTEM_BARS_INSETS_INTERPOLATOR:Landroid/view/animation/Interpolator;

.field private static final TAG:Ljava/lang/String; = "InsetsController"

.field static final WARN:Z

.field private static sEvaluator:Landroid/animation/TypeEvaluator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/animation/TypeEvaluator<",
            "Landroid/graphics/Insets;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mAnimCallback:Ljava/lang/Runnable;

.field private mAnimCallbackScheduled:Z

.field private mAnimationsDisabled:Z

.field private mCaptionInsetsHeight:I

.field private final mConsumerCreator:Ljava/util/function/BiFunction;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/BiFunction<",
            "Landroid/view/InsetsController;",
            "Ljava/lang/Integer;",
            "Landroid/view/InsetsSourceConsumer;",
            ">;"
        }
    .end annotation
.end field

.field private final mControllableInsetsChangedListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/WindowInsetsController$OnControllableInsetsChangedListener;",
            ">;"
        }
    .end annotation
.end field

.field private mDisabledUserAnimationInsetsTypes:I

.field private final mFrame:Landroid/graphics/Rect;

.field private final mHandler:Landroid/os/Handler;

.field private final mHost:Landroid/view/InsetsController$Host;

.field private final mInvokeControllableInsetsChangedListeners:Ljava/lang/Runnable;

.field private final mLastDispatchedState:Landroid/view/InsetsState;

.field private mLastInsets:Landroid/view/WindowInsets;

.field private mLastLegacySoftInputMode:I

.field private mLastLegacySystemUiFlags:I

.field private mLastLegacyWindowFlags:I

.field private mLastStartedAnimTypes:I

.field private mLastWindowingMode:I

.field private final mPendingControlTimeout:Ljava/lang/Runnable;

.field private mPendingImeControlRequest:Landroid/view/InsetsController$PendingControlRequest;

.field private final mRequestedVisibilities:Landroid/view/InsetsVisibilities;

.field private final mRequestedVisibilityChanged:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Landroid/view/InsetsSourceConsumer;",
            ">;"
        }
    .end annotation
.end field

.field private final mRunningAnimations:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/InsetsController$RunningAnimation;",
            ">;"
        }
    .end annotation
.end field

.field private final mSourceConsumers:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/view/InsetsSourceConsumer;",
            ">;"
        }
    .end annotation
.end field

.field private mStartingAnimation:Z

.field private final mState:Landroid/view/InsetsState;

.field private final mTmpControlArray:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/view/InsetsSourceControl;",
            ">;"
        }
    .end annotation
.end field

.field private mTypesBeingCancelled:I

.field private mWindowType:I


# direct methods
.method public static synthetic $r8$lambda$PRU-rByC-T6Cyol8QANPZ-P3LX8(Landroid/view/InsetsController;)V
    .registers 1

    invoke-direct {p0}, Landroid/view/InsetsController;->abortPendingImeControlRequest()V

    return-void
.end method

.method public static synthetic $r8$lambda$ePJ4opFbfn8Q38r5Oo7RWmAEQ48(Landroid/view/InsetsController;)I
    .registers 1

    invoke-direct {p0}, Landroid/view/InsetsController;->invokeControllableInsetsChangedListeners()I

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$sfgetFAST_OUT_LINEAR_IN_INTERPOLATOR()Landroid/view/animation/Interpolator;
    .registers 1

    sget-object v0, Landroid/view/InsetsController;->FAST_OUT_LINEAR_IN_INTERPOLATOR:Landroid/view/animation/Interpolator;

    return-object v0
.end method

.method static bridge synthetic -$$Nest$sfgetLINEAR_OUT_SLOW_IN_INTERPOLATOR()Landroid/view/animation/Interpolator;
    .registers 1

    sget-object v0, Landroid/view/InsetsController;->LINEAR_OUT_SLOW_IN_INTERPOLATOR:Landroid/view/animation/Interpolator;

    return-object v0
.end method

.method static bridge synthetic -$$Nest$sfgetSYNC_IME_INTERPOLATOR()Landroid/view/animation/Interpolator;
    .registers 1

    sget-object v0, Landroid/view/InsetsController;->SYNC_IME_INTERPOLATOR:Landroid/view/animation/Interpolator;

    return-object v0
.end method

.method static bridge synthetic -$$Nest$sfgetSYSTEM_BARS_ALPHA_INTERPOLATOR()Landroid/view/animation/Interpolator;
    .registers 1

    sget-object v0, Landroid/view/InsetsController;->SYSTEM_BARS_ALPHA_INTERPOLATOR:Landroid/view/animation/Interpolator;

    return-object v0
.end method

.method static bridge synthetic -$$Nest$sfgetSYSTEM_BARS_DIM_INTERPOLATOR()Landroid/view/animation/Interpolator;
    .registers 1

    sget-object v0, Landroid/view/InsetsController;->SYSTEM_BARS_DIM_INTERPOLATOR:Landroid/view/animation/Interpolator;

    return-object v0
.end method

.method static bridge synthetic -$$Nest$sfgetSYSTEM_BARS_INSETS_INTERPOLATOR()Landroid/view/animation/Interpolator;
    .registers 1

    sget-object v0, Landroid/view/InsetsController;->SYSTEM_BARS_INSETS_INTERPOLATOR:Landroid/view/animation/Interpolator;

    return-object v0
.end method

.method static bridge synthetic -$$Nest$sfgetsEvaluator()Landroid/animation/TypeEvaluator;
    .registers 1

    sget-object v0, Landroid/view/InsetsController;->sEvaluator:Landroid/animation/TypeEvaluator;

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 6

    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v1, 0x3ecccccd  # 0.4f

    const/4 v2, 0x0

    const v3, 0x3e4ccccd  # 0.2f

    const/high16 v4, 0x3f800000  # 1.0f

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Landroid/view/InsetsController;->SYSTEM_BARS_INSETS_INTERPOLATOR:Landroid/view/animation/Interpolator;

    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v5, 0x3e99999a  # 0.3f

    invoke-direct {v0, v5, v2, v4, v4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Landroid/view/InsetsController;->SYSTEM_BARS_ALPHA_INTERPOLATOR:Landroid/view/animation/Interpolator;

    new-instance v0, Landroid/view/InsetsController$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Landroid/view/InsetsController$$ExternalSyntheticLambda0;-><init>()V

    sput-object v0, Landroid/view/InsetsController;->SYSTEM_BARS_DIM_INTERPOLATOR:Landroid/view/animation/Interpolator;

    new-instance v0, Landroid/view/animation/PathInterpolator;

    invoke-direct {v0, v3, v2, v2, v4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Landroid/view/InsetsController;->SYNC_IME_INTERPOLATOR:Landroid/view/animation/Interpolator;

    new-instance v0, Landroid/view/animation/PathInterpolator;

    invoke-direct {v0, v2, v2, v3, v4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Landroid/view/InsetsController;->LINEAR_OUT_SLOW_IN_INTERPOLATOR:Landroid/view/animation/Interpolator;

    new-instance v0, Landroid/view/animation/PathInterpolator;

    invoke-direct {v0, v1, v2, v4, v4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Landroid/view/InsetsController;->FAST_OUT_LINEAR_IN_INTERPOLATOR:Landroid/view/animation/Interpolator;

    new-instance v0, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    sput-object v0, Landroid/view/InsetsController;->RESIZE_INTERPOLATOR:Landroid/view/animation/Interpolator;

    new-instance v0, Landroid/view/InsetsController$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Landroid/view/InsetsController$$ExternalSyntheticLambda1;-><init>()V

    sput-object v0, Landroid/view/InsetsController;->sEvaluator:Landroid/animation/TypeEvaluator;

    return-void
.end method

.method public constructor <init>(Landroid/view/InsetsController$Host;)V
    .registers 4

    new-instance v0, Landroid/view/InsetsController$$ExternalSyntheticLambda5;

    invoke-direct {v0}, Landroid/view/InsetsController$$ExternalSyntheticLambda5;-><init>()V

    invoke-interface {p1}, Landroid/view/InsetsController$Host;->getHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-direct {p0, p1, v0, v1}, Landroid/view/InsetsController;-><init>(Landroid/view/InsetsController$Host;Ljava/util/function/BiFunction;Landroid/os/Handler;)V

    return-void
.end method

.method public constructor <init>(Landroid/view/InsetsController$Host;Ljava/util/function/BiFunction;Landroid/os/Handler;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/InsetsController$Host;",
            "Ljava/util/function/BiFunction<",
            "Landroid/view/InsetsController;",
            "Ljava/lang/Integer;",
            "Landroid/view/InsetsSourceConsumer;",
            ">;",
            "Landroid/os/Handler;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/view/InsetsState;

    invoke-direct {v0}, Landroid/view/InsetsState;-><init>()V

    iput-object v0, p0, Landroid/view/InsetsController;->mState:Landroid/view/InsetsState;

    new-instance v0, Landroid/view/InsetsState;

    invoke-direct {v0}, Landroid/view/InsetsState;-><init>()V

    iput-object v0, p0, Landroid/view/InsetsController;->mLastDispatchedState:Landroid/view/InsetsState;

    new-instance v0, Landroid/view/InsetsVisibilities;

    invoke-direct {v0}, Landroid/view/InsetsVisibilities;-><init>()V

    iput-object v0, p0, Landroid/view/InsetsController;->mRequestedVisibilities:Landroid/view/InsetsVisibilities;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/view/InsetsController;->mFrame:Landroid/graphics/Rect;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Landroid/view/InsetsController;->mSourceConsumers:Landroid/util/SparseArray;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Landroid/view/InsetsController;->mTmpControlArray:Landroid/util/SparseArray;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/view/InsetsController;->mRunningAnimations:Ljava/util/ArrayList;

    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Landroid/view/InsetsController;->mRequestedVisibilityChanged:Landroid/util/ArraySet;

    const/4 v0, 0x0

    iput v0, p0, Landroid/view/InsetsController;->mCaptionInsetsHeight:I

    new-instance v0, Landroid/view/InsetsController$$ExternalSyntheticLambda8;

    invoke-direct {v0, p0}, Landroid/view/InsetsController$$ExternalSyntheticLambda8;-><init>(Landroid/view/InsetsController;)V

    iput-object v0, p0, Landroid/view/InsetsController;->mPendingControlTimeout:Ljava/lang/Runnable;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/view/InsetsController;->mControllableInsetsChangedListeners:Ljava/util/ArrayList;

    new-instance v0, Landroid/view/InsetsController$$ExternalSyntheticLambda9;

    invoke-direct {v0, p0}, Landroid/view/InsetsController$$ExternalSyntheticLambda9;-><init>(Landroid/view/InsetsController;)V

    iput-object v0, p0, Landroid/view/InsetsController;->mInvokeControllableInsetsChangedListeners:Ljava/lang/Runnable;

    iput-object p1, p0, Landroid/view/InsetsController;->mHost:Landroid/view/InsetsController$Host;

    iput-object p2, p0, Landroid/view/InsetsController;->mConsumerCreator:Ljava/util/function/BiFunction;

    iput-object p3, p0, Landroid/view/InsetsController;->mHandler:Landroid/os/Handler;

    new-instance v0, Landroid/view/InsetsController$$ExternalSyntheticLambda10;

    invoke-direct {v0, p0}, Landroid/view/InsetsController$$ExternalSyntheticLambda10;-><init>(Landroid/view/InsetsController;)V

    iput-object v0, p0, Landroid/view/InsetsController;->mAnimCallback:Ljava/lang/Runnable;

    return-void
.end method

.method private abortPendingImeControlRequest()V
    .registers 3

    iget-object v0, p0, Landroid/view/InsetsController;->mPendingImeControlRequest:Landroid/view/InsetsController$PendingControlRequest;

    if-eqz v0, :cond_13

    iget-object v0, v0, Landroid/view/InsetsController$PendingControlRequest;->listener:Landroid/view/WindowInsetsAnimationControlListener;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/view/WindowInsetsAnimationControlListener;->onCancelled(Landroid/view/WindowInsetsAnimationController;)V

    iput-object v1, p0, Landroid/view/InsetsController;->mPendingImeControlRequest:Landroid/view/InsetsController$PendingControlRequest;

    iget-object v0, p0, Landroid/view/InsetsController;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Landroid/view/InsetsController;->mPendingControlTimeout:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_13
    return-void
.end method

.method private applyLocalVisibilityOverride()V
    .registers 3

    iget-object v0, p0, Landroid/view/InsetsController;->mSourceConsumers:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_8
    if-ltz v0, :cond_18

    iget-object v1, p0, Landroid/view/InsetsController;->mSourceConsumers:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/InsetsSourceConsumer;

    invoke-virtual {v1}, Landroid/view/InsetsSourceConsumer;->applyLocalVisibilityOverride()Z

    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    :cond_18
    return-void
.end method

.method private calculateControllableTypes()I
    .registers 6

    const/4 v0, 0x0

    iget-object v1, p0, Landroid/view/InsetsController;->mSourceConsumers:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_9
    if-ltz v1, :cond_33

    iget-object v2, p0, Landroid/view/InsetsController;->mSourceConsumers:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/InsetsSourceConsumer;

    iget-object v3, p0, Landroid/view/InsetsController;->mState:Landroid/view/InsetsState;

    iget v4, v2, Landroid/view/InsetsSourceConsumer;->mType:I

    invoke-virtual {v3, v4}, Landroid/view/InsetsState;->peekSource(I)Landroid/view/InsetsSource;

    move-result-object v3

    invoke-virtual {v2}, Landroid/view/InsetsSourceConsumer;->getControl()Landroid/view/InsetsSourceControl;

    move-result-object v4

    if-eqz v4, :cond_30

    if-eqz v3, :cond_30

    invoke-virtual {v3}, Landroid/view/InsetsSource;->isUserControllable()Z

    move-result v4

    if-eqz v4, :cond_30

    iget v4, v2, Landroid/view/InsetsSourceConsumer;->mType:I

    invoke-static {v4}, Landroid/view/InsetsState;->toPublicType(I)I

    move-result v4

    or-int/2addr v0, v4

    :cond_30
    add-int/lit8 v1, v1, -0x1

    goto :goto_9

    :cond_33
    iget-object v1, p0, Landroid/view/InsetsController;->mState:Landroid/view/InsetsState;

    iget-object v2, p0, Landroid/view/InsetsController;->mFrame:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Landroid/view/InsetsState;->calculateUncontrollableInsetsFromFrame(Landroid/graphics/Rect;)I

    move-result v1

    not-int v1, v1

    and-int/2addr v1, v0

    return v1
.end method

.method private cancelAnimation(Landroid/view/InsetsAnimationControlRunner;Z)V
    .registers 12

    if-eqz p2, :cond_5

    invoke-interface {p1}, Landroid/view/InsetsAnimationControlRunner;->cancel()V

    :cond_5
    const/4 v0, 0x0

    iget-object v1, p0, Landroid/view/InsetsController;->mRunningAnimations:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_e
    if-ltz v1, :cond_74

    iget-object v2, p0, Landroid/view/InsetsController;->mRunningAnimations:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/InsetsController$RunningAnimation;

    iget-object v3, v2, Landroid/view/InsetsController$RunningAnimation;->runner:Landroid/view/InsetsAnimationControlRunner;

    if-ne v3, p1, :cond_71

    iget-object v3, p0, Landroid/view/InsetsController;->mRunningAnimations:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    invoke-interface {p1}, Landroid/view/InsetsAnimationControlRunner;->getTypes()I

    move-result v3

    invoke-static {v3}, Landroid/view/InsetsState;->toInternalType(I)Landroid/util/ArraySet;

    move-result-object v3

    invoke-virtual {v3}, Landroid/util/ArraySet;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    :goto_2f
    if-ltz v4, :cond_65

    invoke-virtual {v3, v4}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    const/16 v6, 0x13

    if-ne v5, v6, :cond_4f

    invoke-static {}, Lcom/android/internal/inputmethod/ImeTracing;->getInstance()Lcom/android/internal/inputmethod/ImeTracing;

    move-result-object v5

    iget-object v6, p0, Landroid/view/InsetsController;->mHost:Landroid/view/InsetsController$Host;

    invoke-interface {v6}, Landroid/view/InsetsController$Host;->getInputMethodManager()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v6

    const/4 v7, 0x0

    const-string v8, "InsetsSourceConsumer#notifyAnimationFinished"

    invoke-virtual {v5, v8, v6, v7}, Lcom/android/internal/inputmethod/ImeTracing;->triggerClientDump(Ljava/lang/String;Landroid/view/inputmethod/InputMethodManager;[B)V

    :cond_4f
    invoke-virtual {v3, v4}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {p0, v5}, Landroid/view/InsetsController;->getSourceConsumer(I)Landroid/view/InsetsSourceConsumer;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/InsetsSourceConsumer;->notifyAnimationFinished()Z

    move-result v5

    or-int/2addr v0, v5

    add-int/lit8 v4, v4, -0x1

    goto :goto_2f

    :cond_65
    if-eqz p2, :cond_74

    iget-object v4, v2, Landroid/view/InsetsController$RunningAnimation;->runner:Landroid/view/InsetsAnimationControlRunner;

    invoke-interface {v4}, Landroid/view/InsetsAnimationControlRunner;->getAnimation()Landroid/view/WindowInsetsAnimation;

    move-result-object v4

    invoke-virtual {p0, v4}, Landroid/view/InsetsController;->dispatchAnimationEnd(Landroid/view/WindowInsetsAnimation;)V

    goto :goto_74

    :cond_71
    add-int/lit8 v1, v1, -0x1

    goto :goto_e

    :cond_74
    :goto_74
    if-eqz v0, :cond_7b

    iget-object v1, p0, Landroid/view/InsetsController;->mHost:Landroid/view/InsetsController$Host;

    invoke-interface {v1}, Landroid/view/InsetsController$Host;->notifyInsetsChanged()V

    :cond_7b
    return-void
.end method

.method private cancelExistingControllers(I)V
    .registers 7

    iget v0, p0, Landroid/view/InsetsController;->mTypesBeingCancelled:I

    iget v1, p0, Landroid/view/InsetsController;->mTypesBeingCancelled:I

    or-int/2addr v1, p1

    iput v1, p0, Landroid/view/InsetsController;->mTypesBeingCancelled:I

    :try_start_7
    iget-object v1, p0, Landroid/view/InsetsController;->mRunningAnimations:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    :goto_f
    if-ltz v1, :cond_28

    iget-object v3, p0, Landroid/view/InsetsController;->mRunningAnimations:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/InsetsController$RunningAnimation;

    iget-object v3, v3, Landroid/view/InsetsController$RunningAnimation;->runner:Landroid/view/InsetsAnimationControlRunner;

    invoke-interface {v3}, Landroid/view/InsetsAnimationControlRunner;->getTypes()I

    move-result v4

    and-int/2addr v4, p1

    if-eqz v4, :cond_25

    invoke-direct {p0, v3, v2}, Landroid/view/InsetsController;->cancelAnimation(Landroid/view/InsetsAnimationControlRunner;Z)V

    :cond_25
    add-int/lit8 v1, v1, -0x1

    goto :goto_f

    :cond_28
    invoke-static {}, Landroid/view/WindowInsets$Type;->ime()I

    move-result v1

    and-int/2addr v1, p1

    if-eqz v1, :cond_32

    invoke-direct {p0}, Landroid/view/InsetsController;->abortPendingImeControlRequest()V
    :try_end_32
    .catchall {:try_start_7 .. :try_end_32} :catchall_36

    :cond_32
    iput v0, p0, Landroid/view/InsetsController;->mTypesBeingCancelled:I

    nop

    return-void

    :catchall_36
    move-exception v1

    iput v0, p0, Landroid/view/InsetsController;->mTypesBeingCancelled:I

    throw v1
.end method

.method private captionInsetsUnchanged()Z
    .registers 5

    sget-boolean v0, Landroid/view/ViewRootImpl;->CAPTION_ON_SHELL:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_6

    return v1

    :cond_6
    iget-object v0, p0, Landroid/view/InsetsController;->mState:Landroid/view/InsetsState;

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Landroid/view/InsetsState;->peekSource(I)Landroid/view/InsetsSource;

    move-result-object v0

    if-nez v0, :cond_14

    iget v0, p0, Landroid/view/InsetsController;->mCaptionInsetsHeight:I

    if-nez v0, :cond_14

    return v1

    :cond_14
    iget-object v0, p0, Landroid/view/InsetsController;->mState:Landroid/view/InsetsState;

    invoke-virtual {v0, v2}, Landroid/view/InsetsState;->peekSource(I)Landroid/view/InsetsSource;

    move-result-object v0

    if-eqz v0, :cond_2f

    iget v0, p0, Landroid/view/InsetsController;->mCaptionInsetsHeight:I

    iget-object v3, p0, Landroid/view/InsetsController;->mState:Landroid/view/InsetsState;

    invoke-virtual {v3, v2}, Landroid/view/InsetsState;->peekSource(I)Landroid/view/InsetsSource;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/InsetsSource;->getFrame()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    if-ne v0, v2, :cond_2f

    return v1

    :cond_2f
    const/4 v0, 0x1

    return v0
.end method

.method private collectSourceControls(ZLandroid/util/ArraySet;Landroid/util/SparseArray;I)Landroid/util/Pair;
    .registers 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Landroid/util/ArraySet<",
            "Ljava/lang/Integer;",
            ">;",
            "Landroid/util/SparseArray<",
            "Landroid/view/InsetsSourceControl;",
            ">;I)",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p4

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-virtual/range {p2 .. p2}, Landroid/util/ArraySet;->size()I

    move-result v5

    const/4 v6, 0x1

    sub-int/2addr v5, v6

    :goto_e
    if-ltz v5, :cond_af

    move-object/from16 v7, p2

    invoke-virtual {v7, v5}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-virtual {v0, v8}, Landroid/view/InsetsController;->getSourceConsumer(I)Landroid/view/InsetsSourceConsumer;

    move-result-object v8

    if-eqz v2, :cond_28

    const/4 v9, 0x2

    if-ne v2, v9, :cond_26

    goto :goto_28

    :cond_26
    const/4 v9, 0x0

    goto :goto_29

    :cond_28
    :goto_28
    move v9, v6

    :goto_29
    const/4 v10, 0x0

    const/4 v11, 0x0

    if-eqz v9, :cond_4b

    if-eqz v1, :cond_3e

    invoke-static {}, Lcom/android/internal/inputmethod/ImeTracing;->getInstance()Lcom/android/internal/inputmethod/ImeTracing;

    move-result-object v12

    iget-object v13, v0, Landroid/view/InsetsController;->mHost:Landroid/view/InsetsController$Host;

    invoke-interface {v13}, Landroid/view/InsetsController$Host;->getInputMethodManager()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v13

    const-string v14, "ImeInsetsSourceConsumer#requestShow"

    invoke-virtual {v12, v14, v13, v11}, Lcom/android/internal/inputmethod/ImeTracing;->triggerClientDump(Ljava/lang/String;Landroid/view/inputmethod/InputMethodManager;[B)V

    :cond_3e
    invoke-virtual {v8, v1}, Landroid/view/InsetsSourceConsumer;->requestShow(Z)I

    move-result v12

    packed-switch v12, :pswitch_data_c2

    goto :goto_4a

    :pswitch_46  #0x1
    const/4 v4, 0x0

    goto :goto_4a

    :pswitch_48  #0x0
    const/4 v10, 0x1

    nop

    :goto_4a
    goto :goto_51

    :cond_4b
    if-nez v1, :cond_50

    invoke-virtual {v8}, Landroid/view/InsetsSourceConsumer;->notifyHidden()V

    :cond_50
    const/4 v10, 0x1

    :goto_51
    if-nez v10, :cond_56

    move-object/from16 v14, p3

    goto :goto_aa

    :cond_56
    invoke-virtual {v8}, Landroid/view/InsetsSourceConsumer;->getControl()Landroid/view/InsetsSourceControl;

    move-result-object v12

    if-eqz v12, :cond_7a

    invoke-virtual {v12}, Landroid/view/InsetsSourceControl;->getLeash()Landroid/view/SurfaceControl;

    move-result-object v13

    if-eqz v13, :cond_7a

    invoke-virtual {v8}, Landroid/view/InsetsSourceConsumer;->getType()I

    move-result v11

    new-instance v13, Landroid/view/InsetsSourceControl;

    invoke-direct {v13, v12}, Landroid/view/InsetsSourceControl;-><init>(Landroid/view/InsetsSourceControl;)V

    move-object/from16 v14, p3

    invoke-virtual {v14, v11, v13}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    invoke-virtual {v8}, Landroid/view/InsetsSourceConsumer;->getType()I

    move-result v11

    invoke-static {v11}, Landroid/view/InsetsState;->toPublicType(I)I

    move-result v11

    or-int/2addr v3, v11

    goto :goto_aa

    :cond_7a
    move-object/from16 v14, p3

    if-nez v2, :cond_93

    if-eqz v1, :cond_8f

    invoke-static {}, Lcom/android/internal/inputmethod/ImeTracing;->getInstance()Lcom/android/internal/inputmethod/ImeTracing;

    move-result-object v13

    iget-object v15, v0, Landroid/view/InsetsController;->mHost:Landroid/view/InsetsController$Host;

    invoke-interface {v15}, Landroid/view/InsetsController$Host;->getInputMethodManager()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v15

    const-string v6, "InsetsSourceConsumer#show"

    invoke-virtual {v13, v6, v15, v11}, Lcom/android/internal/inputmethod/ImeTracing;->triggerClientDump(Ljava/lang/String;Landroid/view/inputmethod/InputMethodManager;[B)V

    :cond_8f
    invoke-virtual {v8, v1}, Landroid/view/InsetsSourceConsumer;->show(Z)V

    goto :goto_aa

    :cond_93
    const/4 v6, 0x1

    if-ne v2, v6, :cond_aa

    if-eqz v1, :cond_a7

    invoke-static {}, Lcom/android/internal/inputmethod/ImeTracing;->getInstance()Lcom/android/internal/inputmethod/ImeTracing;

    move-result-object v13

    iget-object v15, v0, Landroid/view/InsetsController;->mHost:Landroid/view/InsetsController$Host;

    invoke-interface {v15}, Landroid/view/InsetsController$Host;->getInputMethodManager()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v15

    const-string v6, "InsetsSourceConsumer#hide"

    invoke-virtual {v13, v6, v15, v11}, Lcom/android/internal/inputmethod/ImeTracing;->triggerClientDump(Ljava/lang/String;Landroid/view/inputmethod/InputMethodManager;[B)V

    :cond_a7
    invoke-virtual {v8}, Landroid/view/InsetsSourceConsumer;->hide()V

    :cond_aa
    :goto_aa
    add-int/lit8 v5, v5, -0x1

    const/4 v6, 0x1

    goto/16 :goto_e

    :cond_af
    move-object/from16 v7, p2

    move-object/from16 v14, p3

    new-instance v5, Landroid/util/Pair;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-direct {v5, v6, v8}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v5

    nop

    :pswitch_data_c2
    .packed-switch 0x0
        :pswitch_48  #00000000
        :pswitch_46  #00000001
    .end packed-switch
.end method

.method private controlAnimationUnchecked(ILandroid/os/CancellationSignal;Landroid/view/WindowInsetsAnimationControlListener;Landroid/graphics/Rect;ZJLandroid/view/animation/Interpolator;IIZ)V
    .registers 37

    move-object/from16 v14, p0

    move-object/from16 v15, p2

    move-object/from16 v13, p3

    move/from16 v12, p5

    move/from16 v11, p9

    iget v0, v14, Landroid/view/InsetsController;->mTypesBeingCancelled:I

    and-int v0, p1, v0

    if-nez v0, :cond_16e

    const/4 v0, 0x2

    if-ne v11, v0, :cond_3b

    iget v0, v14, Landroid/view/InsetsController;->mDisabledUserAnimationInsetsTypes:I

    and-int v1, p1, v0

    not-int v0, v0

    and-int v0, p1, v0

    if-eqz v12, :cond_39

    invoke-static {}, Landroid/view/WindowInsets$Type;->ime()I

    move-result v2

    and-int/2addr v2, v1

    if-eqz v2, :cond_39

    iget-object v2, v14, Landroid/view/InsetsController;->mState:Landroid/view/InsetsState;

    const/16 v3, 0x13

    invoke-virtual {v2, v3}, Landroid/view/InsetsState;->getSource(I)Landroid/view/InsetsSource;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/InsetsSource;->isVisible()Z

    move-result v2

    if-nez v2, :cond_39

    invoke-virtual {v14, v3}, Landroid/view/InsetsController;->getSourceConsumer(I)Landroid/view/InsetsSourceConsumer;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3, v11}, Landroid/view/InsetsSourceConsumer;->hide(ZI)V

    :cond_39
    move v10, v0

    goto :goto_3d

    :cond_3b
    move/from16 v10, p1

    :goto_3d
    const/4 v9, 0x0

    if-nez v10, :cond_47

    invoke-interface {v13, v9}, Landroid/view/WindowInsetsAnimationControlListener;->onCancelled(Landroid/view/WindowInsetsAnimationController;)V

    invoke-direct/range {p0 .. p0}, Landroid/view/InsetsController;->updateRequestedVisibilities()V

    return-void

    :cond_47
    invoke-direct {v14, v10}, Landroid/view/InsetsController;->cancelExistingControllers(I)V

    iget v0, v14, Landroid/view/InsetsController;->mLastStartedAnimTypes:I

    or-int/2addr v0, v10

    iput v0, v14, Landroid/view/InsetsController;->mLastStartedAnimTypes:I

    invoke-static {v10}, Landroid/view/InsetsState;->toInternalType(I)Landroid/util/ArraySet;

    move-result-object v8

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    move-object v7, v0

    invoke-direct {v14, v12, v8, v7, v11}, Landroid/view/InsetsController;->collectSourceControls(ZLandroid/util/ArraySet;Landroid/util/SparseArray;I)Landroid/util/Pair;

    move-result-object v6

    iget-object v0, v6, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v16

    iget-object v0, v6, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v17

    const-wide/16 v3, 0x8

    const/4 v5, 0x0

    if-nez v17, :cond_b4

    invoke-direct/range {p0 .. p0}, Landroid/view/InsetsController;->abortPendingImeControlRequest()V

    new-instance v18, Landroid/view/InsetsController$PendingControlRequest;

    move-object/from16 v0, v18

    move v1, v10

    move-object/from16 v2, p3

    move-wide v11, v3

    move-wide/from16 v3, p6

    move v9, v5

    move-object/from16 v5, p8

    move-object/from16 v19, v6

    move/from16 v6, p9

    move-object/from16 v20, v7

    move/from16 v7, p10

    move-object/from16 v21, v8

    move-object/from16 v8, p2

    move/from16 p1, v10

    move v10, v9

    move/from16 v9, p11

    invoke-direct/range {v0 .. v9}, Landroid/view/InsetsController$PendingControlRequest;-><init>(ILandroid/view/WindowInsetsAnimationControlListener;JLandroid/view/animation/Interpolator;IILandroid/os/CancellationSignal;Z)V

    iput-object v0, v14, Landroid/view/InsetsController;->mPendingImeControlRequest:Landroid/view/InsetsController$PendingControlRequest;

    iget-object v1, v14, Landroid/view/InsetsController;->mHandler:Landroid/os/Handler;

    iget-object v2, v14, Landroid/view/InsetsController;->mPendingControlTimeout:Ljava/lang/Runnable;

    const-wide/16 v3, 0x7d0

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    if-eqz v15, :cond_ab

    new-instance v1, Landroid/view/InsetsController$$ExternalSyntheticLambda6;

    invoke-direct {v1, v14, v0}, Landroid/view/InsetsController$$ExternalSyntheticLambda6;-><init>(Landroid/view/InsetsController;Landroid/view/InsetsController$PendingControlRequest;)V

    invoke-virtual {v15, v1}, Landroid/os/CancellationSignal;->setOnCancelListener(Landroid/os/CancellationSignal$OnCancelListener;)V

    :cond_ab
    invoke-direct/range {p0 .. p0}, Landroid/view/InsetsController;->updateRequestedVisibilities()V

    const-string v1, "IC.showRequestFromApi"

    invoke-static {v11, v12, v1, v10}, Landroid/os/Trace;->asyncTraceEnd(JLjava/lang/String;I)V

    return-void

    :cond_b4
    move-wide v11, v3

    move-object/from16 v19, v6

    move-object/from16 v20, v7

    move-object/from16 v21, v8

    move/from16 p1, v10

    move v10, v5

    if-nez v16, :cond_c7

    invoke-interface {v13, v9}, Landroid/view/WindowInsetsAnimationControlListener;->onCancelled(Landroid/view/WindowInsetsAnimationController;)V

    invoke-direct/range {p0 .. p0}, Landroid/view/InsetsController;->updateRequestedVisibilities()V

    return-void

    :cond_c7
    if-eqz p11, :cond_fa

    new-instance v18, Landroid/view/InsetsAnimationThreadControlRunner;

    iget-object v3, v14, Landroid/view/InsetsController;->mState:Landroid/view/InsetsState;

    iget-object v0, v14, Landroid/view/InsetsController;->mHost:Landroid/view/InsetsController$Host;

    invoke-interface {v0}, Landroid/view/InsetsController$Host;->getTranslator()Landroid/content/res/CompatibilityInfo$Translator;

    move-result-object v22

    iget-object v0, v14, Landroid/view/InsetsController;->mHost:Landroid/view/InsetsController$Host;

    invoke-interface {v0}, Landroid/view/InsetsController$Host;->getHandler()Landroid/os/Handler;

    move-result-object v23

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    move-object/from16 v2, p4

    move-object/from16 v4, p3

    move/from16 v5, v16

    move-object/from16 v6, p0

    move-wide/from16 v7, p6

    move-object v15, v9

    move-object/from16 v9, p8

    move/from16 v24, p1

    move/from16 v10, p9

    move/from16 v12, p9

    move/from16 v11, p10

    move-object/from16 v12, v22

    move-object/from16 v13, v23

    invoke-direct/range {v0 .. v13}, Landroid/view/InsetsAnimationThreadControlRunner;-><init>(Landroid/util/SparseArray;Landroid/graphics/Rect;Landroid/view/InsetsState;Landroid/view/WindowInsetsAnimationControlListener;ILandroid/view/InsetsAnimationControlCallbacks;JLandroid/view/animation/Interpolator;IILandroid/content/res/CompatibilityInfo$Translator;Landroid/os/Handler;)V

    goto :goto_11e

    :cond_fa
    move/from16 v24, p1

    move-object v15, v9

    new-instance v18, Landroid/view/InsetsAnimationControlImpl;

    iget-object v3, v14, Landroid/view/InsetsController;->mState:Landroid/view/InsetsState;

    iget-object v0, v14, Landroid/view/InsetsController;->mHost:Landroid/view/InsetsController$Host;

    invoke-interface {v0}, Landroid/view/InsetsController$Host;->getTranslator()Landroid/content/res/CompatibilityInfo$Translator;

    move-result-object v12

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    move-object/from16 v2, p4

    move-object/from16 v4, p3

    move/from16 v5, v16

    move-object/from16 v6, p0

    move-wide/from16 v7, p6

    move-object/from16 v9, p8

    move/from16 v10, p9

    move/from16 v11, p10

    invoke-direct/range {v0 .. v12}, Landroid/view/InsetsAnimationControlImpl;-><init>(Landroid/util/SparseArray;Landroid/graphics/Rect;Landroid/view/InsetsState;Landroid/view/WindowInsetsAnimationControlListener;ILandroid/view/InsetsAnimationControlCallbacks;JLandroid/view/animation/Interpolator;IILandroid/content/res/CompatibilityInfo$Translator;)V

    :goto_11e
    move-object/from16 v0, v18

    invoke-static {}, Landroid/view/WindowInsets$Type;->ime()I

    move-result v1

    and-int v1, v16, v1

    if-eqz v1, :cond_137

    invoke-static {}, Lcom/android/internal/inputmethod/ImeTracing;->getInstance()Lcom/android/internal/inputmethod/ImeTracing;

    move-result-object v1

    iget-object v2, v14, Landroid/view/InsetsController;->mHost:Landroid/view/InsetsController$Host;

    invoke-interface {v2}, Landroid/view/InsetsController$Host;->getInputMethodManager()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v2

    const-string v3, "InsetsAnimationControlImpl"

    invoke-virtual {v1, v3, v2, v15}, Lcom/android/internal/inputmethod/ImeTracing;->triggerClientDump(Ljava/lang/String;Landroid/view/inputmethod/InputMethodManager;[B)V

    :cond_137
    iget-object v1, v14, Landroid/view/InsetsController;->mRunningAnimations:Ljava/util/ArrayList;

    new-instance v2, Landroid/view/InsetsController$RunningAnimation;

    move/from16 v3, p9

    invoke-direct {v2, v0, v3}, Landroid/view/InsetsController$RunningAnimation;-><init>(Landroid/view/InsetsAnimationControlRunner;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v1, p2

    if-eqz v1, :cond_151

    new-instance v2, Landroid/view/InsetsController$$ExternalSyntheticLambda7;

    invoke-direct {v2, v14, v0}, Landroid/view/InsetsController$$ExternalSyntheticLambda7;-><init>(Landroid/view/InsetsController;Landroid/view/InsetsAnimationControlRunner;)V

    invoke-virtual {v1, v2}, Landroid/os/CancellationSignal;->setOnCancelListener(Landroid/os/CancellationSignal$OnCancelListener;)V

    const/4 v6, 0x0

    goto :goto_159

    :cond_151
    const-string v2, "IC.pendingAnim"

    const-wide/16 v4, 0x8

    const/4 v6, 0x0

    invoke-static {v4, v5, v2, v6}, Landroid/os/Trace;->asyncTraceBegin(JLjava/lang/String;I)V

    :goto_159
    if-nez p10, :cond_163

    move/from16 v2, p5

    move/from16 v4, v24

    invoke-direct {v14, v4, v2}, Landroid/view/InsetsController;->showDirectly(IZ)V

    goto :goto_16a

    :cond_163
    move/from16 v2, p5

    move/from16 v4, v24

    invoke-direct {v14, v4, v6, v3, v2}, Landroid/view/InsetsController;->hideDirectly(IZIZ)V

    :goto_16a
    invoke-direct/range {p0 .. p0}, Landroid/view/InsetsController;->updateRequestedVisibilities()V

    return-void

    :cond_16e
    move v3, v11

    move v2, v12

    move-object v1, v15

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Cannot start a new insets animation of "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static/range {p1 .. p1}, Landroid/view/WindowInsets$Type;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " while an existing "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v14, Landroid/view/InsetsController;->mTypesBeingCancelled:I

    invoke-static {v5}, Landroid/view/WindowInsets$Type;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " is being cancelled."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private controlWindowInsetsAnimation(ILandroid/os/CancellationSignal;Landroid/view/WindowInsetsAnimationControlListener;ZJLandroid/view/animation/Interpolator;I)V
    .registers 23

    move-object v12, p0

    iget-object v0, v12, Landroid/view/InsetsController;->mState:Landroid/view/InsetsState;

    iget-object v1, v12, Landroid/view/InsetsController;->mFrame:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/view/InsetsState;->calculateUncontrollableInsetsFromFrame(Landroid/graphics/Rect;)I

    move-result v0

    and-int/2addr v0, p1

    const/4 v1, 0x0

    if-eqz v0, :cond_13

    move-object/from16 v13, p3

    invoke-interface {v13, v1}, Landroid/view/WindowInsetsAnimationControlListener;->onCancelled(Landroid/view/WindowInsetsAnimationController;)V

    return-void

    :cond_13
    move-object/from16 v13, p3

    if-eqz p4, :cond_26

    invoke-static {}, Lcom/android/internal/inputmethod/ImeTracing;->getInstance()Lcom/android/internal/inputmethod/ImeTracing;

    move-result-object v0

    iget-object v2, v12, Landroid/view/InsetsController;->mHost:Landroid/view/InsetsController$Host;

    invoke-interface {v2}, Landroid/view/InsetsController$Host;->getInputMethodManager()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v2

    const-string v3, "InsetsController#controlWindowInsetsAnimation"

    invoke-virtual {v0, v3, v2, v1}, Lcom/android/internal/inputmethod/ImeTracing;->triggerClientDump(Ljava/lang/String;Landroid/view/inputmethod/InputMethodManager;[B)V

    :cond_26
    iget-object v4, v12, Landroid/view/InsetsController;->mFrame:Landroid/graphics/Rect;

    invoke-direct {p0, p1}, Landroid/view/InsetsController;->getLayoutInsetsDuringAnimationMode(I)I

    move-result v10

    const/4 v11, 0x0

    move-object v0, p0

    move v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move/from16 v5, p4

    move-wide/from16 v6, p5

    move-object/from16 v8, p7

    move/from16 v9, p8

    invoke-direct/range {v0 .. v11}, Landroid/view/InsetsController;->controlAnimationUnchecked(ILandroid/os/CancellationSignal;Landroid/view/WindowInsetsAnimationControlListener;Landroid/graphics/Rect;ZJLandroid/view/animation/Interpolator;IIZ)V

    return-void
.end method

.method private getLayoutInsetsDuringAnimationMode(I)I
    .registers 7

    invoke-static {p1}, Landroid/view/InsetsState;->toInternalType(I)Landroid/util/ArraySet;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    :goto_a
    if-ltz v1, :cond_2c

    iget-object v3, p0, Landroid/view/InsetsController;->mSourceConsumers:Landroid/util/SparseArray;

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/InsetsSourceConsumer;

    if-nez v3, :cond_21

    goto :goto_29

    :cond_21
    invoke-virtual {v3}, Landroid/view/InsetsSourceConsumer;->isRequestedVisible()Z

    move-result v4

    if-nez v4, :cond_29

    const/4 v2, 0x0

    return v2

    :cond_29
    :goto_29
    add-int/lit8 v1, v1, -0x1

    goto :goto_a

    :cond_2c
    return v2
.end method

.method private hideDirectly(IZIZ)V
    .registers 10

    invoke-static {}, Landroid/view/WindowInsets$Type;->ime()I

    move-result v0

    and-int/2addr v0, p1

    if-eqz v0, :cond_17

    invoke-static {}, Lcom/android/internal/inputmethod/ImeTracing;->getInstance()Lcom/android/internal/inputmethod/ImeTracing;

    move-result-object v0

    iget-object v1, p0, Landroid/view/InsetsController;->mHost:Landroid/view/InsetsController$Host;

    invoke-interface {v1}, Landroid/view/InsetsController$Host;->getInputMethodManager()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v1

    const/4 v2, 0x0

    const-string v3, "InsetsController#hideDirectly"

    invoke-virtual {v0, v3, v1, v2}, Lcom/android/internal/inputmethod/ImeTracing;->triggerClientDump(Ljava/lang/String;Landroid/view/inputmethod/InputMethodManager;[B)V

    :cond_17
    invoke-static {p1}, Landroid/view/InsetsState;->toInternalType(I)Landroid/util/ArraySet;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_21
    if-ltz v1, :cond_37

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p0, v2}, Landroid/view/InsetsController;->getSourceConsumer(I)Landroid/view/InsetsSourceConsumer;

    move-result-object v2

    invoke-virtual {v2, p2, p3}, Landroid/view/InsetsSourceConsumer;->hide(ZI)V

    add-int/lit8 v1, v1, -0x1

    goto :goto_21

    :cond_37
    invoke-direct {p0}, Landroid/view/InsetsController;->updateRequestedVisibilities()V

    if-eqz p4, :cond_44

    const-wide/16 v1, 0x8

    const/4 v3, 0x0

    const-string v4, "IC.hideRequestFromIme"

    invoke-static {v1, v2, v4, v3}, Landroid/os/Trace;->asyncTraceEnd(JLjava/lang/String;I)V

    :cond_44
    return-void
.end method

.method private invokeControllableInsetsChangedListeners()I
    .registers 5

    iget-object v0, p0, Landroid/view/InsetsController;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Landroid/view/InsetsController;->mInvokeControllableInsetsChangedListeners:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const/4 v0, 0x0

    iput v0, p0, Landroid/view/InsetsController;->mLastStartedAnimTypes:I

    invoke-direct {p0}, Landroid/view/InsetsController;->calculateControllableTypes()I

    move-result v0

    iget-object v1, p0, Landroid/view/InsetsController;->mControllableInsetsChangedListeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_15
    if-ge v2, v1, :cond_25

    iget-object v3, p0, Landroid/view/InsetsController;->mControllableInsetsChangedListeners:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/WindowInsetsController$OnControllableInsetsChangedListener;

    invoke-interface {v3, p0, v0}, Landroid/view/WindowInsetsController$OnControllableInsetsChangedListener;->onControllableInsetsChanged(Landroid/view/WindowInsetsController;I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_15

    :cond_25
    iget v2, p0, Landroid/view/InsetsController;->mLastStartedAnimTypes:I

    return v2
.end method

.method static synthetic lambda$new$2(Landroid/view/InsetsController;Ljava/lang/Integer;)Landroid/view/InsetsSourceConsumer;
    .registers 6

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0x13

    if-ne v0, v1, :cond_15

    new-instance v0, Landroid/view/ImeInsetsSourceConsumer;

    iget-object v1, p0, Landroid/view/InsetsController;->mState:Landroid/view/InsetsState;

    new-instance v2, Landroid/view/InsetsController$$ExternalSyntheticLambda4;

    invoke-direct {v2}, Landroid/view/InsetsController$$ExternalSyntheticLambda4;-><init>()V

    invoke-direct {v0, v1, v2, p0}, Landroid/view/ImeInsetsSourceConsumer;-><init>(Landroid/view/InsetsState;Ljava/util/function/Supplier;Landroid/view/InsetsController;)V

    return-object v0

    :cond_15
    new-instance v0, Landroid/view/InsetsSourceConsumer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget-object v2, p0, Landroid/view/InsetsController;->mState:Landroid/view/InsetsState;

    new-instance v3, Landroid/view/InsetsController$$ExternalSyntheticLambda4;

    invoke-direct {v3}, Landroid/view/InsetsController$$ExternalSyntheticLambda4;-><init>()V

    invoke-direct {v0, v1, v2, v3, p0}, Landroid/view/InsetsSourceConsumer;-><init>(ILandroid/view/InsetsState;Ljava/util/function/Supplier;Landroid/view/InsetsController;)V

    return-object v0
.end method

.method static synthetic lambda$static$0(F)F
    .registers 6

    const/high16 v0, 0x3f800000  # 1.0f

    sub-float v1, v0, p0

    const v2, 0x3eaaaaab

    const v3, 0x3eaaaaab

    cmpg-float v4, v1, v3

    if-gtz v4, :cond_f

    return v0

    :cond_f
    sub-float v3, v1, v3

    const v4, 0x3f2aaaaa

    div-float/2addr v3, v4

    sget-object v4, Landroid/view/InsetsController;->SYSTEM_BARS_ALPHA_INTERPOLATOR:Landroid/view/animation/Interpolator;

    invoke-interface {v4, v3}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v4

    sub-float/2addr v0, v4

    return v0
.end method

.method static synthetic lambda$static$1(FLandroid/graphics/Insets;Landroid/graphics/Insets;)Landroid/graphics/Insets;
    .registers 9

    iget v0, p1, Landroid/graphics/Insets;->left:I

    int-to-float v0, v0

    iget v1, p2, Landroid/graphics/Insets;->left:I

    iget v2, p1, Landroid/graphics/Insets;->left:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    mul-float/2addr v1, p0

    add-float/2addr v0, v1

    float-to-int v0, v0

    iget v1, p1, Landroid/graphics/Insets;->top:I

    int-to-float v1, v1

    iget v2, p2, Landroid/graphics/Insets;->top:I

    iget v3, p1, Landroid/graphics/Insets;->top:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    mul-float/2addr v2, p0

    add-float/2addr v1, v2

    float-to-int v1, v1

    iget v2, p1, Landroid/graphics/Insets;->right:I

    int-to-float v2, v2

    iget v3, p2, Landroid/graphics/Insets;->right:I

    iget v4, p1, Landroid/graphics/Insets;->right:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    mul-float/2addr v3, p0

    add-float/2addr v2, v3

    float-to-int v2, v2

    iget v3, p1, Landroid/graphics/Insets;->bottom:I

    int-to-float v3, v3

    iget v4, p2, Landroid/graphics/Insets;->bottom:I

    iget v5, p1, Landroid/graphics/Insets;->bottom:I

    sub-int/2addr v4, v5

    int-to-float v4, v4

    mul-float/2addr v4, p0

    add-float/2addr v3, v4

    float-to-int v3, v3

    invoke-static {v0, v1, v2, v3}, Landroid/graphics/Insets;->of(IIII)Landroid/graphics/Insets;

    move-result-object v0

    return-object v0
.end method

.method private showDirectly(IZ)V
    .registers 8

    invoke-static {}, Landroid/view/WindowInsets$Type;->ime()I

    move-result v0

    and-int/2addr v0, p1

    if-eqz v0, :cond_17

    invoke-static {}, Lcom/android/internal/inputmethod/ImeTracing;->getInstance()Lcom/android/internal/inputmethod/ImeTracing;

    move-result-object v0

    iget-object v1, p0, Landroid/view/InsetsController;->mHost:Landroid/view/InsetsController$Host;

    invoke-interface {v1}, Landroid/view/InsetsController$Host;->getInputMethodManager()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v1

    const/4 v2, 0x0

    const-string v3, "InsetsController#showDirectly"

    invoke-virtual {v0, v3, v1, v2}, Lcom/android/internal/inputmethod/ImeTracing;->triggerClientDump(Ljava/lang/String;Landroid/view/inputmethod/InputMethodManager;[B)V

    :cond_17
    invoke-static {p1}, Landroid/view/InsetsState;->toInternalType(I)Landroid/util/ArraySet;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_21
    const/4 v2, 0x0

    if-ltz v1, :cond_38

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {p0, v3}, Landroid/view/InsetsController;->getSourceConsumer(I)Landroid/view/InsetsSourceConsumer;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/view/InsetsSourceConsumer;->show(Z)V

    add-int/lit8 v1, v1, -0x1

    goto :goto_21

    :cond_38
    invoke-direct {p0}, Landroid/view/InsetsController;->updateRequestedVisibilities()V

    if-eqz p2, :cond_44

    const-wide/16 v3, 0x8

    const-string v1, "IC.showRequestFromIme"

    invoke-static {v3, v4, v1, v2}, Landroid/os/Trace;->asyncTraceEnd(JLjava/lang/String;I)V

    :cond_44
    return-void
.end method

.method private startResizingAnimationIfNeeded(Landroid/view/InsetsState;)V
    .registers 15

    invoke-virtual {p1}, Landroid/view/InsetsState;->getDisplayFrame()Landroid/graphics/Rect;

    move-result-object v0

    iget-object v1, p0, Landroid/view/InsetsController;->mState:Landroid/view/InsetsState;

    invoke-virtual {v1}, Landroid/view/InsetsState;->getDisplayFrame()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_11

    return-void

    :cond_11
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {}, Landroid/view/WindowInsets$Type;->systemBars()I

    move-result v2

    invoke-static {v2}, Landroid/view/InsetsState;->toInternalType(I)Landroid/util/ArraySet;

    move-result-object v2

    invoke-virtual {v2}, Landroid/util/ArraySet;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    :goto_21
    if-ltz v3, :cond_89

    invoke-virtual {v2, v3}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {p1, v4}, Landroid/view/InsetsState;->peekSource(I)Landroid/view/InsetsSource;

    move-result-object v5

    iget-object v6, p0, Landroid/view/InsetsController;->mState:Landroid/view/InsetsState;

    invoke-virtual {v6, v4}, Landroid/view/InsetsState;->peekSource(I)Landroid/view/InsetsSource;

    move-result-object v6

    if-eqz v5, :cond_86

    if-eqz v6, :cond_86

    invoke-virtual {v5}, Landroid/view/InsetsSource;->isVisible()Z

    move-result v7

    if-eqz v7, :cond_86

    invoke-virtual {v6}, Landroid/view/InsetsSource;->isVisible()Z

    move-result v7

    if-eqz v7, :cond_86

    invoke-virtual {v5}, Landroid/view/InsetsSource;->getFrame()Landroid/graphics/Rect;

    move-result-object v7

    invoke-virtual {v6}, Landroid/view/InsetsSource;->getFrame()Landroid/graphics/Rect;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_86

    iget-object v7, p0, Landroid/view/InsetsController;->mFrame:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/view/InsetsSource;->getFrame()Landroid/graphics/Rect;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/graphics/Rect;->intersects(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result v7

    if-nez v7, :cond_6d

    iget-object v7, p0, Landroid/view/InsetsController;->mFrame:Landroid/graphics/Rect;

    invoke-virtual {v6}, Landroid/view/InsetsSource;->getFrame()Landroid/graphics/Rect;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/graphics/Rect;->intersects(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result v7

    if-eqz v7, :cond_86

    :cond_6d
    invoke-virtual {v6}, Landroid/view/InsetsSource;->getType()I

    move-result v7

    invoke-static {v7}, Landroid/view/InsetsState;->toPublicType(I)I

    move-result v7

    or-int/2addr v0, v7

    if-nez v1, :cond_7e

    new-instance v7, Landroid/view/InsetsState;

    invoke-direct {v7}, Landroid/view/InsetsState;-><init>()V

    move-object v1, v7

    :cond_7e
    new-instance v7, Landroid/view/InsetsSource;

    invoke-direct {v7, v6}, Landroid/view/InsetsSource;-><init>(Landroid/view/InsetsSource;)V

    invoke-virtual {v1, v7}, Landroid/view/InsetsState;->addSource(Landroid/view/InsetsSource;)V

    :cond_86
    add-int/lit8 v3, v3, -0x1

    goto :goto_21

    :cond_89
    if-nez v0, :cond_8c

    return-void

    :cond_8c
    invoke-direct {p0, v0}, Landroid/view/InsetsController;->cancelExistingControllers(I)V

    new-instance v3, Landroid/view/InsetsResizeAnimationRunner;

    iget-object v5, p0, Landroid/view/InsetsController;->mFrame:Landroid/graphics/Rect;

    sget-object v8, Landroid/view/InsetsController;->RESIZE_INTERPOLATOR:Landroid/view/animation/Interpolator;

    const-wide/16 v9, 0x12c

    move-object v4, v3

    move-object v6, p1

    move-object v7, v1

    move v11, v0

    move-object v12, p0

    invoke-direct/range {v4 .. v12}, Landroid/view/InsetsResizeAnimationRunner;-><init>(Landroid/graphics/Rect;Landroid/view/InsetsState;Landroid/view/InsetsState;Landroid/view/animation/Interpolator;JILandroid/view/InsetsAnimationControlCallbacks;)V

    iget-object v4, p0, Landroid/view/InsetsController;->mRunningAnimations:Ljava/util/ArrayList;

    new-instance v5, Landroid/view/InsetsController$RunningAnimation;

    invoke-interface {v3}, Landroid/view/InsetsAnimationControlRunner;->getAnimationType()I

    move-result v6

    invoke-direct {v5, v3, v6}, Landroid/view/InsetsController$RunningAnimation;-><init>(Landroid/view/InsetsAnimationControlRunner;I)V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private updateDisabledUserAnimationTypes(I)V
    .registers 7

    iget v0, p0, Landroid/view/InsetsController;->mDisabledUserAnimationInsetsTypes:I

    xor-int/2addr v0, p1

    if-eqz v0, :cond_3c

    iget-object v1, p0, Landroid/view/InsetsController;->mSourceConsumers:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_d
    if-ltz v1, :cond_3a

    iget-object v2, p0, Landroid/view/InsetsController;->mSourceConsumers:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/InsetsSourceConsumer;

    invoke-virtual {v2}, Landroid/view/InsetsSourceConsumer;->getControl()Landroid/view/InsetsSourceControl;

    move-result-object v3

    if-eqz v3, :cond_37

    invoke-virtual {v2}, Landroid/view/InsetsSourceConsumer;->getType()I

    move-result v3

    invoke-static {v3}, Landroid/view/InsetsState;->toPublicType(I)I

    move-result v3

    and-int/2addr v3, v0

    if-eqz v3, :cond_37

    iget-object v3, p0, Landroid/view/InsetsController;->mHandler:Landroid/os/Handler;

    iget-object v4, p0, Landroid/view/InsetsController;->mInvokeControllableInsetsChangedListeners:Ljava/lang/Runnable;

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v3, p0, Landroid/view/InsetsController;->mHandler:Landroid/os/Handler;

    iget-object v4, p0, Landroid/view/InsetsController;->mInvokeControllableInsetsChangedListeners:Ljava/lang/Runnable;

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_3a

    :cond_37
    add-int/lit8 v1, v1, -0x1

    goto :goto_d

    :cond_3a
    :goto_3a
    iput p1, p0, Landroid/view/InsetsController;->mDisabledUserAnimationInsetsTypes:I

    :cond_3c
    return-void
.end method

.method private updateRequestedVisibilities()V
    .registers 7

    const/4 v0, 0x0

    iget-object v1, p0, Landroid/view/InsetsController;->mRequestedVisibilityChanged:Landroid/util/ArraySet;

    invoke-virtual {v1}, Landroid/util/ArraySet;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_9
    if-ltz v1, :cond_30

    iget-object v2, p0, Landroid/view/InsetsController;->mRequestedVisibilityChanged:Landroid/util/ArraySet;

    invoke-virtual {v2, v1}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/InsetsSourceConsumer;

    invoke-virtual {v2}, Landroid/view/InsetsSourceConsumer;->getType()I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1b

    goto :goto_2d

    :cond_1b
    invoke-virtual {v2}, Landroid/view/InsetsSourceConsumer;->isRequestedVisible()Z

    move-result v4

    iget-object v5, p0, Landroid/view/InsetsController;->mRequestedVisibilities:Landroid/view/InsetsVisibilities;

    invoke-virtual {v5, v3}, Landroid/view/InsetsVisibilities;->getVisibility(I)Z

    move-result v5

    if-eq v5, v4, :cond_2d

    iget-object v5, p0, Landroid/view/InsetsController;->mRequestedVisibilities:Landroid/view/InsetsVisibilities;

    invoke-virtual {v5, v3, v4}, Landroid/view/InsetsVisibilities;->setVisibility(IZ)V

    const/4 v0, 0x1

    :cond_2d
    :goto_2d
    add-int/lit8 v1, v1, -0x1

    goto :goto_9

    :cond_30
    iget-object v1, p0, Landroid/view/InsetsController;->mRequestedVisibilityChanged:Landroid/util/ArraySet;

    invoke-virtual {v1}, Landroid/util/ArraySet;->clear()V

    if-nez v0, :cond_38

    return-void

    :cond_38
    iget-object v1, p0, Landroid/view/InsetsController;->mHost:Landroid/view/InsetsController$Host;

    iget-object v2, p0, Landroid/view/InsetsController;->mRequestedVisibilities:Landroid/view/InsetsVisibilities;

    invoke-interface {v1, v2}, Landroid/view/InsetsController$Host;->updateRequestedVisibilities(Landroid/view/InsetsVisibilities;)V

    return-void
.end method

.method private updateState(Landroid/view/InsetsState;)V
    .registers 10

    iget-object v0, p0, Landroid/view/InsetsController;->mState:Landroid/view/InsetsState;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/view/InsetsState;->set(Landroid/view/InsetsState;I)V

    const/4 v0, 0x0

    const/4 v2, 0x1

    new-array v2, v2, [I

    aput v1, v2, v1

    const/4 v3, 0x0

    :goto_d
    const/4 v4, 0x2

    const/16 v5, 0x18

    if-ge v3, v5, :cond_3a

    invoke-virtual {p1, v3}, Landroid/view/InsetsState;->peekSource(I)Landroid/view/InsetsSource;

    move-result-object v5

    if-nez v5, :cond_19

    goto :goto_37

    :cond_19
    invoke-virtual {p0, v3}, Landroid/view/InsetsController;->getAnimationType(I)I

    move-result v6

    invoke-virtual {v5}, Landroid/view/InsetsSource;->isUserControllable()Z

    move-result v7

    if-nez v7, :cond_30

    invoke-static {v3}, Landroid/view/InsetsState;->toPublicType(I)I

    move-result v7

    or-int/2addr v0, v7

    if-ne v6, v4, :cond_30

    const/4 v6, -0x1

    aget v4, v2, v1

    or-int/2addr v4, v7

    aput v4, v2, v1

    :cond_30
    invoke-virtual {p0, v3}, Landroid/view/InsetsController;->getSourceConsumer(I)Landroid/view/InsetsSourceConsumer;

    move-result-object v4

    invoke-virtual {v4, v5, v6}, Landroid/view/InsetsSourceConsumer;->updateSource(Landroid/view/InsetsSource;I)V

    :goto_37
    add-int/lit8 v3, v3, 0x1

    goto :goto_d

    :cond_3a
    const/4 v3, 0x0

    :goto_3b
    if-ge v3, v5, :cond_57

    if-ne v3, v4, :cond_40

    goto :goto_54

    :cond_40
    iget-object v6, p0, Landroid/view/InsetsController;->mState:Landroid/view/InsetsState;

    invoke-virtual {v6, v3}, Landroid/view/InsetsState;->peekSource(I)Landroid/view/InsetsSource;

    move-result-object v6

    if-nez v6, :cond_49

    goto :goto_54

    :cond_49
    invoke-virtual {p1, v3}, Landroid/view/InsetsState;->peekSource(I)Landroid/view/InsetsSource;

    move-result-object v7

    if-nez v7, :cond_54

    iget-object v7, p0, Landroid/view/InsetsController;->mState:Landroid/view/InsetsState;

    invoke-virtual {v7, v3}, Landroid/view/InsetsState;->removeSource(I)Z

    :cond_54
    :goto_54
    add-int/lit8 v3, v3, 0x1

    goto :goto_3b

    :cond_57
    invoke-direct {p0, v0}, Landroid/view/InsetsController;->updateDisabledUserAnimationTypes(I)V

    aget v1, v2, v1

    if-eqz v1, :cond_68

    iget-object v1, p0, Landroid/view/InsetsController;->mHandler:Landroid/os/Handler;

    new-instance v3, Landroid/view/InsetsController$$ExternalSyntheticLambda2;

    invoke-direct {v3, p0, v2}, Landroid/view/InsetsController$$ExternalSyntheticLambda2;-><init>(Landroid/view/InsetsController;[I)V

    invoke-virtual {v1, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_68
    return-void
.end method


# virtual methods
.method public addOnControllableInsetsChangedListener(Landroid/view/WindowInsetsController$OnControllableInsetsChangedListener;)V
    .registers 3

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Landroid/view/InsetsController;->mControllableInsetsChangedListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-direct {p0}, Landroid/view/InsetsController;->calculateControllableTypes()I

    move-result v0

    invoke-interface {p1, p0, v0}, Landroid/view/WindowInsetsController$OnControllableInsetsChangedListener;->onControllableInsetsChanged(Landroid/view/WindowInsetsController;I)V

    return-void
.end method

.method public applyAnimation(IZZ)V
    .registers 8

    const/4 v0, 0x0

    invoke-static {}, Landroid/view/WindowInsets$Type;->ime()I

    move-result v1

    and-int/2addr v1, p1

    if-eqz v1, :cond_2e

    iget-object v1, p0, Landroid/view/InsetsController;->mSourceConsumers:Landroid/util/SparseArray;

    const/16 v2, 0x13

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/InsetsSourceConsumer;

    if-eqz v1, :cond_19

    invoke-virtual {v1}, Landroid/view/InsetsSourceConsumer;->getControl()Landroid/view/InsetsSourceControl;

    move-result-object v2

    goto :goto_1a

    :cond_19
    const/4 v2, 0x0

    :goto_1a
    if-eqz v2, :cond_2e

    invoke-virtual {v2}, Landroid/view/InsetsSourceControl;->getAndClearSkipAnimationOnce()Z

    move-result v3

    if-eqz v3, :cond_2c

    if-eqz p2, :cond_2c

    invoke-virtual {v1}, Landroid/view/InsetsSourceConsumer;->hasViewFocusWhenWindowFocusGain()Z

    move-result v3

    if-eqz v3, :cond_2c

    const/4 v3, 0x1

    goto :goto_2d

    :cond_2c
    const/4 v3, 0x0

    :goto_2d
    move v0, v3

    :cond_2e
    invoke-virtual {p0, p1, p2, p3, v0}, Landroid/view/InsetsController;->applyAnimation(IZZZ)V

    return-void
.end method

.method public applyAnimation(IZZZ)V
    .registers 19

    move-object v12, p0

    if-nez p1, :cond_4

    return-void

    :cond_4
    iget-object v0, v12, Landroid/view/InsetsController;->mHost:Landroid/view/InsetsController$Host;

    invoke-interface {v0}, Landroid/view/InsetsController$Host;->hasAnimationCallbacks()Z

    move-result v13

    new-instance v7, Landroid/view/InsetsController$InternalAnimationControlListener;

    iget-object v0, v12, Landroid/view/InsetsController;->mHost:Landroid/view/InsetsController$Host;

    invoke-interface {v0}, Landroid/view/InsetsController$Host;->getSystemBarsBehavior()I

    move-result v4

    if-nez p4, :cond_1b

    iget-boolean v0, v12, Landroid/view/InsetsController;->mAnimationsDisabled:Z

    if-eqz v0, :cond_19

    goto :goto_1b

    :cond_19
    const/4 v0, 0x0

    goto :goto_1c

    :cond_1b
    :goto_1b
    const/4 v0, 0x1

    :goto_1c
    move v5, v0

    iget-object v0, v12, Landroid/view/InsetsController;->mHost:Landroid/view/InsetsController$Host;

    const/16 v1, -0x50

    invoke-interface {v0, v1}, Landroid/view/InsetsController$Host;->dipToPx(I)I

    move-result v6

    move-object v0, v7

    move/from16 v1, p2

    move v2, v13

    move v3, p1

    invoke-direct/range {v0 .. v6}, Landroid/view/InsetsController$InternalAnimationControlListener;-><init>(ZZIIZI)V

    move-object v3, v7

    const/4 v2, 0x0

    const/4 v4, 0x0

    invoke-virtual {v3}, Landroid/view/InsetsController$InternalAnimationControlListener;->getDurationMs()J

    move-result-wide v6

    invoke-virtual {v3}, Landroid/view/InsetsController$InternalAnimationControlListener;->getInsetsInterpolator()Landroid/view/animation/Interpolator;

    move-result-object v8

    nop

    xor-int/lit8 v9, p2, 0x1

    xor-int/lit8 v10, p2, 0x1

    xor-int/lit8 v11, v13, 0x1

    move-object v0, p0

    move v1, p1

    move/from16 v5, p3

    invoke-direct/range {v0 .. v11}, Landroid/view/InsetsController;->controlAnimationUnchecked(ILandroid/os/CancellationSignal;Landroid/view/WindowInsetsAnimationControlListener;Landroid/graphics/Rect;ZJLandroid/view/animation/Interpolator;IIZ)V

    return-void
.end method

.method public varargs applySurfaceParams([Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams;)V
    .registers 3

    iget-object v0, p0, Landroid/view/InsetsController;->mHost:Landroid/view/InsetsController$Host;

    invoke-interface {v0, p1}, Landroid/view/InsetsController$Host;->applySurfaceParams([Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams;)V

    return-void
.end method

.method public calculateInsets(ZZIIIII)Landroid/view/WindowInsets;
    .registers 25

    move-object/from16 v0, p0

    move/from16 v12, p3

    iput v12, v0, Landroid/view/InsetsController;->mWindowType:I

    move/from16 v13, p4

    iput v13, v0, Landroid/view/InsetsController;->mLastWindowingMode:I

    move/from16 v14, p5

    iput v14, v0, Landroid/view/InsetsController;->mLastLegacySoftInputMode:I

    move/from16 v15, p6

    iput v15, v0, Landroid/view/InsetsController;->mLastLegacyWindowFlags:I

    move/from16 v11, p7

    iput v11, v0, Landroid/view/InsetsController;->mLastLegacySystemUiFlags:I

    iget-object v1, v0, Landroid/view/InsetsController;->mState:Landroid/view/InsetsState;

    iget-object v2, v0, Landroid/view/InsetsController;->mFrame:Landroid/graphics/Rect;

    const/4 v3, 0x0

    const/16 v16, 0x0

    move/from16 v4, p1

    move/from16 v5, p2

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p3

    move/from16 v10, p4

    move-object/from16 v11, v16

    invoke-virtual/range {v1 .. v11}, Landroid/view/InsetsState;->calculateInsets(Landroid/graphics/Rect;Landroid/view/InsetsState;ZZIIIIILandroid/util/SparseIntArray;)Landroid/view/WindowInsets;

    move-result-object v1

    iput-object v1, v0, Landroid/view/InsetsController;->mLastInsets:Landroid/view/WindowInsets;

    return-object v1
.end method

.method public calculateVisibleInsets(IIII)Landroid/graphics/Insets;
    .registers 11

    iget-object v0, p0, Landroid/view/InsetsController;->mState:Landroid/view/InsetsState;

    iget-object v1, p0, Landroid/view/InsetsController;->mFrame:Landroid/graphics/Rect;

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Landroid/view/InsetsState;->calculateVisibleInsets(Landroid/graphics/Rect;IIII)Landroid/graphics/Insets;

    move-result-object v0

    return-object v0
.end method

.method public cancelExistingAnimations()V
    .registers 2

    invoke-static {}, Landroid/view/WindowInsets$Type;->all()I

    move-result v0

    invoke-direct {p0, v0}, Landroid/view/InsetsController;->cancelExistingControllers(I)V

    return-void
.end method

.method public controlWindowInsetsAnimation(IJLandroid/view/animation/Interpolator;Landroid/os/CancellationSignal;Landroid/view/WindowInsetsAnimationControlListener;)V
    .registers 16

    const/4 v4, 0x0

    const/4 v8, 0x2

    move-object v0, p0

    move v1, p1

    move-object v2, p5

    move-object v3, p6

    move-wide v5, p2

    move-object v7, p4

    invoke-direct/range {v0 .. v8}, Landroid/view/InsetsController;->controlWindowInsetsAnimation(ILandroid/os/CancellationSignal;Landroid/view/WindowInsetsAnimationControlListener;ZJLandroid/view/animation/Interpolator;I)V

    return-void
.end method

.method public dispatchAnimationEnd(Landroid/view/WindowInsetsAnimation;)V
    .registers 6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "InsetsAnimation: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/WindowInsetsAnimation;->getTypeMask()I

    move-result v1

    invoke-static {v1}, Landroid/view/WindowInsets$Type;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/WindowInsetsAnimation;->getTypeMask()I

    move-result v1

    const-wide/16 v2, 0x8

    invoke-static {v2, v3, v0, v1}, Landroid/os/Trace;->asyncTraceEnd(JLjava/lang/String;I)V

    iget-object v0, p0, Landroid/view/InsetsController;->mHost:Landroid/view/InsetsController$Host;

    invoke-interface {v0, p1}, Landroid/view/InsetsController$Host;->dispatchWindowInsetsAnimationEnd(Landroid/view/WindowInsetsAnimation;)V

    return-void
.end method

.method dump(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .registers 6

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "InsetsController:"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/view/InsetsController;->mState:Landroid/view/InsetsState;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Landroid/view/InsetsState;->dump(Ljava/lang/String;Ljava/io/PrintWriter;)V

    return-void
.end method

.method dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V
    .registers 10

    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v0

    iget-object v2, p0, Landroid/view/InsetsController;->mState:Landroid/view/InsetsState;

    const-wide v3, 0x10b00000001L

    invoke-virtual {v2, p1, v3, v4}, Landroid/view/InsetsState;->dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V

    iget-object v2, p0, Landroid/view/InsetsController;->mRunningAnimations:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    :goto_16
    if-ltz v2, :cond_2d

    iget-object v3, p0, Landroid/view/InsetsController;->mRunningAnimations:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/InsetsController$RunningAnimation;

    iget-object v3, v3, Landroid/view/InsetsController$RunningAnimation;->runner:Landroid/view/InsetsAnimationControlRunner;

    const-wide v4, 0x20b00000002L

    invoke-interface {v3, p1, v4, v5}, Landroid/view/InsetsAnimationControlRunner;->dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V

    add-int/lit8 v2, v2, -0x1

    goto :goto_16

    :cond_2d
    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    return-void
.end method

.method public getAnimationType(I)I
    .registers 5

    iget-object v0, p0, Landroid/view/InsetsController;->mRunningAnimations:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_8
    if-ltz v0, :cond_28

    iget-object v1, p0, Landroid/view/InsetsController;->mRunningAnimations:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/InsetsController$RunningAnimation;

    iget-object v1, v1, Landroid/view/InsetsController$RunningAnimation;->runner:Landroid/view/InsetsAnimationControlRunner;

    invoke-interface {v1, p1}, Landroid/view/InsetsAnimationControlRunner;->controlsInternalType(I)Z

    move-result v2

    if-eqz v2, :cond_25

    iget-object v2, p0, Landroid/view/InsetsController;->mRunningAnimations:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/InsetsController$RunningAnimation;

    iget v2, v2, Landroid/view/InsetsController$RunningAnimation;->type:I

    return v2

    :cond_25
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    :cond_28
    const/4 v0, -0x1

    return v0
.end method

.method getHost()Landroid/view/InsetsController$Host;
    .registers 2

    iget-object v0, p0, Landroid/view/InsetsController;->mHost:Landroid/view/InsetsController$Host;

    return-object v0
.end method

.method public getLastDispatchedState()Landroid/view/InsetsState;
    .registers 2

    iget-object v0, p0, Landroid/view/InsetsController;->mLastDispatchedState:Landroid/view/InsetsState;

    return-object v0
.end method

.method getRequestedVisibilities()Landroid/view/InsetsVisibilities;
    .registers 2

    iget-object v0, p0, Landroid/view/InsetsController;->mRequestedVisibilities:Landroid/view/InsetsVisibilities;

    return-object v0
.end method

.method public getSourceConsumer(I)Landroid/view/InsetsSourceConsumer;
    .registers 5

    iget-object v0, p0, Landroid/view/InsetsController;->mSourceConsumers:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/InsetsSourceConsumer;

    if-eqz v0, :cond_b

    return-object v0

    :cond_b
    iget-object v1, p0, Landroid/view/InsetsController;->mConsumerCreator:Ljava/util/function/BiFunction;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, p0, v2}, Ljava/util/function/BiFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Landroid/view/InsetsSourceConsumer;

    iget-object v1, p0, Landroid/view/InsetsController;->mSourceConsumers:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-object v0
.end method

.method public getState()Landroid/view/InsetsState;
    .registers 2

    iget-object v0, p0, Landroid/view/InsetsController;->mState:Landroid/view/InsetsState;

    return-object v0
.end method

.method public getSystemBarsAppearance()I
    .registers 2

    iget-object v0, p0, Landroid/view/InsetsController;->mHost:Landroid/view/InsetsController$Host;

    invoke-interface {v0}, Landroid/view/InsetsController$Host;->isSystemBarsAppearanceControlled()Z

    move-result v0

    if-nez v0, :cond_a

    const/4 v0, 0x0

    return v0

    :cond_a
    iget-object v0, p0, Landroid/view/InsetsController;->mHost:Landroid/view/InsetsController$Host;

    invoke-interface {v0}, Landroid/view/InsetsController$Host;->getSystemBarsAppearance()I

    move-result v0

    return v0
.end method

.method public getSystemBarsBehavior()I
    .registers 2

    iget-object v0, p0, Landroid/view/InsetsController;->mHost:Landroid/view/InsetsController$Host;

    invoke-interface {v0}, Landroid/view/InsetsController$Host;->isSystemBarsBehaviorControlled()Z

    move-result v0

    if-nez v0, :cond_a

    const/4 v0, 0x0

    return v0

    :cond_a
    iget-object v0, p0, Landroid/view/InsetsController;->mHost:Landroid/view/InsetsController$Host;

    invoke-interface {v0}, Landroid/view/InsetsController$Host;->getSystemBarsBehavior()I

    move-result v0

    return v0
.end method

.method public hide(I)V
    .registers 3

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/view/InsetsController;->hide(IZ)V

    return-void
.end method

.method public hide(IZ)V
    .registers 12

    const-wide/16 v0, 0x8

    const/4 v2, 0x0

    if-eqz p2, :cond_1b

    invoke-static {}, Lcom/android/internal/inputmethod/ImeTracing;->getInstance()Lcom/android/internal/inputmethod/ImeTracing;

    move-result-object v3

    iget-object v4, p0, Landroid/view/InsetsController;->mHost:Landroid/view/InsetsController$Host;

    invoke-interface {v4}, Landroid/view/InsetsController$Host;->getInputMethodManager()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v4

    const/4 v5, 0x0

    const-string v6, "InsetsController#hide"

    invoke-virtual {v3, v6, v4, v5}, Lcom/android/internal/inputmethod/ImeTracing;->triggerClientDump(Ljava/lang/String;Landroid/view/inputmethod/InputMethodManager;[B)V

    const-string v3, "IC.hideRequestFromIme"

    invoke-static {v0, v1, v3, v2}, Landroid/os/Trace;->asyncTraceBegin(JLjava/lang/String;I)V

    goto :goto_20

    :cond_1b
    const-string v3, "IC.hideRequestFromApi"

    invoke-static {v0, v1, v3, v2}, Landroid/os/Trace;->asyncTraceBegin(JLjava/lang/String;I)V

    :goto_20
    const/4 v0, 0x0

    invoke-static {p1}, Landroid/view/InsetsState;->toInternalType(I)Landroid/util/ArraySet;

    move-result-object v1

    invoke-virtual {v1}, Landroid/util/ArraySet;->size()I

    move-result v3

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    :goto_2b
    if-ltz v3, :cond_57

    invoke-virtual {v1, v3}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {p0, v5}, Landroid/view/InsetsController;->getAnimationType(I)I

    move-result v6

    invoke-virtual {p0, v5}, Landroid/view/InsetsController;->getSourceConsumer(I)Landroid/view/InsetsSourceConsumer;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/InsetsSourceConsumer;->isRequestedVisible()Z

    move-result v8

    if-nez v8, :cond_48

    const/4 v8, -0x1

    if-eq v6, v8, :cond_54

    :cond_48
    if-ne v6, v4, :cond_4b

    goto :goto_54

    :cond_4b
    invoke-virtual {v7}, Landroid/view/InsetsSourceConsumer;->getType()I

    move-result v8

    invoke-static {v8}, Landroid/view/InsetsState;->toPublicType(I)I

    move-result v8

    or-int/2addr v0, v8

    :cond_54
    :goto_54
    add-int/lit8 v3, v3, -0x1

    goto :goto_2b

    :cond_57
    invoke-virtual {p0, v0, v2, p2}, Landroid/view/InsetsController;->applyAnimation(IZZ)V

    return-void
.end method

.method public isRequestedVisible(I)Z
    .registers 3

    invoke-virtual {p0, p1}, Landroid/view/InsetsController;->getSourceConsumer(I)Landroid/view/InsetsSourceConsumer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/InsetsSourceConsumer;->isRequestedVisible()Z

    move-result v0

    return v0
.end method

.method synthetic lambda$controlAnimationUnchecked$5$android-view-InsetsController(Landroid/view/InsetsController$PendingControlRequest;)V
    .registers 3

    iget-object v0, p0, Landroid/view/InsetsController;->mPendingImeControlRequest:Landroid/view/InsetsController$PendingControlRequest;

    if-ne v0, p1, :cond_7

    invoke-direct {p0}, Landroid/view/InsetsController;->abortPendingImeControlRequest()V

    :cond_7
    return-void
.end method

.method synthetic lambda$controlAnimationUnchecked$6$android-view-InsetsController(Landroid/view/InsetsAnimationControlRunner;)V
    .registers 3

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Landroid/view/InsetsController;->cancelAnimation(Landroid/view/InsetsAnimationControlRunner;Z)V

    return-void
.end method

.method synthetic lambda$new$3$android-view-InsetsController()V
    .registers 18

    move-object/from16 v0, p0

    const/4 v1, 0x0

    iput-boolean v1, v0, Landroid/view/InsetsController;->mAnimCallbackScheduled:Z

    iget-object v1, v0, Landroid/view/InsetsController;->mRunningAnimations:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_e

    return-void

    :cond_e
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    new-instance v3, Landroid/view/InsetsState;

    iget-object v4, v0, Landroid/view/InsetsController;->mState:Landroid/view/InsetsState;

    const/4 v5, 0x1

    invoke-direct {v3, v4, v5}, Landroid/view/InsetsState;-><init>(Landroid/view/InsetsState;Z)V

    iget-object v4, v0, Landroid/view/InsetsController;->mRunningAnimations:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    sub-int/2addr v4, v5

    :goto_27
    if-ltz v4, :cond_55

    iget-object v6, v0, Landroid/view/InsetsController;->mRunningAnimations:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/InsetsController$RunningAnimation;

    iget-object v7, v6, Landroid/view/InsetsController$RunningAnimation;->runner:Landroid/view/InsetsAnimationControlRunner;

    instance-of v8, v7, Landroid/view/WindowInsetsAnimationController;

    if-eqz v8, :cond_52

    iget-boolean v8, v6, Landroid/view/InsetsController$RunningAnimation;->startDispatched:Z

    if-eqz v8, :cond_42

    invoke-interface {v7}, Landroid/view/InsetsAnimationControlRunner;->getAnimation()Landroid/view/WindowInsetsAnimation;

    move-result-object v8

    invoke-interface {v1, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_42
    move-object v8, v7

    check-cast v8, Landroid/view/InternalInsetsAnimationController;

    invoke-interface {v8, v3}, Landroid/view/InternalInsetsAnimationController;->applyChangeInsets(Landroid/view/InsetsState;)Z

    move-result v8

    if-eqz v8, :cond_52

    invoke-interface {v7}, Landroid/view/InsetsAnimationControlRunner;->getAnimation()Landroid/view/WindowInsetsAnimation;

    move-result-object v8

    invoke-interface {v2, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_52
    add-int/lit8 v4, v4, -0x1

    goto :goto_27

    :cond_55
    iget-object v7, v0, Landroid/view/InsetsController;->mFrame:Landroid/graphics/Rect;

    iget-object v8, v0, Landroid/view/InsetsController;->mState:Landroid/view/InsetsState;

    iget-object v4, v0, Landroid/view/InsetsController;->mLastInsets:Landroid/view/WindowInsets;

    invoke-virtual {v4}, Landroid/view/WindowInsets;->isRound()Z

    move-result v9

    iget-object v4, v0, Landroid/view/InsetsController;->mLastInsets:Landroid/view/WindowInsets;

    invoke-virtual {v4}, Landroid/view/WindowInsets;->shouldAlwaysConsumeSystemBars()Z

    move-result v10

    iget v11, v0, Landroid/view/InsetsController;->mLastLegacySoftInputMode:I

    iget v12, v0, Landroid/view/InsetsController;->mLastLegacyWindowFlags:I

    iget v13, v0, Landroid/view/InsetsController;->mLastLegacySystemUiFlags:I

    iget v14, v0, Landroid/view/InsetsController;->mWindowType:I

    iget v15, v0, Landroid/view/InsetsController;->mLastWindowingMode:I

    const/16 v16, 0x0

    move-object v6, v3

    invoke-virtual/range {v6 .. v16}, Landroid/view/InsetsState;->calculateInsets(Landroid/graphics/Rect;Landroid/view/InsetsState;ZZIIIIILandroid/util/SparseIntArray;)Landroid/view/WindowInsets;

    move-result-object v4

    iget-object v6, v0, Landroid/view/InsetsController;->mHost:Landroid/view/InsetsController$Host;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v7

    invoke-interface {v6, v4, v7}, Landroid/view/InsetsController$Host;->dispatchWindowInsetsAnimationProgress(Landroid/view/WindowInsets;Ljava/util/List;)Landroid/view/WindowInsets;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v6

    sub-int/2addr v6, v5

    :goto_84
    if-ltz v6, :cond_92

    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/WindowInsetsAnimation;

    invoke-virtual {v0, v5}, Landroid/view/InsetsController;->dispatchAnimationEnd(Landroid/view/WindowInsetsAnimation;)V

    add-int/lit8 v6, v6, -0x1

    goto :goto_84

    :cond_92
    return-void
.end method

.method synthetic lambda$startAnimation$7$android-view-InsetsController(Landroid/view/InsetsAnimationControlRunner;ILandroid/view/WindowInsetsAnimation;Landroid/view/WindowInsetsAnimation$Bounds;Landroid/view/WindowInsetsAnimationControlListener;)V
    .registers 12

    move-object v0, p1

    check-cast v0, Landroid/view/WindowInsetsAnimationController;

    invoke-interface {v0}, Landroid/view/WindowInsetsAnimationController;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_a

    return-void

    :cond_a
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "InsetsAnimation: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p2}, Landroid/view/WindowInsets$Type;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-wide/16 v1, 0x8

    invoke-static {v1, v2, v0, p2}, Landroid/os/Trace;->asyncTraceBegin(JLjava/lang/String;I)V

    iget-object v0, p0, Landroid/view/InsetsController;->mRunningAnimations:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v3, 0x1

    sub-int/2addr v0, v3

    :goto_2e
    if-ltz v0, :cond_41

    iget-object v4, p0, Landroid/view/InsetsController;->mRunningAnimations:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/InsetsController$RunningAnimation;

    iget-object v5, v4, Landroid/view/InsetsController$RunningAnimation;->runner:Landroid/view/InsetsAnimationControlRunner;

    if-ne v5, p1, :cond_3e

    iput-boolean v3, v4, Landroid/view/InsetsController$RunningAnimation;->startDispatched:Z

    :cond_3e
    add-int/lit8 v0, v0, -0x1

    goto :goto_2e

    :cond_41
    const-string v0, "IC.pendingAnim"

    const/4 v4, 0x0

    invoke-static {v1, v2, v0, v4}, Landroid/os/Trace;->asyncTraceEnd(JLjava/lang/String;I)V

    iget-object v0, p0, Landroid/view/InsetsController;->mHost:Landroid/view/InsetsController$Host;

    invoke-interface {v0, p3, p4}, Landroid/view/InsetsController$Host;->dispatchWindowInsetsAnimationStart(Landroid/view/WindowInsetsAnimation;Landroid/view/WindowInsetsAnimation$Bounds;)Landroid/view/WindowInsetsAnimation$Bounds;

    iput-boolean v3, p0, Landroid/view/InsetsController;->mStartingAnimation:Z

    move-object v0, p1

    check-cast v0, Landroid/view/InternalInsetsAnimationController;

    invoke-interface {v0, v3}, Landroid/view/InternalInsetsAnimationController;->setReadyDispatched(Z)V

    move-object v0, p1

    check-cast v0, Landroid/view/WindowInsetsAnimationController;

    invoke-interface {p5, v0, p2}, Landroid/view/WindowInsetsAnimationControlListener;->onReady(Landroid/view/WindowInsetsAnimationController;I)V

    iput-boolean v4, p0, Landroid/view/InsetsController;->mStartingAnimation:Z

    return-void
.end method

.method synthetic lambda$updateState$4$android-view-InsetsController([I)V
    .registers 3

    const/4 v0, 0x0

    aget v0, p1, v0

    invoke-virtual {p0, v0}, Landroid/view/InsetsController;->show(I)V

    return-void
.end method

.method notifyControlRevoked(Landroid/view/InsetsSourceConsumer;)V
    .registers 7

    invoke-virtual {p1}, Landroid/view/InsetsSourceConsumer;->getType()I

    move-result v0

    invoke-static {v0}, Landroid/view/InsetsState;->toPublicType(I)I

    move-result v0

    iget-object v1, p0, Landroid/view/InsetsController;->mRunningAnimations:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    :goto_10
    if-ltz v1, :cond_2b

    iget-object v3, p0, Landroid/view/InsetsController;->mRunningAnimations:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/InsetsController$RunningAnimation;

    iget-object v3, v3, Landroid/view/InsetsController$RunningAnimation;->runner:Landroid/view/InsetsAnimationControlRunner;

    invoke-interface {v3, v0}, Landroid/view/InsetsAnimationControlRunner;->notifyControlRevoked(I)V

    invoke-interface {v3}, Landroid/view/InsetsAnimationControlRunner;->getControllingTypes()I

    move-result v4

    if-nez v4, :cond_28

    invoke-direct {p0, v3, v2}, Landroid/view/InsetsController;->cancelAnimation(Landroid/view/InsetsAnimationControlRunner;Z)V

    :cond_28
    add-int/lit8 v1, v1, -0x1

    goto :goto_10

    :cond_2b
    invoke-virtual {p1}, Landroid/view/InsetsSourceConsumer;->getType()I

    move-result v1

    const/16 v2, 0x13

    if-ne v1, v2, :cond_36

    invoke-direct {p0}, Landroid/view/InsetsController;->abortPendingImeControlRequest()V

    :cond_36
    return-void
.end method

.method public notifyFinished(Landroid/view/InsetsAnimationControlRunner;Z)V
    .registers 6

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/view/InsetsController;->cancelAnimation(Landroid/view/InsetsAnimationControlRunner;Z)V

    invoke-interface {p1}, Landroid/view/InsetsAnimationControlRunner;->getAnimationType()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_c

    return-void

    :cond_c
    const/4 v0, 0x1

    if-eqz p2, :cond_17

    invoke-interface {p1}, Landroid/view/InsetsAnimationControlRunner;->getTypes()I

    move-result v1

    invoke-direct {p0, v1, v0}, Landroid/view/InsetsController;->showDirectly(IZ)V

    goto :goto_22

    :cond_17
    invoke-interface {p1}, Landroid/view/InsetsAnimationControlRunner;->getTypes()I

    move-result v1

    invoke-interface {p1}, Landroid/view/InsetsAnimationControlRunner;->getAnimationType()I

    move-result v2

    invoke-direct {p0, v1, v0, v2, v0}, Landroid/view/InsetsController;->hideDirectly(IZIZ)V

    :goto_22
    return-void
.end method

.method public notifyVisibilityChanged()V
    .registers 2

    iget-object v0, p0, Landroid/view/InsetsController;->mHost:Landroid/view/InsetsController$Host;

    invoke-interface {v0}, Landroid/view/InsetsController$Host;->notifyInsetsChanged()V

    return-void
.end method

.method public onControlsChanged([Landroid/view/InsetsSourceControl;)V
    .registers 15

    const/4 v0, 0x0

    if-eqz p1, :cond_17

    array-length v1, p1

    move v2, v0

    :goto_5
    if-ge v2, v1, :cond_17

    aget-object v3, p1, v2

    if-eqz v3, :cond_14

    iget-object v4, p0, Landroid/view/InsetsController;->mTmpControlArray:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/view/InsetsSourceControl;->getType()I

    move-result v5

    invoke-virtual {v4, v5, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_14
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    :cond_17
    const/4 v1, 0x0

    const/4 v2, 0x1

    new-array v3, v2, [I

    new-array v4, v2, [I

    iget-object v5, p0, Landroid/view/InsetsController;->mSourceConsumers:Landroid/util/SparseArray;

    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    move-result v5

    sub-int/2addr v5, v2

    :goto_24
    if-ltz v5, :cond_40

    iget-object v6, p0, Landroid/view/InsetsController;->mSourceConsumers:Landroid/util/SparseArray;

    invoke-virtual {v6, v5}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/InsetsSourceConsumer;

    iget-object v7, p0, Landroid/view/InsetsController;->mTmpControlArray:Landroid/util/SparseArray;

    invoke-virtual {v6}, Landroid/view/InsetsSourceConsumer;->getType()I

    move-result v8

    invoke-virtual {v7, v8}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/InsetsSourceControl;

    invoke-virtual {v6, v7, v3, v4}, Landroid/view/InsetsSourceConsumer;->setControl(Landroid/view/InsetsSourceControl;[I[I)Z

    add-int/lit8 v5, v5, -0x1

    goto :goto_24

    :cond_40
    iget-object v5, p0, Landroid/view/InsetsController;->mTmpControlArray:Landroid/util/SparseArray;

    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    move-result v5

    sub-int/2addr v5, v2

    :goto_47
    if-ltz v5, :cond_82

    iget-object v6, p0, Landroid/view/InsetsController;->mTmpControlArray:Landroid/util/SparseArray;

    invoke-virtual {v6, v5}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/InsetsSourceControl;

    invoke-virtual {v6}, Landroid/view/InsetsSourceControl;->getType()I

    move-result v7

    invoke-virtual {p0, v7}, Landroid/view/InsetsController;->getSourceConsumer(I)Landroid/view/InsetsSourceConsumer;

    move-result-object v8

    invoke-virtual {v8, v6, v3, v4}, Landroid/view/InsetsSourceConsumer;->setControl(Landroid/view/InsetsSourceControl;[I[I)Z

    if-nez v1, :cond_7f

    invoke-virtual {v8}, Landroid/view/InsetsSourceConsumer;->isRequestedVisible()Z

    move-result v9

    iget-object v10, p0, Landroid/view/InsetsController;->mRequestedVisibilities:Landroid/view/InsetsVisibilities;

    invoke-virtual {v10, v7}, Landroid/view/InsetsVisibilities;->getVisibility(I)Z

    move-result v10

    if-eq v9, v10, :cond_6c

    move v10, v2

    goto :goto_6d

    :cond_6c
    move v10, v0

    :goto_6d
    const/16 v11, 0x13

    if-ne v7, v11, :cond_75

    if-eqz v9, :cond_75

    move v11, v2

    goto :goto_76

    :cond_75
    move v11, v0

    :goto_76
    if-nez v10, :cond_7d

    if-eqz v11, :cond_7b

    goto :goto_7d

    :cond_7b
    move v12, v0

    goto :goto_7e

    :cond_7d
    :goto_7d
    move v12, v2

    :goto_7e
    move v1, v12

    :cond_7f
    add-int/lit8 v5, v5, -0x1

    goto :goto_47

    :cond_82
    iget-object v5, p0, Landroid/view/InsetsController;->mTmpControlArray:Landroid/util/SparseArray;

    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    move-result v5

    if-lez v5, :cond_a5

    iget-object v5, p0, Landroid/view/InsetsController;->mRunningAnimations:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    sub-int/2addr v5, v2

    :goto_91
    if-ltz v5, :cond_a5

    iget-object v6, p0, Landroid/view/InsetsController;->mRunningAnimations:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/InsetsController$RunningAnimation;

    iget-object v6, v6, Landroid/view/InsetsController$RunningAnimation;->runner:Landroid/view/InsetsAnimationControlRunner;

    iget-object v7, p0, Landroid/view/InsetsController;->mTmpControlArray:Landroid/util/SparseArray;

    invoke-interface {v6, v7}, Landroid/view/InsetsAnimationControlRunner;->updateSurfacePosition(Landroid/util/SparseArray;)V

    add-int/lit8 v5, v5, -0x1

    goto :goto_91

    :cond_a5
    iget-object v5, p0, Landroid/view/InsetsController;->mTmpControlArray:Landroid/util/SparseArray;

    invoke-virtual {v5}, Landroid/util/SparseArray;->clear()V

    invoke-direct {p0}, Landroid/view/InsetsController;->invokeControllableInsetsChangedListeners()I

    move-result v5

    aget v6, v3, v0

    not-int v7, v5

    and-int/2addr v6, v7

    aput v6, v3, v0

    aget v6, v4, v0

    not-int v7, v5

    and-int/2addr v6, v7

    aput v6, v4, v0

    aget v6, v3, v0

    if-eqz v6, :cond_c3

    aget v6, v3, v0

    invoke-virtual {p0, v6, v2, v0}, Landroid/view/InsetsController;->applyAnimation(IZZ)V

    :cond_c3
    aget v2, v4, v0

    if-eqz v2, :cond_cc

    aget v2, v4, v0

    invoke-virtual {p0, v2, v0, v0}, Landroid/view/InsetsController;->applyAnimation(IZZ)V

    :cond_cc
    invoke-direct {p0}, Landroid/view/InsetsController;->updateRequestedVisibilities()V

    return-void
.end method

.method public onFrameChanged(Landroid/graphics/Rect;)V
    .registers 3

    iget-object v0, p0, Landroid/view/InsetsController;->mFrame:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    return-void

    :cond_9
    iget-object v0, p0, Landroid/view/InsetsController;->mHost:Landroid/view/InsetsController$Host;

    invoke-interface {v0}, Landroid/view/InsetsController$Host;->notifyInsetsChanged()V

    iget-object v0, p0, Landroid/view/InsetsController;->mFrame:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    return-void
.end method

.method public onRequestedVisibilityChanged(Landroid/view/InsetsSourceConsumer;)V
    .registers 3

    iget-object v0, p0, Landroid/view/InsetsController;->mRequestedVisibilityChanged:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public onStateChanged(Landroid/view/InsetsState;)Z
    .registers 7

    const/4 v0, 0x0

    sget-boolean v1, Landroid/view/ViewRootImpl;->CAPTION_ON_SHELL:Z

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v1, :cond_1b

    iget-object v1, p0, Landroid/view/InsetsController;->mState:Landroid/view/InsetsState;

    invoke-virtual {v1, p1, v3, v2}, Landroid/view/InsetsState;->equals(Ljava/lang/Object;ZZ)Z

    move-result v1

    if-eqz v1, :cond_18

    invoke-direct {p0}, Landroid/view/InsetsController;->captionInsetsUnchanged()Z

    move-result v1

    if-eqz v1, :cond_16

    goto :goto_18

    :cond_16
    move v1, v2

    goto :goto_19

    :cond_18
    :goto_18
    move v1, v3

    :goto_19
    move v0, v1

    goto :goto_23

    :cond_1b
    iget-object v1, p0, Landroid/view/InsetsController;->mState:Landroid/view/InsetsState;

    invoke-virtual {v1, p1, v2, v2}, Landroid/view/InsetsState;->equals(Ljava/lang/Object;ZZ)Z

    move-result v1

    xor-int/2addr v1, v3

    move v0, v1

    :goto_23
    if-nez v0, :cond_2e

    iget-object v1, p0, Landroid/view/InsetsController;->mLastDispatchedState:Landroid/view/InsetsState;

    invoke-virtual {v1, p1}, Landroid/view/InsetsState;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2e

    return v2

    :cond_2e
    iget-object v1, p0, Landroid/view/InsetsController;->mLastDispatchedState:Landroid/view/InsetsState;

    invoke-virtual {v1, p1, v3}, Landroid/view/InsetsState;->set(Landroid/view/InsetsState;Z)V

    new-instance v1, Landroid/view/InsetsState;

    iget-object v4, p0, Landroid/view/InsetsController;->mState:Landroid/view/InsetsState;

    invoke-direct {v1, v4, v3}, Landroid/view/InsetsState;-><init>(Landroid/view/InsetsState;Z)V

    invoke-direct {p0, p1}, Landroid/view/InsetsController;->updateState(Landroid/view/InsetsState;)V

    invoke-direct {p0}, Landroid/view/InsetsController;->applyLocalVisibilityOverride()V

    iget-object v4, p0, Landroid/view/InsetsController;->mState:Landroid/view/InsetsState;

    invoke-virtual {v4, v1, v2, v3}, Landroid/view/InsetsState;->equals(Ljava/lang/Object;ZZ)Z

    move-result v2

    if-nez v2, :cond_50

    iget-object v2, p0, Landroid/view/InsetsController;->mHost:Landroid/view/InsetsController$Host;

    invoke-interface {v2}, Landroid/view/InsetsController$Host;->notifyInsetsChanged()V

    invoke-direct {p0, v1}, Landroid/view/InsetsController;->startResizingAnimationIfNeeded(Landroid/view/InsetsState;)V

    :cond_50
    return v3
.end method

.method public onWindowFocusGained(Z)V
    .registers 3

    const/16 v0, 0x13

    invoke-virtual {p0, v0}, Landroid/view/InsetsController;->getSourceConsumer(I)Landroid/view/InsetsSourceConsumer;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/InsetsSourceConsumer;->onWindowFocusGained(Z)V

    return-void
.end method

.method public onWindowFocusLost()V
    .registers 2

    const/16 v0, 0x13

    invoke-virtual {p0, v0}, Landroid/view/InsetsController;->getSourceConsumer(I)Landroid/view/InsetsSourceConsumer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/InsetsSourceConsumer;->onWindowFocusLost()V

    return-void
.end method

.method public releaseSurfaceControlFromRt(Landroid/view/SurfaceControl;)V
    .registers 3

    iget-object v0, p0, Landroid/view/InsetsController;->mHost:Landroid/view/InsetsController$Host;

    invoke-interface {v0, p1}, Landroid/view/InsetsController$Host;->releaseSurfaceControlFromRt(Landroid/view/SurfaceControl;)V

    return-void
.end method

.method public removeOnControllableInsetsChangedListener(Landroid/view/WindowInsetsController$OnControllableInsetsChangedListener;)V
    .registers 3

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Landroid/view/InsetsController;->mControllableInsetsChangedListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public reportPerceptible(IZ)V
    .registers 8

    invoke-static {p1}, Landroid/view/InsetsState;->toInternalType(I)Landroid/util/ArraySet;

    move-result-object v0

    iget-object v1, p0, Landroid/view/InsetsController;->mSourceConsumers:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_b
    if-ge v2, v1, :cond_29

    iget-object v3, p0, Landroid/view/InsetsController;->mSourceConsumers:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/InsetsSourceConsumer;

    invoke-virtual {v3}, Landroid/view/InsetsSourceConsumer;->getType()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_26

    invoke-virtual {v3, p2}, Landroid/view/InsetsSourceConsumer;->onPerceptible(Z)V

    :cond_26
    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    :cond_29
    return-void
.end method

.method public scheduleApplyChangeInsets(Landroid/view/InsetsAnimationControlRunner;)V
    .registers 4

    iget-boolean v0, p0, Landroid/view/InsetsController;->mStartingAnimation:Z

    if-nez v0, :cond_1b

    invoke-interface {p1}, Landroid/view/InsetsAnimationControlRunner;->getAnimationType()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_c

    goto :goto_1b

    :cond_c
    iget-boolean v0, p0, Landroid/view/InsetsController;->mAnimCallbackScheduled:Z

    if-nez v0, :cond_1a

    iget-object v0, p0, Landroid/view/InsetsController;->mHost:Landroid/view/InsetsController$Host;

    iget-object v1, p0, Landroid/view/InsetsController;->mAnimCallback:Ljava/lang/Runnable;

    invoke-interface {v0, v1}, Landroid/view/InsetsController$Host;->postInsetsAnimationCallback(Ljava/lang/Runnable;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/InsetsController;->mAnimCallbackScheduled:Z

    :cond_1a
    return-void

    :cond_1b
    :goto_1b
    iget-object v0, p0, Landroid/view/InsetsController;->mAnimCallback:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/view/InsetsController;->mAnimCallbackScheduled:Z

    return-void
.end method

.method public setAnimationsDisabled(Z)V
    .registers 2

    iput-boolean p1, p0, Landroid/view/InsetsController;->mAnimationsDisabled:Z

    return-void
.end method

.method public setCaptionInsetsHeight(I)V
    .registers 8

    sget-boolean v0, Landroid/view/ViewRootImpl;->CAPTION_ON_SHELL:Z

    if-eqz v0, :cond_5

    return-void

    :cond_5
    iget v0, p0, Landroid/view/InsetsController;->mCaptionInsetsHeight:I

    if-eq v0, p1, :cond_35

    iput p1, p0, Landroid/view/InsetsController;->mCaptionInsetsHeight:I

    const/4 v0, 0x2

    if-eqz p1, :cond_2b

    iget-object v1, p0, Landroid/view/InsetsController;->mState:Landroid/view/InsetsState;

    invoke-virtual {v1, v0}, Landroid/view/InsetsState;->getSource(I)Landroid/view/InsetsSource;

    move-result-object v0

    iget-object v1, p0, Landroid/view/InsetsController;->mFrame:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    iget-object v2, p0, Landroid/view/InsetsController;->mFrame:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    iget-object v3, p0, Landroid/view/InsetsController;->mFrame:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    iget-object v4, p0, Landroid/view/InsetsController;->mFrame:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    iget v5, p0, Landroid/view/InsetsController;->mCaptionInsetsHeight:I

    add-int/2addr v4, v5

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/InsetsSource;->setFrame(IIII)V

    goto :goto_30

    :cond_2b
    iget-object v1, p0, Landroid/view/InsetsController;->mState:Landroid/view/InsetsState;

    invoke-virtual {v1, v0}, Landroid/view/InsetsState;->removeSource(I)Z

    :goto_30
    iget-object v0, p0, Landroid/view/InsetsController;->mHost:Landroid/view/InsetsController$Host;

    invoke-interface {v0}, Landroid/view/InsetsController$Host;->notifyInsetsChanged()V

    :cond_35
    return-void
.end method

.method public setSystemBarsAppearance(II)V
    .registers 4

    iget-object v0, p0, Landroid/view/InsetsController;->mHost:Landroid/view/InsetsController$Host;

    invoke-interface {v0, p1, p2}, Landroid/view/InsetsController$Host;->setSystemBarsAppearance(II)V

    return-void
.end method

.method public setSystemBarsBehavior(I)V
    .registers 3

    iget-object v0, p0, Landroid/view/InsetsController;->mHost:Landroid/view/InsetsController$Host;

    invoke-interface {v0, p1}, Landroid/view/InsetsController$Host;->setSystemBarsBehavior(I)V

    return-void
.end method

.method public show(I)V
    .registers 3

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/view/InsetsController;->show(IZ)V

    return-void
.end method

.method public show(IZ)V
    .registers 18

    move-object v12, p0

    move/from16 v13, p2

    invoke-static {}, Landroid/view/WindowInsets$Type;->ime()I

    move-result v0

    and-int v0, p1, v0

    if-eqz v0, :cond_2a

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "show(ime(), fromIme="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "InsetsController"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2a
    const/4 v0, 0x0

    const-string v1, "IC.showRequestFromApiToImeReady"

    const/4 v2, 0x0

    const-wide/16 v3, 0x8

    if-eqz v13, :cond_4a

    invoke-static {}, Lcom/android/internal/inputmethod/ImeTracing;->getInstance()Lcom/android/internal/inputmethod/ImeTracing;

    move-result-object v5

    iget-object v6, v12, Landroid/view/InsetsController;->mHost:Landroid/view/InsetsController$Host;

    invoke-interface {v6}, Landroid/view/InsetsController$Host;->getInputMethodManager()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v6

    const-string v7, "InsetsController#show"

    invoke-virtual {v5, v7, v6, v0}, Lcom/android/internal/inputmethod/ImeTracing;->triggerClientDump(Ljava/lang/String;Landroid/view/inputmethod/InputMethodManager;[B)V

    invoke-static {v3, v4, v1, v2}, Landroid/os/Trace;->asyncTraceEnd(JLjava/lang/String;I)V

    const-string v1, "IC.showRequestFromIme"

    invoke-static {v3, v4, v1, v2}, Landroid/os/Trace;->asyncTraceBegin(JLjava/lang/String;I)V

    goto :goto_52

    :cond_4a
    const-string v5, "IC.showRequestFromApi"

    invoke-static {v3, v4, v5, v2}, Landroid/os/Trace;->asyncTraceBegin(JLjava/lang/String;I)V

    invoke-static {v3, v4, v1, v2}, Landroid/os/Trace;->asyncTraceBegin(JLjava/lang/String;I)V

    :goto_52
    if-eqz v13, :cond_7a

    iget-object v1, v12, Landroid/view/InsetsController;->mPendingImeControlRequest:Landroid/view/InsetsController$PendingControlRequest;

    if-eqz v1, :cond_7a

    iget-object v14, v12, Landroid/view/InsetsController;->mPendingImeControlRequest:Landroid/view/InsetsController$PendingControlRequest;

    iput-object v0, v12, Landroid/view/InsetsController;->mPendingImeControlRequest:Landroid/view/InsetsController$PendingControlRequest;

    iget-object v0, v12, Landroid/view/InsetsController;->mHandler:Landroid/os/Handler;

    iget-object v1, v12, Landroid/view/InsetsController;->mPendingControlTimeout:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget v1, v14, Landroid/view/InsetsController$PendingControlRequest;->types:I

    iget-object v2, v14, Landroid/view/InsetsController$PendingControlRequest;->cancellationSignal:Landroid/os/CancellationSignal;

    iget-object v3, v14, Landroid/view/InsetsController$PendingControlRequest;->listener:Landroid/view/WindowInsetsAnimationControlListener;

    const/4 v4, 0x0

    const/4 v5, 0x1

    iget-wide v6, v14, Landroid/view/InsetsController$PendingControlRequest;->durationMs:J

    iget-object v8, v14, Landroid/view/InsetsController$PendingControlRequest;->interpolator:Landroid/view/animation/Interpolator;

    iget v9, v14, Landroid/view/InsetsController$PendingControlRequest;->animationType:I

    iget v10, v14, Landroid/view/InsetsController$PendingControlRequest;->layoutInsetsDuringAnimation:I

    iget-boolean v11, v14, Landroid/view/InsetsController$PendingControlRequest;->useInsetsAnimationThread:Z

    move-object v0, p0

    invoke-direct/range {v0 .. v11}, Landroid/view/InsetsController;->controlAnimationUnchecked(ILandroid/os/CancellationSignal;Landroid/view/WindowInsetsAnimationControlListener;Landroid/graphics/Rect;ZJLandroid/view/animation/Interpolator;IIZ)V

    return-void

    :cond_7a
    const/4 v0, 0x0

    invoke-static/range {p1 .. p1}, Landroid/view/InsetsState;->toInternalType(I)Landroid/util/ArraySet;

    move-result-object v1

    invoke-virtual {v1}, Landroid/util/ArraySet;->size()I

    move-result v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    :goto_85
    if-ltz v2, :cond_b7

    invoke-virtual {v1, v2}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {p0, v4}, Landroid/view/InsetsController;->getAnimationType(I)I

    move-result v5

    invoke-virtual {p0, v4}, Landroid/view/InsetsController;->getSourceConsumer(I)Landroid/view/InsetsSourceConsumer;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/InsetsSourceConsumer;->isRequestedVisible()Z

    move-result v7

    if-eqz v7, :cond_a2

    const/4 v7, -0x1

    if-eq v5, v7, :cond_b4

    :cond_a2
    if-nez v5, :cond_a5

    goto :goto_b4

    :cond_a5
    if-eqz v13, :cond_ab

    const/4 v7, 0x2

    if-ne v5, v7, :cond_ab

    goto :goto_b4

    :cond_ab
    invoke-virtual {v6}, Landroid/view/InsetsSourceConsumer;->getType()I

    move-result v7

    invoke-static {v7}, Landroid/view/InsetsState;->toPublicType(I)I

    move-result v7

    or-int/2addr v0, v7

    :cond_b4
    :goto_b4
    add-int/lit8 v2, v2, -0x1

    goto :goto_85

    :cond_b7
    invoke-virtual {p0, v0, v3, v13}, Landroid/view/InsetsController;->applyAnimation(IZZ)V

    return-void
.end method

.method public startAnimation(Landroid/view/InsetsAnimationControlRunner;Landroid/view/WindowInsetsAnimationControlListener;ILandroid/view/WindowInsetsAnimation;Landroid/view/WindowInsetsAnimation$Bounds;)V
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Landroid/view/InsetsAnimationControlRunner;",
            ":",
            "Landroid/view/InternalInsetsAnimationController;",
            ">(TT;",
            "Landroid/view/WindowInsetsAnimationControlListener;",
            "I",
            "Landroid/view/WindowInsetsAnimation;",
            "Landroid/view/WindowInsetsAnimation$Bounds;",
            ")V"
        }
    .end annotation

    iget-object v0, p0, Landroid/view/InsetsController;->mHost:Landroid/view/InsetsController$Host;

    invoke-interface {v0, p4}, Landroid/view/InsetsController$Host;->dispatchWindowInsetsAnimationPrepare(Landroid/view/WindowInsetsAnimation;)V

    iget-object v0, p0, Landroid/view/InsetsController;->mHost:Landroid/view/InsetsController$Host;

    new-instance v8, Landroid/view/InsetsController$$ExternalSyntheticLambda3;

    move-object v1, v8

    move-object v2, p0

    move-object v3, p1

    move v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p2

    invoke-direct/range {v1 .. v7}, Landroid/view/InsetsController$$ExternalSyntheticLambda3;-><init>(Landroid/view/InsetsController;Landroid/view/InsetsAnimationControlRunner;ILandroid/view/WindowInsetsAnimation;Landroid/view/WindowInsetsAnimation$Bounds;Landroid/view/WindowInsetsAnimationControlListener;)V

    invoke-interface {v0, v8}, Landroid/view/InsetsController$Host;->addOnPreDrawRunnable(Ljava/lang/Runnable;)V

    return-void
.end method

.method public updateCompatSysUiVisibility(IZZ)V
    .registers 5

    iget-object v0, p0, Landroid/view/InsetsController;->mHost:Landroid/view/InsetsController$Host;

    invoke-interface {v0, p1, p2, p3}, Landroid/view/InsetsController$Host;->updateCompatSysUiVisibility(IZZ)V

    return-void
.end method

# classes.dex

.class public abstract Landroid/hardware/display/DisplayManagerInternal;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/display/DisplayManagerInternal$RefreshRateLimitation;,
        Landroid/hardware/display/DisplayManagerInternal$RefreshRateRange;,
        Landroid/hardware/display/DisplayManagerInternal$DisplayGroupListener;,
        Landroid/hardware/display/DisplayManagerInternal$DisplayTransactionListener;,
        Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;,
        Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;,
        Landroid/hardware/display/DisplayManagerInternal$RefreshRateLimitType;
    }
.end annotation


# static fields
.field public static final REFRESH_RATE_LIMIT_HIGH_BRIGHTNESS_MODE:I = 0x1


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract createVirtualDisplay(Landroid/hardware/display/VirtualDisplayConfig;Landroid/hardware/display/IVirtualDisplayCallback;Landroid/companion/virtual/IVirtualDevice;Landroid/window/DisplayWindowPolicyController;Ljava/lang/String;)I
.end method

.method public abstract finishDisplayTransition()V
.end method

.method public abstract getDisplayInfo(I)Landroid/view/DisplayInfo;
.end method

.method public abstract getDisplayPosition(I)Landroid/graphics/Point;
.end method

.method public abstract getDisplaySurfaceDefaultSize(I)Landroid/graphics/Point;
.end method

.method public abstract getDisplayWindowPolicyController(I)Landroid/window/DisplayWindowPolicyController;
.end method

.method public abstract getDisplayedContentSample(IJJ)Landroid/hardware/display/DisplayedContentSample;
.end method

.method public abstract getDisplayedContentSamplingAttributes(I)Landroid/hardware/display/DisplayedContentSamplingAttributes;
.end method

.method public abstract getNonOverrideDisplayInfo(ILandroid/view/DisplayInfo;)V
.end method

.method public abstract getPossibleDisplayInfo(I)Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Set<",
            "Landroid/view/DisplayInfo;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getRefreshRateForDisplayAndSensor(ILjava/lang/String;Ljava/lang/String;)Landroid/hardware/display/DisplayManagerInternal$RefreshRateRange;
.end method

.method public abstract getRefreshRateLimitations(I)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Landroid/hardware/display/DisplayManagerInternal$RefreshRateLimitation;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getRefreshRateSwitchingType()I
.end method

.method public abstract ignoreProximitySensorUntilChanged()V
.end method

.method public abstract initPowerManagement(Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;Landroid/os/Handler;Landroid/hardware/SensorManager;)V
.end method

.method public abstract isDisplayTransitionInProgress()Z
.end method

.method public abstract isInResolutionSwitchBlackList(Ljava/lang/String;)Z
.end method

.method public abstract isInResolutionSwitchProtectList(Ljava/lang/String;)Z
.end method

.method public abstract isProximitySensorAvailable()Z
.end method

.method public abstract isUsingVitualDisplay(I)Z
.end method

.method public abstract notifyDisplayManager(IILandroid/os/Bundle;)V
.end method

.method public abstract onEarlyInteractivityChange(Z)V
.end method

.method public abstract onOverlayChanged()V
.end method

.method public abstract performTraversal(Landroid/view/SurfaceControl$Transaction;)V
.end method

.method public abstract persistBrightnessTrackerState()V
.end method

.method public abstract registerDisplayGroupListener(Landroid/hardware/display/DisplayManagerInternal$DisplayGroupListener;)V
.end method

.method public abstract registerDisplayTransactionListener(Landroid/hardware/display/DisplayManagerInternal$DisplayTransactionListener;)V
.end method

.method public abstract requestPowerState(ILandroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;Z)Z
.end method

.method public abstract setDisplayAccessUIDs(Landroid/util/SparseArray;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Landroid/util/IntArray;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract setDisplayInfoOverrideFromWindowManager(ILandroid/view/DisplayInfo;)V
.end method

.method public abstract setDisplayOffsets(III)V
.end method

.method public abstract setDisplayProperties(IZFIFFZZ)V
.end method

.method public abstract setDisplayScalingDisabled(IZ)V
.end method

.method public abstract setDisplayedContentSamplingEnabled(IZII)Z
.end method

.method public abstract setSceneMaxRefreshRate(IF)V
.end method

.method public abstract setWindowManagerMirroring(IZ)V
.end method

.method public abstract systemScreenshot(I)Landroid/view/SurfaceControl$ScreenshotHardwareBuffer;
.end method

.method public abstract unregisterDisplayGroupListener(Landroid/hardware/display/DisplayManagerInternal$DisplayGroupListener;)V
.end method

.method public abstract unregisterDisplayTransactionListener(Landroid/hardware/display/DisplayManagerInternal$DisplayTransactionListener;)V
.end method

.method public abstract updateDisplaySize(III)V
.end method

.method public abstract userScreenshot(I)Landroid/view/SurfaceControl$ScreenshotHardwareBuffer;
.end method

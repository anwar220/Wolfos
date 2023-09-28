# classes2.dex

.class public abstract Landroid/hardware/input/InputManagerInternal;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/input/InputManagerInternal$LidSwitchCallback;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract createInputChannel(Ljava/lang/String;)Landroid/view/InputChannel;
.end method

.method public abstract getCursorPosition()Landroid/graphics/PointF;
.end method

.method public abstract getVirtualMousePointerDisplayId()I
.end method

.method public abstract pilferPointers(Landroid/os/IBinder;)V
.end method

.method public abstract registerLidSwitchCallback(Landroid/hardware/input/InputManagerInternal$LidSwitchCallback;)V
.end method

.method public abstract setDisplayEligibilityForPointerCapture(IZ)V
.end method

.method public abstract setDisplayViewports(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/hardware/display/DisplayViewport;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract setInputMethodStatus(Z)V
.end method

.method public abstract setInteractive(Z)V
.end method

.method public abstract setPointerAcceleration(FI)V
.end method

.method public abstract setPointerIconVisible(ZI)V
.end method

.method public abstract setPulseGestureEnabled(Z)V
.end method

.method public abstract setVirtualMousePointerDisplayId(I)Z
.end method

.method public abstract toggleCapsLock(I)V
.end method

.method public abstract transferTouchFocus(Landroid/os/IBinder;Landroid/os/IBinder;)Z
.end method

.method public abstract unregisterLidSwitchCallback(Landroid/hardware/input/InputManagerInternal$LidSwitchCallback;)V
.end method

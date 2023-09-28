# classes.dex

.class public interface abstract Landroid/accessibilityservice/AccessibilityService$Callbacks;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/accessibilityservice/AccessibilityService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Callbacks"
.end annotation


# virtual methods
.method public abstract createImeSession(Lcom/android/internal/inputmethod/IAccessibilityInputMethodSessionCallback;)V
.end method

.method public abstract init(ILandroid/os/IBinder;)V
.end method

.method public abstract onAccessibilityButtonAvailabilityChanged(Z)V
.end method

.method public abstract onAccessibilityButtonClicked(I)V
.end method

.method public abstract onAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
.end method

.method public abstract onFingerprintCapturingGesturesChanged(Z)V
.end method

.method public abstract onFingerprintGesture(I)V
.end method

.method public abstract onGesture(Landroid/accessibilityservice/AccessibilityGestureEvent;)Z
.end method

.method public abstract onInterrupt()V
.end method

.method public abstract onKeyEvent(Landroid/view/KeyEvent;)Z
.end method

.method public abstract onMagnificationChanged(ILandroid/graphics/Region;Landroid/accessibilityservice/MagnificationConfig;)V
.end method

.method public abstract onMotionEvent(Landroid/view/MotionEvent;)V
.end method

.method public abstract onPerformGestureResult(IZ)V
.end method

.method public abstract onServiceConnected()V
.end method

.method public abstract onSoftKeyboardShowModeChanged(I)V
.end method

.method public abstract onSystemActionsChanged()V
.end method

.method public abstract onTouchStateChanged(II)V
.end method

.method public abstract startInput(Lcom/android/internal/inputmethod/RemoteAccessibilityInputConnection;Landroid/view/inputmethod/EditorInfo;Z)V
.end method

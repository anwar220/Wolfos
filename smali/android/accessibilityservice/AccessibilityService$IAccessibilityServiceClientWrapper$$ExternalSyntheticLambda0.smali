# classes.dex

.class public final synthetic Landroid/accessibilityservice/AccessibilityService$IAccessibilityServiceClientWrapper$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/BiConsumer;


# direct methods
.method public synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 3

    check-cast p1, Landroid/accessibilityservice/AccessibilityService$Callbacks;

    check-cast p2, Landroid/view/MotionEvent;

    invoke-interface {p1, p2}, Landroid/accessibilityservice/AccessibilityService$Callbacks;->onMotionEvent(Landroid/view/MotionEvent;)V

    return-void
.end method

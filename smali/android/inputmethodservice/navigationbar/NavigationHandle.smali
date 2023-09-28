# classes2.dex

.class public Landroid/inputmethodservice/navigationbar/NavigationHandle;
.super Landroid/view/View;

# interfaces
.implements Landroid/inputmethodservice/navigationbar/ButtonInterface;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/inputmethodservice/navigationbar/NavigationHandle;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/inputmethodservice/navigationbar/NavigationHandle;->setFocusable(Z)V

    return-void
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 3

    const/4 v0, 0x0

    return v0
.end method

.method public setDarkIntensity(F)V
    .registers 2

    return-void
.end method

.method public setDelayTouchFeedback(Z)V
    .registers 2

    return-void
.end method

.method public setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    .registers 2

    return-void
.end method

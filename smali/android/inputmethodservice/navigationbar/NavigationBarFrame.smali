# classes2.dex

.class public final Landroid/inputmethodservice/navigationbar/NavigationBarFrame;
.super Landroid/widget/FrameLayout;


# instance fields
.field private mDeadZone:Landroid/inputmethodservice/navigationbar/DeadZone;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/inputmethodservice/navigationbar/NavigationBarFrame;->mDeadZone:Landroid/inputmethodservice/navigationbar/DeadZone;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/inputmethodservice/navigationbar/NavigationBarFrame;->mDeadZone:Landroid/inputmethodservice/navigationbar/DeadZone;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/inputmethodservice/navigationbar/NavigationBarFrame;->mDeadZone:Landroid/inputmethodservice/navigationbar/DeadZone;

    return-void
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_10

    iget-object v0, p0, Landroid/inputmethodservice/navigationbar/NavigationBarFrame;->mDeadZone:Landroid/inputmethodservice/navigationbar/DeadZone;

    if-eqz v0, :cond_10

    invoke-virtual {v0, p1}, Landroid/inputmethodservice/navigationbar/DeadZone;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0

    :cond_10
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public setDeadZone(Landroid/inputmethodservice/navigationbar/DeadZone;)V
    .registers 2

    iput-object p1, p0, Landroid/inputmethodservice/navigationbar/NavigationBarFrame;->mDeadZone:Landroid/inputmethodservice/navigationbar/DeadZone;

    return-void
.end method

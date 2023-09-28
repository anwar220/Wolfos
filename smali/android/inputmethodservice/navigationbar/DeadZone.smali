# classes2.dex

.class final Landroid/inputmethodservice/navigationbar/DeadZone;
.super Ljava/lang/Object;


# static fields
.field private static final CHATTY:Z = true

.field public static final DEBUG:Z = false

.field private static final FLASH_PROPERTY:Landroid/util/FloatProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/FloatProperty<",
            "Landroid/inputmethodservice/navigationbar/DeadZone;",
            ">;"
        }
    .end annotation
.end field

.field public static final HORIZONTAL:I = 0x0

.field public static final TAG:Ljava/lang/String; = "DeadZone"

.field public static final VERTICAL:I = 0x1


# instance fields
.field private final mDebugFlash:Ljava/lang/Runnable;

.field private mDecay:I

.field private mDisplayRotation:I

.field private mFlashFrac:F

.field private mHold:I

.field private mLastPokeTime:J

.field private final mNavigationBarView:Landroid/inputmethodservice/navigationbar/NavigationBarView;

.field private mShouldFlash:Z

.field private mSizeMax:I

.field private mSizeMin:I

.field private mVertical:Z


# direct methods
.method static bridge synthetic -$$Nest$sfgetFLASH_PROPERTY()Landroid/util/FloatProperty;
    .registers 1

    sget-object v0, Landroid/inputmethodservice/navigationbar/DeadZone;->FLASH_PROPERTY:Landroid/util/FloatProperty;

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Landroid/inputmethodservice/navigationbar/DeadZone$1;

    const-string v1, "DeadZoneFlash"

    invoke-direct {v0, v1}, Landroid/inputmethodservice/navigationbar/DeadZone$1;-><init>(Ljava/lang/String;)V

    sput-object v0, Landroid/inputmethodservice/navigationbar/DeadZone;->FLASH_PROPERTY:Landroid/util/FloatProperty;

    return-void
.end method

.method constructor <init>(Landroid/inputmethodservice/navigationbar/NavigationBarView;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Landroid/inputmethodservice/navigationbar/DeadZone;->mFlashFrac:F

    new-instance v0, Landroid/inputmethodservice/navigationbar/DeadZone$2;

    invoke-direct {v0, p0}, Landroid/inputmethodservice/navigationbar/DeadZone$2;-><init>(Landroid/inputmethodservice/navigationbar/DeadZone;)V

    iput-object v0, p0, Landroid/inputmethodservice/navigationbar/DeadZone;->mDebugFlash:Ljava/lang/Runnable;

    iput-object p1, p0, Landroid/inputmethodservice/navigationbar/DeadZone;->mNavigationBarView:Landroid/inputmethodservice/navigationbar/NavigationBarView;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/inputmethodservice/navigationbar/DeadZone;->onConfigurationChanged(I)V

    return-void
.end method

.method private getSize(J)F
    .registers 11

    iget v0, p0, Landroid/inputmethodservice/navigationbar/DeadZone;->mSizeMax:I

    if-nez v0, :cond_6

    const/4 v0, 0x0

    return v0

    :cond_6
    iget-wide v1, p0, Landroid/inputmethodservice/navigationbar/DeadZone;->mLastPokeTime:J

    sub-long v1, p1, v1

    iget v3, p0, Landroid/inputmethodservice/navigationbar/DeadZone;->mHold:I

    iget v4, p0, Landroid/inputmethodservice/navigationbar/DeadZone;->mDecay:I

    add-int v5, v3, v4

    int-to-long v5, v5

    cmp-long v5, v1, v5

    if-lez v5, :cond_19

    iget v0, p0, Landroid/inputmethodservice/navigationbar/DeadZone;->mSizeMin:I

    int-to-float v0, v0

    return v0

    :cond_19
    int-to-long v5, v3

    cmp-long v5, v1, v5

    if-gez v5, :cond_20

    int-to-float v0, v0

    return v0

    :cond_20
    int-to-float v0, v0

    iget v5, p0, Landroid/inputmethodservice/navigationbar/DeadZone;->mSizeMin:I

    int-to-float v5, v5

    int-to-long v6, v3

    sub-long v6, v1, v6

    long-to-float v3, v6

    int-to-float v4, v4

    div-float/2addr v3, v4

    invoke-static {v0, v5, v3}, Landroid/inputmethodservice/navigationbar/DeadZone;->lerp(FFF)F

    move-result v0

    float-to-int v0, v0

    int-to-float v0, v0

    return v0
.end method

.method static lerp(FFF)F
    .registers 4

    sub-float v0, p1, p0

    mul-float/2addr v0, p2

    add-float/2addr v0, p0

    return v0
.end method

.method private poke(Landroid/view/MotionEvent;)V
    .registers 4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/inputmethodservice/navigationbar/DeadZone;->mLastPokeTime:J

    iget-boolean v0, p0, Landroid/inputmethodservice/navigationbar/DeadZone;->mShouldFlash:Z

    if-eqz v0, :cond_f

    iget-object v0, p0, Landroid/inputmethodservice/navigationbar/DeadZone;->mNavigationBarView:Landroid/inputmethodservice/navigationbar/NavigationBarView;

    invoke-virtual {v0}, Landroid/inputmethodservice/navigationbar/NavigationBarView;->postInvalidate()V

    :cond_f
    return-void
.end method


# virtual methods
.method public getFlash()F
    .registers 2

    iget v0, p0, Landroid/inputmethodservice/navigationbar/DeadZone;->mFlashFrac:F

    return v0
.end method

.method public onConfigurationChanged(I)V
    .registers 6

    iput p1, p0, Landroid/inputmethodservice/navigationbar/DeadZone;->mDisplayRotation:I

    iget-object v0, p0, Landroid/inputmethodservice/navigationbar/DeadZone;->mNavigationBarView:Landroid/inputmethodservice/navigationbar/NavigationBarView;

    invoke-virtual {v0}, Landroid/inputmethodservice/navigationbar/NavigationBarView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/16 v1, 0x14d

    iput v1, p0, Landroid/inputmethodservice/navigationbar/DeadZone;->mHold:I

    iput v1, p0, Landroid/inputmethodservice/navigationbar/DeadZone;->mDecay:I

    const/high16 v1, 0x41400000  # 12.0f

    invoke-static {v1, v0}, Landroid/inputmethodservice/navigationbar/NavigationBarUtils;->dpToPx(FLandroid/content/res/Resources;)I

    move-result v1

    iput v1, p0, Landroid/inputmethodservice/navigationbar/DeadZone;->mSizeMin:I

    const/high16 v1, 0x42000000  # 32.0f

    invoke-static {v1, v0}, Landroid/inputmethodservice/navigationbar/NavigationBarUtils;->dpToPx(FLandroid/content/res/Resources;)I

    move-result v1

    iput v1, p0, Landroid/inputmethodservice/navigationbar/DeadZone;->mSizeMax:I

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    const/4 v2, 0x0

    const/4 v3, 0x2

    if-ne v1, v3, :cond_2a

    const/4 v1, 0x1

    goto :goto_2b

    :cond_2a
    move v1, v2

    :goto_2b
    iput-boolean v1, p0, Landroid/inputmethodservice/navigationbar/DeadZone;->mVertical:Z

    invoke-virtual {p0, v2}, Landroid/inputmethodservice/navigationbar/DeadZone;->setFlashOnTouchCapture(Z)V

    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .registers 8

    iget-boolean v0, p0, Landroid/inputmethodservice/navigationbar/DeadZone;->mShouldFlash:Z

    if-eqz v0, :cond_4f

    iget v0, p0, Landroid/inputmethodservice/navigationbar/DeadZone;->mFlashFrac:F

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_c

    goto :goto_4f

    :cond_c
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Landroid/inputmethodservice/navigationbar/DeadZone;->getSize(J)F

    move-result v0

    float-to-int v0, v0

    iget-boolean v1, p0, Landroid/inputmethodservice/navigationbar/DeadZone;->mVertical:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_38

    iget v1, p0, Landroid/inputmethodservice/navigationbar/DeadZone;->mDisplayRotation:I

    const/4 v3, 0x3

    if-ne v1, v3, :cond_30

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v1

    sub-int/2addr v1, v0

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v3

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v4

    invoke-virtual {p1, v1, v2, v3, v4}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    goto :goto_3f

    :cond_30
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v1

    invoke-virtual {p1, v2, v2, v0, v1}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    goto :goto_3f

    :cond_38
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v1

    invoke-virtual {p1, v2, v2, v1, v0}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    :goto_3f
    iget v1, p0, Landroid/inputmethodservice/navigationbar/DeadZone;->mFlashFrac:F

    const/high16 v2, 0x437f0000  # 255.0f

    mul-float/2addr v2, v1

    float-to-int v2, v2

    const/16 v3, 0xdd

    const/16 v4, 0xee

    const/16 v5, 0xaa

    invoke-virtual {p1, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawARGB(IIII)V

    return-void

    :cond_4f
    :goto_4f
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 9

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_9

    return v0

    :cond_9
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    const/4 v3, 0x4

    const/4 v4, 0x1

    if-ne v1, v3, :cond_15

    invoke-direct {p0, p1}, Landroid/inputmethodservice/navigationbar/DeadZone;->poke(Landroid/view/MotionEvent;)V

    return v4

    :cond_15
    if-nez v1, :cond_98

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v5

    invoke-direct {p0, v5, v6}, Landroid/inputmethodservice/navigationbar/DeadZone;->getSize(J)F

    move-result v3

    float-to-int v3, v3

    iget-boolean v5, p0, Landroid/inputmethodservice/navigationbar/DeadZone;->mVertical:Z

    if-eqz v5, :cond_49

    iget v5, p0, Landroid/inputmethodservice/navigationbar/DeadZone;->mDisplayRotation:I

    if-ne v5, v2, :cond_3c

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    iget-object v5, p0, Landroid/inputmethodservice/navigationbar/DeadZone;->mNavigationBarView:Landroid/inputmethodservice/navigationbar/NavigationBarView;

    invoke-virtual {v5}, Landroid/inputmethodservice/navigationbar/NavigationBarView;->getWidth()I

    move-result v5

    sub-int/2addr v5, v3

    int-to-float v5, v5

    cmpl-float v2, v2, v5

    if-lez v2, :cond_3a

    move v2, v4

    goto :goto_3b

    :cond_3a
    move v2, v0

    :goto_3b
    goto :goto_55

    :cond_3c
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    int-to-float v5, v3

    cmpg-float v2, v2, v5

    if-gez v2, :cond_47

    move v2, v4

    goto :goto_48

    :cond_47
    move v2, v0

    :goto_48
    goto :goto_55

    :cond_49
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    int-to-float v5, v3

    cmpg-float v2, v2, v5

    if-gez v2, :cond_54

    move v2, v4

    goto :goto_55

    :cond_54
    move v2, v0

    :goto_55
    if-eqz v2, :cond_98

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "consuming errant click: ("

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, ","

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, ")"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v5, "DeadZone"

    invoke-static {v5, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Landroid/inputmethodservice/navigationbar/DeadZone;->mShouldFlash:Z

    if-eqz v0, :cond_97

    iget-object v0, p0, Landroid/inputmethodservice/navigationbar/DeadZone;->mNavigationBarView:Landroid/inputmethodservice/navigationbar/NavigationBarView;

    iget-object v5, p0, Landroid/inputmethodservice/navigationbar/DeadZone;->mDebugFlash:Ljava/lang/Runnable;

    invoke-virtual {v0, v5}, Landroid/inputmethodservice/navigationbar/NavigationBarView;->post(Ljava/lang/Runnable;)Z

    iget-object v0, p0, Landroid/inputmethodservice/navigationbar/DeadZone;->mNavigationBarView:Landroid/inputmethodservice/navigationbar/NavigationBarView;

    invoke-virtual {v0}, Landroid/inputmethodservice/navigationbar/NavigationBarView;->postInvalidate()V

    :cond_97
    return v4

    :cond_98
    return v0
.end method

.method public setFlash(F)V
    .registers 3

    iput p1, p0, Landroid/inputmethodservice/navigationbar/DeadZone;->mFlashFrac:F

    iget-object v0, p0, Landroid/inputmethodservice/navigationbar/DeadZone;->mNavigationBarView:Landroid/inputmethodservice/navigationbar/NavigationBarView;

    invoke-virtual {v0}, Landroid/inputmethodservice/navigationbar/NavigationBarView;->postInvalidate()V

    return-void
.end method

.method public setFlashOnTouchCapture(Z)V
    .registers 3

    iput-boolean p1, p0, Landroid/inputmethodservice/navigationbar/DeadZone;->mShouldFlash:Z

    const/4 v0, 0x0

    iput v0, p0, Landroid/inputmethodservice/navigationbar/DeadZone;->mFlashFrac:F

    iget-object v0, p0, Landroid/inputmethodservice/navigationbar/DeadZone;->mNavigationBarView:Landroid/inputmethodservice/navigationbar/NavigationBarView;

    invoke-virtual {v0}, Landroid/inputmethodservice/navigationbar/NavigationBarView;->postInvalidate()V

    return-void
.end method

# classes4.dex

.class public Lcom/android/internal/app/PlatLogoActivity$SettableAnalogClock;
.super Landroid/widget/AnalogClock;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/app/PlatLogoActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SettableAnalogClock"
.end annotation


# instance fields
.field private mOverride:Z

.field private mOverrideHour:I

.field private mOverrideMinute:I

.field final synthetic this$0:Lcom/android/internal/app/PlatLogoActivity;


# direct methods
.method public constructor <init>(Lcom/android/internal/app/PlatLogoActivity;Landroid/content/Context;)V
    .registers 4

    iput-object p1, p0, Lcom/android/internal/app/PlatLogoActivity$SettableAnalogClock;->this$0:Lcom/android/internal/app/PlatLogoActivity;

    invoke-direct {p0, p2}, Landroid/widget/AnalogClock;-><init>(Landroid/content/Context;)V

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/app/PlatLogoActivity$SettableAnalogClock;->mOverrideHour:I

    iput v0, p0, Lcom/android/internal/app/PlatLogoActivity$SettableAnalogClock;->mOverrideMinute:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/app/PlatLogoActivity$SettableAnalogClock;->mOverride:Z

    return-void
.end method


# virtual methods
.method protected now()Ljava/time/Instant;
    .registers 6

    invoke-super {p0}, Landroid/widget/AnalogClock;->now()Ljava/time/Instant;

    move-result-object v0

    invoke-static {}, Ljava/time/Clock;->systemDefaultZone()Ljava/time/Clock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/time/Clock;->getZone()Ljava/time/ZoneId;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/time/Instant;->atZone(Ljava/time/ZoneId;)Ljava/time/ZonedDateTime;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/internal/app/PlatLogoActivity$SettableAnalogClock;->mOverride:Z

    if-eqz v3, :cond_3c

    iget v3, p0, Lcom/android/internal/app/PlatLogoActivity$SettableAnalogClock;->mOverrideHour:I

    if-gez v3, :cond_1e

    invoke-virtual {v2}, Ljava/time/ZonedDateTime;->getHour()I

    move-result v3

    iput v3, p0, Lcom/android/internal/app/PlatLogoActivity$SettableAnalogClock;->mOverrideHour:I

    :cond_1e
    iget v3, p0, Lcom/android/internal/app/PlatLogoActivity$SettableAnalogClock;->mOverrideHour:I

    invoke-virtual {v2, v3}, Ljava/time/ZonedDateTime;->withHour(I)Ljava/time/ZonedDateTime;

    move-result-object v3

    iget v4, p0, Lcom/android/internal/app/PlatLogoActivity$SettableAnalogClock;->mOverrideMinute:I

    invoke-virtual {v3, v4}, Ljava/time/ZonedDateTime;->withMinute(I)Ljava/time/ZonedDateTime;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/time/ZonedDateTime;->withSecond(I)Ljava/time/ZonedDateTime;

    move-result-object v3

    invoke-virtual {v3}, Ljava/time/ZonedDateTime;->toInstant()Ljava/time/Instant;

    move-result-object v3

    invoke-static {v3, v1}, Ljava/time/Clock;->fixed(Ljava/time/Instant;Ljava/time/ZoneId;)Ljava/time/Clock;

    move-result-object v3

    invoke-virtual {v3}, Ljava/time/Clock;->instant()Ljava/time/Instant;

    move-result-object v3

    return-object v3

    :cond_3c
    return-object v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 13

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    packed-switch v0, :pswitch_data_b2

    return v1

    :pswitch_a  #0x1
    iget v0, p0, Lcom/android/internal/app/PlatLogoActivity$SettableAnalogClock;->mOverrideMinute:I

    if-nez v0, :cond_23

    iget v0, p0, Lcom/android/internal/app/PlatLogoActivity$SettableAnalogClock;->mOverrideHour:I

    rem-int/lit8 v0, v0, 0xc

    if-ne v0, v2, :cond_23

    const-string v0, "PlatLogoActivity"

    const-string v3, "13:00"

    invoke-static {v0, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, v1}, Lcom/android/internal/app/PlatLogoActivity$SettableAnalogClock;->performHapticFeedback(I)Z

    iget-object v0, p0, Lcom/android/internal/app/PlatLogoActivity$SettableAnalogClock;->this$0:Lcom/android/internal/app/PlatLogoActivity;

    invoke-static {v0, v1}, Lcom/android/internal/app/PlatLogoActivity;->-$$Nest$mlaunchNextStage(Lcom/android/internal/app/PlatLogoActivity;Z)V

    :cond_23
    return v2

    :pswitch_24  #0x0
    iput-boolean v2, p0, Lcom/android/internal/app/PlatLogoActivity$SettableAnalogClock;->mOverride:Z

    :pswitch_26  #0x2
    iget-object v0, p0, Lcom/android/internal/app/PlatLogoActivity$SettableAnalogClock;->this$0:Lcom/android/internal/app/PlatLogoActivity;

    invoke-static {v0, p1}, Lcom/android/internal/app/PlatLogoActivity;->-$$Nest$mmeasureTouchPressure(Lcom/android/internal/app/PlatLogoActivity;Landroid/view/MotionEvent;)V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    invoke-virtual {p0}, Lcom/android/internal/app/PlatLogoActivity$SettableAnalogClock;->getWidth()I

    move-result v4

    int-to-float v4, v4

    const/high16 v5, 0x40000000  # 2.0f

    div-float/2addr v4, v5

    invoke-virtual {p0}, Lcom/android/internal/app/PlatLogoActivity$SettableAnalogClock;->getHeight()I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v6, v5

    sub-float v5, v0, v4

    float-to-double v7, v5

    sub-float v5, v3, v6

    float-to-double v9, v5

    invoke-static {v7, v8, v9, v10}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v7

    invoke-virtual {p0, v7, v8}, Lcom/android/internal/app/PlatLogoActivity$SettableAnalogClock;->toPositiveDegrees(D)D

    move-result-wide v7

    double-to-float v5, v7

    const/high16 v7, 0x40c00000  # 6.0f

    div-float v7, v5, v7

    float-to-int v7, v7

    rsub-int/lit8 v7, v7, 0x4b

    rem-int/lit8 v7, v7, 0x3c

    iget v8, p0, Lcom/android/internal/app/PlatLogoActivity$SettableAnalogClock;->mOverrideMinute:I

    sub-int v8, v7, v8

    if-eqz v8, :cond_b1

    invoke-static {v8}, Ljava/lang/Math;->abs(I)I

    move-result v9

    const/16 v10, 0x2d

    if-le v9, v10, :cond_77

    iget v9, p0, Lcom/android/internal/app/PlatLogoActivity$SettableAnalogClock;->mOverrideHour:I

    if-ltz v9, :cond_77

    if-gez v8, :cond_6f

    move v10, v2

    goto :goto_70

    :cond_6f
    const/4 v10, -0x1

    :goto_70
    add-int/lit8 v9, v9, 0x18

    add-int/2addr v9, v10

    rem-int/lit8 v9, v9, 0x18

    iput v9, p0, Lcom/android/internal/app/PlatLogoActivity$SettableAnalogClock;->mOverrideHour:I

    :cond_77
    iput v7, p0, Lcom/android/internal/app/PlatLogoActivity$SettableAnalogClock;->mOverrideMinute:I

    if-nez v7, :cond_a7

    invoke-virtual {p0, v1}, Lcom/android/internal/app/PlatLogoActivity$SettableAnalogClock;->performHapticFeedback(I)Z

    invoke-virtual {p0}, Lcom/android/internal/app/PlatLogoActivity$SettableAnalogClock;->getScaleX()F

    move-result v1

    const/high16 v9, 0x3f800000  # 1.0f

    cmpl-float v1, v1, v9

    if-nez v1, :cond_ab

    const v1, 0x3f866666  # 1.05f

    invoke-virtual {p0, v1}, Lcom/android/internal/app/PlatLogoActivity$SettableAnalogClock;->setScaleX(F)V

    invoke-virtual {p0, v1}, Lcom/android/internal/app/PlatLogoActivity$SettableAnalogClock;->setScaleY(F)V

    invoke-virtual {p0}, Lcom/android/internal/app/PlatLogoActivity$SettableAnalogClock;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v9}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v9}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    const-wide/16 v9, 0x96

    invoke-virtual {v1, v9, v10}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->start()V

    goto :goto_ab

    :cond_a7
    const/4 v1, 0x4

    invoke-virtual {p0, v1}, Lcom/android/internal/app/PlatLogoActivity$SettableAnalogClock;->performHapticFeedback(I)Z

    :cond_ab
    :goto_ab
    invoke-virtual {p0}, Lcom/android/internal/app/PlatLogoActivity$SettableAnalogClock;->onTimeChanged()V

    invoke-virtual {p0}, Lcom/android/internal/app/PlatLogoActivity$SettableAnalogClock;->postInvalidate()V

    :cond_b1
    return v2

    :pswitch_data_b2
    .packed-switch 0x0
        :pswitch_24  #00000000
        :pswitch_a  #00000001
        :pswitch_26  #00000002
    .end packed-switch
.end method

.method toPositiveDegrees(D)D
    .registers 9

    invoke-static {p1, p2}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v0

    const-wide v2, 0x4076800000000000L  # 360.0

    add-double/2addr v0, v2

    const-wide v4, 0x4056800000000000L  # 90.0

    sub-double/2addr v0, v4

    rem-double/2addr v0, v2

    return-wide v0
.end method

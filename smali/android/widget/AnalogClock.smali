# classes4.dex

.class public Landroid/widget/AnalogClock;
.super Landroid/view/View;


# annotations
.annotation runtime Landroid/widget/RemoteViews$RemoteView;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/AnalogClock$TintInfo;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "AnalogClock"


# instance fields
.field private mChanged:Z

.field private mClock:Ljava/time/Clock;

.field private mDial:Landroid/graphics/drawable/Drawable;

.field private mDialHeight:I

.field private final mDialTintInfo:Landroid/widget/AnalogClock$TintInfo;

.field private mDialWidth:I

.field private mHour:F

.field private mHourHand:Landroid/graphics/drawable/Drawable;

.field private final mHourHandTintInfo:Landroid/widget/AnalogClock$TintInfo;

.field private final mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mMinuteHand:Landroid/graphics/drawable/Drawable;

.field private final mMinuteHandTintInfo:Landroid/widget/AnalogClock$TintInfo;

.field private mMinutes:F

.field private mReceiverAttached:Z

.field private mSecondHand:Landroid/graphics/drawable/Drawable;

.field private final mSecondHandTintInfo:Landroid/widget/AnalogClock$TintInfo;

.field private mSeconds:F

.field private final mSecondsHandFps:I

.field private final mTick:Ljava/lang/Runnable;

.field private mTimeZone:Ljava/time/ZoneId;

.field private mVisible:Z


# direct methods
.method static bridge synthetic -$$Nest$fgetmClock(Landroid/widget/AnalogClock;)Ljava/time/Clock;
    .registers 1

    iget-object p0, p0, Landroid/widget/AnalogClock;->mClock:Ljava/time/Clock;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmSecondHand(Landroid/widget/AnalogClock;)Landroid/graphics/drawable/Drawable;
    .registers 1

    iget-object p0, p0, Landroid/widget/AnalogClock;->mSecondHand:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmSecondsHandFps(Landroid/widget/AnalogClock;)I
    .registers 1

    iget p0, p0, Landroid/widget/AnalogClock;->mSecondsHandFps:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmTick(Landroid/widget/AnalogClock;)Ljava/lang/Runnable;
    .registers 1

    iget-object p0, p0, Landroid/widget/AnalogClock;->mTick:Ljava/lang/Runnable;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmVisible(Landroid/widget/AnalogClock;)Z
    .registers 1

    iget-boolean p0, p0, Landroid/widget/AnalogClock;->mVisible:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$mcreateClock(Landroid/widget/AnalogClock;)V
    .registers 1

    invoke-direct {p0}, Landroid/widget/AnalogClock;->createClock()V

    return-void
.end method

.method static bridge synthetic -$$Nest$monTimeChanged(Landroid/widget/AnalogClock;Ljava/time/LocalTime;J)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/AnalogClock;->onTimeChanged(Ljava/time/LocalTime;J)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/widget/AnalogClock;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/widget/AnalogClock;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/widget/AnalogClock;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .registers 21

    move-object/from16 v7, p0

    move-object/from16 v8, p1

    invoke-direct/range {p0 .. p4}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    new-instance v9, Landroid/widget/AnalogClock$TintInfo;

    const/4 v10, 0x0

    invoke-direct {v9, v7, v10}, Landroid/widget/AnalogClock$TintInfo;-><init>(Landroid/widget/AnalogClock;Landroid/widget/AnalogClock$TintInfo-IA;)V

    iput-object v9, v7, Landroid/widget/AnalogClock;->mHourHandTintInfo:Landroid/widget/AnalogClock$TintInfo;

    new-instance v11, Landroid/widget/AnalogClock$TintInfo;

    invoke-direct {v11, v7, v10}, Landroid/widget/AnalogClock$TintInfo;-><init>(Landroid/widget/AnalogClock;Landroid/widget/AnalogClock$TintInfo-IA;)V

    iput-object v11, v7, Landroid/widget/AnalogClock;->mMinuteHandTintInfo:Landroid/widget/AnalogClock$TintInfo;

    new-instance v12, Landroid/widget/AnalogClock$TintInfo;

    invoke-direct {v12, v7, v10}, Landroid/widget/AnalogClock$TintInfo;-><init>(Landroid/widget/AnalogClock;Landroid/widget/AnalogClock$TintInfo-IA;)V

    iput-object v12, v7, Landroid/widget/AnalogClock;->mSecondHandTintInfo:Landroid/widget/AnalogClock$TintInfo;

    new-instance v13, Landroid/widget/AnalogClock$TintInfo;

    invoke-direct {v13, v7, v10}, Landroid/widget/AnalogClock$TintInfo;-><init>(Landroid/widget/AnalogClock;Landroid/widget/AnalogClock$TintInfo-IA;)V

    iput-object v13, v7, Landroid/widget/AnalogClock;->mDialTintInfo:Landroid/widget/AnalogClock$TintInfo;

    new-instance v0, Landroid/widget/AnalogClock$1;

    invoke-direct {v0, v7}, Landroid/widget/AnalogClock$1;-><init>(Landroid/widget/AnalogClock;)V

    iput-object v0, v7, Landroid/widget/AnalogClock;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Landroid/widget/AnalogClock$2;

    invoke-direct {v0, v7}, Landroid/widget/AnalogClock$2;-><init>(Landroid/widget/AnalogClock;)V

    iput-object v0, v7, Landroid/widget/AnalogClock;->mTick:Ljava/lang/Runnable;

    nop

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10e0045

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    const-string/jumbo v1, "widget__analog_clock_seconds_hand_fps"

    invoke-static {v1, v0}, Landroid/app/AppGlobals;->getIntCoreSetting(Ljava/lang/String;I)I

    move-result v0

    iput v0, v7, Landroid/widget/AnalogClock;->mSecondsHandFps:I

    sget-object v0, Lcom/android/internal/R$styleable;->AnalogClock:[I

    move-object/from16 v14, p2

    move/from16 v15, p3

    move/from16 v6, p4

    invoke-virtual {v8, v14, v0, v15, v6}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v5

    sget-object v2, Lcom/android/internal/R$styleable;->AnalogClock:[I

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v3, p2

    move-object v4, v5

    move-object v10, v5

    move/from16 v5, p3

    invoke-virtual/range {v0 .. v6}, Landroid/widget/AnalogClock;->saveAttributeDataForStyleable(Landroid/content/Context;[ILandroid/util/AttributeSet;Landroid/content/res/TypedArray;II)V

    const/4 v0, 0x0

    invoke-virtual {v10, v0}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, v7, Landroid/widget/AnalogClock;->mDial:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_74

    const v0, 0x108026c

    invoke-virtual {v8, v0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, v7, Landroid/widget/AnalogClock;->mDial:Landroid/graphics/drawable/Drawable;

    :cond_74
    const/4 v0, 0x5

    invoke-virtual {v10, v0}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_80

    iput-object v0, v13, Landroid/widget/AnalogClock$TintInfo;->mTintList:Landroid/content/res/ColorStateList;

    iput-boolean v1, v13, Landroid/widget/AnalogClock$TintInfo;->mHasTintList:Z

    :cond_80
    const/4 v2, 0x6

    const/4 v3, -0x1

    invoke-virtual {v10, v2, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    const/4 v4, 0x0

    invoke-static {v2, v4}, Landroid/graphics/drawable/Drawable;->parseBlendMode(ILandroid/graphics/BlendMode;)Landroid/graphics/BlendMode;

    move-result-object v2

    if-eqz v2, :cond_91

    iput-object v2, v13, Landroid/widget/AnalogClock$TintInfo;->mTintBlendMode:Landroid/graphics/BlendMode;

    iput-boolean v1, v13, Landroid/widget/AnalogClock$TintInfo;->mHasTintBlendMode:Z

    :cond_91
    iget-boolean v4, v13, Landroid/widget/AnalogClock$TintInfo;->mHasTintList:Z

    if-nez v4, :cond_99

    iget-boolean v4, v13, Landroid/widget/AnalogClock$TintInfo;->mHasTintBlendMode:Z

    if-eqz v4, :cond_a1

    :cond_99
    iget-object v4, v7, Landroid/widget/AnalogClock;->mDial:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v13, v4}, Landroid/widget/AnalogClock$TintInfo;->apply(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iput-object v4, v7, Landroid/widget/AnalogClock;->mDial:Landroid/graphics/drawable/Drawable;

    :cond_a1
    invoke-virtual {v10, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iput-object v4, v7, Landroid/widget/AnalogClock;->mHourHand:Landroid/graphics/drawable/Drawable;

    if-nez v4, :cond_b2

    const v4, 0x108026d

    invoke-virtual {v8, v4}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iput-object v4, v7, Landroid/widget/AnalogClock;->mHourHand:Landroid/graphics/drawable/Drawable;

    :cond_b2
    const/4 v4, 0x7

    invoke-virtual {v10, v4}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v4

    if-eqz v4, :cond_bd

    iput-object v4, v9, Landroid/widget/AnalogClock$TintInfo;->mTintList:Landroid/content/res/ColorStateList;

    iput-boolean v1, v9, Landroid/widget/AnalogClock$TintInfo;->mHasTintList:Z

    :cond_bd
    const/16 v5, 0x8

    invoke-virtual {v10, v5, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    const/4 v6, 0x0

    invoke-static {v5, v6}, Landroid/graphics/drawable/Drawable;->parseBlendMode(ILandroid/graphics/BlendMode;)Landroid/graphics/BlendMode;

    move-result-object v5

    if-eqz v5, :cond_ce

    iput-object v5, v9, Landroid/widget/AnalogClock$TintInfo;->mTintBlendMode:Landroid/graphics/BlendMode;

    iput-boolean v1, v9, Landroid/widget/AnalogClock$TintInfo;->mHasTintBlendMode:Z

    :cond_ce
    iget-boolean v6, v9, Landroid/widget/AnalogClock$TintInfo;->mHasTintList:Z

    if-nez v6, :cond_d6

    iget-boolean v6, v9, Landroid/widget/AnalogClock$TintInfo;->mHasTintBlendMode:Z

    if-eqz v6, :cond_de

    :cond_d6
    iget-object v6, v7, Landroid/widget/AnalogClock;->mHourHand:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v9, v6}, Landroid/widget/AnalogClock$TintInfo;->apply(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    iput-object v6, v7, Landroid/widget/AnalogClock;->mHourHand:Landroid/graphics/drawable/Drawable;

    :cond_de
    const/4 v6, 0x2

    invoke-virtual {v10, v6}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    iput-object v6, v7, Landroid/widget/AnalogClock;->mMinuteHand:Landroid/graphics/drawable/Drawable;

    if-nez v6, :cond_f0

    const v6, 0x108026e

    invoke-virtual {v8, v6}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    iput-object v6, v7, Landroid/widget/AnalogClock;->mMinuteHand:Landroid/graphics/drawable/Drawable;

    :cond_f0
    const/16 v6, 0x9

    invoke-virtual {v10, v6}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v6

    if-eqz v6, :cond_fc

    iput-object v6, v11, Landroid/widget/AnalogClock$TintInfo;->mTintList:Landroid/content/res/ColorStateList;

    iput-boolean v1, v11, Landroid/widget/AnalogClock$TintInfo;->mHasTintList:Z

    :cond_fc
    const/16 v9, 0xa

    invoke-virtual {v10, v9, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v9

    const/4 v13, 0x0

    invoke-static {v9, v13}, Landroid/graphics/drawable/Drawable;->parseBlendMode(ILandroid/graphics/BlendMode;)Landroid/graphics/BlendMode;

    move-result-object v9

    if-eqz v9, :cond_10d

    iput-object v9, v11, Landroid/widget/AnalogClock$TintInfo;->mTintBlendMode:Landroid/graphics/BlendMode;

    iput-boolean v1, v11, Landroid/widget/AnalogClock$TintInfo;->mHasTintBlendMode:Z

    :cond_10d
    iget-boolean v13, v11, Landroid/widget/AnalogClock$TintInfo;->mHasTintList:Z

    if-nez v13, :cond_115

    iget-boolean v13, v11, Landroid/widget/AnalogClock$TintInfo;->mHasTintBlendMode:Z

    if-eqz v13, :cond_11d

    :cond_115
    iget-object v13, v7, Landroid/widget/AnalogClock;->mMinuteHand:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v11, v13}, Landroid/widget/AnalogClock$TintInfo;->apply(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v11

    iput-object v11, v7, Landroid/widget/AnalogClock;->mMinuteHand:Landroid/graphics/drawable/Drawable;

    :cond_11d
    const/4 v11, 0x4

    invoke-virtual {v10, v11}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v11

    iput-object v11, v7, Landroid/widget/AnalogClock;->mSecondHand:Landroid/graphics/drawable/Drawable;

    const/16 v11, 0xb

    invoke-virtual {v10, v11}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v11

    if-eqz v11, :cond_130

    iput-object v11, v12, Landroid/widget/AnalogClock$TintInfo;->mTintList:Landroid/content/res/ColorStateList;

    iput-boolean v1, v12, Landroid/widget/AnalogClock$TintInfo;->mHasTintList:Z

    :cond_130
    const/16 v13, 0xc

    invoke-virtual {v10, v13, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    const/4 v13, 0x0

    invoke-static {v3, v13}, Landroid/graphics/drawable/Drawable;->parseBlendMode(ILandroid/graphics/BlendMode;)Landroid/graphics/BlendMode;

    move-result-object v3

    if-eqz v3, :cond_141

    iput-object v3, v12, Landroid/widget/AnalogClock$TintInfo;->mTintBlendMode:Landroid/graphics/BlendMode;

    iput-boolean v1, v12, Landroid/widget/AnalogClock$TintInfo;->mHasTintBlendMode:Z

    :cond_141
    iget-boolean v1, v12, Landroid/widget/AnalogClock$TintInfo;->mHasTintList:Z

    if-nez v1, :cond_149

    iget-boolean v1, v12, Landroid/widget/AnalogClock$TintInfo;->mHasTintBlendMode:Z

    if-eqz v1, :cond_151

    :cond_149
    iget-object v1, v7, Landroid/widget/AnalogClock;->mSecondHand:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v12, v1}, Landroid/widget/AnalogClock$TintInfo;->apply(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, v7, Landroid/widget/AnalogClock;->mSecondHand:Landroid/graphics/drawable/Drawable;

    :cond_151
    const/4 v1, 0x3

    invoke-virtual {v10, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/widget/AnalogClock;->toZoneId(Ljava/lang/String;)Ljava/time/ZoneId;

    move-result-object v1

    iput-object v1, v7, Landroid/widget/AnalogClock;->mTimeZone:Ljava/time/ZoneId;

    invoke-direct/range {p0 .. p0}, Landroid/widget/AnalogClock;->createClock()V

    invoke-virtual {v10}, Landroid/content/res/TypedArray;->recycle()V

    iget-object v1, v7, Landroid/widget/AnalogClock;->mDial:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    iput v1, v7, Landroid/widget/AnalogClock;->mDialWidth:I

    iget-object v1, v7, Landroid/widget/AnalogClock;->mDial:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    iput v1, v7, Landroid/widget/AnalogClock;->mDialHeight:I

    return-void
.end method

.method private createClock()V
    .registers 3

    iget-object v0, p0, Landroid/widget/AnalogClock;->mTimeZone:Ljava/time/ZoneId;

    if-nez v0, :cond_b

    invoke-static {}, Ljava/time/Clock;->systemDefaultZone()Ljava/time/Clock;

    move-result-object v1

    iput-object v1, p0, Landroid/widget/AnalogClock;->mClock:Ljava/time/Clock;

    goto :goto_11

    :cond_b
    invoke-static {v0}, Ljava/time/Clock;->system(Ljava/time/ZoneId;)Ljava/time/Clock;

    move-result-object v1

    iput-object v1, p0, Landroid/widget/AnalogClock;->mClock:Ljava/time/Clock;

    :goto_11
    return-void
.end method

.method private onInvisible()V
    .registers 2

    iget-boolean v0, p0, Landroid/widget/AnalogClock;->mVisible:Z

    if-eqz v0, :cond_c

    iget-object v0, p0, Landroid/widget/AnalogClock;->mTick:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/widget/AnalogClock;->removeCallbacks(Ljava/lang/Runnable;)Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/AnalogClock;->mVisible:Z

    :cond_c
    return-void
.end method

.method private onTimeChanged(Ljava/time/LocalTime;J)V
    .registers 10

    iget v0, p0, Landroid/widget/AnalogClock;->mHour:F

    iget v1, p0, Landroid/widget/AnalogClock;->mMinutes:F

    invoke-virtual {p1}, Ljava/time/LocalTime;->getSecond()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p1}, Ljava/time/LocalTime;->getNano()I

    move-result v3

    int-to-float v3, v3

    const v4, 0x4e6e6b28  # 1.0E9f

    div-float/2addr v3, v4

    add-float/2addr v2, v3

    nop

    iget v3, p0, Landroid/widget/AnalogClock;->mSecondsHandFps:I

    if-gtz v3, :cond_1a

    move v3, v2

    goto :goto_25

    :cond_1a
    int-to-float v3, v3

    mul-float/2addr v3, v2

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    int-to-float v3, v3

    iget v4, p0, Landroid/widget/AnalogClock;->mSecondsHandFps:I

    int-to-float v4, v4

    div-float/2addr v3, v4

    :goto_25
    iput v3, p0, Landroid/widget/AnalogClock;->mSeconds:F

    invoke-virtual {p1}, Ljava/time/LocalTime;->getMinute()I

    move-result v3

    int-to-float v3, v3

    iget v4, p0, Landroid/widget/AnalogClock;->mSeconds:F

    const/high16 v5, 0x42700000  # 60.0f

    div-float/2addr v4, v5

    add-float/2addr v3, v4

    iput v3, p0, Landroid/widget/AnalogClock;->mMinutes:F

    invoke-virtual {p1}, Ljava/time/LocalTime;->getHour()I

    move-result v3

    int-to-float v3, v3

    iget v4, p0, Landroid/widget/AnalogClock;->mMinutes:F

    div-float v5, v4, v5

    add-float/2addr v3, v5

    iput v3, p0, Landroid/widget/AnalogClock;->mHour:F

    const/4 v5, 0x1

    iput-boolean v5, p0, Landroid/widget/AnalogClock;->mChanged:Z

    float-to-int v5, v0

    float-to-int v3, v3

    if-ne v5, v3, :cond_4b

    float-to-int v3, v1

    float-to-int v4, v4

    if-eq v3, v4, :cond_4e

    :cond_4b
    invoke-direct {p0, p2, p3}, Landroid/widget/AnalogClock;->updateContentDescription(J)V

    :cond_4e
    return-void
.end method

.method private onVisible()V
    .registers 2

    iget-boolean v0, p0, Landroid/widget/AnalogClock;->mVisible:Z

    if-nez v0, :cond_c

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/AnalogClock;->mVisible:Z

    iget-object v0, p0, Landroid/widget/AnalogClock;->mTick:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :cond_c
    return-void
.end method

.method private static toZoneId(Ljava/lang/String;)Ljava/time/ZoneId;
    .registers 5

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return-object v0

    :cond_4
    :try_start_4
    invoke-static {p0}, Ljava/time/ZoneId;->of(Ljava/lang/String;)Ljava/time/ZoneId;

    move-result-object v0
    :try_end_8
    .catch Ljava/time/DateTimeException; {:try_start_4 .. :try_end_8} :catch_9

    return-object v0

    :catch_9
    move-exception v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to parse time zone from "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "AnalogClock"

    invoke-static {v3, v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v0
.end method

.method private updateContentDescription(J)V
    .registers 12

    const/16 v0, 0x81

    iget-object v1, p0, Landroid/widget/AnalogClock;->mContext:Landroid/content/Context;

    new-instance v2, Ljava/util/Formatter;

    new-instance v3, Ljava/lang/StringBuilder;

    const/16 v4, 0x32

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Ljava/util/Formatter;-><init>(Ljava/lang/Appendable;Ljava/util/Locale;)V

    invoke-virtual {p0}, Landroid/widget/AnalogClock;->getTimeZone()Ljava/lang/String;

    move-result-object v8

    const/16 v7, 0x81

    move-wide v3, p1

    move-wide v5, p1

    invoke-static/range {v1 .. v8}, Landroid/text/format/DateUtils;->formatDateRange(Landroid/content/Context;Ljava/util/Formatter;JJILjava/lang/String;)Ljava/util/Formatter;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Formatter;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/widget/AnalogClock;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method public getDialTintBlendMode()Landroid/graphics/BlendMode;
    .registers 2

    iget-object v0, p0, Landroid/widget/AnalogClock;->mDialTintInfo:Landroid/widget/AnalogClock$TintInfo;

    iget-object v0, v0, Landroid/widget/AnalogClock$TintInfo;->mTintBlendMode:Landroid/graphics/BlendMode;

    return-object v0
.end method

.method public getDialTintList()Landroid/content/res/ColorStateList;
    .registers 2

    iget-object v0, p0, Landroid/widget/AnalogClock;->mDialTintInfo:Landroid/widget/AnalogClock$TintInfo;

    iget-object v0, v0, Landroid/widget/AnalogClock$TintInfo;->mTintList:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method public getHourHandTintBlendMode()Landroid/graphics/BlendMode;
    .registers 2

    iget-object v0, p0, Landroid/widget/AnalogClock;->mHourHandTintInfo:Landroid/widget/AnalogClock$TintInfo;

    iget-object v0, v0, Landroid/widget/AnalogClock$TintInfo;->mTintBlendMode:Landroid/graphics/BlendMode;

    return-object v0
.end method

.method public getHourHandTintList()Landroid/content/res/ColorStateList;
    .registers 2

    iget-object v0, p0, Landroid/widget/AnalogClock;->mHourHandTintInfo:Landroid/widget/AnalogClock$TintInfo;

    iget-object v0, v0, Landroid/widget/AnalogClock$TintInfo;->mTintList:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method public getMinuteHandTintBlendMode()Landroid/graphics/BlendMode;
    .registers 2

    iget-object v0, p0, Landroid/widget/AnalogClock;->mMinuteHandTintInfo:Landroid/widget/AnalogClock$TintInfo;

    iget-object v0, v0, Landroid/widget/AnalogClock$TintInfo;->mTintBlendMode:Landroid/graphics/BlendMode;

    return-object v0
.end method

.method public getMinuteHandTintList()Landroid/content/res/ColorStateList;
    .registers 2

    iget-object v0, p0, Landroid/widget/AnalogClock;->mMinuteHandTintInfo:Landroid/widget/AnalogClock$TintInfo;

    iget-object v0, v0, Landroid/widget/AnalogClock$TintInfo;->mTintList:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method public getSecondHandTintBlendMode()Landroid/graphics/BlendMode;
    .registers 2

    iget-object v0, p0, Landroid/widget/AnalogClock;->mSecondHandTintInfo:Landroid/widget/AnalogClock$TintInfo;

    iget-object v0, v0, Landroid/widget/AnalogClock$TintInfo;->mTintBlendMode:Landroid/graphics/BlendMode;

    return-object v0
.end method

.method public getSecondHandTintList()Landroid/content/res/ColorStateList;
    .registers 2

    iget-object v0, p0, Landroid/widget/AnalogClock;->mSecondHandTintInfo:Landroid/widget/AnalogClock$TintInfo;

    iget-object v0, v0, Landroid/widget/AnalogClock$TintInfo;->mTintList:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method public getTimeZone()Ljava/lang/String;
    .registers 3

    iget-object v0, p0, Landroid/widget/AnalogClock;->mTimeZone:Ljava/time/ZoneId;

    if-nez v0, :cond_6

    const/4 v1, 0x0

    goto :goto_a

    :cond_6
    invoke-virtual {v0}, Ljava/time/ZoneId;->getId()Ljava/lang/String;

    move-result-object v1

    :goto_a
    return-object v1
.end method

.method protected now()Ljava/time/Instant;
    .registers 2

    iget-object v0, p0, Landroid/widget/AnalogClock;->mClock:Ljava/time/Clock;

    invoke-virtual {v0}, Ljava/time/Clock;->instant()Ljava/time/Instant;

    move-result-object v0

    return-object v0
.end method

.method protected onAttachedToWindow()V
    .registers 8

    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iget-boolean v1, p0, Landroid/widget/AnalogClock;->mReceiverAttached:Z

    if-nez v1, :cond_2c

    const-string v1, "android.intent.action.TIME_SET"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.TIMEZONE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/widget/AnalogClock;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Landroid/widget/AnalogClock;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v3

    const/4 v5, 0x0

    invoke-virtual {p0}, Landroid/widget/AnalogClock;->getHandler()Landroid/os/Handler;

    move-result-object v6

    move-object v4, v0

    invoke-virtual/range {v1 .. v6}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/widget/AnalogClock;->mReceiverAttached:Z

    :cond_2c
    invoke-direct {p0}, Landroid/widget/AnalogClock;->createClock()V

    invoke-virtual {p0}, Landroid/widget/AnalogClock;->onTimeChanged()V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .registers 3

    iget-boolean v0, p0, Landroid/widget/AnalogClock;->mReceiverAttached:Z

    if-eqz v0, :cond_10

    invoke-virtual {p0}, Landroid/widget/AnalogClock;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Landroid/widget/AnalogClock;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/AnalogClock;->mReceiverAttached:Z

    :cond_10
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 20

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-super/range {p0 .. p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    iget-boolean v2, v0, Landroid/widget/AnalogClock;->mChanged:Z

    if-eqz v2, :cond_e

    const/4 v3, 0x0

    iput-boolean v3, v0, Landroid/widget/AnalogClock;->mChanged:Z

    :cond_e
    iget v3, v0, Landroid/widget/AnalogClock;->mRight:I

    iget v4, v0, Landroid/widget/AnalogClock;->mLeft:I

    sub-int/2addr v3, v4

    iget v4, v0, Landroid/widget/AnalogClock;->mBottom:I

    iget v5, v0, Landroid/widget/AnalogClock;->mTop:I

    sub-int/2addr v4, v5

    div-int/lit8 v5, v3, 0x2

    div-int/lit8 v6, v4, 0x2

    iget-object v7, v0, Landroid/widget/AnalogClock;->mDial:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v7}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v8

    invoke-virtual {v7}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v9

    const/4 v10, 0x0

    if-lt v3, v8, :cond_2b

    if-ge v4, v9, :cond_3e

    :cond_2b
    const/4 v10, 0x1

    int-to-float v11, v3

    int-to-float v12, v8

    div-float/2addr v11, v12

    int-to-float v12, v4

    int-to-float v13, v9

    div-float/2addr v12, v13

    invoke-static {v11, v12}, Ljava/lang/Math;->min(FF)F

    move-result v11

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    int-to-float v12, v5

    int-to-float v13, v6

    invoke-virtual {v1, v11, v11, v12, v13}, Landroid/graphics/Canvas;->scale(FFFF)V

    :cond_3e
    if-eqz v2, :cond_51

    div-int/lit8 v11, v8, 0x2

    sub-int v11, v5, v11

    div-int/lit8 v12, v9, 0x2

    sub-int v12, v6, v12

    div-int/lit8 v13, v8, 0x2

    add-int/2addr v13, v5

    div-int/lit8 v14, v9, 0x2

    add-int/2addr v14, v6

    invoke-virtual {v7, v11, v12, v13, v14}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    :cond_51
    invoke-virtual {v7, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    iget v11, v0, Landroid/widget/AnalogClock;->mHour:F

    const/high16 v12, 0x41400000  # 12.0f

    div-float/2addr v11, v12

    const/high16 v12, 0x43b40000  # 360.0f

    mul-float/2addr v11, v12

    int-to-float v13, v5

    int-to-float v14, v6

    invoke-virtual {v1, v11, v13, v14}, Landroid/graphics/Canvas;->rotate(FFF)V

    iget-object v11, v0, Landroid/widget/AnalogClock;->mHourHand:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_82

    invoke-virtual {v11}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v8

    invoke-virtual {v11}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v9

    div-int/lit8 v13, v8, 0x2

    sub-int v13, v5, v13

    div-int/lit8 v14, v9, 0x2

    sub-int v14, v6, v14

    div-int/lit8 v15, v8, 0x2

    add-int/2addr v15, v5

    div-int/lit8 v16, v9, 0x2

    add-int v12, v6, v16

    invoke-virtual {v11, v13, v14, v15, v12}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    :cond_82
    invoke-virtual {v11, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    iget v12, v0, Landroid/widget/AnalogClock;->mMinutes:F

    const/high16 v13, 0x42700000  # 60.0f

    div-float/2addr v12, v13

    const/high16 v14, 0x43b40000  # 360.0f

    mul-float/2addr v12, v14

    int-to-float v14, v5

    int-to-float v15, v6

    invoke-virtual {v1, v12, v14, v15}, Landroid/graphics/Canvas;->rotate(FFF)V

    iget-object v12, v0, Landroid/widget/AnalogClock;->mMinuteHand:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_ba

    invoke-virtual {v12}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v8

    invoke-virtual {v12}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v9

    div-int/lit8 v14, v8, 0x2

    sub-int v14, v5, v14

    div-int/lit8 v15, v9, 0x2

    sub-int v15, v6, v15

    div-int/lit8 v16, v8, 0x2

    add-int v13, v5, v16

    div-int/lit8 v16, v9, 0x2

    move/from16 v17, v3

    add-int v3, v6, v16

    invoke-virtual {v12, v14, v15, v13, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    goto :goto_bc

    :cond_ba
    move/from16 v17, v3

    :goto_bc
    invoke-virtual {v12, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    iget-object v3, v0, Landroid/widget/AnalogClock;->mSecondHand:Landroid/graphics/drawable/Drawable;

    if-eqz v3, :cond_fc

    iget v13, v0, Landroid/widget/AnalogClock;->mSecondsHandFps:I

    if-lez v13, :cond_fc

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    iget v13, v0, Landroid/widget/AnalogClock;->mSeconds:F

    const/high16 v14, 0x42700000  # 60.0f

    div-float/2addr v13, v14

    const/high16 v14, 0x43b40000  # 360.0f

    mul-float/2addr v13, v14

    int-to-float v14, v5

    int-to-float v15, v6

    invoke-virtual {v1, v13, v14, v15}, Landroid/graphics/Canvas;->rotate(FFF)V

    if-eqz v2, :cond_f6

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v8

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v9

    div-int/lit8 v13, v8, 0x2

    sub-int v13, v5, v13

    div-int/lit8 v14, v9, 0x2

    sub-int v14, v6, v14

    div-int/lit8 v15, v8, 0x2

    add-int/2addr v15, v5

    div-int/lit8 v16, v9, 0x2

    add-int v0, v6, v16

    invoke-virtual {v3, v13, v14, v15, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    :cond_f6
    invoke-virtual {v3, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    :cond_fc
    if-eqz v10, :cond_101

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    :cond_101
    return-void
.end method

.method protected onMeasure(II)V
    .registers 13

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v2

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v3

    const/high16 v4, 0x3f800000  # 1.0f

    const/high16 v5, 0x3f800000  # 1.0f

    if-eqz v0, :cond_1e

    iget v6, p0, Landroid/widget/AnalogClock;->mDialWidth:I

    if-ge v1, v6, :cond_1e

    int-to-float v7, v1

    int-to-float v6, v6

    div-float v4, v7, v6

    :cond_1e
    if-eqz v2, :cond_28

    iget v6, p0, Landroid/widget/AnalogClock;->mDialHeight:I

    if-ge v3, v6, :cond_28

    int-to-float v7, v3

    int-to-float v6, v6

    div-float v5, v7, v6

    :cond_28
    invoke-static {v4, v5}, Ljava/lang/Math;->min(FF)F

    move-result v6

    iget v7, p0, Landroid/widget/AnalogClock;->mDialWidth:I

    int-to-float v7, v7

    mul-float/2addr v7, v6

    float-to-int v7, v7

    const/4 v8, 0x0

    invoke-static {v7, p1, v8}, Landroid/widget/AnalogClock;->resolveSizeAndState(III)I

    move-result v7

    iget v9, p0, Landroid/widget/AnalogClock;->mDialHeight:I

    int-to-float v9, v9

    mul-float/2addr v9, v6

    float-to-int v9, v9

    invoke-static {v9, p2, v8}, Landroid/widget/AnalogClock;->resolveSizeAndState(III)I

    move-result v8

    invoke-virtual {p0, v7, v8}, Landroid/widget/AnalogClock;->setMeasuredDimension(II)V

    return-void
.end method

.method protected onSizeChanged(IIII)V
    .registers 6

    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/AnalogClock;->mChanged:Z

    return-void
.end method

.method protected onTimeChanged()V
    .registers 5

    invoke-virtual {p0}, Landroid/widget/AnalogClock;->now()Ljava/time/Instant;

    move-result-object v0

    iget-object v1, p0, Landroid/widget/AnalogClock;->mClock:Ljava/time/Clock;

    invoke-virtual {v1}, Ljava/time/Clock;->getZone()Ljava/time/ZoneId;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/time/Instant;->atZone(Ljava/time/ZoneId;)Ljava/time/ZonedDateTime;

    move-result-object v1

    invoke-virtual {v1}, Ljava/time/ZonedDateTime;->toLocalTime()Ljava/time/LocalTime;

    move-result-object v1

    invoke-virtual {v0}, Ljava/time/Instant;->toEpochMilli()J

    move-result-wide v2

    invoke-direct {p0, v1, v2, v3}, Landroid/widget/AnalogClock;->onTimeChanged(Ljava/time/LocalTime;J)V

    return-void
.end method

.method public onVisibilityAggregated(Z)V
    .registers 2

    invoke-super {p0, p1}, Landroid/view/View;->onVisibilityAggregated(Z)V

    if-eqz p1, :cond_9

    invoke-direct {p0}, Landroid/widget/AnalogClock;->onVisible()V

    goto :goto_c

    :cond_9
    invoke-direct {p0}, Landroid/widget/AnalogClock;->onInvisible()V

    :goto_c
    return-void
.end method

.method public setDial(Landroid/graphics/drawable/Icon;)V
    .registers 4
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    invoke-virtual {p0}, Landroid/widget/AnalogClock;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Icon;->loadDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/AnalogClock;->mDial:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    iput v0, p0, Landroid/widget/AnalogClock;->mDialWidth:I

    iget-object v0, p0, Landroid/widget/AnalogClock;->mDial:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    iput v0, p0, Landroid/widget/AnalogClock;->mDialHeight:I

    iget-object v0, p0, Landroid/widget/AnalogClock;->mDialTintInfo:Landroid/widget/AnalogClock$TintInfo;

    iget-boolean v0, v0, Landroid/widget/AnalogClock$TintInfo;->mHasTintList:Z

    if-nez v0, :cond_24

    iget-object v0, p0, Landroid/widget/AnalogClock;->mDialTintInfo:Landroid/widget/AnalogClock$TintInfo;

    iget-boolean v0, v0, Landroid/widget/AnalogClock$TintInfo;->mHasTintBlendMode:Z

    if-eqz v0, :cond_2e

    :cond_24
    iget-object v0, p0, Landroid/widget/AnalogClock;->mDialTintInfo:Landroid/widget/AnalogClock$TintInfo;

    iget-object v1, p0, Landroid/widget/AnalogClock;->mDial:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/AnalogClock$TintInfo;->apply(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/AnalogClock;->mDial:Landroid/graphics/drawable/Drawable;

    :cond_2e
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/AnalogClock;->mChanged:Z

    invoke-virtual {p0}, Landroid/widget/AnalogClock;->invalidate()V

    return-void
.end method

.method public setDialTintBlendMode(Landroid/graphics/BlendMode;)V
    .registers 4
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    iget-object v0, p0, Landroid/widget/AnalogClock;->mDialTintInfo:Landroid/widget/AnalogClock$TintInfo;

    iput-object p1, v0, Landroid/widget/AnalogClock$TintInfo;->mTintBlendMode:Landroid/graphics/BlendMode;

    iget-object v0, p0, Landroid/widget/AnalogClock;->mDialTintInfo:Landroid/widget/AnalogClock$TintInfo;

    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/widget/AnalogClock$TintInfo;->mHasTintBlendMode:Z

    iget-object v0, p0, Landroid/widget/AnalogClock;->mDialTintInfo:Landroid/widget/AnalogClock$TintInfo;

    iget-object v1, p0, Landroid/widget/AnalogClock;->mDial:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/AnalogClock$TintInfo;->apply(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/AnalogClock;->mDial:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method public setDialTintList(Landroid/content/res/ColorStateList;)V
    .registers 4
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    iget-object v0, p0, Landroid/widget/AnalogClock;->mDialTintInfo:Landroid/widget/AnalogClock$TintInfo;

    iput-object p1, v0, Landroid/widget/AnalogClock$TintInfo;->mTintList:Landroid/content/res/ColorStateList;

    iget-object v0, p0, Landroid/widget/AnalogClock;->mDialTintInfo:Landroid/widget/AnalogClock$TintInfo;

    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/widget/AnalogClock$TintInfo;->mHasTintList:Z

    iget-object v0, p0, Landroid/widget/AnalogClock;->mDialTintInfo:Landroid/widget/AnalogClock$TintInfo;

    iget-object v1, p0, Landroid/widget/AnalogClock;->mDial:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/AnalogClock$TintInfo;->apply(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/AnalogClock;->mDial:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method public setHourHand(Landroid/graphics/drawable/Icon;)V
    .registers 4
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    invoke-virtual {p0}, Landroid/widget/AnalogClock;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Icon;->loadDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/AnalogClock;->mHourHand:Landroid/graphics/drawable/Drawable;

    iget-object v0, p0, Landroid/widget/AnalogClock;->mHourHandTintInfo:Landroid/widget/AnalogClock$TintInfo;

    iget-boolean v0, v0, Landroid/widget/AnalogClock$TintInfo;->mHasTintList:Z

    if-nez v0, :cond_16

    iget-object v0, p0, Landroid/widget/AnalogClock;->mHourHandTintInfo:Landroid/widget/AnalogClock$TintInfo;

    iget-boolean v0, v0, Landroid/widget/AnalogClock$TintInfo;->mHasTintBlendMode:Z

    if-eqz v0, :cond_20

    :cond_16
    iget-object v0, p0, Landroid/widget/AnalogClock;->mHourHandTintInfo:Landroid/widget/AnalogClock$TintInfo;

    iget-object v1, p0, Landroid/widget/AnalogClock;->mHourHand:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/AnalogClock$TintInfo;->apply(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/AnalogClock;->mHourHand:Landroid/graphics/drawable/Drawable;

    :cond_20
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/AnalogClock;->mChanged:Z

    invoke-virtual {p0}, Landroid/widget/AnalogClock;->invalidate()V

    return-void
.end method

.method public setHourHandTintBlendMode(Landroid/graphics/BlendMode;)V
    .registers 4
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    iget-object v0, p0, Landroid/widget/AnalogClock;->mHourHandTintInfo:Landroid/widget/AnalogClock$TintInfo;

    iput-object p1, v0, Landroid/widget/AnalogClock$TintInfo;->mTintBlendMode:Landroid/graphics/BlendMode;

    iget-object v0, p0, Landroid/widget/AnalogClock;->mHourHandTintInfo:Landroid/widget/AnalogClock$TintInfo;

    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/widget/AnalogClock$TintInfo;->mHasTintBlendMode:Z

    iget-object v0, p0, Landroid/widget/AnalogClock;->mHourHandTintInfo:Landroid/widget/AnalogClock$TintInfo;

    iget-object v1, p0, Landroid/widget/AnalogClock;->mHourHand:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/AnalogClock$TintInfo;->apply(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/AnalogClock;->mHourHand:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method public setHourHandTintList(Landroid/content/res/ColorStateList;)V
    .registers 4
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    iget-object v0, p0, Landroid/widget/AnalogClock;->mHourHandTintInfo:Landroid/widget/AnalogClock$TintInfo;

    iput-object p1, v0, Landroid/widget/AnalogClock$TintInfo;->mTintList:Landroid/content/res/ColorStateList;

    iget-object v0, p0, Landroid/widget/AnalogClock;->mHourHandTintInfo:Landroid/widget/AnalogClock$TintInfo;

    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/widget/AnalogClock$TintInfo;->mHasTintList:Z

    iget-object v0, p0, Landroid/widget/AnalogClock;->mHourHandTintInfo:Landroid/widget/AnalogClock$TintInfo;

    iget-object v1, p0, Landroid/widget/AnalogClock;->mHourHand:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/AnalogClock$TintInfo;->apply(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/AnalogClock;->mHourHand:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method public setMinuteHand(Landroid/graphics/drawable/Icon;)V
    .registers 4
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    invoke-virtual {p0}, Landroid/widget/AnalogClock;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Icon;->loadDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/AnalogClock;->mMinuteHand:Landroid/graphics/drawable/Drawable;

    iget-object v0, p0, Landroid/widget/AnalogClock;->mMinuteHandTintInfo:Landroid/widget/AnalogClock$TintInfo;

    iget-boolean v0, v0, Landroid/widget/AnalogClock$TintInfo;->mHasTintList:Z

    if-nez v0, :cond_16

    iget-object v0, p0, Landroid/widget/AnalogClock;->mMinuteHandTintInfo:Landroid/widget/AnalogClock$TintInfo;

    iget-boolean v0, v0, Landroid/widget/AnalogClock$TintInfo;->mHasTintBlendMode:Z

    if-eqz v0, :cond_20

    :cond_16
    iget-object v0, p0, Landroid/widget/AnalogClock;->mMinuteHandTintInfo:Landroid/widget/AnalogClock$TintInfo;

    iget-object v1, p0, Landroid/widget/AnalogClock;->mMinuteHand:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/AnalogClock$TintInfo;->apply(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/AnalogClock;->mMinuteHand:Landroid/graphics/drawable/Drawable;

    :cond_20
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/AnalogClock;->mChanged:Z

    invoke-virtual {p0}, Landroid/widget/AnalogClock;->invalidate()V

    return-void
.end method

.method public setMinuteHandTintBlendMode(Landroid/graphics/BlendMode;)V
    .registers 4
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    iget-object v0, p0, Landroid/widget/AnalogClock;->mMinuteHandTintInfo:Landroid/widget/AnalogClock$TintInfo;

    iput-object p1, v0, Landroid/widget/AnalogClock$TintInfo;->mTintBlendMode:Landroid/graphics/BlendMode;

    iget-object v0, p0, Landroid/widget/AnalogClock;->mMinuteHandTintInfo:Landroid/widget/AnalogClock$TintInfo;

    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/widget/AnalogClock$TintInfo;->mHasTintBlendMode:Z

    iget-object v0, p0, Landroid/widget/AnalogClock;->mMinuteHandTintInfo:Landroid/widget/AnalogClock$TintInfo;

    iget-object v1, p0, Landroid/widget/AnalogClock;->mMinuteHand:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/AnalogClock$TintInfo;->apply(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/AnalogClock;->mMinuteHand:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method public setMinuteHandTintList(Landroid/content/res/ColorStateList;)V
    .registers 4
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    iget-object v0, p0, Landroid/widget/AnalogClock;->mMinuteHandTintInfo:Landroid/widget/AnalogClock$TintInfo;

    iput-object p1, v0, Landroid/widget/AnalogClock$TintInfo;->mTintList:Landroid/content/res/ColorStateList;

    iget-object v0, p0, Landroid/widget/AnalogClock;->mMinuteHandTintInfo:Landroid/widget/AnalogClock$TintInfo;

    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/widget/AnalogClock$TintInfo;->mHasTintList:Z

    iget-object v0, p0, Landroid/widget/AnalogClock;->mMinuteHandTintInfo:Landroid/widget/AnalogClock$TintInfo;

    iget-object v1, p0, Landroid/widget/AnalogClock;->mMinuteHand:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/AnalogClock$TintInfo;->apply(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/AnalogClock;->mMinuteHand:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method public setSecondHand(Landroid/graphics/drawable/Icon;)V
    .registers 4
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    if-nez p1, :cond_4

    const/4 v0, 0x0

    goto :goto_c

    :cond_4
    invoke-virtual {p0}, Landroid/widget/AnalogClock;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Icon;->loadDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :goto_c
    iput-object v0, p0, Landroid/widget/AnalogClock;->mSecondHand:Landroid/graphics/drawable/Drawable;

    iget-object v0, p0, Landroid/widget/AnalogClock;->mSecondHandTintInfo:Landroid/widget/AnalogClock$TintInfo;

    iget-boolean v0, v0, Landroid/widget/AnalogClock$TintInfo;->mHasTintList:Z

    if-nez v0, :cond_1a

    iget-object v0, p0, Landroid/widget/AnalogClock;->mSecondHandTintInfo:Landroid/widget/AnalogClock$TintInfo;

    iget-boolean v0, v0, Landroid/widget/AnalogClock$TintInfo;->mHasTintBlendMode:Z

    if-eqz v0, :cond_24

    :cond_1a
    iget-object v0, p0, Landroid/widget/AnalogClock;->mSecondHandTintInfo:Landroid/widget/AnalogClock$TintInfo;

    iget-object v1, p0, Landroid/widget/AnalogClock;->mSecondHand:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/AnalogClock$TintInfo;->apply(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/AnalogClock;->mSecondHand:Landroid/graphics/drawable/Drawable;

    :cond_24
    iget-object v0, p0, Landroid/widget/AnalogClock;->mTick:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/AnalogClock;->mChanged:Z

    invoke-virtual {p0}, Landroid/widget/AnalogClock;->invalidate()V

    return-void
.end method

.method public setSecondHandTintBlendMode(Landroid/graphics/BlendMode;)V
    .registers 4
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    iget-object v0, p0, Landroid/widget/AnalogClock;->mSecondHandTintInfo:Landroid/widget/AnalogClock$TintInfo;

    iput-object p1, v0, Landroid/widget/AnalogClock$TintInfo;->mTintBlendMode:Landroid/graphics/BlendMode;

    iget-object v0, p0, Landroid/widget/AnalogClock;->mSecondHandTintInfo:Landroid/widget/AnalogClock$TintInfo;

    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/widget/AnalogClock$TintInfo;->mHasTintBlendMode:Z

    iget-object v0, p0, Landroid/widget/AnalogClock;->mSecondHandTintInfo:Landroid/widget/AnalogClock$TintInfo;

    iget-object v1, p0, Landroid/widget/AnalogClock;->mSecondHand:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/AnalogClock$TintInfo;->apply(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/AnalogClock;->mSecondHand:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method public setSecondHandTintList(Landroid/content/res/ColorStateList;)V
    .registers 4
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    iget-object v0, p0, Landroid/widget/AnalogClock;->mSecondHandTintInfo:Landroid/widget/AnalogClock$TintInfo;

    iput-object p1, v0, Landroid/widget/AnalogClock$TintInfo;->mTintList:Landroid/content/res/ColorStateList;

    iget-object v0, p0, Landroid/widget/AnalogClock;->mSecondHandTintInfo:Landroid/widget/AnalogClock$TintInfo;

    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/widget/AnalogClock$TintInfo;->mHasTintList:Z

    iget-object v0, p0, Landroid/widget/AnalogClock;->mSecondHandTintInfo:Landroid/widget/AnalogClock$TintInfo;

    iget-object v1, p0, Landroid/widget/AnalogClock;->mSecondHand:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/AnalogClock$TintInfo;->apply(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/AnalogClock;->mSecondHand:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method public setTimeZone(Ljava/lang/String;)V
    .registers 3
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    invoke-static {p1}, Landroid/widget/AnalogClock;->toZoneId(Ljava/lang/String;)Ljava/time/ZoneId;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/AnalogClock;->mTimeZone:Ljava/time/ZoneId;

    invoke-direct {p0}, Landroid/widget/AnalogClock;->createClock()V

    invoke-virtual {p0}, Landroid/widget/AnalogClock;->onTimeChanged()V

    return-void
.end method

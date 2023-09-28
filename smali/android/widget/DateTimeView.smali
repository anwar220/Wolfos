# classes4.dex

.class public Landroid/widget/DateTimeView;
.super Landroid/widget/TextView;


# annotations
.annotation runtime Landroid/widget/RemoteViews$RemoteView;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/DateTimeView$ReceiverInfo;
    }
.end annotation


# static fields
.field private static final SHOW_MONTH_DAY_YEAR:I = 0x1

.field private static final SHOW_TIME:I

.field private static final sReceiverInfo:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Landroid/widget/DateTimeView$ReceiverInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field mLastDisplay:I

.field mLastFormat:Ljava/text/DateFormat;

.field private mLocalTime:Ljava/time/LocalDateTime;

.field private mNowText:Ljava/lang/String;

.field private mShowRelativeTime:Z

.field private mTimeMillis:J

.field private mUpdateTimeMillis:J


# direct methods
.method static bridge synthetic -$$Nest$fgetmUpdateTimeMillis(Landroid/widget/DateTimeView;)J
    .registers 3

    iget-wide v0, p0, Landroid/widget/DateTimeView;->mUpdateTimeMillis:J

    return-wide v0
.end method

.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Landroid/widget/DateTimeView;->sReceiverInfo:Ljava/lang/ThreadLocal;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/widget/DateTimeView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 9

    invoke-direct {p0, p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, -0x1

    iput v0, p0, Landroid/widget/DateTimeView;->mLastDisplay:I

    sget-object v0, Lcom/android/internal/R$styleable;->DateTimeView:[I

    const/4 v1, 0x0

    invoke-virtual {p1, p2, v0, v1, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v2

    const/4 v3, 0x0

    :goto_12
    if-ge v3, v2, :cond_26

    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v4

    packed-switch v4, :pswitch_data_2a

    goto :goto_23

    :pswitch_1c  #0x0
    invoke-virtual {v0, v3, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v5

    invoke-virtual {p0, v5}, Landroid/widget/DateTimeView;->setShowRelativeTime(Z)V

    :goto_23
    add-int/lit8 v3, v3, 0x1

    goto :goto_12

    :cond_26
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    return-void

    :pswitch_data_2a
    .packed-switch 0x0
        :pswitch_1c  #00000000
    .end packed-switch
.end method

.method private static computeNextMidnight(Ljava/time/LocalDateTime;Ljava/time/ZoneId;)J
    .registers 6

    invoke-virtual {p0}, Ljava/time/LocalDateTime;->toLocalDate()Ljava/time/LocalDate;

    move-result-object v0

    const-wide/16 v1, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/time/LocalDate;->plusDays(J)Ljava/time/LocalDate;

    move-result-object v0

    sget-object v1, Ljava/time/LocalTime;->MIDNIGHT:Ljava/time/LocalTime;

    invoke-static {v0, v1}, Ljava/time/LocalDateTime;->of(Ljava/time/LocalDate;Ljava/time/LocalTime;)Ljava/time/LocalDateTime;

    move-result-object v1

    invoke-static {v1, p1}, Landroid/widget/DateTimeView;->toEpochMillis(Ljava/time/LocalDateTime;Ljava/time/ZoneId;)J

    move-result-wide v2

    return-wide v2
.end method

.method private static dayDistance(Ljava/time/LocalDateTime;Ljava/time/LocalDateTime;)I
    .registers 6

    sget-object v0, Ljava/time/temporal/JulianFields;->JULIAN_DAY:Ljava/time/temporal/TemporalField;

    invoke-virtual {p1, v0}, Ljava/time/LocalDateTime;->getLong(Ljava/time/temporal/TemporalField;)J

    move-result-wide v0

    sget-object v2, Ljava/time/temporal/JulianFields;->JULIAN_DAY:Ljava/time/temporal/TemporalField;

    invoke-virtual {p0, v2}, Ljava/time/LocalDateTime;->getLong(Ljava/time/temporal/TemporalField;)J

    move-result-wide v2

    sub-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method

.method private getTimeFormat()Ljava/text/DateFormat;
    .registers 2

    invoke-virtual {p0}, Landroid/widget/DateTimeView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/text/format/DateFormat;->getTimeFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v0

    return-object v0
.end method

.method private maybeSetText(Ljava/lang/String;)V
    .registers 3

    invoke-virtual {p0}, Landroid/widget/DateTimeView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_b

    return-void

    :cond_b
    invoke-virtual {p0, p1}, Landroid/widget/DateTimeView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public static setReceiverHandler(Landroid/os/Handler;)V
    .registers 5

    sget-object v0, Landroid/widget/DateTimeView;->sReceiverInfo:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/DateTimeView$ReceiverInfo;

    if-nez v1, :cond_14

    new-instance v2, Landroid/widget/DateTimeView$ReceiverInfo;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Landroid/widget/DateTimeView$ReceiverInfo;-><init>(Landroid/widget/DateTimeView$ReceiverInfo-IA;)V

    move-object v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    :cond_14
    invoke-virtual {v1, p0}, Landroid/widget/DateTimeView$ReceiverInfo;->setHandler(Landroid/os/Handler;)V

    return-void
.end method

.method private static toEpochMillis(Ljava/time/LocalDateTime;Ljava/time/ZoneId;)J
    .registers 5

    invoke-virtual {p1}, Ljava/time/ZoneId;->getRules()Ljava/time/zone/ZoneRules;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/time/zone/ZoneRules;->getOffset(Ljava/time/LocalDateTime;)Ljava/time/ZoneOffset;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/time/LocalDateTime;->toInstant(Ljava/time/ZoneOffset;)Ljava/time/Instant;

    move-result-object v0

    invoke-virtual {v0}, Ljava/time/Instant;->toEpochMilli()J

    move-result-wide v1

    return-wide v1
.end method

.method private static toLocalDateTime(JLjava/time/ZoneId;)Ljava/time/LocalDateTime;
    .registers 5

    invoke-static {p0, p1}, Ljava/time/Instant;->ofEpochMilli(J)Ljava/time/Instant;

    move-result-object v0

    invoke-static {v0, p2}, Ljava/time/LocalDateTime;->ofInstant(Ljava/time/Instant;Ljava/time/ZoneId;)Ljava/time/LocalDateTime;

    move-result-object v1

    return-object v1
.end method

.method private updateNowText()V
    .registers 3

    iget-boolean v0, p0, Landroid/widget/DateTimeView;->mShowRelativeTime:Z

    if-nez v0, :cond_5

    return-void

    :cond_5
    invoke-virtual {p0}, Landroid/widget/DateTimeView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1040665

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/DateTimeView;->mNowText:Ljava/lang/String;

    return-void
.end method

.method private updateRelativeTime()V
    .registers 17

    move-object/from16 v0, p0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-wide v3, v0, Landroid/widget/DateTimeView;->mTimeMillis:J

    sub-long v3, v1, v3

    invoke-static {v3, v4}, Ljava/lang/Math;->abs(J)J

    move-result-wide v3

    iget-wide v5, v0, Landroid/widget/DateTimeView;->mTimeMillis:J

    cmp-long v5, v1, v5

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-ltz v5, :cond_18

    move v5, v7

    goto :goto_19

    :cond_18
    move v5, v6

    :goto_19
    const-wide/32 v8, 0xea60

    cmp-long v10, v3, v8

    const-wide/16 v11, 0x1

    if-gez v10, :cond_2e

    iget-object v6, v0, Landroid/widget/DateTimeView;->mNowText:Ljava/lang/String;

    invoke-direct {v0, v6}, Landroid/widget/DateTimeView;->maybeSetText(Ljava/lang/String;)V

    iget-wide v6, v0, Landroid/widget/DateTimeView;->mTimeMillis:J

    add-long/2addr v6, v8

    add-long/2addr v6, v11

    iput-wide v6, v0, Landroid/widget/DateTimeView;->mUpdateTimeMillis:J

    return-void

    :cond_2e
    const-wide/32 v13, 0x36ee80

    cmp-long v10, v3, v13

    if-gez v10, :cond_5a

    div-long v8, v3, v8

    long-to-int v8, v8

    invoke-virtual/range {p0 .. p0}, Landroid/widget/DateTimeView;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    if-eqz v5, :cond_46

    const v10, 0x104036b

    goto :goto_49

    :cond_46
    const v10, 0x104036c

    :goto_49
    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v7, v6

    invoke-virtual {v9, v10, v7}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    const-wide/32 v9, 0xea60

    goto/16 :goto_fc

    :cond_5a
    const-wide/32 v8, 0x5265c00

    cmp-long v8, v3, v8

    if-gez v8, :cond_86

    div-long v8, v3, v13

    long-to-int v8, v8

    invoke-virtual/range {p0 .. p0}, Landroid/widget/DateTimeView;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    if-eqz v5, :cond_72

    const v10, 0x1040367

    goto :goto_75

    :cond_72
    const v10, 0x1040368

    :goto_75
    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v7, v6

    invoke-virtual {v9, v10, v7}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    const-wide/32 v9, 0x36ee80

    goto/16 :goto_fc

    :cond_86
    const-wide v8, 0x7528ad000L

    cmp-long v10, v3, v8

    if-gez v10, :cond_d7

    iget-object v8, v0, Landroid/widget/DateTimeView;->mLocalTime:Ljava/time/LocalDateTime;

    invoke-static {}, Ljava/time/ZoneId;->systemDefault()Ljava/time/ZoneId;

    move-result-object v9

    invoke-static {v1, v2, v9}, Landroid/widget/DateTimeView;->toLocalDateTime(JLjava/time/ZoneId;)Ljava/time/LocalDateTime;

    move-result-object v10

    invoke-static {v8, v10}, Landroid/widget/DateTimeView;->dayDistance(Ljava/time/LocalDateTime;Ljava/time/LocalDateTime;)I

    move-result v13

    invoke-static {v13}, Ljava/lang/Math;->abs(I)I

    move-result v13

    invoke-static {v13, v7}, Ljava/lang/Math;->max(II)I

    move-result v13

    invoke-virtual/range {p0 .. p0}, Landroid/widget/DateTimeView;->getContext()Landroid/content/Context;

    move-result-object v14

    invoke-virtual {v14}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    if-eqz v5, :cond_b3

    const v15, 0x1040363

    goto :goto_b6

    :cond_b3
    const v15, 0x1040364

    :goto_b6
    new-array v11, v7, [Ljava/lang/Object;

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v11, v6

    invoke-virtual {v14, v15, v11}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    if-nez v5, :cond_cc

    if-eq v13, v7, :cond_c7

    goto :goto_cc

    :cond_c7
    const-wide/32 v11, 0x5265c00

    move-wide v9, v11

    goto :goto_d5

    :cond_cc
    :goto_cc
    invoke-static {v10, v9}, Landroid/widget/DateTimeView;->computeNextMidnight(Ljava/time/LocalDateTime;Ljava/time/ZoneId;)J

    move-result-wide v11

    iput-wide v11, v0, Landroid/widget/DateTimeView;->mUpdateTimeMillis:J

    const-wide/16 v11, -0x1

    move-wide v9, v11

    :goto_d5
    move v8, v13

    goto :goto_fc

    :cond_d7
    div-long v8, v3, v8

    long-to-int v8, v8

    invoke-virtual/range {p0 .. p0}, Landroid/widget/DateTimeView;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    if-eqz v5, :cond_e8

    const v10, 0x104036f

    goto :goto_eb

    :cond_e8
    const v10, 0x1040370

    :goto_eb
    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v7, v6

    invoke-virtual {v9, v10, v7}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    const-wide v9, 0x7528ad000L

    :goto_fc
    const-wide/16 v11, -0x1

    cmp-long v7, v9, v11

    if-eqz v7, :cond_11d

    if-eqz v5, :cond_111

    iget-wide v11, v0, Landroid/widget/DateTimeView;->mTimeMillis:J

    add-int/lit8 v7, v8, 0x1

    int-to-long v13, v7

    mul-long/2addr v13, v9

    add-long/2addr v11, v13

    const-wide/16 v13, 0x1

    add-long/2addr v11, v13

    iput-wide v11, v0, Landroid/widget/DateTimeView;->mUpdateTimeMillis:J

    goto :goto_11d

    :cond_111
    const-wide/16 v13, 0x1

    iget-wide v11, v0, Landroid/widget/DateTimeView;->mTimeMillis:J

    int-to-long v13, v8

    mul-long/2addr v13, v9

    sub-long/2addr v11, v13

    const-wide/16 v13, 0x1

    add-long/2addr v11, v13

    iput-wide v11, v0, Landroid/widget/DateTimeView;->mUpdateTimeMillis:J

    :cond_11d
    :goto_11d
    invoke-direct {v0, v6}, Landroid/widget/DateTimeView;->maybeSetText(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method clearFormatAndUpdate()V
    .registers 2

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/widget/DateTimeView;->mLastFormat:Ljava/text/DateFormat;

    invoke-virtual {p0}, Landroid/widget/DateTimeView;->update()V

    return-void
.end method

.method public isShowRelativeTime()Z
    .registers 2

    iget-boolean v0, p0, Landroid/widget/DateTimeView;->mShowRelativeTime:Z

    return v0
.end method

.method protected onAttachedToWindow()V
    .registers 5

    invoke-super {p0}, Landroid/widget/TextView;->onAttachedToWindow()V

    sget-object v0, Landroid/widget/DateTimeView;->sReceiverInfo:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/DateTimeView$ReceiverInfo;

    if-nez v1, :cond_17

    new-instance v2, Landroid/widget/DateTimeView$ReceiverInfo;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Landroid/widget/DateTimeView$ReceiverInfo;-><init>(Landroid/widget/DateTimeView$ReceiverInfo-IA;)V

    move-object v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    :cond_17
    invoke-virtual {v1, p0}, Landroid/widget/DateTimeView$ReceiverInfo;->addView(Landroid/widget/DateTimeView;)V

    iget-boolean v0, p0, Landroid/widget/DateTimeView;->mShowRelativeTime:Z

    if-eqz v0, :cond_21

    invoke-virtual {p0}, Landroid/widget/DateTimeView;->update()V

    :cond_21
    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 2

    invoke-super {p0, p1}, Landroid/widget/TextView;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    invoke-direct {p0}, Landroid/widget/DateTimeView;->updateNowText()V

    invoke-virtual {p0}, Landroid/widget/DateTimeView;->update()V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .registers 2

    invoke-super {p0}, Landroid/widget/TextView;->onDetachedFromWindow()V

    sget-object v0, Landroid/widget/DateTimeView;->sReceiverInfo:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/DateTimeView$ReceiverInfo;

    if-eqz v0, :cond_10

    invoke-virtual {v0, p0}, Landroid/widget/DateTimeView$ReceiverInfo;->removeView(Landroid/widget/DateTimeView;)V

    :cond_10
    return-void
.end method

.method public onInitializeAccessibilityNodeInfoInternal(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .registers 15

    invoke-super {p0, p1}, Landroid/widget/TextView;->onInitializeAccessibilityNodeInfoInternal(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    iget-boolean v0, p0, Landroid/widget/DateTimeView;->mShowRelativeTime:Z

    if-eqz v0, :cond_e4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Landroid/widget/DateTimeView;->mTimeMillis:J

    sub-long v2, v0, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(J)J

    move-result-wide v2

    iget-wide v4, p0, Landroid/widget/DateTimeView;->mTimeMillis:J

    cmp-long v4, v0, v4

    const/4 v5, 0x1

    if-ltz v4, :cond_1c

    move v4, v5

    goto :goto_1d

    :cond_1c
    const/4 v4, 0x0

    :goto_1d
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    const-wide/32 v7, 0xea60

    cmp-long v9, v2, v7

    if-gez v9, :cond_2d

    iget-object v5, p0, Landroid/widget/DateTimeView;->mNowText:Ljava/lang/String;

    goto/16 :goto_e1

    :cond_2d
    const-wide/32 v9, 0x36ee80

    cmp-long v11, v2, v9

    const-string v12, "count"

    if-gez v11, :cond_59

    div-long v7, v2, v7

    long-to-int v5, v7

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v6, v12, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    nop

    invoke-virtual {p0}, Landroid/widget/DateTimeView;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    if-eqz v4, :cond_4f

    const v8, 0x1040369

    goto :goto_52

    :cond_4f
    const v8, 0x104036a

    :goto_52
    invoke-static {v7, v6, v8}, Landroid/util/PluralsMessageFormatter;->format(Landroid/content/res/Resources;Ljava/util/Map;I)Ljava/lang/String;

    move-result-object v7

    move-object v5, v7

    goto/16 :goto_e1

    :cond_59
    const-wide/32 v7, 0x5265c00

    cmp-long v7, v2, v7

    if-gez v7, :cond_82

    div-long v7, v2, v9

    long-to-int v5, v7

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v6, v12, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    nop

    invoke-virtual {p0}, Landroid/widget/DateTimeView;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    if-eqz v4, :cond_79

    const v8, 0x1040365

    goto :goto_7c

    :cond_79
    const v8, 0x1040366

    :goto_7c
    invoke-static {v7, v6, v8}, Landroid/util/PluralsMessageFormatter;->format(Landroid/content/res/Resources;Ljava/util/Map;I)Ljava/lang/String;

    move-result-object v7

    move-object v5, v7

    goto :goto_e1

    :cond_82
    const-wide v7, 0x7528ad000L

    cmp-long v9, v2, v7

    if-gez v9, :cond_c0

    iget-object v7, p0, Landroid/widget/DateTimeView;->mLocalTime:Ljava/time/LocalDateTime;

    invoke-static {}, Ljava/time/ZoneId;->systemDefault()Ljava/time/ZoneId;

    move-result-object v8

    invoke-static {v0, v1, v8}, Landroid/widget/DateTimeView;->toLocalDateTime(JLjava/time/ZoneId;)Ljava/time/LocalDateTime;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/widget/DateTimeView;->dayDistance(Ljava/time/LocalDateTime;Ljava/time/LocalDateTime;)I

    move-result v10

    invoke-static {v10}, Ljava/lang/Math;->abs(I)I

    move-result v10

    invoke-static {v10, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v6, v12, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    nop

    invoke-virtual {p0}, Landroid/widget/DateTimeView;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    if-eqz v4, :cond_b7

    const v11, 0x1040361

    goto :goto_ba

    :cond_b7
    const v11, 0x1040362

    :goto_ba
    invoke-static {v10, v6, v11}, Landroid/util/PluralsMessageFormatter;->format(Landroid/content/res/Resources;Ljava/util/Map;I)Ljava/lang/String;

    move-result-object v7

    move-object v5, v7

    goto :goto_e1

    :cond_c0
    div-long v7, v2, v7

    long-to-int v5, v7

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v6, v12, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    nop

    invoke-virtual {p0}, Landroid/widget/DateTimeView;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    if-eqz v4, :cond_d9

    const v8, 0x104036d

    goto :goto_dc

    :cond_d9
    const v8, 0x104036e

    :goto_dc
    invoke-static {v7, v6, v8}, Landroid/util/PluralsMessageFormatter;->format(Landroid/content/res/Resources;Ljava/util/Map;I)Ljava/lang/String;

    move-result-object v7

    move-object v5, v7

    :goto_e1
    invoke-virtual {p1, v5}, Landroid/view/accessibility/AccessibilityNodeInfo;->setText(Ljava/lang/CharSequence;)V

    :cond_e4
    return-void
.end method

.method public setShowRelativeTime(Z)V
    .registers 2
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    iput-boolean p1, p0, Landroid/widget/DateTimeView;->mShowRelativeTime:Z

    invoke-direct {p0}, Landroid/widget/DateTimeView;->updateNowText()V

    invoke-virtual {p0}, Landroid/widget/DateTimeView;->update()V

    return-void
.end method

.method public setTime(J)V
    .registers 5
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    iput-wide p1, p0, Landroid/widget/DateTimeView;->mTimeMillis:J

    invoke-static {}, Ljava/time/ZoneId;->systemDefault()Ljava/time/ZoneId;

    move-result-object v0

    invoke-static {p1, p2, v0}, Landroid/widget/DateTimeView;->toLocalDateTime(JLjava/time/ZoneId;)Ljava/time/LocalDateTime;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/time/LocalDateTime;->withSecond(I)Ljava/time/LocalDateTime;

    move-result-object v1

    iput-object v1, p0, Landroid/widget/DateTimeView;->mLocalTime:Ljava/time/LocalDateTime;

    invoke-virtual {p0}, Landroid/widget/DateTimeView;->update()V

    return-void
.end method

.method public setVisibility(I)V
    .registers 4
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    const/16 v0, 0x8

    if-eq p1, v0, :cond_c

    invoke-virtual {p0}, Landroid/widget/DateTimeView;->getVisibility()I

    move-result v1

    if-ne v1, v0, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    invoke-super {p0, p1}, Landroid/widget/TextView;->setVisibility(I)V

    if-eqz v0, :cond_15

    invoke-virtual {p0}, Landroid/widget/DateTimeView;->update()V

    :cond_15
    return-void
.end method

.method update()V
    .registers 24

    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/widget/DateTimeView;->mLocalTime:Ljava/time/LocalDateTime;

    if-eqz v1, :cond_eb

    invoke-virtual/range {p0 .. p0}, Landroid/widget/DateTimeView;->getVisibility()I

    move-result v1

    const/16 v2, 0x8

    if-ne v1, v2, :cond_10

    goto/16 :goto_eb

    :cond_10
    iget-boolean v1, v0, Landroid/widget/DateTimeView;->mShowRelativeTime:Z

    if-eqz v1, :cond_18

    invoke-direct/range {p0 .. p0}, Landroid/widget/DateTimeView;->updateRelativeTime()V

    return-void

    :cond_18
    invoke-static {}, Ljava/time/ZoneId;->systemDefault()Ljava/time/ZoneId;

    move-result-object v1

    iget-object v2, v0, Landroid/widget/DateTimeView;->mLocalTime:Ljava/time/LocalDateTime;

    nop

    invoke-virtual {v2}, Ljava/time/LocalDateTime;->toLocalDate()Ljava/time/LocalDate;

    move-result-object v3

    sget-object v4, Ljava/time/LocalTime;->MIDNIGHT:Ljava/time/LocalTime;

    invoke-static {v3, v4}, Ljava/time/LocalDateTime;->of(Ljava/time/LocalDate;Ljava/time/LocalTime;)Ljava/time/LocalDateTime;

    move-result-object v3

    const-wide/16 v4, 0x1

    invoke-virtual {v3, v4, v5}, Ljava/time/LocalDateTime;->plusDays(J)Ljava/time/LocalDateTime;

    move-result-object v4

    invoke-static {v1}, Ljava/time/LocalDateTime;->now(Ljava/time/ZoneId;)Ljava/time/LocalDateTime;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Ljava/time/LocalDateTime;->withSecond(I)Ljava/time/LocalDateTime;

    move-result-object v5

    const-wide/16 v6, 0xc

    invoke-virtual {v2, v6, v7}, Ljava/time/LocalDateTime;->minusHours(J)Ljava/time/LocalDateTime;

    move-result-object v8

    invoke-static {v8, v1}, Landroid/widget/DateTimeView;->toEpochMillis(Ljava/time/LocalDateTime;Ljava/time/ZoneId;)J

    move-result-wide v8

    invoke-virtual {v2, v6, v7}, Ljava/time/LocalDateTime;->plusHours(J)Ljava/time/LocalDateTime;

    move-result-object v6

    invoke-static {v6, v1}, Landroid/widget/DateTimeView;->toEpochMillis(Ljava/time/LocalDateTime;Ljava/time/ZoneId;)J

    move-result-wide v6

    invoke-static {v3, v1}, Landroid/widget/DateTimeView;->toEpochMillis(Ljava/time/LocalDateTime;Ljava/time/ZoneId;)J

    move-result-wide v10

    invoke-static {v4, v1}, Landroid/widget/DateTimeView;->toEpochMillis(Ljava/time/LocalDateTime;Ljava/time/ZoneId;)J

    move-result-wide v12

    invoke-static {v2, v1}, Landroid/widget/DateTimeView;->toEpochMillis(Ljava/time/LocalDateTime;Ljava/time/ZoneId;)J

    move-result-wide v14

    invoke-static {v5, v1}, Landroid/widget/DateTimeView;->toEpochMillis(Ljava/time/LocalDateTime;Ljava/time/ZoneId;)J

    move-result-wide v16

    cmp-long v18, v16, v10

    if-ltz v18, :cond_62

    cmp-long v18, v16, v12

    if-ltz v18, :cond_6a

    :cond_62
    cmp-long v18, v16, v8

    if-ltz v18, :cond_71

    cmp-long v18, v16, v6

    if-gez v18, :cond_71

    :cond_6a
    const/16 v18, 0x0

    move-object/from16 v19, v1

    move/from16 v1, v18

    goto :goto_77

    :cond_71
    const/16 v18, 0x1

    move-object/from16 v19, v1

    move/from16 v1, v18

    :goto_77
    move-object/from16 v18, v2

    iget v2, v0, Landroid/widget/DateTimeView;->mLastDisplay:I

    if-ne v1, v2, :cond_84

    iget-object v2, v0, Landroid/widget/DateTimeView;->mLastFormat:Ljava/text/DateFormat;

    if-eqz v2, :cond_84

    iget-object v2, v0, Landroid/widget/DateTimeView;->mLastFormat:Ljava/text/DateFormat;

    goto :goto_b0

    :cond_84
    packed-switch v1, :pswitch_data_ec

    move-object/from16 v20, v3

    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "unknown display value: "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    :pswitch_a3  #0x1
    const/4 v2, 0x3

    invoke-static {v2}, Ljava/text/DateFormat;->getDateInstance(I)Ljava/text/DateFormat;

    move-result-object v2

    goto :goto_ae

    :pswitch_a9  #0x0
    invoke-direct/range {p0 .. p0}, Landroid/widget/DateTimeView;->getTimeFormat()Ljava/text/DateFormat;

    move-result-object v2

    nop

    :goto_ae
    iput-object v2, v0, Landroid/widget/DateTimeView;->mLastFormat:Ljava/text/DateFormat;

    :goto_b0
    move-object/from16 v20, v3

    new-instance v3, Ljava/util/Date;

    invoke-direct {v3, v14, v15}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v2, v3}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Landroid/widget/DateTimeView;->maybeSetText(Ljava/lang/String;)V

    if-nez v1, :cond_d2

    cmp-long v21, v6, v12

    if-lez v21, :cond_ca

    move-object/from16 v21, v2

    move-object/from16 v22, v3

    move-wide v2, v6

    goto :goto_cf

    :cond_ca
    move-object/from16 v21, v2

    move-object/from16 v22, v3

    move-wide v2, v12

    :goto_cf
    iput-wide v2, v0, Landroid/widget/DateTimeView;->mUpdateTimeMillis:J

    goto :goto_ea

    :cond_d2
    move-object/from16 v21, v2

    move-object/from16 v22, v3

    iget-wide v2, v0, Landroid/widget/DateTimeView;->mTimeMillis:J

    cmp-long v2, v2, v16

    if-gez v2, :cond_e1

    const-wide/16 v2, 0x0

    iput-wide v2, v0, Landroid/widget/DateTimeView;->mUpdateTimeMillis:J

    goto :goto_ea

    :cond_e1
    cmp-long v2, v8, v10

    if-gez v2, :cond_e7

    move-wide v2, v8

    goto :goto_e8

    :cond_e7
    move-wide v2, v10

    :goto_e8
    iput-wide v2, v0, Landroid/widget/DateTimeView;->mUpdateTimeMillis:J

    :goto_ea
    return-void

    :cond_eb
    :goto_eb
    return-void

    :pswitch_data_ec
    .packed-switch 0x0
        :pswitch_a9  #00000000
        :pswitch_a3  #00000001
    .end packed-switch
.end method

# classes4.dex

.class Landroid/widget/DayPickerView;
.super Landroid/view/ViewGroup;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/DayPickerView$OnDaySelectedListener;
    }
.end annotation


# static fields
.field private static final ATTRS_TEXT_COLOR:[I

.field private static final DEFAULT_END_YEAR:I = 0x834

.field private static final DEFAULT_LAYOUT:I = 0x109006e

.field private static final DEFAULT_START_YEAR:I = 0x76c


# instance fields
.field private final mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

.field private final mAdapter:Landroid/widget/DayPickerPagerAdapter;

.field private final mMaxDate:Landroid/icu/util/Calendar;

.field private final mMinDate:Landroid/icu/util/Calendar;

.field private final mNextButton:Landroid/widget/ImageButton;

.field private final mOnClickListener:Landroid/view/View$OnClickListener;

.field private mOnDaySelectedListener:Landroid/widget/DayPickerView$OnDaySelectedListener;

.field private final mOnPageChangedListener:Lcom/android/internal/widget/ViewPager$OnPageChangeListener;

.field private final mPrevButton:Landroid/widget/ImageButton;

.field private final mSelectedDay:Landroid/icu/util/Calendar;

.field private mTempCalendar:Landroid/icu/util/Calendar;

.field private final mViewPager:Lcom/android/internal/widget/ViewPager;


# direct methods
.method static bridge synthetic -$$Nest$fgetmAccessibilityManager(Landroid/widget/DayPickerView;)Landroid/view/accessibility/AccessibilityManager;
    .registers 1

    iget-object p0, p0, Landroid/widget/DayPickerView;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmNextButton(Landroid/widget/DayPickerView;)Landroid/widget/ImageButton;
    .registers 1

    iget-object p0, p0, Landroid/widget/DayPickerView;->mNextButton:Landroid/widget/ImageButton;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmOnDaySelectedListener(Landroid/widget/DayPickerView;)Landroid/widget/DayPickerView$OnDaySelectedListener;
    .registers 1

    iget-object p0, p0, Landroid/widget/DayPickerView;->mOnDaySelectedListener:Landroid/widget/DayPickerView$OnDaySelectedListener;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmPrevButton(Landroid/widget/DayPickerView;)Landroid/widget/ImageButton;
    .registers 1

    iget-object p0, p0, Landroid/widget/DayPickerView;->mPrevButton:Landroid/widget/ImageButton;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmViewPager(Landroid/widget/DayPickerView;)Lcom/android/internal/widget/ViewPager;
    .registers 1

    iget-object p0, p0, Landroid/widget/DayPickerView;->mViewPager:Lcom/android/internal/widget/ViewPager;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mupdateButtonVisibility(Landroid/widget/DayPickerView;I)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/widget/DayPickerView;->updateButtonVisibility(I)V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 3

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x1010098

    aput v2, v0, v1

    sput-object v0, Landroid/widget/DayPickerView;->ATTRS_TEXT_COLOR:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/widget/DayPickerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    const v0, 0x101035d

    invoke-direct {p0, p1, p2, v0}, Landroid/widget/DayPickerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/widget/DayPickerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .registers 32

    move-object/from16 v7, p0

    move-object/from16 v8, p1

    invoke-direct/range {p0 .. p4}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    invoke-static {}, Landroid/icu/util/Calendar;->getInstance()Landroid/icu/util/Calendar;

    move-result-object v0

    iput-object v0, v7, Landroid/widget/DayPickerView;->mSelectedDay:Landroid/icu/util/Calendar;

    invoke-static {}, Landroid/icu/util/Calendar;->getInstance()Landroid/icu/util/Calendar;

    move-result-object v0

    iput-object v0, v7, Landroid/widget/DayPickerView;->mMinDate:Landroid/icu/util/Calendar;

    invoke-static {}, Landroid/icu/util/Calendar;->getInstance()Landroid/icu/util/Calendar;

    move-result-object v0

    iput-object v0, v7, Landroid/widget/DayPickerView;->mMaxDate:Landroid/icu/util/Calendar;

    new-instance v0, Landroid/widget/DayPickerView$2;

    invoke-direct {v0, v7}, Landroid/widget/DayPickerView$2;-><init>(Landroid/widget/DayPickerView;)V

    iput-object v0, v7, Landroid/widget/DayPickerView;->mOnPageChangedListener:Lcom/android/internal/widget/ViewPager$OnPageChangeListener;

    new-instance v0, Landroid/widget/DayPickerView$3;

    invoke-direct {v0, v7}, Landroid/widget/DayPickerView$3;-><init>(Landroid/widget/DayPickerView;)V

    iput-object v0, v7, Landroid/widget/DayPickerView;->mOnClickListener:Landroid/view/View$OnClickListener;

    const-string v0, "accessibility"

    invoke-virtual {v8, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    iput-object v0, v7, Landroid/widget/DayPickerView;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    sget-object v0, Lcom/android/internal/R$styleable;->CalendarView:[I

    move-object/from16 v9, p2

    move/from16 v10, p3

    move/from16 v11, p4

    invoke-virtual {v8, v9, v0, v10, v11}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v12

    sget-object v2, Lcom/android/internal/R$styleable;->CalendarView:[I

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v3, p2

    move-object v4, v12

    move/from16 v5, p3

    move/from16 v6, p4

    invoke-virtual/range {v0 .. v6}, Landroid/widget/DayPickerView;->saveAttributeDataForStyleable(Landroid/content/Context;[ILandroid/util/AttributeSet;Landroid/content/res/TypedArray;II)V

    nop

    invoke-static {}, Landroid/icu/util/Calendar;->getInstance()Landroid/icu/util/Calendar;

    move-result-object v0

    invoke-virtual {v0}, Landroid/icu/util/Calendar;->getFirstDayOfWeek()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {v12, v1, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    const/4 v2, 0x2

    invoke-virtual {v12, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x3

    invoke-virtual {v12, v3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x10

    const v5, 0x10303d0

    invoke-virtual {v12, v4, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    const/16 v5, 0xb

    const v6, 0x10303cf

    invoke-virtual {v12, v5, v6}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v6

    const/16 v13, 0xc

    const v14, 0x10303ce

    invoke-virtual {v12, v13, v14}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v13

    const/16 v14, 0xf

    invoke-virtual {v12, v14}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v14

    invoke-virtual {v12}, Landroid/content/res/TypedArray;->recycle()V

    new-instance v15, Landroid/widget/DayPickerPagerAdapter;

    const v5, 0x109006c

    const v1, 0x10203ca

    invoke-direct {v15, v8, v5, v1}, Landroid/widget/DayPickerPagerAdapter;-><init>(Landroid/content/Context;II)V

    iput-object v15, v7, Landroid/widget/DayPickerView;->mAdapter:Landroid/widget/DayPickerPagerAdapter;

    invoke-virtual {v15, v4}, Landroid/widget/DayPickerPagerAdapter;->setMonthTextAppearance(I)V

    invoke-virtual {v15, v6}, Landroid/widget/DayPickerPagerAdapter;->setDayOfWeekTextAppearance(I)V

    invoke-virtual {v15, v13}, Landroid/widget/DayPickerPagerAdapter;->setDayTextAppearance(I)V

    invoke-virtual {v15, v14}, Landroid/widget/DayPickerPagerAdapter;->setDaySelectorColor(Landroid/content/res/ColorStateList;)V

    invoke-static/range {p1 .. p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v5, 0x109006e

    const/4 v15, 0x0

    invoke-virtual {v1, v5, v7, v15}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/view/ViewGroup;

    :goto_b0
    invoke-virtual {v5}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v17

    if-lez v17, :cond_c6

    move-object/from16 v18, v1

    invoke-virtual {v5, v15}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v5, v15}, Landroid/view/ViewGroup;->removeViewAt(I)V

    invoke-virtual {v7, v1}, Landroid/widget/DayPickerView;->addView(Landroid/view/View;)V

    move-object/from16 v1, v18

    const/4 v15, 0x0

    goto :goto_b0

    :cond_c6
    move-object/from16 v18, v1

    const v1, 0x102044d

    invoke-virtual {v7, v1}, Landroid/widget/DayPickerView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    iput-object v1, v7, Landroid/widget/DayPickerView;->mPrevButton:Landroid/widget/ImageButton;

    iget-object v15, v7, Landroid/widget/DayPickerView;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v15}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v15, 0x10203db

    invoke-virtual {v7, v15}, Landroid/widget/DayPickerView;->findViewById(I)Landroid/view/View;

    move-result-object v15

    check-cast v15, Landroid/widget/ImageButton;

    iput-object v15, v7, Landroid/widget/DayPickerView;->mNextButton:Landroid/widget/ImageButton;

    move-object/from16 v19, v5

    iget-object v5, v7, Landroid/widget/DayPickerView;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v15, v5}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v5, 0x1020298

    invoke-virtual {v7, v5}, Landroid/widget/DayPickerView;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/android/internal/widget/ViewPager;

    iput-object v5, v7, Landroid/widget/DayPickerView;->mViewPager:Lcom/android/internal/widget/ViewPager;

    move/from16 v20, v6

    iget-object v6, v7, Landroid/widget/DayPickerView;->mAdapter:Landroid/widget/DayPickerPagerAdapter;

    invoke-virtual {v5, v6}, Lcom/android/internal/widget/ViewPager;->setAdapter(Lcom/android/internal/widget/PagerAdapter;)V

    iget-object v6, v7, Landroid/widget/DayPickerView;->mOnPageChangedListener:Lcom/android/internal/widget/ViewPager$OnPageChangeListener;

    invoke-virtual {v5, v6}, Lcom/android/internal/widget/ViewPager;->setOnPageChangeListener(Lcom/android/internal/widget/ViewPager$OnPageChangeListener;)V

    if-eqz v4, :cond_11c

    iget-object v5, v7, Landroid/widget/DayPickerView;->mContext:Landroid/content/Context;

    const/4 v6, 0x0

    sget-object v8, Landroid/widget/DayPickerView;->ATTRS_TEXT_COLOR:[I

    const/4 v9, 0x0

    invoke-virtual {v5, v6, v8, v9, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v5

    invoke-virtual {v5, v9}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v6

    if-eqz v6, :cond_119

    invoke-virtual {v1, v6}, Landroid/widget/ImageButton;->setImageTintList(Landroid/content/res/ColorStateList;)V

    invoke-virtual {v15, v6}, Landroid/widget/ImageButton;->setImageTintList(Landroid/content/res/ColorStateList;)V

    :cond_119
    invoke-virtual {v5}, Landroid/content/res/TypedArray;->recycle()V

    :cond_11c
    invoke-static {}, Landroid/icu/util/Calendar;->getInstance()Landroid/icu/util/Calendar;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/widget/CalendarView;->parseDate(Ljava/lang/String;Landroid/icu/util/Calendar;)Z

    move-result v5

    if-nez v5, :cond_12d

    const/16 v5, 0x76c

    const/4 v6, 0x1

    const/4 v8, 0x0

    invoke-virtual {v1, v5, v8, v6}, Landroid/icu/util/Calendar;->set(III)V

    :cond_12d
    invoke-virtual {v1}, Landroid/icu/util/Calendar;->getTimeInMillis()J

    move-result-wide v5

    invoke-static {v3, v1}, Landroid/widget/CalendarView;->parseDate(Ljava/lang/String;Landroid/icu/util/Calendar;)Z

    move-result v8

    if-nez v8, :cond_140

    const/16 v8, 0x834

    const/16 v9, 0x1f

    const/16 v15, 0xb

    invoke-virtual {v1, v8, v15, v9}, Landroid/icu/util/Calendar;->set(III)V

    :cond_140
    invoke-virtual {v1}, Landroid/icu/util/Calendar;->getTimeInMillis()J

    move-result-wide v8

    cmp-long v15, v8, v5

    if-ltz v15, :cond_173

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v21

    move-wide/from16 v23, v5

    move-wide/from16 v25, v8

    move-object/from16 v16, v1

    move-object v15, v2

    invoke-static/range {v21 .. v26}, Landroid/util/MathUtils;->constrain(JJJ)J

    move-result-wide v1

    invoke-virtual {v7, v0}, Landroid/widget/DayPickerView;->setFirstDayOfWeek(I)V

    invoke-virtual {v7, v5, v6}, Landroid/widget/DayPickerView;->setMinDate(J)V

    invoke-virtual {v7, v8, v9}, Landroid/widget/DayPickerView;->setMaxDate(J)V

    move/from16 v21, v0

    const/4 v0, 0x0

    invoke-virtual {v7, v1, v2, v0}, Landroid/widget/DayPickerView;->setDate(JZ)V

    iget-object v0, v7, Landroid/widget/DayPickerView;->mAdapter:Landroid/widget/DayPickerPagerAdapter;

    move-wide/from16 v22, v1

    new-instance v1, Landroid/widget/DayPickerView$1;

    invoke-direct {v1, v7}, Landroid/widget/DayPickerView$1;-><init>(Landroid/widget/DayPickerView;)V

    invoke-virtual {v0, v1}, Landroid/widget/DayPickerPagerAdapter;->setOnDaySelectedListener(Landroid/widget/DayPickerPagerAdapter$OnDaySelectedListener;)V

    return-void

    :cond_173
    move/from16 v21, v0

    move-object/from16 v16, v1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "maxDate must be >= minDate"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private getDiffMonths(Landroid/icu/util/Calendar;Landroid/icu/util/Calendar;)I
    .registers 6

    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Landroid/icu/util/Calendar;->get(I)I

    move-result v1

    invoke-virtual {p1, v0}, Landroid/icu/util/Calendar;->get(I)I

    move-result v0

    sub-int/2addr v1, v0

    const/4 v0, 0x2

    invoke-virtual {p2, v0}, Landroid/icu/util/Calendar;->get(I)I

    move-result v2

    invoke-virtual {p1, v0}, Landroid/icu/util/Calendar;->get(I)I

    move-result v0

    sub-int/2addr v2, v0

    mul-int/lit8 v0, v1, 0xc

    add-int/2addr v2, v0

    return v2
.end method

.method private getPositionFromDay(J)I
    .registers 6

    iget-object v0, p0, Landroid/widget/DayPickerView;->mMinDate:Landroid/icu/util/Calendar;

    iget-object v1, p0, Landroid/widget/DayPickerView;->mMaxDate:Landroid/icu/util/Calendar;

    invoke-direct {p0, v0, v1}, Landroid/widget/DayPickerView;->getDiffMonths(Landroid/icu/util/Calendar;Landroid/icu/util/Calendar;)I

    move-result v0

    iget-object v1, p0, Landroid/widget/DayPickerView;->mMinDate:Landroid/icu/util/Calendar;

    invoke-direct {p0, p1, p2}, Landroid/widget/DayPickerView;->getTempCalendarForTime(J)Landroid/icu/util/Calendar;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Landroid/widget/DayPickerView;->getDiffMonths(Landroid/icu/util/Calendar;Landroid/icu/util/Calendar;)I

    move-result v1

    const/4 v2, 0x0

    invoke-static {v1, v2, v0}, Landroid/util/MathUtils;->constrain(III)I

    move-result v2

    return v2
.end method

.method private getTempCalendarForTime(J)Landroid/icu/util/Calendar;
    .registers 4

    iget-object v0, p0, Landroid/widget/DayPickerView;->mTempCalendar:Landroid/icu/util/Calendar;

    if-nez v0, :cond_a

    invoke-static {}, Landroid/icu/util/Calendar;->getInstance()Landroid/icu/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/DayPickerView;->mTempCalendar:Landroid/icu/util/Calendar;

    :cond_a
    iget-object v0, p0, Landroid/widget/DayPickerView;->mTempCalendar:Landroid/icu/util/Calendar;

    invoke-virtual {v0, p1, p2}, Landroid/icu/util/Calendar;->setTimeInMillis(J)V

    iget-object v0, p0, Landroid/widget/DayPickerView;->mTempCalendar:Landroid/icu/util/Calendar;

    return-object v0
.end method

.method private setDate(JZZ)V
    .registers 9

    const/4 v0, 0x0

    iget-object v1, p0, Landroid/widget/DayPickerView;->mMinDate:Landroid/icu/util/Calendar;

    invoke-virtual {v1}, Landroid/icu/util/Calendar;->getTimeInMillis()J

    move-result-wide v1

    cmp-long v1, p1, v1

    if-gez v1, :cond_13

    iget-object v1, p0, Landroid/widget/DayPickerView;->mMinDate:Landroid/icu/util/Calendar;

    invoke-virtual {v1}, Landroid/icu/util/Calendar;->getTimeInMillis()J

    move-result-wide p1

    const/4 v0, 0x1

    goto :goto_24

    :cond_13
    iget-object v1, p0, Landroid/widget/DayPickerView;->mMaxDate:Landroid/icu/util/Calendar;

    invoke-virtual {v1}, Landroid/icu/util/Calendar;->getTimeInMillis()J

    move-result-wide v1

    cmp-long v1, p1, v1

    if-lez v1, :cond_24

    iget-object v1, p0, Landroid/widget/DayPickerView;->mMaxDate:Landroid/icu/util/Calendar;

    invoke-virtual {v1}, Landroid/icu/util/Calendar;->getTimeInMillis()J

    move-result-wide p1

    const/4 v0, 0x1

    :cond_24
    :goto_24
    invoke-direct {p0, p1, p2}, Landroid/widget/DayPickerView;->getTempCalendarForTime(J)Landroid/icu/util/Calendar;

    if-nez p4, :cond_2b

    if-eqz v0, :cond_30

    :cond_2b
    iget-object v1, p0, Landroid/widget/DayPickerView;->mSelectedDay:Landroid/icu/util/Calendar;

    invoke-virtual {v1, p1, p2}, Landroid/icu/util/Calendar;->setTimeInMillis(J)V

    :cond_30
    invoke-direct {p0, p1, p2}, Landroid/widget/DayPickerView;->getPositionFromDay(J)I

    move-result v1

    iget-object v2, p0, Landroid/widget/DayPickerView;->mViewPager:Lcom/android/internal/widget/ViewPager;

    invoke-virtual {v2}, Lcom/android/internal/widget/ViewPager;->getCurrentItem()I

    move-result v2

    if-eq v1, v2, :cond_41

    iget-object v2, p0, Landroid/widget/DayPickerView;->mViewPager:Lcom/android/internal/widget/ViewPager;

    invoke-virtual {v2, v1, p3}, Lcom/android/internal/widget/ViewPager;->setCurrentItem(IZ)V

    :cond_41
    iget-object v2, p0, Landroid/widget/DayPickerView;->mAdapter:Landroid/widget/DayPickerPagerAdapter;

    iget-object v3, p0, Landroid/widget/DayPickerView;->mTempCalendar:Landroid/icu/util/Calendar;

    invoke-virtual {v2, v3}, Landroid/widget/DayPickerPagerAdapter;->setSelectedDay(Landroid/icu/util/Calendar;)V

    return-void
.end method

.method private updateButtonVisibility(I)V
    .registers 8

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-lez p1, :cond_6

    move v2, v0

    goto :goto_7

    :cond_6
    move v2, v1

    :goto_7
    iget-object v3, p0, Landroid/widget/DayPickerView;->mAdapter:Landroid/widget/DayPickerPagerAdapter;

    invoke-virtual {v3}, Landroid/widget/DayPickerPagerAdapter;->getCount()I

    move-result v3

    sub-int/2addr v3, v0

    if-ge p1, v3, :cond_11

    goto :goto_12

    :cond_11
    move v0, v1

    :goto_12
    iget-object v3, p0, Landroid/widget/DayPickerView;->mPrevButton:Landroid/widget/ImageButton;

    const/4 v4, 0x4

    if-eqz v2, :cond_19

    move v5, v1

    goto :goto_1a

    :cond_19
    move v5, v4

    :goto_1a
    invoke-virtual {v3, v5}, Landroid/widget/ImageButton;->setVisibility(I)V

    iget-object v3, p0, Landroid/widget/DayPickerView;->mNextButton:Landroid/widget/ImageButton;

    if-eqz v0, :cond_22

    goto :goto_23

    :cond_22
    move v1, v4

    :goto_23
    invoke-virtual {v3, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    return-void
.end method


# virtual methods
.method public getBoundsForDate(JLandroid/graphics/Rect;)Z
    .registers 7

    invoke-direct {p0, p1, p2}, Landroid/widget/DayPickerView;->getPositionFromDay(J)I

    move-result v0

    iget-object v1, p0, Landroid/widget/DayPickerView;->mViewPager:Lcom/android/internal/widget/ViewPager;

    invoke-virtual {v1}, Lcom/android/internal/widget/ViewPager;->getCurrentItem()I

    move-result v1

    if-eq v0, v1, :cond_e

    const/4 v1, 0x0

    return v1

    :cond_e
    iget-object v1, p0, Landroid/widget/DayPickerView;->mTempCalendar:Landroid/icu/util/Calendar;

    invoke-virtual {v1, p1, p2}, Landroid/icu/util/Calendar;->setTimeInMillis(J)V

    iget-object v1, p0, Landroid/widget/DayPickerView;->mAdapter:Landroid/widget/DayPickerPagerAdapter;

    iget-object v2, p0, Landroid/widget/DayPickerView;->mTempCalendar:Landroid/icu/util/Calendar;

    invoke-virtual {v1, v2, p3}, Landroid/widget/DayPickerPagerAdapter;->getBoundsForDate(Landroid/icu/util/Calendar;Landroid/graphics/Rect;)Z

    move-result v1

    return v1
.end method

.method public getDate()J
    .registers 3

    iget-object v0, p0, Landroid/widget/DayPickerView;->mSelectedDay:Landroid/icu/util/Calendar;

    invoke-virtual {v0}, Landroid/icu/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method public getDayOfWeekTextAppearance()I
    .registers 2

    iget-object v0, p0, Landroid/widget/DayPickerView;->mAdapter:Landroid/widget/DayPickerPagerAdapter;

    invoke-virtual {v0}, Landroid/widget/DayPickerPagerAdapter;->getDayOfWeekTextAppearance()I

    move-result v0

    return v0
.end method

.method public getDayTextAppearance()I
    .registers 2

    iget-object v0, p0, Landroid/widget/DayPickerView;->mAdapter:Landroid/widget/DayPickerPagerAdapter;

    invoke-virtual {v0}, Landroid/widget/DayPickerPagerAdapter;->getDayTextAppearance()I

    move-result v0

    return v0
.end method

.method public getFirstDayOfWeek()I
    .registers 2

    iget-object v0, p0, Landroid/widget/DayPickerView;->mAdapter:Landroid/widget/DayPickerPagerAdapter;

    invoke-virtual {v0}, Landroid/widget/DayPickerPagerAdapter;->getFirstDayOfWeek()I

    move-result v0

    return v0
.end method

.method public getMaxDate()J
    .registers 3

    iget-object v0, p0, Landroid/widget/DayPickerView;->mMaxDate:Landroid/icu/util/Calendar;

    invoke-virtual {v0}, Landroid/icu/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method public getMinDate()J
    .registers 3

    iget-object v0, p0, Landroid/widget/DayPickerView;->mMinDate:Landroid/icu/util/Calendar;

    invoke-virtual {v0}, Landroid/icu/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method public getMostVisiblePosition()I
    .registers 2

    iget-object v0, p0, Landroid/widget/DayPickerView;->mViewPager:Lcom/android/internal/widget/ViewPager;

    invoke-virtual {v0}, Lcom/android/internal/widget/ViewPager;->getCurrentItem()I

    move-result v0

    return v0
.end method

.method protected onLayout(ZIIII)V
    .registers 23

    move-object/from16 v0, p0

    invoke-virtual/range {p0 .. p0}, Landroid/widget/DayPickerView;->isLayoutRtl()Z

    move-result v1

    if-eqz v1, :cond_d

    iget-object v1, v0, Landroid/widget/DayPickerView;->mNextButton:Landroid/widget/ImageButton;

    iget-object v2, v0, Landroid/widget/DayPickerView;->mPrevButton:Landroid/widget/ImageButton;

    goto :goto_11

    :cond_d
    iget-object v1, v0, Landroid/widget/DayPickerView;->mPrevButton:Landroid/widget/ImageButton;

    iget-object v2, v0, Landroid/widget/DayPickerView;->mNextButton:Landroid/widget/ImageButton;

    :goto_11
    sub-int v3, p4, p2

    sub-int v4, p5, p3

    iget-object v5, v0, Landroid/widget/DayPickerView;->mViewPager:Lcom/android/internal/widget/ViewPager;

    const/4 v6, 0x0

    invoke-virtual {v5, v6, v6, v3, v4}, Lcom/android/internal/widget/ViewPager;->layout(IIII)V

    iget-object v5, v0, Landroid/widget/DayPickerView;->mViewPager:Lcom/android/internal/widget/ViewPager;

    invoke-virtual {v5, v6}, Lcom/android/internal/widget/ViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/SimpleMonthView;

    invoke-virtual {v5}, Landroid/widget/SimpleMonthView;->getMonthHeight()I

    move-result v6

    invoke-virtual {v5}, Landroid/widget/SimpleMonthView;->getCellWidth()I

    move-result v7

    invoke-virtual {v1}, Landroid/widget/ImageButton;->getMeasuredWidth()I

    move-result v8

    invoke-virtual {v1}, Landroid/widget/ImageButton;->getMeasuredHeight()I

    move-result v9

    invoke-virtual {v5}, Landroid/widget/SimpleMonthView;->getPaddingTop()I

    move-result v10

    sub-int v11, v6, v9

    div-int/lit8 v11, v11, 0x2

    add-int/2addr v10, v11

    invoke-virtual {v5}, Landroid/widget/SimpleMonthView;->getPaddingLeft()I

    move-result v11

    sub-int v12, v7, v8

    div-int/lit8 v12, v12, 0x2

    add-int/2addr v11, v12

    add-int v12, v11, v8

    add-int v13, v10, v9

    invoke-virtual {v1, v11, v10, v12, v13}, Landroid/widget/ImageButton;->layout(IIII)V

    invoke-virtual {v2}, Landroid/widget/ImageButton;->getMeasuredWidth()I

    move-result v12

    invoke-virtual {v2}, Landroid/widget/ImageButton;->getMeasuredHeight()I

    move-result v13

    invoke-virtual {v5}, Landroid/widget/SimpleMonthView;->getPaddingTop()I

    move-result v14

    sub-int v15, v6, v13

    div-int/lit8 v15, v15, 0x2

    add-int/2addr v14, v15

    invoke-virtual {v5}, Landroid/widget/SimpleMonthView;->getPaddingRight()I

    move-result v15

    sub-int v15, v3, v15

    sub-int v16, v7, v12

    div-int/lit8 v16, v16, 0x2

    sub-int v15, v15, v16

    sub-int v0, v15, v12

    move-object/from16 v16, v1

    add-int v1, v14, v13

    invoke-virtual {v2, v0, v14, v15, v1}, Landroid/widget/ImageButton;->layout(IIII)V

    return-void
.end method

.method protected onMeasure(II)V
    .registers 11

    iget-object v0, p0, Landroid/widget/DayPickerView;->mViewPager:Lcom/android/internal/widget/ViewPager;

    invoke-virtual {p0, v0, p1, p2}, Landroid/widget/DayPickerView;->measureChild(Landroid/view/View;II)V

    invoke-virtual {v0}, Lcom/android/internal/widget/ViewPager;->getMeasuredWidthAndState()I

    move-result v1

    invoke-virtual {v0}, Lcom/android/internal/widget/ViewPager;->getMeasuredHeightAndState()I

    move-result v2

    invoke-virtual {p0, v1, v2}, Landroid/widget/DayPickerView;->setMeasuredDimension(II)V

    invoke-virtual {v0}, Lcom/android/internal/widget/ViewPager;->getMeasuredWidth()I

    move-result v3

    invoke-virtual {v0}, Lcom/android/internal/widget/ViewPager;->getMeasuredHeight()I

    move-result v4

    const/high16 v5, -0x80000000

    invoke-static {v3, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    invoke-static {v4, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    iget-object v7, p0, Landroid/widget/DayPickerView;->mPrevButton:Landroid/widget/ImageButton;

    invoke-virtual {v7, v6, v5}, Landroid/widget/ImageButton;->measure(II)V

    iget-object v7, p0, Landroid/widget/DayPickerView;->mNextButton:Landroid/widget/ImageButton;

    invoke-virtual {v7, v6, v5}, Landroid/widget/ImageButton;->measure(II)V

    return-void
.end method

.method public onRangeChanged()V
    .registers 4

    iget-object v0, p0, Landroid/widget/DayPickerView;->mAdapter:Landroid/widget/DayPickerPagerAdapter;

    iget-object v1, p0, Landroid/widget/DayPickerView;->mMinDate:Landroid/icu/util/Calendar;

    iget-object v2, p0, Landroid/widget/DayPickerView;->mMaxDate:Landroid/icu/util/Calendar;

    invoke-virtual {v0, v1, v2}, Landroid/widget/DayPickerPagerAdapter;->setRange(Landroid/icu/util/Calendar;Landroid/icu/util/Calendar;)V

    iget-object v0, p0, Landroid/widget/DayPickerView;->mSelectedDay:Landroid/icu/util/Calendar;

    invoke-virtual {v0}, Landroid/icu/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2, v2}, Landroid/widget/DayPickerView;->setDate(JZZ)V

    iget-object v0, p0, Landroid/widget/DayPickerView;->mViewPager:Lcom/android/internal/widget/ViewPager;

    invoke-virtual {v0}, Lcom/android/internal/widget/ViewPager;->getCurrentItem()I

    move-result v0

    invoke-direct {p0, v0}, Landroid/widget/DayPickerView;->updateButtonVisibility(I)V

    return-void
.end method

.method public onRtlPropertiesChanged(I)V
    .registers 2

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onRtlPropertiesChanged(I)V

    invoke-virtual {p0}, Landroid/widget/DayPickerView;->requestLayout()V

    return-void
.end method

.method public setDate(J)V
    .registers 4

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Landroid/widget/DayPickerView;->setDate(JZ)V

    return-void
.end method

.method public setDate(JZ)V
    .registers 5

    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/widget/DayPickerView;->setDate(JZZ)V

    return-void
.end method

.method public setDayOfWeekTextAppearance(I)V
    .registers 3

    iget-object v0, p0, Landroid/widget/DayPickerView;->mAdapter:Landroid/widget/DayPickerPagerAdapter;

    invoke-virtual {v0, p1}, Landroid/widget/DayPickerPagerAdapter;->setDayOfWeekTextAppearance(I)V

    return-void
.end method

.method public setDayTextAppearance(I)V
    .registers 3

    iget-object v0, p0, Landroid/widget/DayPickerView;->mAdapter:Landroid/widget/DayPickerPagerAdapter;

    invoke-virtual {v0, p1}, Landroid/widget/DayPickerPagerAdapter;->setDayTextAppearance(I)V

    return-void
.end method

.method public setFirstDayOfWeek(I)V
    .registers 3

    iget-object v0, p0, Landroid/widget/DayPickerView;->mAdapter:Landroid/widget/DayPickerPagerAdapter;

    invoke-virtual {v0, p1}, Landroid/widget/DayPickerPagerAdapter;->setFirstDayOfWeek(I)V

    return-void
.end method

.method public setMaxDate(J)V
    .registers 4

    iget-object v0, p0, Landroid/widget/DayPickerView;->mMaxDate:Landroid/icu/util/Calendar;

    invoke-virtual {v0, p1, p2}, Landroid/icu/util/Calendar;->setTimeInMillis(J)V

    invoke-virtual {p0}, Landroid/widget/DayPickerView;->onRangeChanged()V

    return-void
.end method

.method public setMinDate(J)V
    .registers 4

    iget-object v0, p0, Landroid/widget/DayPickerView;->mMinDate:Landroid/icu/util/Calendar;

    invoke-virtual {v0, p1, p2}, Landroid/icu/util/Calendar;->setTimeInMillis(J)V

    invoke-virtual {p0}, Landroid/widget/DayPickerView;->onRangeChanged()V

    return-void
.end method

.method public setOnDaySelectedListener(Landroid/widget/DayPickerView$OnDaySelectedListener;)V
    .registers 2

    iput-object p1, p0, Landroid/widget/DayPickerView;->mOnDaySelectedListener:Landroid/widget/DayPickerView$OnDaySelectedListener;

    return-void
.end method

.method public setPosition(I)V
    .registers 4

    iget-object v0, p0, Landroid/widget/DayPickerView;->mViewPager:Lcom/android/internal/widget/ViewPager;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/android/internal/widget/ViewPager;->setCurrentItem(IZ)V

    return-void
.end method

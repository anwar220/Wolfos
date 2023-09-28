# classes4.dex

.class Landroid/widget/DatePickerCalendarDelegate;
.super Landroid/widget/DatePicker$AbstractDatePickerDelegate;


# static fields
.field private static final ANIMATION_DURATION:I = 0x12c

.field private static final ATTRS_DISABLED_ALPHA:[I

.field private static final ATTRS_TEXT_COLOR:[I

.field private static final DEFAULT_END_YEAR:I = 0x834

.field private static final DEFAULT_START_YEAR:I = 0x76c

.field private static final UNINITIALIZED:I = -0x1

.field private static final USE_LOCALE:I = 0x0

.field private static final VIEW_MONTH_DAY:I = 0x0

.field private static final VIEW_YEAR:I = 0x1


# instance fields
.field private mAnimator:Landroid/widget/ViewAnimator;

.field private mContainer:Landroid/view/ViewGroup;

.field private mCurrentView:I

.field private mDayPickerView:Landroid/widget/DayPickerView;

.field private mFirstDayOfWeek:I

.field private mHeaderMonthDay:Landroid/widget/TextView;

.field private mHeaderYear:Landroid/widget/TextView;

.field private final mMaxDate:Landroid/icu/util/Calendar;

.field private final mMinDate:Landroid/icu/util/Calendar;

.field private mMonthDayFormat:Landroid/icu/text/DateFormat;

.field private final mOnDaySelectedListener:Landroid/widget/DayPickerView$OnDaySelectedListener;

.field private final mOnHeaderClickListener:Landroid/view/View$OnClickListener;

.field private final mOnYearSelectedListener:Landroid/widget/YearPickerView$OnYearSelectedListener;

.field private mSelectDay:Ljava/lang/String;

.field private mSelectYear:Ljava/lang/String;

.field private final mTempDate:Landroid/icu/util/Calendar;

.field private mYearFormat:Landroid/icu/text/DateFormat;

.field private mYearPickerView:Landroid/widget/YearPickerView;


# direct methods
.method static bridge synthetic -$$Nest$fgetmHeaderYear(Landroid/widget/DatePickerCalendarDelegate;)Landroid/widget/TextView;
    .registers 1

    iget-object p0, p0, Landroid/widget/DatePickerCalendarDelegate;->mHeaderYear:Landroid/widget/TextView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmMaxDate(Landroid/widget/DatePickerCalendarDelegate;)Landroid/icu/util/Calendar;
    .registers 1

    iget-object p0, p0, Landroid/widget/DatePickerCalendarDelegate;->mMaxDate:Landroid/icu/util/Calendar;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmMinDate(Landroid/widget/DatePickerCalendarDelegate;)Landroid/icu/util/Calendar;
    .registers 1

    iget-object p0, p0, Landroid/widget/DatePickerCalendarDelegate;->mMinDate:Landroid/icu/util/Calendar;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$monDateChanged(Landroid/widget/DatePickerCalendarDelegate;ZZ)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/widget/DatePickerCalendarDelegate;->onDateChanged(ZZ)V

    return-void
.end method

.method static bridge synthetic -$$Nest$msetCurrentView(Landroid/widget/DatePickerCalendarDelegate;I)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/widget/DatePickerCalendarDelegate;->setCurrentView(I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$smgetDaysInMonth(II)I
    .registers 2

    invoke-static {p0, p1}, Landroid/widget/DatePickerCalendarDelegate;->getDaysInMonth(II)I

    move-result p0

    return p0
.end method

.method static constructor <clinit>()V
    .registers 4

    const/4 v0, 0x1

    new-array v1, v0, [I

    const v2, 0x1010098

    const/4 v3, 0x0

    aput v2, v1, v3

    sput-object v1, Landroid/widget/DatePickerCalendarDelegate;->ATTRS_TEXT_COLOR:[I

    new-array v0, v0, [I

    const v1, 0x1010033

    aput v1, v0, v3

    sput-object v0, Landroid/widget/DatePickerCalendarDelegate;->ATTRS_DISABLED_ALPHA:[I

    return-void
.end method

.method public constructor <init>(Landroid/widget/DatePicker;Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .registers 26

    move-object/from16 v0, p0

    invoke-direct/range {p0 .. p2}, Landroid/widget/DatePicker$AbstractDatePickerDelegate;-><init>(Landroid/widget/DatePicker;Landroid/content/Context;)V

    const/4 v1, -0x1

    iput v1, v0, Landroid/widget/DatePickerCalendarDelegate;->mCurrentView:I

    const/4 v1, 0x0

    iput v1, v0, Landroid/widget/DatePickerCalendarDelegate;->mFirstDayOfWeek:I

    new-instance v2, Landroid/widget/DatePickerCalendarDelegate$1;

    invoke-direct {v2, v0}, Landroid/widget/DatePickerCalendarDelegate$1;-><init>(Landroid/widget/DatePickerCalendarDelegate;)V

    iput-object v2, v0, Landroid/widget/DatePickerCalendarDelegate;->mOnDaySelectedListener:Landroid/widget/DayPickerView$OnDaySelectedListener;

    new-instance v3, Landroid/widget/DatePickerCalendarDelegate$2;

    invoke-direct {v3, v0}, Landroid/widget/DatePickerCalendarDelegate$2;-><init>(Landroid/widget/DatePickerCalendarDelegate;)V

    iput-object v3, v0, Landroid/widget/DatePickerCalendarDelegate;->mOnYearSelectedListener:Landroid/widget/YearPickerView$OnYearSelectedListener;

    new-instance v4, Landroid/widget/DatePickerCalendarDelegate$$ExternalSyntheticLambda0;

    invoke-direct {v4, v0}, Landroid/widget/DatePickerCalendarDelegate$$ExternalSyntheticLambda0;-><init>(Landroid/widget/DatePickerCalendarDelegate;)V

    iput-object v4, v0, Landroid/widget/DatePickerCalendarDelegate;->mOnHeaderClickListener:Landroid/view/View$OnClickListener;

    iget-object v5, v0, Landroid/widget/DatePickerCalendarDelegate;->mCurrentLocale:Ljava/util/Locale;

    invoke-static {v5}, Landroid/icu/util/Calendar;->getInstance(Ljava/util/Locale;)Landroid/icu/util/Calendar;

    move-result-object v6

    iput-object v6, v0, Landroid/widget/DatePickerCalendarDelegate;->mCurrentDate:Landroid/icu/util/Calendar;

    invoke-static {v5}, Landroid/icu/util/Calendar;->getInstance(Ljava/util/Locale;)Landroid/icu/util/Calendar;

    move-result-object v6

    iput-object v6, v0, Landroid/widget/DatePickerCalendarDelegate;->mTempDate:Landroid/icu/util/Calendar;

    invoke-static {v5}, Landroid/icu/util/Calendar;->getInstance(Ljava/util/Locale;)Landroid/icu/util/Calendar;

    move-result-object v6

    iput-object v6, v0, Landroid/widget/DatePickerCalendarDelegate;->mMinDate:Landroid/icu/util/Calendar;

    invoke-static {v5}, Landroid/icu/util/Calendar;->getInstance(Ljava/util/Locale;)Landroid/icu/util/Calendar;

    move-result-object v7

    iput-object v7, v0, Landroid/widget/DatePickerCalendarDelegate;->mMaxDate:Landroid/icu/util/Calendar;

    const/16 v8, 0x76c

    const/4 v9, 0x1

    invoke-virtual {v6, v8, v1, v9}, Landroid/icu/util/Calendar;->set(III)V

    const/16 v8, 0x834

    const/16 v10, 0xb

    const/16 v11, 0x1f

    invoke-virtual {v7, v8, v10, v11}, Landroid/icu/util/Calendar;->set(III)V

    iget-object v8, v0, Landroid/widget/DatePickerCalendarDelegate;->mDelegator:Landroid/widget/DatePicker;

    invoke-virtual {v8}, Landroid/widget/DatePicker;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    iget-object v10, v0, Landroid/widget/DatePickerCalendarDelegate;->mContext:Landroid/content/Context;

    sget-object v11, Lcom/android/internal/R$styleable;->DatePicker:[I

    move-object/from16 v12, p3

    move/from16 v13, p4

    move/from16 v14, p5

    invoke-virtual {v10, v12, v11, v13, v14}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v10

    iget-object v11, v0, Landroid/widget/DatePickerCalendarDelegate;->mContext:Landroid/content/Context;

    const-string/jumbo v15, "layout_inflater"

    invoke-virtual {v11, v15}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/view/LayoutInflater;

    const/16 v15, 0x13

    const v9, 0x109006b

    invoke-virtual {v10, v15, v9}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v9

    iget-object v15, v0, Landroid/widget/DatePickerCalendarDelegate;->mDelegator:Landroid/widget/DatePicker;

    invoke-virtual {v11, v9, v15, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v15

    check-cast v15, Landroid/view/ViewGroup;

    iput-object v15, v0, Landroid/widget/DatePickerCalendarDelegate;->mContainer:Landroid/view/ViewGroup;

    invoke-virtual {v15, v1}, Landroid/view/ViewGroup;->setSaveFromParentEnabled(Z)V

    iget-object v15, v0, Landroid/widget/DatePickerCalendarDelegate;->mDelegator:Landroid/widget/DatePicker;

    iget-object v1, v0, Landroid/widget/DatePickerCalendarDelegate;->mContainer:Landroid/view/ViewGroup;

    invoke-virtual {v15, v1}, Landroid/widget/DatePicker;->addView(Landroid/view/View;)V

    iget-object v1, v0, Landroid/widget/DatePickerCalendarDelegate;->mContainer:Landroid/view/ViewGroup;

    const v15, 0x1020291

    invoke-virtual {v1, v15}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    const v15, 0x1020293

    invoke-virtual {v1, v15}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v15

    check-cast v15, Landroid/widget/TextView;

    iput-object v15, v0, Landroid/widget/DatePickerCalendarDelegate;->mHeaderYear:Landroid/widget/TextView;

    invoke-virtual {v15, v4}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v15, 0x1020292

    invoke-virtual {v1, v15}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v15

    check-cast v15, Landroid/widget/TextView;

    iput-object v15, v0, Landroid/widget/DatePickerCalendarDelegate;->mHeaderMonthDay:Landroid/widget/TextView;

    invoke-virtual {v15, v4}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/4 v4, 0x0

    const/16 v15, 0xa

    move-object/from16 v16, v4

    const/4 v4, 0x0

    invoke-virtual {v10, v15, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v15

    if-eqz v15, :cond_d5

    iget-object v4, v0, Landroid/widget/DatePickerCalendarDelegate;->mContext:Landroid/content/Context;

    move-object/from16 v17, v5

    const/4 v5, 0x0

    move/from16 v18, v9

    sget-object v9, Landroid/widget/DatePickerCalendarDelegate;->ATTRS_TEXT_COLOR:[I

    move-object/from16 v19, v11

    const/4 v11, 0x0

    invoke-virtual {v4, v5, v9, v11, v15}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v4

    invoke-virtual {v4, v11}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v5

    invoke-direct {v0, v5}, Landroid/widget/DatePickerCalendarDelegate;->applyLegacyColorFixes(Landroid/content/res/ColorStateList;)Landroid/content/res/ColorStateList;

    move-result-object v9

    invoke-virtual {v4}, Landroid/content/res/TypedArray;->recycle()V

    move-object v4, v9

    goto :goto_dd

    :cond_d5
    move-object/from16 v17, v5

    move/from16 v18, v9

    move-object/from16 v19, v11

    move-object/from16 v4, v16

    :goto_dd
    if-nez v4, :cond_e5

    const/16 v5, 0x12

    invoke-virtual {v10, v5}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v4

    :cond_e5
    if-eqz v4, :cond_f1

    iget-object v5, v0, Landroid/widget/DatePickerCalendarDelegate;->mHeaderYear:Landroid/widget/TextView;

    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    iget-object v5, v0, Landroid/widget/DatePickerCalendarDelegate;->mHeaderMonthDay:Landroid/widget/TextView;

    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    :cond_f1
    const/4 v5, 0x0

    invoke-virtual {v10, v5}, Landroid/content/res/TypedArray;->hasValueOrEmpty(I)Z

    move-result v9

    if-eqz v9, :cond_ff

    invoke-virtual {v10, v5}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    invoke-virtual {v1, v9}, Landroid/view/ViewGroup;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_ff
    invoke-virtual {v10}, Landroid/content/res/TypedArray;->recycle()V

    iget-object v5, v0, Landroid/widget/DatePickerCalendarDelegate;->mContainer:Landroid/view/ViewGroup;

    const v9, 0x10201ed

    invoke-virtual {v5, v9}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ViewAnimator;

    iput-object v5, v0, Landroid/widget/DatePickerCalendarDelegate;->mAnimator:Landroid/widget/ViewAnimator;

    const v9, 0x1020290

    invoke-virtual {v5, v9}, Landroid/widget/ViewAnimator;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/DayPickerView;

    iput-object v5, v0, Landroid/widget/DatePickerCalendarDelegate;->mDayPickerView:Landroid/widget/DayPickerView;

    iget v9, v0, Landroid/widget/DatePickerCalendarDelegate;->mFirstDayOfWeek:I

    invoke-virtual {v5, v9}, Landroid/widget/DayPickerView;->setFirstDayOfWeek(I)V

    iget-object v5, v0, Landroid/widget/DatePickerCalendarDelegate;->mDayPickerView:Landroid/widget/DayPickerView;

    move-object v11, v10

    invoke-virtual {v6}, Landroid/icu/util/Calendar;->getTimeInMillis()J

    move-result-wide v9

    invoke-virtual {v5, v9, v10}, Landroid/widget/DayPickerView;->setMinDate(J)V

    iget-object v5, v0, Landroid/widget/DatePickerCalendarDelegate;->mDayPickerView:Landroid/widget/DayPickerView;

    invoke-virtual {v7}, Landroid/icu/util/Calendar;->getTimeInMillis()J

    move-result-wide v9

    invoke-virtual {v5, v9, v10}, Landroid/widget/DayPickerView;->setMaxDate(J)V

    iget-object v5, v0, Landroid/widget/DatePickerCalendarDelegate;->mDayPickerView:Landroid/widget/DayPickerView;

    iget-object v9, v0, Landroid/widget/DatePickerCalendarDelegate;->mCurrentDate:Landroid/icu/util/Calendar;

    invoke-virtual {v9}, Landroid/icu/util/Calendar;->getTimeInMillis()J

    move-result-wide v9

    invoke-virtual {v5, v9, v10}, Landroid/widget/DayPickerView;->setDate(J)V

    iget-object v5, v0, Landroid/widget/DatePickerCalendarDelegate;->mDayPickerView:Landroid/widget/DayPickerView;

    invoke-virtual {v5, v2}, Landroid/widget/DayPickerView;->setOnDaySelectedListener(Landroid/widget/DayPickerView$OnDaySelectedListener;)V

    iget-object v2, v0, Landroid/widget/DatePickerCalendarDelegate;->mAnimator:Landroid/widget/ViewAnimator;

    const v5, 0x1020294

    invoke-virtual {v2, v5}, Landroid/widget/ViewAnimator;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/YearPickerView;

    iput-object v2, v0, Landroid/widget/DatePickerCalendarDelegate;->mYearPickerView:Landroid/widget/YearPickerView;

    invoke-virtual {v2, v6, v7}, Landroid/widget/YearPickerView;->setRange(Landroid/icu/util/Calendar;Landroid/icu/util/Calendar;)V

    iget-object v2, v0, Landroid/widget/DatePickerCalendarDelegate;->mYearPickerView:Landroid/widget/YearPickerView;

    iget-object v5, v0, Landroid/widget/DatePickerCalendarDelegate;->mCurrentDate:Landroid/icu/util/Calendar;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/icu/util/Calendar;->get(I)I

    move-result v5

    invoke-virtual {v2, v5}, Landroid/widget/YearPickerView;->setYear(I)V

    iget-object v2, v0, Landroid/widget/DatePickerCalendarDelegate;->mYearPickerView:Landroid/widget/YearPickerView;

    invoke-virtual {v2, v3}, Landroid/widget/YearPickerView;->setOnYearSelectedListener(Landroid/widget/YearPickerView$OnYearSelectedListener;)V

    const v2, 0x1040894

    invoke-virtual {v8, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Landroid/widget/DatePickerCalendarDelegate;->mSelectDay:Ljava/lang/String;

    const v2, 0x104089a

    invoke-virtual {v8, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Landroid/widget/DatePickerCalendarDelegate;->mSelectYear:Ljava/lang/String;

    iget-object v2, v0, Landroid/widget/DatePickerCalendarDelegate;->mCurrentLocale:Ljava/util/Locale;

    invoke-virtual {v0, v2}, Landroid/widget/DatePickerCalendarDelegate;->onLocaleChanged(Ljava/util/Locale;)V

    const/4 v2, 0x0

    invoke-direct {v0, v2}, Landroid/widget/DatePickerCalendarDelegate;->setCurrentView(I)V

    return-void
.end method

.method private applyLegacyColorFixes(Landroid/content/res/ColorStateList;)Landroid/content/res/ColorStateList;
    .registers 10

    if-eqz p1, :cond_69

    const v0, 0x10102fe

    invoke-virtual {p1, v0}, Landroid/content/res/ColorStateList;->hasState(I)Z

    move-result v1

    if-eqz v1, :cond_c

    goto :goto_69

    :cond_c
    const v1, 0x10100a1

    invoke-virtual {p1, v1}, Landroid/content/res/ColorStateList;->hasState(I)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_2b

    const/16 v1, 0xa

    invoke-static {v1}, Landroid/util/StateSet;->get(I)[I

    move-result-object v1

    invoke-virtual {p1, v1, v2}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v1

    const/16 v3, 0x8

    invoke-static {v3}, Landroid/util/StateSet;->get(I)[I

    move-result-object v3

    invoke-virtual {p1, v3, v2}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v3

    goto :goto_46

    :cond_2b
    invoke-virtual {p1}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v1

    iget-object v3, p0, Landroid/widget/DatePickerCalendarDelegate;->mContext:Landroid/content/Context;

    sget-object v4, Landroid/widget/DatePickerCalendarDelegate;->ATTRS_DISABLED_ALPHA:[I

    invoke-virtual {v3, v4}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v3

    const v4, 0x3e99999a  # 0.3f

    invoke-virtual {v3, v2, v4}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v4

    invoke-virtual {v3}, Landroid/content/res/TypedArray;->recycle()V

    invoke-direct {p0, v1, v4}, Landroid/widget/DatePickerCalendarDelegate;->multiplyAlphaComponent(IF)I

    move-result v5

    move v3, v5

    :goto_46
    if-eqz v1, :cond_67

    if-nez v3, :cond_4b

    goto :goto_67

    :cond_4b
    const/4 v4, 0x2

    new-array v5, v4, [[I

    const/4 v6, 0x1

    new-array v7, v6, [I

    aput v0, v7, v2

    aput-object v7, v5, v2

    new-array v0, v2, [I

    aput-object v0, v5, v6

    move-object v0, v5

    new-array v4, v4, [I

    aput v1, v4, v2

    aput v3, v4, v6

    move-object v2, v4

    new-instance v4, Landroid/content/res/ColorStateList;

    invoke-direct {v4, v0, v2}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    return-object v4

    :cond_67
    :goto_67
    const/4 v0, 0x0

    return-object v0

    :cond_69
    :goto_69
    return-object p1
.end method

.method private static getDaysInMonth(II)I
    .registers 4

    packed-switch p0, :pswitch_data_24

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid Month"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_b  #0x3, 0x5, 0x8, 0xa
    const/16 v0, 0x1e

    return v0

    :pswitch_e  #0x1
    rem-int/lit8 v0, p1, 0x4

    if-nez v0, :cond_1d

    rem-int/lit8 v0, p1, 0x64

    if-nez v0, :cond_1a

    rem-int/lit16 v0, p1, 0x190

    if-nez v0, :cond_1d

    :cond_1a
    const/16 v0, 0x1d

    goto :goto_1f

    :cond_1d
    const/16 v0, 0x1c

    :goto_1f
    return v0

    :pswitch_20  #0x0, 0x2, 0x4, 0x6, 0x7, 0x9, 0xb
    const/16 v0, 0x1f

    return v0

    nop

    :pswitch_data_24
    .packed-switch 0x0
        :pswitch_20  #00000000
        :pswitch_e  #00000001
        :pswitch_20  #00000002
        :pswitch_b  #00000003
        :pswitch_20  #00000004
        :pswitch_b  #00000005
        :pswitch_20  #00000006
        :pswitch_20  #00000007
        :pswitch_b  #00000008
        :pswitch_20  #00000009
        :pswitch_b  #0000000a
        :pswitch_20  #0000000b
    .end packed-switch
.end method

.method private multiplyAlphaComponent(IF)I
    .registers 7

    const v0, 0xffffff

    and-int/2addr v0, p1

    shr-int/lit8 v1, p1, 0x18

    and-int/lit16 v1, v1, 0xff

    int-to-float v2, v1

    mul-float/2addr v2, p2

    const/high16 v3, 0x3f000000  # 0.5f

    add-float/2addr v2, v3

    float-to-int v2, v2

    shl-int/lit8 v3, v2, 0x18

    or-int/2addr v3, v0

    return v3
.end method

.method private onCurrentDateChanged(Z)V
    .registers 6

    iget-object v0, p0, Landroid/widget/DatePickerCalendarDelegate;->mHeaderYear:Landroid/widget/TextView;

    if-nez v0, :cond_5

    return-void

    :cond_5
    iget-object v0, p0, Landroid/widget/DatePickerCalendarDelegate;->mYearFormat:Landroid/icu/text/DateFormat;

    iget-object v1, p0, Landroid/widget/DatePickerCalendarDelegate;->mCurrentDate:Landroid/icu/util/Calendar;

    invoke-virtual {v1}, Landroid/icu/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/icu/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Landroid/widget/DatePickerCalendarDelegate;->mHeaderYear:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Landroid/widget/DatePickerCalendarDelegate;->mMonthDayFormat:Landroid/icu/text/DateFormat;

    iget-object v2, p0, Landroid/widget/DatePickerCalendarDelegate;->mCurrentDate:Landroid/icu/util/Calendar;

    invoke-virtual {v2}, Landroid/icu/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/icu/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Landroid/widget/DatePickerCalendarDelegate;->mHeaderMonthDay:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    if-eqz p1, :cond_32

    iget-object v2, p0, Landroid/widget/DatePickerCalendarDelegate;->mAnimator:Landroid/widget/ViewAnimator;

    invoke-virtual {p0}, Landroid/widget/DatePickerCalendarDelegate;->getFormattedCurrentDate()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ViewAnimator;->announceForAccessibility(Ljava/lang/CharSequence;)V

    :cond_32
    return-void
.end method

.method private onDateChanged(ZZ)V
    .registers 8

    iget-object v0, p0, Landroid/widget/DatePickerCalendarDelegate;->mCurrentDate:Landroid/icu/util/Calendar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/icu/util/Calendar;->get(I)I

    move-result v0

    if-eqz p2, :cond_35

    iget-object v1, p0, Landroid/widget/DatePickerCalendarDelegate;->mOnDateChangedListener:Landroid/widget/DatePicker$OnDateChangedListener;

    if-nez v1, :cond_11

    iget-object v1, p0, Landroid/widget/DatePickerCalendarDelegate;->mAutoFillChangeListener:Landroid/widget/DatePicker$OnDateChangedListener;

    if-eqz v1, :cond_35

    :cond_11
    iget-object v1, p0, Landroid/widget/DatePickerCalendarDelegate;->mCurrentDate:Landroid/icu/util/Calendar;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/icu/util/Calendar;->get(I)I

    move-result v1

    iget-object v2, p0, Landroid/widget/DatePickerCalendarDelegate;->mCurrentDate:Landroid/icu/util/Calendar;

    const/4 v3, 0x5

    invoke-virtual {v2, v3}, Landroid/icu/util/Calendar;->get(I)I

    move-result v2

    iget-object v3, p0, Landroid/widget/DatePickerCalendarDelegate;->mOnDateChangedListener:Landroid/widget/DatePicker$OnDateChangedListener;

    if-eqz v3, :cond_2a

    iget-object v3, p0, Landroid/widget/DatePickerCalendarDelegate;->mOnDateChangedListener:Landroid/widget/DatePicker$OnDateChangedListener;

    iget-object v4, p0, Landroid/widget/DatePickerCalendarDelegate;->mDelegator:Landroid/widget/DatePicker;

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/widget/DatePicker$OnDateChangedListener;->onDateChanged(Landroid/widget/DatePicker;III)V

    :cond_2a
    iget-object v3, p0, Landroid/widget/DatePickerCalendarDelegate;->mAutoFillChangeListener:Landroid/widget/DatePicker$OnDateChangedListener;

    if-eqz v3, :cond_35

    iget-object v3, p0, Landroid/widget/DatePickerCalendarDelegate;->mAutoFillChangeListener:Landroid/widget/DatePicker$OnDateChangedListener;

    iget-object v4, p0, Landroid/widget/DatePickerCalendarDelegate;->mDelegator:Landroid/widget/DatePicker;

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/widget/DatePicker$OnDateChangedListener;->onDateChanged(Landroid/widget/DatePicker;III)V

    :cond_35
    iget-object v1, p0, Landroid/widget/DatePickerCalendarDelegate;->mDayPickerView:Landroid/widget/DayPickerView;

    iget-object v2, p0, Landroid/widget/DatePickerCalendarDelegate;->mCurrentDate:Landroid/icu/util/Calendar;

    invoke-virtual {v2}, Landroid/icu/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Landroid/widget/DayPickerView;->setDate(J)V

    iget-object v1, p0, Landroid/widget/DatePickerCalendarDelegate;->mYearPickerView:Landroid/widget/YearPickerView;

    invoke-virtual {v1, v0}, Landroid/widget/YearPickerView;->setYear(I)V

    invoke-direct {p0, p1}, Landroid/widget/DatePickerCalendarDelegate;->onCurrentDateChanged(Z)V

    if-eqz p1, :cond_4d

    invoke-direct {p0}, Landroid/widget/DatePickerCalendarDelegate;->tryVibrate()V

    :cond_4d
    return-void
.end method

.method private setCurrentView(I)V
    .registers 7

    const/4 v0, 0x0

    const/4 v1, 0x1

    packed-switch p1, :pswitch_data_62

    goto :goto_60

    :pswitch_6  #0x1
    iget-object v2, p0, Landroid/widget/DatePickerCalendarDelegate;->mCurrentDate:Landroid/icu/util/Calendar;

    invoke-virtual {v2, v1}, Landroid/icu/util/Calendar;->get(I)I

    move-result v2

    iget-object v3, p0, Landroid/widget/DatePickerCalendarDelegate;->mYearPickerView:Landroid/widget/YearPickerView;

    invoke-virtual {v3, v2}, Landroid/widget/YearPickerView;->setYear(I)V

    iget-object v3, p0, Landroid/widget/DatePickerCalendarDelegate;->mYearPickerView:Landroid/widget/YearPickerView;

    new-instance v4, Landroid/widget/DatePickerCalendarDelegate$$ExternalSyntheticLambda1;

    invoke-direct {v4, p0}, Landroid/widget/DatePickerCalendarDelegate$$ExternalSyntheticLambda1;-><init>(Landroid/widget/DatePickerCalendarDelegate;)V

    invoke-virtual {v3, v4}, Landroid/widget/YearPickerView;->post(Ljava/lang/Runnable;)Z

    iget v3, p0, Landroid/widget/DatePickerCalendarDelegate;->mCurrentView:I

    if-eq v3, p1, :cond_30

    iget-object v3, p0, Landroid/widget/DatePickerCalendarDelegate;->mHeaderMonthDay:Landroid/widget/TextView;

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setActivated(Z)V

    iget-object v0, p0, Landroid/widget/DatePickerCalendarDelegate;->mHeaderYear:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setActivated(Z)V

    iget-object v0, p0, Landroid/widget/DatePickerCalendarDelegate;->mAnimator:Landroid/widget/ViewAnimator;

    invoke-virtual {v0, v1}, Landroid/widget/ViewAnimator;->setDisplayedChild(I)V

    iput p1, p0, Landroid/widget/DatePickerCalendarDelegate;->mCurrentView:I

    :cond_30
    iget-object v0, p0, Landroid/widget/DatePickerCalendarDelegate;->mAnimator:Landroid/widget/ViewAnimator;

    iget-object v1, p0, Landroid/widget/DatePickerCalendarDelegate;->mSelectYear:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/ViewAnimator;->announceForAccessibility(Ljava/lang/CharSequence;)V

    goto :goto_60

    :pswitch_38  #0x0
    iget-object v2, p0, Landroid/widget/DatePickerCalendarDelegate;->mDayPickerView:Landroid/widget/DayPickerView;

    iget-object v3, p0, Landroid/widget/DatePickerCalendarDelegate;->mCurrentDate:Landroid/icu/util/Calendar;

    invoke-virtual {v3}, Landroid/icu/util/Calendar;->getTimeInMillis()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Landroid/widget/DayPickerView;->setDate(J)V

    iget v2, p0, Landroid/widget/DatePickerCalendarDelegate;->mCurrentView:I

    if-eq v2, p1, :cond_58

    iget-object v2, p0, Landroid/widget/DatePickerCalendarDelegate;->mHeaderMonthDay:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setActivated(Z)V

    iget-object v1, p0, Landroid/widget/DatePickerCalendarDelegate;->mHeaderYear:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setActivated(Z)V

    iget-object v1, p0, Landroid/widget/DatePickerCalendarDelegate;->mAnimator:Landroid/widget/ViewAnimator;

    invoke-virtual {v1, v0}, Landroid/widget/ViewAnimator;->setDisplayedChild(I)V

    iput p1, p0, Landroid/widget/DatePickerCalendarDelegate;->mCurrentView:I

    :cond_58
    iget-object v0, p0, Landroid/widget/DatePickerCalendarDelegate;->mAnimator:Landroid/widget/ViewAnimator;

    iget-object v1, p0, Landroid/widget/DatePickerCalendarDelegate;->mSelectDay:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/ViewAnimator;->announceForAccessibility(Ljava/lang/CharSequence;)V

    nop

    :goto_60
    return-void

    nop

    :pswitch_data_62
    .packed-switch 0x0
        :pswitch_38  #00000000
        :pswitch_6  #00000001
    .end packed-switch
.end method

.method private setDate(III)V
    .registers 6

    iget-object v0, p0, Landroid/widget/DatePickerCalendarDelegate;->mCurrentDate:Landroid/icu/util/Calendar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Landroid/icu/util/Calendar;->set(II)V

    iget-object v0, p0, Landroid/widget/DatePickerCalendarDelegate;->mCurrentDate:Landroid/icu/util/Calendar;

    const/4 v1, 0x2

    invoke-virtual {v0, v1, p2}, Landroid/icu/util/Calendar;->set(II)V

    iget-object v0, p0, Landroid/widget/DatePickerCalendarDelegate;->mCurrentDate:Landroid/icu/util/Calendar;

    const/4 v1, 0x5

    invoke-virtual {v0, v1, p3}, Landroid/icu/util/Calendar;->set(II)V

    invoke-virtual {p0}, Landroid/widget/DatePickerCalendarDelegate;->resetAutofilledValue()V

    return-void
.end method

.method private tryVibrate()V
    .registers 3

    iget-object v0, p0, Landroid/widget/DatePickerCalendarDelegate;->mDelegator:Landroid/widget/DatePicker;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/widget/DatePicker;->performHapticFeedback(I)Z

    return-void
.end method


# virtual methods
.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .registers 3

    invoke-virtual {p0, p1}, Landroid/widget/DatePickerCalendarDelegate;->onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    const/4 v0, 0x1

    return v0
.end method

.method public getAccessibilityClassName()Ljava/lang/CharSequence;
    .registers 2

    const-class v0, Landroid/widget/DatePicker;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCalendarView()Landroid/widget/CalendarView;
    .registers 3

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Not supported by calendar-mode DatePicker"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getCalendarViewShown()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public getDayOfMonth()I
    .registers 3

    iget-object v0, p0, Landroid/widget/DatePickerCalendarDelegate;->mCurrentDate:Landroid/icu/util/Calendar;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/icu/util/Calendar;->get(I)I

    move-result v0

    return v0
.end method

.method public getFirstDayOfWeek()I
    .registers 2

    iget v0, p0, Landroid/widget/DatePickerCalendarDelegate;->mFirstDayOfWeek:I

    if-eqz v0, :cond_5

    return v0

    :cond_5
    iget-object v0, p0, Landroid/widget/DatePickerCalendarDelegate;->mCurrentDate:Landroid/icu/util/Calendar;

    invoke-virtual {v0}, Landroid/icu/util/Calendar;->getFirstDayOfWeek()I

    move-result v0

    return v0
.end method

.method public getMaxDate()Landroid/icu/util/Calendar;
    .registers 2

    iget-object v0, p0, Landroid/widget/DatePickerCalendarDelegate;->mMaxDate:Landroid/icu/util/Calendar;

    return-object v0
.end method

.method public getMinDate()Landroid/icu/util/Calendar;
    .registers 2

    iget-object v0, p0, Landroid/widget/DatePickerCalendarDelegate;->mMinDate:Landroid/icu/util/Calendar;

    return-object v0
.end method

.method public getMonth()I
    .registers 3

    iget-object v0, p0, Landroid/widget/DatePickerCalendarDelegate;->mCurrentDate:Landroid/icu/util/Calendar;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/icu/util/Calendar;->get(I)I

    move-result v0

    return v0
.end method

.method public getSpinnersShown()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public getYear()I
    .registers 3

    iget-object v0, p0, Landroid/widget/DatePickerCalendarDelegate;->mCurrentDate:Landroid/icu/util/Calendar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/icu/util/Calendar;->get(I)I

    move-result v0

    return v0
.end method

.method public init(IIILandroid/widget/DatePicker$OnDateChangedListener;)V
    .registers 6

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/DatePickerCalendarDelegate;->setDate(III)V

    const/4 v0, 0x0

    invoke-direct {p0, v0, v0}, Landroid/widget/DatePickerCalendarDelegate;->onDateChanged(ZZ)V

    iput-object p4, p0, Landroid/widget/DatePickerCalendarDelegate;->mOnDateChangedListener:Landroid/widget/DatePicker$OnDateChangedListener;

    return-void
.end method

.method public isEnabled()Z
    .registers 2

    iget-object v0, p0, Landroid/widget/DatePickerCalendarDelegate;->mContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->isEnabled()Z

    move-result v0

    return v0
.end method

.method synthetic lambda$new$0$android-widget-DatePickerCalendarDelegate(Landroid/view/View;)V
    .registers 3

    invoke-direct {p0}, Landroid/widget/DatePickerCalendarDelegate;->tryVibrate()V

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_16

    goto :goto_14

    :pswitch_b  #0x1020293
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/widget/DatePickerCalendarDelegate;->setCurrentView(I)V

    goto :goto_14

    :pswitch_10  #0x1020292
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/widget/DatePickerCalendarDelegate;->setCurrentView(I)V

    :goto_14
    return-void

    nop

    :pswitch_data_16
    .packed-switch 0x1020292
        :pswitch_10  #01020292
        :pswitch_b  #01020293
    .end packed-switch
.end method

.method synthetic lambda$setCurrentView$1$android-widget-DatePickerCalendarDelegate()V
    .registers 2

    iget-object v0, p0, Landroid/widget/DatePickerCalendarDelegate;->mYearPickerView:Landroid/widget/YearPickerView;

    invoke-virtual {v0}, Landroid/widget/YearPickerView;->requestFocus()Z

    iget-object v0, p0, Landroid/widget/DatePickerCalendarDelegate;->mYearPickerView:Landroid/widget/YearPickerView;

    invoke-virtual {v0}, Landroid/widget/YearPickerView;->getSelectedView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_10

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    :cond_10
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 3

    iget-object v0, p1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {p0, v0}, Landroid/widget/DatePickerCalendarDelegate;->setCurrentLocale(Ljava/util/Locale;)V

    return-void
.end method

.method protected onLocaleChanged(Ljava/util/Locale;)V
    .registers 5

    iget-object v0, p0, Landroid/widget/DatePickerCalendarDelegate;->mHeaderYear:Landroid/widget/TextView;

    if-nez v0, :cond_5

    return-void

    :cond_5
    const-string v1, "EMMMd"

    invoke-static {v1, p1}, Landroid/icu/text/DateFormat;->getInstanceForSkeleton(Ljava/lang/String;Ljava/util/Locale;)Landroid/icu/text/DateFormat;

    move-result-object v1

    iput-object v1, p0, Landroid/widget/DatePickerCalendarDelegate;->mMonthDayFormat:Landroid/icu/text/DateFormat;

    sget-object v2, Landroid/icu/text/DisplayContext;->CAPITALIZATION_FOR_STANDALONE:Landroid/icu/text/DisplayContext;

    invoke-virtual {v1, v2}, Landroid/icu/text/DateFormat;->setContext(Landroid/icu/text/DisplayContext;)V

    const-string/jumbo v1, "y"

    invoke-static {v1, p1}, Landroid/icu/text/DateFormat;->getInstanceForSkeleton(Ljava/lang/String;Ljava/util/Locale;)Landroid/icu/text/DateFormat;

    move-result-object v1

    iput-object v1, p0, Landroid/widget/DatePickerCalendarDelegate;->mYearFormat:Landroid/icu/text/DateFormat;

    const/4 v1, 0x0

    invoke-direct {p0, v1}, Landroid/widget/DatePickerCalendarDelegate;->onCurrentDateChanged(Z)V

    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .registers 7

    instance-of v0, p1, Landroid/widget/DatePicker$AbstractDatePickerDelegate$SavedState;

    if-eqz v0, :cond_50

    move-object v0, p1

    check-cast v0, Landroid/widget/DatePicker$AbstractDatePickerDelegate$SavedState;

    iget-object v1, p0, Landroid/widget/DatePickerCalendarDelegate;->mCurrentDate:Landroid/icu/util/Calendar;

    invoke-virtual {v0}, Landroid/widget/DatePicker$AbstractDatePickerDelegate$SavedState;->getSelectedYear()I

    move-result v2

    invoke-virtual {v0}, Landroid/widget/DatePicker$AbstractDatePickerDelegate$SavedState;->getSelectedMonth()I

    move-result v3

    invoke-virtual {v0}, Landroid/widget/DatePicker$AbstractDatePickerDelegate$SavedState;->getSelectedDay()I

    move-result v4

    invoke-virtual {v1, v2, v3, v4}, Landroid/icu/util/Calendar;->set(III)V

    iget-object v1, p0, Landroid/widget/DatePickerCalendarDelegate;->mMinDate:Landroid/icu/util/Calendar;

    invoke-virtual {v0}, Landroid/widget/DatePicker$AbstractDatePickerDelegate$SavedState;->getMinDate()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Landroid/icu/util/Calendar;->setTimeInMillis(J)V

    iget-object v1, p0, Landroid/widget/DatePickerCalendarDelegate;->mMaxDate:Landroid/icu/util/Calendar;

    invoke-virtual {v0}, Landroid/widget/DatePicker$AbstractDatePickerDelegate$SavedState;->getMaxDate()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Landroid/icu/util/Calendar;->setTimeInMillis(J)V

    const/4 v1, 0x0

    invoke-direct {p0, v1}, Landroid/widget/DatePickerCalendarDelegate;->onCurrentDateChanged(Z)V

    invoke-virtual {v0}, Landroid/widget/DatePicker$AbstractDatePickerDelegate$SavedState;->getCurrentView()I

    move-result v1

    invoke-direct {p0, v1}, Landroid/widget/DatePickerCalendarDelegate;->setCurrentView(I)V

    invoke-virtual {v0}, Landroid/widget/DatePicker$AbstractDatePickerDelegate$SavedState;->getListPosition()I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_50

    if-nez v1, :cond_44

    iget-object v3, p0, Landroid/widget/DatePickerCalendarDelegate;->mDayPickerView:Landroid/widget/DayPickerView;

    invoke-virtual {v3, v2}, Landroid/widget/DayPickerView;->setPosition(I)V

    goto :goto_50

    :cond_44
    const/4 v3, 0x1

    if-ne v1, v3, :cond_50

    invoke-virtual {v0}, Landroid/widget/DatePicker$AbstractDatePickerDelegate$SavedState;->getListPositionOffset()I

    move-result v3

    iget-object v4, p0, Landroid/widget/DatePickerCalendarDelegate;->mYearPickerView:Landroid/widget/YearPickerView;

    invoke-virtual {v4, v2, v3}, Landroid/widget/YearPickerView;->setSelectionFromTop(II)V

    :cond_50
    :goto_50
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Parcelable;)Landroid/os/Parcelable;
    .registers 21

    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/widget/DatePickerCalendarDelegate;->mCurrentDate:Landroid/icu/util/Calendar;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/icu/util/Calendar;->get(I)I

    move-result v1

    iget-object v3, v0, Landroid/widget/DatePickerCalendarDelegate;->mCurrentDate:Landroid/icu/util/Calendar;

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Landroid/icu/util/Calendar;->get(I)I

    move-result v15

    iget-object v3, v0, Landroid/widget/DatePickerCalendarDelegate;->mCurrentDate:Landroid/icu/util/Calendar;

    const/4 v4, 0x5

    invoke-virtual {v3, v4}, Landroid/icu/util/Calendar;->get(I)I

    move-result v16

    const/4 v3, -0x1

    const/4 v4, -0x1

    iget v5, v0, Landroid/widget/DatePickerCalendarDelegate;->mCurrentView:I

    if-nez v5, :cond_27

    iget-object v2, v0, Landroid/widget/DatePickerCalendarDelegate;->mDayPickerView:Landroid/widget/DayPickerView;

    invoke-virtual {v2}, Landroid/widget/DayPickerView;->getMostVisiblePosition()I

    move-result v3

    move v2, v3

    move/from16 v17, v4

    goto :goto_3c

    :cond_27
    if-ne v5, v2, :cond_39

    iget-object v2, v0, Landroid/widget/DatePickerCalendarDelegate;->mYearPickerView:Landroid/widget/YearPickerView;

    invoke-virtual {v2}, Landroid/widget/YearPickerView;->getFirstVisiblePosition()I

    move-result v3

    iget-object v2, v0, Landroid/widget/DatePickerCalendarDelegate;->mYearPickerView:Landroid/widget/YearPickerView;

    invoke-virtual {v2}, Landroid/widget/YearPickerView;->getFirstPositionOffset()I

    move-result v4

    move v2, v3

    move/from16 v17, v4

    goto :goto_3c

    :cond_39
    move v2, v3

    move/from16 v17, v4

    :goto_3c
    new-instance v18, Landroid/widget/DatePicker$AbstractDatePickerDelegate$SavedState;

    iget-object v3, v0, Landroid/widget/DatePickerCalendarDelegate;->mMinDate:Landroid/icu/util/Calendar;

    invoke-virtual {v3}, Landroid/icu/util/Calendar;->getTimeInMillis()J

    move-result-wide v8

    iget-object v3, v0, Landroid/widget/DatePickerCalendarDelegate;->mMaxDate:Landroid/icu/util/Calendar;

    invoke-virtual {v3}, Landroid/icu/util/Calendar;->getTimeInMillis()J

    move-result-wide v10

    iget v12, v0, Landroid/widget/DatePickerCalendarDelegate;->mCurrentView:I

    move-object/from16 v3, v18

    move-object/from16 v4, p1

    move v5, v1

    move v6, v15

    move/from16 v7, v16

    move v13, v2

    move/from16 v14, v17

    invoke-direct/range {v3 .. v14}, Landroid/widget/DatePicker$AbstractDatePickerDelegate$SavedState;-><init>(Landroid/os/Parcelable;IIIJJIII)V

    return-object v18
.end method

.method public setCalendarViewShown(Z)V
    .registers 2

    return-void
.end method

.method public setEnabled(Z)V
    .registers 3

    iget-object v0, p0, Landroid/widget/DatePickerCalendarDelegate;->mContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->setEnabled(Z)V

    iget-object v0, p0, Landroid/widget/DatePickerCalendarDelegate;->mDayPickerView:Landroid/widget/DayPickerView;

    invoke-virtual {v0, p1}, Landroid/widget/DayPickerView;->setEnabled(Z)V

    iget-object v0, p0, Landroid/widget/DatePickerCalendarDelegate;->mYearPickerView:Landroid/widget/YearPickerView;

    invoke-virtual {v0, p1}, Landroid/widget/YearPickerView;->setEnabled(Z)V

    iget-object v0, p0, Landroid/widget/DatePickerCalendarDelegate;->mHeaderYear:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    iget-object v0, p0, Landroid/widget/DatePickerCalendarDelegate;->mHeaderMonthDay:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    return-void
.end method

.method public setFirstDayOfWeek(I)V
    .registers 3

    iput p1, p0, Landroid/widget/DatePickerCalendarDelegate;->mFirstDayOfWeek:I

    iget-object v0, p0, Landroid/widget/DatePickerCalendarDelegate;->mDayPickerView:Landroid/widget/DayPickerView;

    invoke-virtual {v0, p1}, Landroid/widget/DayPickerView;->setFirstDayOfWeek(I)V

    return-void
.end method

.method public setMaxDate(J)V
    .registers 7

    iget-object v0, p0, Landroid/widget/DatePickerCalendarDelegate;->mTempDate:Landroid/icu/util/Calendar;

    invoke-virtual {v0, p1, p2}, Landroid/icu/util/Calendar;->setTimeInMillis(J)V

    iget-object v0, p0, Landroid/widget/DatePickerCalendarDelegate;->mTempDate:Landroid/icu/util/Calendar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/icu/util/Calendar;->get(I)I

    move-result v0

    iget-object v2, p0, Landroid/widget/DatePickerCalendarDelegate;->mMaxDate:Landroid/icu/util/Calendar;

    invoke-virtual {v2, v1}, Landroid/icu/util/Calendar;->get(I)I

    move-result v2

    if-ne v0, v2, :cond_24

    iget-object v0, p0, Landroid/widget/DatePickerCalendarDelegate;->mTempDate:Landroid/icu/util/Calendar;

    const/4 v2, 0x6

    invoke-virtual {v0, v2}, Landroid/icu/util/Calendar;->get(I)I

    move-result v0

    iget-object v3, p0, Landroid/widget/DatePickerCalendarDelegate;->mMaxDate:Landroid/icu/util/Calendar;

    invoke-virtual {v3, v2}, Landroid/icu/util/Calendar;->get(I)I

    move-result v2

    if-ne v0, v2, :cond_24

    return-void

    :cond_24
    iget-object v0, p0, Landroid/widget/DatePickerCalendarDelegate;->mCurrentDate:Landroid/icu/util/Calendar;

    iget-object v2, p0, Landroid/widget/DatePickerCalendarDelegate;->mTempDate:Landroid/icu/util/Calendar;

    invoke-virtual {v0, v2}, Landroid/icu/util/Calendar;->after(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_37

    iget-object v0, p0, Landroid/widget/DatePickerCalendarDelegate;->mCurrentDate:Landroid/icu/util/Calendar;

    invoke-virtual {v0, p1, p2}, Landroid/icu/util/Calendar;->setTimeInMillis(J)V

    const/4 v0, 0x0

    invoke-direct {p0, v0, v1}, Landroid/widget/DatePickerCalendarDelegate;->onDateChanged(ZZ)V

    :cond_37
    iget-object v0, p0, Landroid/widget/DatePickerCalendarDelegate;->mMaxDate:Landroid/icu/util/Calendar;

    invoke-virtual {v0, p1, p2}, Landroid/icu/util/Calendar;->setTimeInMillis(J)V

    iget-object v0, p0, Landroid/widget/DatePickerCalendarDelegate;->mDayPickerView:Landroid/widget/DayPickerView;

    invoke-virtual {v0, p1, p2}, Landroid/widget/DayPickerView;->setMaxDate(J)V

    iget-object v0, p0, Landroid/widget/DatePickerCalendarDelegate;->mYearPickerView:Landroid/widget/YearPickerView;

    iget-object v1, p0, Landroid/widget/DatePickerCalendarDelegate;->mMinDate:Landroid/icu/util/Calendar;

    iget-object v2, p0, Landroid/widget/DatePickerCalendarDelegate;->mMaxDate:Landroid/icu/util/Calendar;

    invoke-virtual {v0, v1, v2}, Landroid/widget/YearPickerView;->setRange(Landroid/icu/util/Calendar;Landroid/icu/util/Calendar;)V

    return-void
.end method

.method public setMinDate(J)V
    .registers 7

    iget-object v0, p0, Landroid/widget/DatePickerCalendarDelegate;->mTempDate:Landroid/icu/util/Calendar;

    invoke-virtual {v0, p1, p2}, Landroid/icu/util/Calendar;->setTimeInMillis(J)V

    iget-object v0, p0, Landroid/widget/DatePickerCalendarDelegate;->mTempDate:Landroid/icu/util/Calendar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/icu/util/Calendar;->get(I)I

    move-result v0

    iget-object v2, p0, Landroid/widget/DatePickerCalendarDelegate;->mMinDate:Landroid/icu/util/Calendar;

    invoke-virtual {v2, v1}, Landroid/icu/util/Calendar;->get(I)I

    move-result v2

    if-ne v0, v2, :cond_24

    iget-object v0, p0, Landroid/widget/DatePickerCalendarDelegate;->mTempDate:Landroid/icu/util/Calendar;

    const/4 v2, 0x6

    invoke-virtual {v0, v2}, Landroid/icu/util/Calendar;->get(I)I

    move-result v0

    iget-object v3, p0, Landroid/widget/DatePickerCalendarDelegate;->mMinDate:Landroid/icu/util/Calendar;

    invoke-virtual {v3, v2}, Landroid/icu/util/Calendar;->get(I)I

    move-result v2

    if-ne v0, v2, :cond_24

    return-void

    :cond_24
    iget-object v0, p0, Landroid/widget/DatePickerCalendarDelegate;->mCurrentDate:Landroid/icu/util/Calendar;

    iget-object v2, p0, Landroid/widget/DatePickerCalendarDelegate;->mTempDate:Landroid/icu/util/Calendar;

    invoke-virtual {v0, v2}, Landroid/icu/util/Calendar;->before(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_37

    iget-object v0, p0, Landroid/widget/DatePickerCalendarDelegate;->mCurrentDate:Landroid/icu/util/Calendar;

    invoke-virtual {v0, p1, p2}, Landroid/icu/util/Calendar;->setTimeInMillis(J)V

    const/4 v0, 0x0

    invoke-direct {p0, v0, v1}, Landroid/widget/DatePickerCalendarDelegate;->onDateChanged(ZZ)V

    :cond_37
    iget-object v0, p0, Landroid/widget/DatePickerCalendarDelegate;->mMinDate:Landroid/icu/util/Calendar;

    invoke-virtual {v0, p1, p2}, Landroid/icu/util/Calendar;->setTimeInMillis(J)V

    iget-object v0, p0, Landroid/widget/DatePickerCalendarDelegate;->mDayPickerView:Landroid/widget/DayPickerView;

    invoke-virtual {v0, p1, p2}, Landroid/widget/DayPickerView;->setMinDate(J)V

    iget-object v0, p0, Landroid/widget/DatePickerCalendarDelegate;->mYearPickerView:Landroid/widget/YearPickerView;

    iget-object v1, p0, Landroid/widget/DatePickerCalendarDelegate;->mMinDate:Landroid/icu/util/Calendar;

    iget-object v2, p0, Landroid/widget/DatePickerCalendarDelegate;->mMaxDate:Landroid/icu/util/Calendar;

    invoke-virtual {v0, v1, v2}, Landroid/widget/YearPickerView;->setRange(Landroid/icu/util/Calendar;Landroid/icu/util/Calendar;)V

    return-void
.end method

.method public setSpinnersShown(Z)V
    .registers 2

    return-void
.end method

.method public updateDate(III)V
    .registers 6

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/DatePickerCalendarDelegate;->setDate(III)V

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Landroid/widget/DatePickerCalendarDelegate;->onDateChanged(ZZ)V

    return-void
.end method

# classes4.dex

.class Landroid/widget/SimpleMonthView$MonthViewTouchHelper;
.super Lcom/android/internal/widget/ExploreByTouchHelper;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/SimpleMonthView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MonthViewTouchHelper"
.end annotation


# static fields
.field private static final DATE_FORMAT:Ljava/lang/String; = "dd MMMM yyyy"


# instance fields
.field private final mTempCalendar:Landroid/icu/util/Calendar;

.field private final mTempRect:Landroid/graphics/Rect;

.field final synthetic this$0:Landroid/widget/SimpleMonthView;


# direct methods
.method public constructor <init>(Landroid/widget/SimpleMonthView;Landroid/view/View;)V
    .registers 3

    iput-object p1, p0, Landroid/widget/SimpleMonthView$MonthViewTouchHelper;->this$0:Landroid/widget/SimpleMonthView;

    invoke-direct {p0, p2}, Lcom/android/internal/widget/ExploreByTouchHelper;-><init>(Landroid/view/View;)V

    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Landroid/widget/SimpleMonthView$MonthViewTouchHelper;->mTempRect:Landroid/graphics/Rect;

    invoke-static {}, Landroid/icu/util/Calendar;->getInstance()Landroid/icu/util/Calendar;

    move-result-object p1

    iput-object p1, p0, Landroid/widget/SimpleMonthView$MonthViewTouchHelper;->mTempCalendar:Landroid/icu/util/Calendar;

    return-void
.end method

.method private getDayDescription(I)Ljava/lang/CharSequence;
    .registers 5

    iget-object v0, p0, Landroid/widget/SimpleMonthView$MonthViewTouchHelper;->this$0:Landroid/widget/SimpleMonthView;

    invoke-static {v0, p1}, Landroid/widget/SimpleMonthView;->-$$Nest$misValidDayOfMonth(Landroid/widget/SimpleMonthView;I)Z

    move-result v0

    if-eqz v0, :cond_26

    iget-object v0, p0, Landroid/widget/SimpleMonthView$MonthViewTouchHelper;->mTempCalendar:Landroid/icu/util/Calendar;

    iget-object v1, p0, Landroid/widget/SimpleMonthView$MonthViewTouchHelper;->this$0:Landroid/widget/SimpleMonthView;

    invoke-static {v1}, Landroid/widget/SimpleMonthView;->-$$Nest$fgetmYear(Landroid/widget/SimpleMonthView;)I

    move-result v1

    iget-object v2, p0, Landroid/widget/SimpleMonthView$MonthViewTouchHelper;->this$0:Landroid/widget/SimpleMonthView;

    invoke-static {v2}, Landroid/widget/SimpleMonthView;->-$$Nest$fgetmMonth(Landroid/widget/SimpleMonthView;)I

    move-result v2

    invoke-virtual {v0, v1, v2, p1}, Landroid/icu/util/Calendar;->set(III)V

    iget-object v0, p0, Landroid/widget/SimpleMonthView$MonthViewTouchHelper;->mTempCalendar:Landroid/icu/util/Calendar;

    invoke-virtual {v0}, Landroid/icu/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    const-string v2, "dd MMMM yyyy"

    invoke-static {v2, v0, v1}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0

    :cond_26
    const-string v0, ""

    return-object v0
.end method

.method private getDayText(I)Ljava/lang/CharSequence;
    .registers 5

    iget-object v0, p0, Landroid/widget/SimpleMonthView$MonthViewTouchHelper;->this$0:Landroid/widget/SimpleMonthView;

    invoke-static {v0, p1}, Landroid/widget/SimpleMonthView;->-$$Nest$misValidDayOfMonth(Landroid/widget/SimpleMonthView;I)Z

    move-result v0

    if-eqz v0, :cond_14

    iget-object v0, p0, Landroid/widget/SimpleMonthView$MonthViewTouchHelper;->this$0:Landroid/widget/SimpleMonthView;

    invoke-static {v0}, Landroid/widget/SimpleMonthView;->-$$Nest$fgetmDayFormatter(Landroid/widget/SimpleMonthView;)Ljava/text/NumberFormat;

    move-result-object v0

    int-to-long v1, p1

    invoke-virtual {v0, v1, v2}, Ljava/text/NumberFormat;->format(J)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_14
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method protected getVirtualViewAt(FF)I
    .registers 6

    iget-object v0, p0, Landroid/widget/SimpleMonthView$MonthViewTouchHelper;->this$0:Landroid/widget/SimpleMonthView;

    const/high16 v1, 0x3f000000  # 0.5f

    add-float v2, p1, v1

    float-to-int v2, v2

    add-float/2addr v1, p2

    float-to-int v1, v1

    invoke-static {v0, v2, v1}, Landroid/widget/SimpleMonthView;->-$$Nest$mgetDayAtLocation(Landroid/widget/SimpleMonthView;II)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_11

    return v0

    :cond_11
    const/high16 v1, -0x80000000

    return v1
.end method

.method protected getVisibleVirtualViews(Landroid/util/IntArray;)V
    .registers 4

    const/4 v0, 0x1

    :goto_1
    iget-object v1, p0, Landroid/widget/SimpleMonthView$MonthViewTouchHelper;->this$0:Landroid/widget/SimpleMonthView;

    invoke-static {v1}, Landroid/widget/SimpleMonthView;->-$$Nest$fgetmDaysInMonth(Landroid/widget/SimpleMonthView;)I

    move-result v1

    if-gt v0, v1, :cond_f

    invoke-virtual {p1, v0}, Landroid/util/IntArray;->add(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_f
    return-void
.end method

.method protected onPerformActionForVirtualView(IILandroid/os/Bundle;)Z
    .registers 5

    packed-switch p2, :pswitch_data_c

    const/4 v0, 0x0

    return v0

    :pswitch_5  #0x10
    iget-object v0, p0, Landroid/widget/SimpleMonthView$MonthViewTouchHelper;->this$0:Landroid/widget/SimpleMonthView;

    invoke-static {v0, p1}, Landroid/widget/SimpleMonthView;->-$$Nest$monDayClicked(Landroid/widget/SimpleMonthView;I)Z

    move-result v0

    return v0

    :pswitch_data_c
    .packed-switch 0x10
        :pswitch_5  #00000010
    .end packed-switch
.end method

.method protected onPopulateEventForVirtualView(ILandroid/view/accessibility/AccessibilityEvent;)V
    .registers 4

    invoke-direct {p0, p1}, Landroid/widget/SimpleMonthView$MonthViewTouchHelper;->getDayDescription(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/view/accessibility/AccessibilityEvent;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void
.end method

.method protected onPopulateNodeForVirtualView(ILandroid/view/accessibility/AccessibilityNodeInfo;)V
    .registers 7

    iget-object v0, p0, Landroid/widget/SimpleMonthView$MonthViewTouchHelper;->this$0:Landroid/widget/SimpleMonthView;

    iget-object v1, p0, Landroid/widget/SimpleMonthView$MonthViewTouchHelper;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v0, p1, v1}, Landroid/widget/SimpleMonthView;->getBoundsForDay(ILandroid/graphics/Rect;)Z

    move-result v0

    if-nez v0, :cond_1e

    iget-object v1, p0, Landroid/widget/SimpleMonthView$MonthViewTouchHelper;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->setEmpty()V

    const-string v1, ""

    invoke-virtual {p2, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Landroid/widget/SimpleMonthView$MonthViewTouchHelper;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p2, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setBoundsInParent(Landroid/graphics/Rect;)V

    const/4 v1, 0x0

    invoke-virtual {p2, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setVisibleToUser(Z)V

    return-void

    :cond_1e
    invoke-direct {p0, p1}, Landroid/widget/SimpleMonthView$MonthViewTouchHelper;->getDayText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setText(Ljava/lang/CharSequence;)V

    invoke-direct {p0, p1}, Landroid/widget/SimpleMonthView$MonthViewTouchHelper;->getDayDescription(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Landroid/widget/SimpleMonthView$MonthViewTouchHelper;->this$0:Landroid/widget/SimpleMonthView;

    invoke-static {v1}, Landroid/widget/SimpleMonthView;->-$$Nest$fgetmToday(Landroid/widget/SimpleMonthView;)I

    move-result v1

    if-ne p1, v1, :cond_43

    invoke-static {}, Landroid/icu/text/RelativeDateTimeFormatter;->getInstance()Landroid/icu/text/RelativeDateTimeFormatter;

    move-result-object v1

    sget-object v2, Landroid/icu/text/RelativeDateTimeFormatter$Direction;->THIS:Landroid/icu/text/RelativeDateTimeFormatter$Direction;

    sget-object v3, Landroid/icu/text/RelativeDateTimeFormatter$AbsoluteUnit;->DAY:Landroid/icu/text/RelativeDateTimeFormatter$AbsoluteUnit;

    invoke-virtual {v1, v2, v3}, Landroid/icu/text/RelativeDateTimeFormatter;->format(Landroid/icu/text/RelativeDateTimeFormatter$Direction;Landroid/icu/text/RelativeDateTimeFormatter$AbsoluteUnit;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->setStateDescription(Ljava/lang/CharSequence;)V

    :cond_43
    iget-object v1, p0, Landroid/widget/SimpleMonthView$MonthViewTouchHelper;->this$0:Landroid/widget/SimpleMonthView;

    invoke-static {v1}, Landroid/widget/SimpleMonthView;->-$$Nest$fgetmActivatedDay(Landroid/widget/SimpleMonthView;)I

    move-result v1

    const/4 v2, 0x1

    if-ne p1, v1, :cond_4f

    invoke-virtual {p2, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->setSelected(Z)V

    :cond_4f
    iget-object v1, p0, Landroid/widget/SimpleMonthView$MonthViewTouchHelper;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p2, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setBoundsInParent(Landroid/graphics/Rect;)V

    iget-object v1, p0, Landroid/widget/SimpleMonthView$MonthViewTouchHelper;->this$0:Landroid/widget/SimpleMonthView;

    invoke-static {v1, p1}, Landroid/widget/SimpleMonthView;->-$$Nest$misDayEnabled(Landroid/widget/SimpleMonthView;I)Z

    move-result v1

    if-eqz v1, :cond_61

    sget-object v3, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_CLICK:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-virtual {p2, v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    :cond_61
    invoke-virtual {p2, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setEnabled(Z)V

    invoke-virtual {p2, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClickable(Z)V

    iget-object v3, p0, Landroid/widget/SimpleMonthView$MonthViewTouchHelper;->this$0:Landroid/widget/SimpleMonthView;

    invoke-static {v3}, Landroid/widget/SimpleMonthView;->-$$Nest$fgetmActivatedDay(Landroid/widget/SimpleMonthView;)I

    move-result v3

    if-ne p1, v3, :cond_72

    invoke-virtual {p2, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->setChecked(Z)V

    :cond_72
    return-void
.end method

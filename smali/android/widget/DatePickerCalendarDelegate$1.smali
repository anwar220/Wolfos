# classes4.dex

.class Landroid/widget/DatePickerCalendarDelegate$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/DayPickerView$OnDaySelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/DatePickerCalendarDelegate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/DatePickerCalendarDelegate;


# direct methods
.method constructor <init>(Landroid/widget/DatePickerCalendarDelegate;)V
    .registers 2

    iput-object p1, p0, Landroid/widget/DatePickerCalendarDelegate$1;->this$0:Landroid/widget/DatePickerCalendarDelegate;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDaySelected(Landroid/widget/DayPickerView;Landroid/icu/util/Calendar;)V
    .registers 6

    iget-object v0, p0, Landroid/widget/DatePickerCalendarDelegate$1;->this$0:Landroid/widget/DatePickerCalendarDelegate;

    iget-object v0, v0, Landroid/widget/DatePickerCalendarDelegate;->mCurrentDate:Landroid/icu/util/Calendar;

    invoke-virtual {p2}, Landroid/icu/util/Calendar;->getTimeInMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/icu/util/Calendar;->setTimeInMillis(J)V

    iget-object v0, p0, Landroid/widget/DatePickerCalendarDelegate$1;->this$0:Landroid/widget/DatePickerCalendarDelegate;

    const/4 v1, 0x1

    invoke-static {v0, v1, v1}, Landroid/widget/DatePickerCalendarDelegate;->-$$Nest$monDateChanged(Landroid/widget/DatePickerCalendarDelegate;ZZ)V

    return-void
.end method

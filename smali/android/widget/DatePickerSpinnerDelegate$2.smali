# classes4.dex

.class Landroid/widget/DatePickerSpinnerDelegate$2;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/CalendarView$OnDateChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/widget/DatePickerSpinnerDelegate;-><init>(Landroid/widget/DatePicker;Landroid/content/Context;Landroid/util/AttributeSet;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/DatePickerSpinnerDelegate;


# direct methods
.method constructor <init>(Landroid/widget/DatePickerSpinnerDelegate;)V
    .registers 2

    iput-object p1, p0, Landroid/widget/DatePickerSpinnerDelegate$2;->this$0:Landroid/widget/DatePickerSpinnerDelegate;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSelectedDayChange(Landroid/widget/CalendarView;III)V
    .registers 6

    iget-object v0, p0, Landroid/widget/DatePickerSpinnerDelegate$2;->this$0:Landroid/widget/DatePickerSpinnerDelegate;

    invoke-static {v0, p2, p3, p4}, Landroid/widget/DatePickerSpinnerDelegate;->-$$Nest$msetDate(Landroid/widget/DatePickerSpinnerDelegate;III)V

    iget-object v0, p0, Landroid/widget/DatePickerSpinnerDelegate$2;->this$0:Landroid/widget/DatePickerSpinnerDelegate;

    invoke-static {v0}, Landroid/widget/DatePickerSpinnerDelegate;->-$$Nest$mupdateSpinners(Landroid/widget/DatePickerSpinnerDelegate;)V

    iget-object v0, p0, Landroid/widget/DatePickerSpinnerDelegate$2;->this$0:Landroid/widget/DatePickerSpinnerDelegate;

    invoke-static {v0}, Landroid/widget/DatePickerSpinnerDelegate;->-$$Nest$mnotifyDateChanged(Landroid/widget/DatePickerSpinnerDelegate;)V

    return-void
.end method
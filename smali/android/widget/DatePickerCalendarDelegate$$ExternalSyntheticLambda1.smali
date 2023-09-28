# classes4.dex

.class public final synthetic Landroid/widget/DatePickerCalendarDelegate$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroid/widget/DatePickerCalendarDelegate;


# direct methods
.method public synthetic constructor <init>(Landroid/widget/DatePickerCalendarDelegate;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/widget/DatePickerCalendarDelegate$$ExternalSyntheticLambda1;->f$0:Landroid/widget/DatePickerCalendarDelegate;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget-object v0, p0, Landroid/widget/DatePickerCalendarDelegate$$ExternalSyntheticLambda1;->f$0:Landroid/widget/DatePickerCalendarDelegate;

    invoke-virtual {v0}, Landroid/widget/DatePickerCalendarDelegate;->lambda$setCurrentView$1$android-widget-DatePickerCalendarDelegate()V

    return-void
.end method

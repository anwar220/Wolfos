# classes4.dex

.class Landroid/widget/TimePickerClockDelegate$3;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/TextInputTimePickerView$OnValueTypedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/TimePickerClockDelegate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/TimePickerClockDelegate;


# direct methods
.method constructor <init>(Landroid/widget/TimePickerClockDelegate;)V
    .registers 2

    iput-object p1, p0, Landroid/widget/TimePickerClockDelegate$3;->this$0:Landroid/widget/TimePickerClockDelegate;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onValueChanged(II)V
    .registers 7

    const/4 v0, 0x1

    const/4 v1, 0x2

    packed-switch p1, :pswitch_data_1a

    goto :goto_19

    :pswitch_6  #0x2
    iget-object v0, p0, Landroid/widget/TimePickerClockDelegate$3;->this$0:Landroid/widget/TimePickerClockDelegate;

    invoke-static {v0, p2}, Landroid/widget/TimePickerClockDelegate;->-$$Nest$msetAmOrPm(Landroid/widget/TimePickerClockDelegate;I)V

    goto :goto_19

    :pswitch_c  #0x1
    iget-object v2, p0, Landroid/widget/TimePickerClockDelegate$3;->this$0:Landroid/widget/TimePickerClockDelegate;

    invoke-static {v2, p2, v1, v0}, Landroid/widget/TimePickerClockDelegate;->-$$Nest$msetMinuteInternal(Landroid/widget/TimePickerClockDelegate;IIZ)V

    goto :goto_19

    :pswitch_12  #0x0
    iget-object v2, p0, Landroid/widget/TimePickerClockDelegate$3;->this$0:Landroid/widget/TimePickerClockDelegate;

    const/4 v3, 0x0

    invoke-static {v2, p2, v1, v3, v0}, Landroid/widget/TimePickerClockDelegate;->-$$Nest$msetHourInternal(Landroid/widget/TimePickerClockDelegate;IIZZ)V

    nop

    :goto_19
    return-void

    :pswitch_data_1a
    .packed-switch 0x0
        :pswitch_12  #00000000
        :pswitch_c  #00000001
        :pswitch_6  #00000002
    .end packed-switch
.end method

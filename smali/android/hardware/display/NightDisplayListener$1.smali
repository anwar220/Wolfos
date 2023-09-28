# classes.dex

.class Landroid/hardware/display/NightDisplayListener$1;
.super Landroid/database/ContentObserver;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/hardware/display/NightDisplayListener;-><init>(Landroid/content/Context;ILandroid/os/Handler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/hardware/display/NightDisplayListener;


# direct methods
.method constructor <init>(Landroid/hardware/display/NightDisplayListener;Landroid/os/Handler;)V
    .registers 3

    iput-object p1, p0, Landroid/hardware/display/NightDisplayListener$1;->this$0:Landroid/hardware/display/NightDisplayListener;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .registers 6

    invoke-super {p0, p1, p2}, Landroid/database/ContentObserver;->onChange(ZLandroid/net/Uri;)V

    if-nez p2, :cond_7

    const/4 v0, 0x0

    goto :goto_b

    :cond_7
    invoke-virtual {p2}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v0

    :goto_b
    if-eqz v0, :cond_bb

    iget-object v1, p0, Landroid/hardware/display/NightDisplayListener$1;->this$0:Landroid/hardware/display/NightDisplayListener;

    invoke-static {v1}, Landroid/hardware/display/NightDisplayListener;->-$$Nest$fgetmCallback(Landroid/hardware/display/NightDisplayListener;)Landroid/hardware/display/NightDisplayListener$Callback;

    move-result-object v1

    if-eqz v1, :cond_bb

    const/4 v1, -0x1

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_bc

    :cond_1d
    goto :goto_54

    :sswitch_1e
    const-string/jumbo v2, "night_display_custom_start_time"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1d

    const/4 v1, 0x2

    goto :goto_54

    :sswitch_29
    const-string/jumbo v2, "night_display_activated"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1d

    const/4 v1, 0x0

    goto :goto_54

    :sswitch_34
    const-string/jumbo v2, "night_display_color_temperature"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1d

    const/4 v1, 0x4

    goto :goto_54

    :sswitch_3f
    const-string/jumbo v2, "night_display_custom_end_time"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1d

    const/4 v1, 0x3

    goto :goto_54

    :sswitch_4a
    const-string/jumbo v2, "night_display_auto_mode"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1d

    const/4 v1, 0x1

    :goto_54
    packed-switch v1, :pswitch_data_d2

    goto :goto_bb

    :pswitch_58  #0x4
    iget-object v1, p0, Landroid/hardware/display/NightDisplayListener$1;->this$0:Landroid/hardware/display/NightDisplayListener;

    invoke-static {v1}, Landroid/hardware/display/NightDisplayListener;->-$$Nest$fgetmCallback(Landroid/hardware/display/NightDisplayListener;)Landroid/hardware/display/NightDisplayListener$Callback;

    move-result-object v1

    iget-object v2, p0, Landroid/hardware/display/NightDisplayListener$1;->this$0:Landroid/hardware/display/NightDisplayListener;

    invoke-static {v2}, Landroid/hardware/display/NightDisplayListener;->-$$Nest$fgetmManager(Landroid/hardware/display/NightDisplayListener;)Landroid/hardware/display/ColorDisplayManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/hardware/display/ColorDisplayManager;->getNightDisplayColorTemperature()I

    move-result v2

    invoke-interface {v1, v2}, Landroid/hardware/display/NightDisplayListener$Callback;->onColorTemperatureChanged(I)V

    goto :goto_bb

    :pswitch_6c  #0x3
    iget-object v1, p0, Landroid/hardware/display/NightDisplayListener$1;->this$0:Landroid/hardware/display/NightDisplayListener;

    invoke-static {v1}, Landroid/hardware/display/NightDisplayListener;->-$$Nest$fgetmCallback(Landroid/hardware/display/NightDisplayListener;)Landroid/hardware/display/NightDisplayListener$Callback;

    move-result-object v1

    iget-object v2, p0, Landroid/hardware/display/NightDisplayListener$1;->this$0:Landroid/hardware/display/NightDisplayListener;

    invoke-static {v2}, Landroid/hardware/display/NightDisplayListener;->-$$Nest$fgetmManager(Landroid/hardware/display/NightDisplayListener;)Landroid/hardware/display/ColorDisplayManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/hardware/display/ColorDisplayManager;->getNightDisplayCustomEndTime()Ljava/time/LocalTime;

    move-result-object v2

    invoke-interface {v1, v2}, Landroid/hardware/display/NightDisplayListener$Callback;->onCustomEndTimeChanged(Ljava/time/LocalTime;)V

    goto :goto_bb

    :pswitch_80  #0x2
    iget-object v1, p0, Landroid/hardware/display/NightDisplayListener$1;->this$0:Landroid/hardware/display/NightDisplayListener;

    invoke-static {v1}, Landroid/hardware/display/NightDisplayListener;->-$$Nest$fgetmCallback(Landroid/hardware/display/NightDisplayListener;)Landroid/hardware/display/NightDisplayListener$Callback;

    move-result-object v1

    iget-object v2, p0, Landroid/hardware/display/NightDisplayListener$1;->this$0:Landroid/hardware/display/NightDisplayListener;

    invoke-static {v2}, Landroid/hardware/display/NightDisplayListener;->-$$Nest$fgetmManager(Landroid/hardware/display/NightDisplayListener;)Landroid/hardware/display/ColorDisplayManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/hardware/display/ColorDisplayManager;->getNightDisplayCustomStartTime()Ljava/time/LocalTime;

    move-result-object v2

    invoke-interface {v1, v2}, Landroid/hardware/display/NightDisplayListener$Callback;->onCustomStartTimeChanged(Ljava/time/LocalTime;)V

    goto :goto_bb

    :pswitch_94  #0x1
    iget-object v1, p0, Landroid/hardware/display/NightDisplayListener$1;->this$0:Landroid/hardware/display/NightDisplayListener;

    invoke-static {v1}, Landroid/hardware/display/NightDisplayListener;->-$$Nest$fgetmCallback(Landroid/hardware/display/NightDisplayListener;)Landroid/hardware/display/NightDisplayListener$Callback;

    move-result-object v1

    iget-object v2, p0, Landroid/hardware/display/NightDisplayListener$1;->this$0:Landroid/hardware/display/NightDisplayListener;

    invoke-static {v2}, Landroid/hardware/display/NightDisplayListener;->-$$Nest$fgetmManager(Landroid/hardware/display/NightDisplayListener;)Landroid/hardware/display/ColorDisplayManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/hardware/display/ColorDisplayManager;->getNightDisplayAutoMode()I

    move-result v2

    invoke-interface {v1, v2}, Landroid/hardware/display/NightDisplayListener$Callback;->onAutoModeChanged(I)V

    goto :goto_bb

    :pswitch_a8  #0x0
    iget-object v1, p0, Landroid/hardware/display/NightDisplayListener$1;->this$0:Landroid/hardware/display/NightDisplayListener;

    invoke-static {v1}, Landroid/hardware/display/NightDisplayListener;->-$$Nest$fgetmCallback(Landroid/hardware/display/NightDisplayListener;)Landroid/hardware/display/NightDisplayListener$Callback;

    move-result-object v1

    iget-object v2, p0, Landroid/hardware/display/NightDisplayListener$1;->this$0:Landroid/hardware/display/NightDisplayListener;

    invoke-static {v2}, Landroid/hardware/display/NightDisplayListener;->-$$Nest$fgetmManager(Landroid/hardware/display/NightDisplayListener;)Landroid/hardware/display/ColorDisplayManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/hardware/display/ColorDisplayManager;->isNightDisplayActivated()Z

    move-result v2

    invoke-interface {v1, v2}, Landroid/hardware/display/NightDisplayListener$Callback;->onActivated(Z)V

    :cond_bb
    :goto_bb
    return-void

    :sswitch_data_bc
    .sparse-switch
        -0x797bb571 -> :sswitch_4a
        -0x6900ebe5 -> :sswitch_3f
        -0x39c8c50c -> :sswitch_34
        0x2fb0ca2d -> :sswitch_29
        0x5e128274 -> :sswitch_1e
    .end sparse-switch

    :pswitch_data_d2
    .packed-switch 0x0
        :pswitch_a8  #00000000
        :pswitch_94  #00000001
        :pswitch_80  #00000002
        :pswitch_6c  #00000003
        :pswitch_58  #00000004
    .end packed-switch
.end method

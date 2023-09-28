# classes3.dex

.class public interface abstract Landroid/view/WindowManagerPolicyConstants;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/WindowManagerPolicyConstants$OnReason;,
        Landroid/view/WindowManagerPolicyConstants$OffReason;,
        Landroid/view/WindowManagerPolicyConstants$PointerEventListener;
    }
.end annotation


# static fields
.field public static final ACTION_HDMI_PLUGGED:Ljava/lang/String; = "android.intent.action.HDMI_PLUGGED"

.field public static final ALT_BAR_BOTTOM:I = 0x4

.field public static final ALT_BAR_LEFT:I = 0x1

.field public static final ALT_BAR_RIGHT:I = 0x2

.field public static final ALT_BAR_TOP:I = 0x8

.field public static final ALT_BAR_UNKNOWN:I = -0x1

.field public static final APPLICATION_ABOVE_SUB_PANEL_SUBLAYER:I = 0x3

.field public static final APPLICATION_LAYER:I = 0x2

.field public static final APPLICATION_MEDIA_OVERLAY_SUBLAYER:I = -0x1

.field public static final APPLICATION_MEDIA_SUBLAYER:I = -0x2

.field public static final APPLICATION_PANEL_SUBLAYER:I = 0x1

.field public static final APPLICATION_SUB_PANEL_SUBLAYER:I = 0x2

.field public static final EXTRA_FROM_HOME_KEY:Ljava/lang/String; = "android.intent.extra.FROM_HOME_KEY"

.field public static final EXTRA_HDMI_PLUGGED_STATE:Ljava/lang/String; = "state"

.field public static final EXTRA_START_REASON:Ljava/lang/String; = "android.intent.extra.EXTRA_START_REASON"

.field public static final FLAG_DISABLE_KEY_REPEAT:I = 0x8000000

.field public static final FLAG_FILTERED:I = 0x4000000

.field public static final FLAG_INJECTED:I = 0x1000000

.field public static final FLAG_INJECTED_FROM_ACCESSIBILITY:I = 0x20000

.field public static final FLAG_INTERACTIVE:I = 0x20000000

.field public static final FLAG_PASS_TO_USER:I = 0x40000000

.field public static final FLAG_TRUSTED:I = 0x2000000

.field public static final FLAG_VIRTUAL:I = 0x2

.field public static final FLAG_WAKE:I = 0x1

.field public static final KEYGUARD_GOING_AWAY_FLAG_NO_WINDOW_ANIMATIONS:I = 0x2

.field public static final KEYGUARD_GOING_AWAY_FLAG_SUBTLE_WINDOW_ANIMATIONS:I = 0x8

.field public static final KEYGUARD_GOING_AWAY_FLAG_TO_LAUNCHER_CLEAR_SNAPSHOT:I = 0x10

.field public static final KEYGUARD_GOING_AWAY_FLAG_TO_SHADE:I = 0x1

.field public static final KEYGUARD_GOING_AWAY_FLAG_WITH_WALLPAPER:I = 0x4

.field public static final LAYER_OFFSET_THUMBNAIL:I = 0x4

.field public static final NAV_BAR_BOTTOM:I = 0x4

.field public static final NAV_BAR_INVALID:I = -0x1

.field public static final NAV_BAR_LEFT:I = 0x1

.field public static final NAV_BAR_MODE_2BUTTON:I = 0x1

.field public static final NAV_BAR_MODE_2BUTTON_OVERLAY:Ljava/lang/String; = "com.android.internal.systemui.navbar.twobutton"

.field public static final NAV_BAR_MODE_3BUTTON:I = 0x0

.field public static final NAV_BAR_MODE_3BUTTON_OVERLAY:Ljava/lang/String; = "com.android.internal.systemui.navbar.threebutton"

.field public static final NAV_BAR_MODE_GESTURAL:I = 0x2

.field public static final NAV_BAR_MODE_GESTURAL_OVERLAY:Ljava/lang/String; = "com.android.internal.systemui.navbar.gestural"

.field public static final NAV_BAR_RIGHT:I = 0x2

.field public static final OFF_BECAUSE_OF_ADMIN:I = 0x1

.field public static final OFF_BECAUSE_OF_TIMEOUT:I = 0x3

.field public static final OFF_BECAUSE_OF_USER:I = 0x2

.field public static final ON_BECAUSE_OF_APPLICATION:I = 0x2

.field public static final ON_BECAUSE_OF_UNKNOWN:I = 0x3

.field public static final ON_BECAUSE_OF_USER:I = 0x1

.field public static final PRESENCE_EXTERNAL:I = 0x2

.field public static final PRESENCE_INTERNAL:I = 0x1

.field public static final SCREEN_FREEZE_LAYER_BASE:I = 0x1eab90

.field public static final SPLIT_DIVIDER_LAYER:I = 0x7530

.field public static final STRICT_MODE_LAYER:I = 0xf6950

.field public static final TYPE_LAYER_MULTIPLIER:I = 0x2710

.field public static final TYPE_LAYER_OFFSET:I = 0x3e8

.field public static final WATERMARK_LAYER:I = 0xf4240

.field public static final WINDOW_FREEZE_LAYER:I = 0x1e8480

.field public static final WINDOW_LAYER_MULTIPLIER:I = 0x5


# direct methods
.method public static offReasonToString(I)Ljava/lang/String;
    .registers 2

    packed-switch p0, :pswitch_data_12

    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_8  #0x3
    const-string v0, "OFF_BECAUSE_OF_TIMEOUT"

    return-object v0

    :pswitch_b  #0x2
    const-string v0, "OFF_BECAUSE_OF_USER"

    return-object v0

    :pswitch_e  #0x1
    const-string v0, "OFF_BECAUSE_OF_ADMIN"

    return-object v0

    nop

    :pswitch_data_12
    .packed-switch 0x1
        :pswitch_e  #00000001
        :pswitch_b  #00000002
        :pswitch_8  #00000003
    .end packed-switch
.end method

.method public static onReasonToString(I)Ljava/lang/String;
    .registers 2

    packed-switch p0, :pswitch_data_12

    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_8  #0x3
    const-string v0, "ON_BECAUSE_OF_UNKNOWN"

    return-object v0

    :pswitch_b  #0x2
    const-string v0, "ON_BECAUSE_OF_APPLICATION"

    return-object v0

    :pswitch_e  #0x1
    const-string v0, "ON_BECAUSE_OF_USER"

    return-object v0

    nop

    :pswitch_data_12
    .packed-switch 0x1
        :pswitch_e  #00000001
        :pswitch_b  #00000002
        :pswitch_8  #00000003
    .end packed-switch
.end method

.method public static translateSleepReasonToOffReason(I)I
    .registers 2

    sparse-switch p0, :sswitch_data_a

    const/4 v0, 0x2

    return v0

    :sswitch_5
    const/4 v0, 0x3

    return v0

    :sswitch_7
    const/4 v0, 0x1

    return v0

    nop

    :sswitch_data_a
    .sparse-switch
        0x1 -> :sswitch_7
        0x2 -> :sswitch_5
        0x9 -> :sswitch_5
    .end sparse-switch
.end method

.method public static translateWakeReasonToOnReason(I)I
    .registers 2

    packed-switch p0, :pswitch_data_a

    :pswitch_3  #0x8
    const/4 v0, 0x3

    return v0

    :pswitch_5  #0x2
    const/4 v0, 0x2

    return v0

    :pswitch_7  #0x1, 0x3, 0x4, 0x5, 0x6, 0x7, 0x9
    const/4 v0, 0x1

    return v0

    nop

    :pswitch_data_a
    .packed-switch 0x1
        :pswitch_7  #00000001
        :pswitch_5  #00000002
        :pswitch_7  #00000003
        :pswitch_7  #00000004
        :pswitch_7  #00000005
        :pswitch_7  #00000006
        :pswitch_7  #00000007
        :pswitch_3  #00000008
        :pswitch_7  #00000009
    .end packed-switch
.end method

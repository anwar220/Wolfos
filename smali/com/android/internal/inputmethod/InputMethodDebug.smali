# classes4.dex

.class public final Lcom/android/internal/inputmethod/InputMethodDebug;
.super Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static objToString(Ljava/lang/Object;)Ljava/lang/String;
    .registers 3

    if-nez p0, :cond_6

    const-string/jumbo v0, "null"

    return-object v0

    :cond_6
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x40

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "@"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static softInputDisplayReasonToString(I)Ljava/lang/String;
    .registers 3

    packed-switch p0, :pswitch_data_66

    :pswitch_3  #0x13
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_17  #0x1a
    const-string v0, "HIDE_DISPLAY_IME_POLICY_HIDE"

    return-object v0

    :pswitch_1a  #0x19
    const-string v0, "SHOW_SOFT_INPUT_BY_INSETS_API"

    return-object v0

    :pswitch_1d  #0x18
    const-string v0, "HIDE_TOGGLE_SOFT_INPUT"

    return-object v0

    :pswitch_20  #0x17
    const-string v0, "SHOW_TOGGLE_SOFT_INPUT"

    return-object v0

    :pswitch_23  #0x16
    const-string v0, "SHOW_RESTORE_IME_VISIBILITY"

    return-object v0

    :pswitch_26  #0x15
    const-string v0, "HIDE_REMOVE_CLIENT"

    return-object v0

    :pswitch_29  #0x14
    const-string v0, "HIDE_SAME_WINDOW_FOCUSED_WITHOUT_EDITOR"

    return-object v0

    :pswitch_2c  #0x12
    const-string v0, "HIDE_RECENTS_ANIMATION"

    return-object v0

    :pswitch_2f  #0x11
    const-string v0, "HIDE_DOCKED_STACK_ATTACHED"

    return-object v0

    :pswitch_32  #0x10
    const-string v0, "HIDE_POWER_BUTTON_GO_HOME"

    return-object v0

    :pswitch_35  #0xf
    const-string v0, "HIDE_SETTINGS_ON_CHANGE"

    return-object v0

    :pswitch_38  #0xe
    const-string v0, "HIDE_RESET_SHELL_COMMAND"

    return-object v0

    :pswitch_3b  #0xd
    const-string v0, "HIDE_ALWAYS_HIDDEN_STATE"

    return-object v0

    :pswitch_3e  #0xc
    const-string v0, "HIDE_STATE_HIDDEN_FORWARD_NAV"

    return-object v0

    :pswitch_41  #0xb
    const-string v0, "HIDE_UNSPECIFIED_WINDOW"

    return-object v0

    :pswitch_44  #0xa
    const-string v0, "HIDE_INVALID_USER"

    return-object v0

    :pswitch_47  #0x9
    const-string v0, "HIDE_SWITCH_USER"

    return-object v0

    :pswitch_4a  #0x8
    const-string v0, "SHOW_SETTINGS_ON_CHANGE"

    return-object v0

    :pswitch_4d  #0x7
    const-string v0, "SHOW_STATE_ALWAYS_VISIBLE"

    return-object v0

    :pswitch_50  #0x6
    const-string v0, "SHOW_STATE_VISIBLE_FORWARD_NAV"

    return-object v0

    :pswitch_53  #0x5
    const-string v0, "SHOW_AUTO_EDITOR_FORWARD_NAV"

    return-object v0

    :pswitch_56  #0x4
    const-string v0, "HIDE_MY_SOFT_INPUT"

    return-object v0

    :pswitch_59  #0x3
    const-string v0, "HIDE_SOFT_INPUT"

    return-object v0

    :pswitch_5c  #0x2
    const-string v0, "SHOW_MY_SOFT_INPUT"

    return-object v0

    :pswitch_5f  #0x1
    const-string v0, "ATTACH_NEW_INPUT"

    return-object v0

    :pswitch_62  #0x0
    const-string v0, "SHOW_SOFT_INPUT"

    return-object v0

    nop

    :pswitch_data_66
    .packed-switch 0x0
        :pswitch_62  #00000000
        :pswitch_5f  #00000001
        :pswitch_5c  #00000002
        :pswitch_59  #00000003
        :pswitch_56  #00000004
        :pswitch_53  #00000005
        :pswitch_50  #00000006
        :pswitch_4d  #00000007
        :pswitch_4a  #00000008
        :pswitch_47  #00000009
        :pswitch_44  #0000000a
        :pswitch_41  #0000000b
        :pswitch_3e  #0000000c
        :pswitch_3b  #0000000d
        :pswitch_38  #0000000e
        :pswitch_35  #0000000f
        :pswitch_32  #00000010
        :pswitch_2f  #00000011
        :pswitch_2c  #00000012
        :pswitch_3  #00000013
        :pswitch_29  #00000014
        :pswitch_26  #00000015
        :pswitch_23  #00000016
        :pswitch_20  #00000017
        :pswitch_1d  #00000018
        :pswitch_1a  #00000019
        :pswitch_17  #0000001a
    .end packed-switch
.end method

.method public static softInputModeToString(I)Ljava/lang/String;
    .registers 8

    new-instance v0, Ljava/util/StringJoiner;

    const-string/jumbo v1, "|"

    invoke-direct {v0, v1}, Ljava/util/StringJoiner;-><init>(Ljava/lang/CharSequence;)V

    and-int/lit8 v1, p0, 0xf

    and-int/lit16 v2, p0, 0xf0

    and-int/lit16 v3, p0, 0x100

    if-eqz v3, :cond_12

    const/4 v3, 0x1

    goto :goto_13

    :cond_12
    const/4 v3, 0x0

    :goto_13
    const-string v4, ")"

    packed-switch v1, :pswitch_data_a0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "STATE_UNKNOWN("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    goto :goto_57

    :pswitch_33  #0x5
    const-string v5, "STATE_ALWAYS_VISIBLE"

    invoke-virtual {v0, v5}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    goto :goto_57

    :pswitch_39  #0x4
    const-string v5, "STATE_VISIBLE"

    invoke-virtual {v0, v5}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    goto :goto_57

    :pswitch_3f  #0x3
    const-string v5, "STATE_ALWAYS_HIDDEN"

    invoke-virtual {v0, v5}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    goto :goto_57

    :pswitch_45  #0x2
    const-string v5, "STATE_HIDDEN"

    invoke-virtual {v0, v5}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    goto :goto_57

    :pswitch_4b  #0x1
    const-string v5, "STATE_UNCHANGED"

    invoke-virtual {v0, v5}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    goto :goto_57

    :pswitch_51  #0x0
    const-string v5, "STATE_UNSPECIFIED"

    invoke-virtual {v0, v5}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    nop

    :goto_57
    sparse-switch v2, :sswitch_data_b0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ADJUST_UNKNOWN("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    goto :goto_8d

    :sswitch_75
    const-string v4, "ADJUST_NOTHING"

    invoke-virtual {v0, v4}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    goto :goto_8d

    :sswitch_7b
    const-string v4, "ADJUST_PAN"

    invoke-virtual {v0, v4}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    goto :goto_8d

    :sswitch_81
    const-string v4, "ADJUST_RESIZE"

    invoke-virtual {v0, v4}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    goto :goto_8d

    :sswitch_87
    const-string v4, "ADJUST_UNSPECIFIED"

    invoke-virtual {v0, v4}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    nop

    :goto_8d
    if-eqz v3, :cond_94

    const-string v4, "IS_FORWARD_NAVIGATION"

    invoke-virtual {v0, v4}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    :cond_94
    const-string v4, "(none)"

    invoke-virtual {v0, v4}, Ljava/util/StringJoiner;->setEmptyValue(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/StringJoiner;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4

    nop

    :pswitch_data_a0
    .packed-switch 0x0
        :pswitch_51  #00000000
        :pswitch_4b  #00000001
        :pswitch_45  #00000002
        :pswitch_3f  #00000003
        :pswitch_39  #00000004
        :pswitch_33  #00000005
    .end packed-switch

    :sswitch_data_b0
    .sparse-switch
        0x0 -> :sswitch_87
        0x10 -> :sswitch_81
        0x20 -> :sswitch_7b
        0x30 -> :sswitch_75
    .end sparse-switch
.end method

.method public static startInputFlagsToString(I)Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/util/StringJoiner;

    const-string/jumbo v1, "|"

    invoke-direct {v0, v1}, Ljava/util/StringJoiner;-><init>(Ljava/lang/CharSequence;)V

    and-int/lit8 v1, p0, 0x1

    if-eqz v1, :cond_11

    const-string v1, "VIEW_HAS_FOCUS"

    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    :cond_11
    and-int/lit8 v1, p0, 0x2

    if-eqz v1, :cond_1a

    const-string v1, "IS_TEXT_EDITOR"

    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    :cond_1a
    and-int/lit8 v1, p0, 0x4

    if-eqz v1, :cond_23

    const-string v1, "INITIAL_CONNECTION"

    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    :cond_23
    const-string v1, "(none)"

    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->setEmptyValue(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/StringJoiner;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static startInputReasonToString(I)Ljava/lang/String;
    .registers 3

    packed-switch p0, :pswitch_data_3c

    :pswitch_3  #0xb
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_17  #0xc
    const-string v0, "BOUND_ACCESSIBILITY_SESSION_TO_IMMS"

    return-object v0

    :pswitch_1a  #0xa
    const-string v0, "SESSION_CREATED_BY_IME"

    return-object v0

    :pswitch_1d  #0x9
    const-string v0, "DEACTIVATED_BY_IMMS"

    return-object v0

    :pswitch_20  #0x8
    const-string v0, "ACTIVATED_BY_IMMS"

    return-object v0

    :pswitch_23  #0x7
    const-string v0, "UNBOUND_FROM_IMMS"

    return-object v0

    :pswitch_26  #0x6
    const-string v0, "BOUND_TO_IMMS"

    return-object v0

    :pswitch_29  #0x5
    const-string v0, "CHECK_FOCUS"

    return-object v0

    :pswitch_2c  #0x4
    const-string v0, "APP_CALLED_RESTART_INPUT_API"

    return-object v0

    :pswitch_2f  #0x3
    const-string v0, "WINDOW_FOCUS_GAIN_REPORT_WITHOUT_CONNECTION"

    return-object v0

    :pswitch_32  #0x2
    const-string v0, "WINDOW_FOCUS_GAIN_REPORT_WITH_CONNECTION"

    return-object v0

    :pswitch_35  #0x1
    const-string v0, "WINDOW_FOCUS_GAIN"

    return-object v0

    :pswitch_38  #0x0
    const-string v0, "UNSPECIFIED"

    return-object v0

    nop

    :pswitch_data_3c
    .packed-switch 0x0
        :pswitch_38  #00000000
        :pswitch_35  #00000001
        :pswitch_32  #00000002
        :pswitch_2f  #00000003
        :pswitch_2c  #00000004
        :pswitch_29  #00000005
        :pswitch_26  #00000006
        :pswitch_23  #00000007
        :pswitch_20  #00000008
        :pswitch_1d  #00000009
        :pswitch_1a  #0000000a
        :pswitch_3  #0000000b
        :pswitch_17  #0000000c
    .end packed-switch
.end method

.method public static unbindReasonToString(I)Ljava/lang/String;
    .registers 3

    packed-switch p0, :pswitch_data_30

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_17  #0x7
    const-string v0, "ACCESSIBILITY_SERVICE_DISABLED"

    return-object v0

    :pswitch_1a  #0x6
    const-string v0, "SWITCH_USER"

    return-object v0

    :pswitch_1d  #0x5
    const-string v0, "SWITCH_IME_FAILED"

    return-object v0

    :pswitch_20  #0x4
    const-string v0, "NO_IME"

    return-object v0

    :pswitch_23  #0x3
    const-string v0, "DISCONNECT_IME"

    return-object v0

    :pswitch_26  #0x2
    const-string v0, "SWITCH_IME"

    return-object v0

    :pswitch_29  #0x1
    const-string v0, "SWITCH_CLIENT"

    return-object v0

    :pswitch_2c  #0x0
    const-string v0, "UNSPECIFIED"

    return-object v0

    nop

    :pswitch_data_30
    .packed-switch 0x0
        :pswitch_2c  #00000000
        :pswitch_29  #00000001
        :pswitch_26  #00000002
        :pswitch_23  #00000003
        :pswitch_20  #00000004
        :pswitch_1d  #00000005
        :pswitch_1a  #00000006
        :pswitch_17  #00000007
    .end packed-switch
.end method

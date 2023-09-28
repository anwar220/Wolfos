# classes4.dex

.class public Lcom/android/internal/telephony/PhoneConstantConversions;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static convertCallState(Lcom/android/internal/telephony/PhoneConstants$State;)I
    .registers 3

    sget-object v0, Lcom/android/internal/telephony/PhoneConstantConversions$1;->$SwitchMap$com$android$internal$telephony$PhoneConstants$State:[I

    invoke-virtual {p0}, Lcom/android/internal/telephony/PhoneConstants$State;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_12

    const/4 v0, 0x0

    return v0

    :pswitch_d  #0x2
    const/4 v0, 0x2

    return v0

    :pswitch_f  #0x1
    const/4 v0, 0x1

    return v0

    nop

    :pswitch_data_12
    .packed-switch 0x1
        :pswitch_f  #00000001
        :pswitch_d  #00000002
    .end packed-switch
.end method

.method public static convertCallState(I)Lcom/android/internal/telephony/PhoneConstants$State;
    .registers 2

    packed-switch p0, :pswitch_data_c

    sget-object v0, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    return-object v0

    :pswitch_6  #0x2
    sget-object v0, Lcom/android/internal/telephony/PhoneConstants$State;->OFFHOOK:Lcom/android/internal/telephony/PhoneConstants$State;

    return-object v0

    :pswitch_9  #0x1
    sget-object v0, Lcom/android/internal/telephony/PhoneConstants$State;->RINGING:Lcom/android/internal/telephony/PhoneConstants$State;

    return-object v0

    :pswitch_data_c
    .packed-switch 0x1
        :pswitch_9  #00000001
        :pswitch_6  #00000002
    .end packed-switch
.end method

.method public static convertDataState(Lcom/android/internal/telephony/PhoneConstants$DataState;)I
    .registers 3

    sget-object v0, Lcom/android/internal/telephony/PhoneConstantConversions$1;->$SwitchMap$com$android$internal$telephony$PhoneConstants$DataState:[I

    invoke-virtual {p0}, Lcom/android/internal/telephony/PhoneConstants$DataState;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_16

    const/4 v0, 0x0

    return v0

    :pswitch_d  #0x4
    const/4 v0, 0x4

    return v0

    :pswitch_f  #0x3
    const/4 v0, 0x3

    return v0

    :pswitch_11  #0x2
    const/4 v0, 0x2

    return v0

    :pswitch_13  #0x1
    const/4 v0, 0x1

    return v0

    nop

    :pswitch_data_16
    .packed-switch 0x1
        :pswitch_13  #00000001
        :pswitch_11  #00000002
        :pswitch_f  #00000003
        :pswitch_d  #00000004
    .end packed-switch
.end method

.method public static convertDataState(I)Lcom/android/internal/telephony/PhoneConstants$DataState;
    .registers 2

    packed-switch p0, :pswitch_data_12

    sget-object v0, Lcom/android/internal/telephony/PhoneConstants$DataState;->DISCONNECTED:Lcom/android/internal/telephony/PhoneConstants$DataState;

    return-object v0

    :pswitch_6  #0x4
    sget-object v0, Lcom/android/internal/telephony/PhoneConstants$DataState;->DISCONNECTING:Lcom/android/internal/telephony/PhoneConstants$DataState;

    return-object v0

    :pswitch_9  #0x3
    sget-object v0, Lcom/android/internal/telephony/PhoneConstants$DataState;->SUSPENDED:Lcom/android/internal/telephony/PhoneConstants$DataState;

    return-object v0

    :pswitch_c  #0x2
    sget-object v0, Lcom/android/internal/telephony/PhoneConstants$DataState;->CONNECTED:Lcom/android/internal/telephony/PhoneConstants$DataState;

    return-object v0

    :pswitch_f  #0x1
    sget-object v0, Lcom/android/internal/telephony/PhoneConstants$DataState;->CONNECTING:Lcom/android/internal/telephony/PhoneConstants$DataState;

    return-object v0

    :pswitch_data_12
    .packed-switch 0x1
        :pswitch_f  #00000001
        :pswitch_c  #00000002
        :pswitch_9  #00000003
        :pswitch_6  #00000004
    .end packed-switch
.end method

# classes4.dex

.class public interface abstract Lcom/android/internal/app/ChooserActivityLogger;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/app/ChooserActivityLogger$SharesheetStandardEvent;,
        Lcom/android/internal/app/ChooserActivityLogger$SharesheetTargetSelectedEvent;,
        Lcom/android/internal/app/ChooserActivityLogger$SharesheetStartedEvent;
    }
.end annotation


# virtual methods
.method public abstract getInstanceId()Lcom/android/internal/logging/InstanceId;
.end method

.method public abstract log(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;Lcom/android/internal/logging/InstanceId;)V
.end method

.method public abstract logShareStarted(ILjava/lang/String;Ljava/lang/String;IIZILjava/lang/String;)V
.end method

.method public abstract logShareTargetSelected(ILjava/lang/String;IZ)V
.end method

.method public logShareheetProfileChanged()V
    .registers 3

    sget-object v0, Lcom/android/internal/app/ChooserActivityLogger$SharesheetStandardEvent;->SHARESHEET_PROFILE_CHANGED:Lcom/android/internal/app/ChooserActivityLogger$SharesheetStandardEvent;

    invoke-interface {p0}, Lcom/android/internal/app/ChooserActivityLogger;->getInstanceId()Lcom/android/internal/logging/InstanceId;

    move-result-object v1

    invoke-interface {p0, v0, v1}, Lcom/android/internal/app/ChooserActivityLogger;->log(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;Lcom/android/internal/logging/InstanceId;)V

    return-void
.end method

.method public logSharesheetAppLoadComplete()V
    .registers 3

    sget-object v0, Lcom/android/internal/app/ChooserActivityLogger$SharesheetStandardEvent;->SHARESHEET_APP_LOAD_COMPLETE:Lcom/android/internal/app/ChooserActivityLogger$SharesheetStandardEvent;

    invoke-interface {p0}, Lcom/android/internal/app/ChooserActivityLogger;->getInstanceId()Lcom/android/internal/logging/InstanceId;

    move-result-object v1

    invoke-interface {p0, v0, v1}, Lcom/android/internal/app/ChooserActivityLogger;->log(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;Lcom/android/internal/logging/InstanceId;)V

    return-void
.end method

.method public logSharesheetAppShareRankingTimeout()V
    .registers 3

    sget-object v0, Lcom/android/internal/app/ChooserActivityLogger$SharesheetStandardEvent;->SHARESHEET_APP_SHARE_RANKING_TIMEOUT:Lcom/android/internal/app/ChooserActivityLogger$SharesheetStandardEvent;

    invoke-interface {p0}, Lcom/android/internal/app/ChooserActivityLogger;->getInstanceId()Lcom/android/internal/logging/InstanceId;

    move-result-object v1

    invoke-interface {p0, v0, v1}, Lcom/android/internal/app/ChooserActivityLogger;->log(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;Lcom/android/internal/logging/InstanceId;)V

    return-void
.end method

.method public logSharesheetDirectLoadComplete()V
    .registers 3

    sget-object v0, Lcom/android/internal/app/ChooserActivityLogger$SharesheetStandardEvent;->SHARESHEET_DIRECT_LOAD_COMPLETE:Lcom/android/internal/app/ChooserActivityLogger$SharesheetStandardEvent;

    invoke-interface {p0}, Lcom/android/internal/app/ChooserActivityLogger;->getInstanceId()Lcom/android/internal/logging/InstanceId;

    move-result-object v1

    invoke-interface {p0, v0, v1}, Lcom/android/internal/app/ChooserActivityLogger;->log(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;Lcom/android/internal/logging/InstanceId;)V

    return-void
.end method

.method public logSharesheetDirectLoadTimeout()V
    .registers 3

    sget-object v0, Lcom/android/internal/app/ChooserActivityLogger$SharesheetStandardEvent;->SHARESHEET_DIRECT_LOAD_TIMEOUT:Lcom/android/internal/app/ChooserActivityLogger$SharesheetStandardEvent;

    invoke-interface {p0}, Lcom/android/internal/app/ChooserActivityLogger;->getInstanceId()Lcom/android/internal/logging/InstanceId;

    move-result-object v1

    invoke-interface {p0, v0, v1}, Lcom/android/internal/app/ChooserActivityLogger;->log(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;Lcom/android/internal/logging/InstanceId;)V

    return-void
.end method

.method public logSharesheetEmptyDirectShareRow()V
    .registers 3

    sget-object v0, Lcom/android/internal/app/ChooserActivityLogger$SharesheetStandardEvent;->SHARESHEET_EMPTY_DIRECT_SHARE_ROW:Lcom/android/internal/app/ChooserActivityLogger$SharesheetStandardEvent;

    invoke-interface {p0}, Lcom/android/internal/app/ChooserActivityLogger;->getInstanceId()Lcom/android/internal/logging/InstanceId;

    move-result-object v1

    invoke-interface {p0, v0, v1}, Lcom/android/internal/app/ChooserActivityLogger;->log(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;Lcom/android/internal/logging/InstanceId;)V

    return-void
.end method

.method public logSharesheetExpansionChanged(Z)V
    .registers 4

    if-eqz p1, :cond_5

    sget-object v0, Lcom/android/internal/app/ChooserActivityLogger$SharesheetStandardEvent;->SHARESHEET_COLLAPSED:Lcom/android/internal/app/ChooserActivityLogger$SharesheetStandardEvent;

    goto :goto_7

    :cond_5
    sget-object v0, Lcom/android/internal/app/ChooserActivityLogger$SharesheetStandardEvent;->SHARESHEET_EXPANDED:Lcom/android/internal/app/ChooserActivityLogger$SharesheetStandardEvent;

    :goto_7
    invoke-interface {p0}, Lcom/android/internal/app/ChooserActivityLogger;->getInstanceId()Lcom/android/internal/logging/InstanceId;

    move-result-object v1

    invoke-interface {p0, v0, v1}, Lcom/android/internal/app/ChooserActivityLogger;->log(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;Lcom/android/internal/logging/InstanceId;)V

    return-void
.end method

.method public logSharesheetTriggered()V
    .registers 3

    sget-object v0, Lcom/android/internal/app/ChooserActivityLogger$SharesheetStandardEvent;->SHARESHEET_TRIGGERED:Lcom/android/internal/app/ChooserActivityLogger$SharesheetStandardEvent;

    invoke-interface {p0}, Lcom/android/internal/app/ChooserActivityLogger;->getInstanceId()Lcom/android/internal/logging/InstanceId;

    move-result-object v1

    invoke-interface {p0, v0, v1}, Lcom/android/internal/app/ChooserActivityLogger;->log(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;Lcom/android/internal/logging/InstanceId;)V

    return-void
.end method

.method public typeFromIntentString(Ljava/lang/String;)I
    .registers 11

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    :cond_4
    const/4 v1, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v2

    const/4 v3, 0x6

    const/4 v4, 0x5

    const/4 v5, 0x4

    const/4 v6, 0x3

    const/4 v7, 0x2

    const/4 v8, 0x1

    sparse-switch v2, :sswitch_data_64

    :cond_12
    goto :goto_58

    :sswitch_13
    const-string v2, "android.intent.action.SENDTO"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_12

    move v1, v6

    goto :goto_58

    :sswitch_1d
    const-string v2, "android.intent.action.SEND_MULTIPLE"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_12

    move v1, v5

    goto :goto_58

    :sswitch_27
    const-string v2, "android.intent.action.VIEW"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_12

    move v1, v0

    goto :goto_58

    :sswitch_31
    const-string v2, "android.intent.action.SEND"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_12

    move v1, v7

    goto :goto_58

    :sswitch_3b
    const-string v2, "android.intent.action.MAIN"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_12

    move v1, v3

    goto :goto_58

    :sswitch_45
    const-string v2, "android.intent.action.EDIT"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_12

    move v1, v8

    goto :goto_58

    :sswitch_4f
    const-string v2, "android.media.action.IMAGE_CAPTURE"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_12

    move v1, v4

    :goto_58
    packed-switch v1, :pswitch_data_82

    return v0

    :pswitch_5c  #0x6
    const/4 v0, 0x7

    return v0

    :pswitch_5e  #0x5
    return v3

    :pswitch_5f  #0x4
    return v4

    :pswitch_60  #0x3
    return v5

    :pswitch_61  #0x2
    return v6

    :pswitch_62  #0x1
    return v7

    :pswitch_63  #0x0
    return v8

    :sswitch_data_64
    .sparse-switch
        -0x74de9aed -> :sswitch_4f
        -0x45f4fbb1 -> :sswitch_45
        -0x45f16402 -> :sswitch_3b
        -0x45ee9a33 -> :sswitch_31
        -0x45ed2f16 -> :sswitch_27
        -0x37c67be -> :sswitch_1d
        0x7b4f3108 -> :sswitch_13
    .end sparse-switch

    :pswitch_data_82
    .packed-switch 0x0
        :pswitch_63  #00000000
        :pswitch_62  #00000001
        :pswitch_61  #00000002
        :pswitch_60  #00000003
        :pswitch_5f  #00000004
        :pswitch_5e  #00000005
        :pswitch_5c  #00000006
    .end packed-switch
.end method

.method public typeFromPreviewInt(I)I
    .registers 3

    packed-switch p1, :pswitch_data_a

    const/4 v0, 0x0

    return v0

    :pswitch_5  #0x2
    const/4 v0, 0x2

    return v0

    :pswitch_7  #0x1
    const/4 v0, 0x1

    return v0

    nop

    :pswitch_data_a
    .packed-switch 0x1
        :pswitch_7  #00000001
        :pswitch_5  #00000002
    .end packed-switch
.end method

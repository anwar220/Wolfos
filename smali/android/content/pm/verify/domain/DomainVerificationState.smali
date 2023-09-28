# classes.dex

.class public interface abstract Landroid/content/pm/verify/domain/DomainVerificationState;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/content/pm/verify/domain/DomainVerificationState$State;
    }
.end annotation


# static fields
.field public static final STATE_APPROVED:I = 0x2

.field public static final STATE_DENIED:I = 0x3

.field public static final STATE_FIRST_VERIFIER_DEFINED:I = 0x400

.field public static final STATE_LEGACY_FAILURE:I = 0x6

.field public static final STATE_MIGRATED:I = 0x4

.field public static final STATE_NO_RESPONSE:I = 0x0

.field public static final STATE_RESTORED:I = 0x5

.field public static final STATE_SUCCESS:I = 0x1

.field public static final STATE_SYS_CONFIG:I = 0x7


# direct methods
.method public static convertToInfoState(I)I
    .registers 2

    const/16 v0, 0x400

    if-lt p0, v0, :cond_5

    return p0

    :cond_5
    if-nez p0, :cond_9

    const/4 v0, 0x0

    return v0

    :cond_9
    const/4 v0, 0x1

    if-ne p0, v0, :cond_d

    return v0

    :cond_d
    invoke-static {p0}, Landroid/content/pm/verify/domain/DomainVerificationState;->isModifiable(I)Z

    move-result v0

    if-nez v0, :cond_15

    const/4 v0, 0x2

    return v0

    :cond_15
    invoke-static {p0}, Landroid/content/pm/verify/domain/DomainVerificationState;->isVerified(I)Z

    move-result v0

    if-eqz v0, :cond_1d

    const/4 v0, 0x4

    return v0

    :cond_1d
    const/4 v0, 0x3

    return v0
.end method

.method public static isDefault(I)Z
    .registers 2

    sparse-switch p0, :sswitch_data_8

    const/4 v0, 0x0

    return v0

    :sswitch_5
    const/4 v0, 0x1

    return v0

    nop

    :sswitch_data_8
    .sparse-switch
        0x0 -> :sswitch_5
        0x4 -> :sswitch_5
        0x5 -> :sswitch_5
    .end sparse-switch
.end method

.method public static isModifiable(I)Z
    .registers 4

    const/4 v0, 0x0

    const/4 v1, 0x1

    packed-switch p0, :pswitch_data_e

    const/16 v2, 0x400

    if-lt p0, v2, :cond_d

    move v0, v1

    goto :goto_d

    :pswitch_b  #0x2, 0x3, 0x7
    return v0

    :pswitch_c  #0x0, 0x1, 0x4, 0x5, 0x6
    return v1

    :cond_d
    :goto_d
    return v0

    :pswitch_data_e
    .packed-switch 0x0
        :pswitch_c  #00000000
        :pswitch_c  #00000001
        :pswitch_b  #00000002
        :pswitch_b  #00000003
        :pswitch_c  #00000004
        :pswitch_c  #00000005
        :pswitch_c  #00000006
        :pswitch_b  #00000007
    .end packed-switch
.end method

.method public static isVerified(I)Z
    .registers 2

    packed-switch p0, :pswitch_data_8

    :pswitch_3  #0x3, 0x6
    const/4 v0, 0x0

    return v0

    :pswitch_5  #0x1, 0x2, 0x4, 0x5, 0x7
    const/4 v0, 0x1

    return v0

    nop

    :pswitch_data_8
    .packed-switch 0x1
        :pswitch_5  #00000001
        :pswitch_5  #00000002
        :pswitch_3  #00000003
        :pswitch_5  #00000004
        :pswitch_5  #00000005
        :pswitch_3  #00000006
        :pswitch_5  #00000007
    .end packed-switch
.end method

.method public static shouldMigrate(I)Z
    .registers 2

    packed-switch p0, :pswitch_data_8

    const/4 v0, 0x0

    return v0

    :pswitch_5  #0x1, 0x2, 0x3, 0x4, 0x5
    const/4 v0, 0x1

    return v0

    nop

    :pswitch_data_8
    .packed-switch 0x1
        :pswitch_5  #00000001
        :pswitch_5  #00000002
        :pswitch_5  #00000003
        :pswitch_5  #00000004
        :pswitch_5  #00000005
    .end packed-switch
.end method

.method public static stateToDebugString(I)Ljava/lang/String;
    .registers 2

    packed-switch p0, :pswitch_data_26

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_8  #0x7
    const-string/jumbo v0, "system_configured"

    return-object v0

    :pswitch_c  #0x6
    const-string v0, "legacy_failure"

    return-object v0

    :pswitch_f  #0x5
    const-string/jumbo v0, "restored"

    return-object v0

    :pswitch_13  #0x4
    const-string/jumbo v0, "migrated"

    return-object v0

    :pswitch_17  #0x3
    const-string v0, "denied"

    return-object v0

    :pswitch_1a  #0x2
    const-string v0, "approved"

    return-object v0

    :pswitch_1d  #0x1
    const-string/jumbo v0, "verified"

    return-object v0

    :pswitch_21  #0x0
    const-string/jumbo v0, "none"

    return-object v0

    nop

    :pswitch_data_26
    .packed-switch 0x0
        :pswitch_21  #00000000
        :pswitch_1d  #00000001
        :pswitch_1a  #00000002
        :pswitch_17  #00000003
        :pswitch_13  #00000004
        :pswitch_f  #00000005
        :pswitch_c  #00000006
        :pswitch_8  #00000007
    .end packed-switch
.end method

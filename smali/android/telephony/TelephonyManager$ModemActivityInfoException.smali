# classes3.dex

.class public Landroid/telephony/TelephonyManager$ModemActivityInfoException;
.super Ljava/lang/Exception;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telephony/TelephonyManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ModemActivityInfoException"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telephony/TelephonyManager$ModemActivityInfoException$ModemActivityInfoError;
    }
.end annotation


# static fields
.field public static final ERROR_INVALID_INFO_RECEIVED:I = 0x2

.field public static final ERROR_MODEM_RESPONSE_ERROR:I = 0x3

.field public static final ERROR_PHONE_NOT_AVAILABLE:I = 0x1

.field public static final ERROR_UNKNOWN:I


# instance fields
.field private final mErrorCode:I


# direct methods
.method public constructor <init>(I)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    iput p1, p0, Landroid/telephony/TelephonyManager$ModemActivityInfoException;->mErrorCode:I

    return-void
.end method


# virtual methods
.method public getErrorCode()I
    .registers 2

    iget v0, p0, Landroid/telephony/TelephonyManager$ModemActivityInfoException;->mErrorCode:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    iget v0, p0, Landroid/telephony/TelephonyManager$ModemActivityInfoException;->mErrorCode:I

    packed-switch v0, :pswitch_data_14

    const-string v0, "UNDEFINED"

    return-object v0

    :pswitch_8  #0x3
    const-string v0, "ERROR_MODEM_RESPONSE_ERROR"

    return-object v0

    :pswitch_b  #0x2
    const-string v0, "ERROR_INVALID_INFO_RECEIVED"

    return-object v0

    :pswitch_e  #0x1
    const-string v0, "ERROR_PHONE_NOT_AVAILABLE"

    return-object v0

    :pswitch_11  #0x0
    const-string v0, "ERROR_UNKNOWN"

    return-object v0

    :pswitch_data_14
    .packed-switch 0x0
        :pswitch_11  #00000000
        :pswitch_e  #00000001
        :pswitch_b  #00000002
        :pswitch_8  #00000003
    .end packed-switch
.end method
